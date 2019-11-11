# RUN: llvm-mc %s -triple=tricore -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK,CHECK-INST %s

# CHECK-INST: abs %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xc0,0x01]
abs %d0, %d0

# CHECK-INST: abs %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xc0,0x01]
abs %d0, %d1

# CHECK-INST: abs %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xc0,0x01]
abs %d0, %d14

# CHECK-INST: abs %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xc0,0x01]
abs %d0, %d15

# CHECK-INST: abs %d1, %d0
# CHECK: encoding: [0x0b,0x00,0xc0,0x11]
abs %d1, %d0

# CHECK-INST: abs %d1, %d1
# CHECK: encoding: [0x0b,0x10,0xc0,0x11]
abs %d1, %d1

# CHECK-INST: abs %d1, %d14
# CHECK: encoding: [0x0b,0xe0,0xc0,0x11]
abs %d1, %d14

# CHECK-INST: abs %d1, %d15
# CHECK: encoding: [0x0b,0xf0,0xc0,0x11]
abs %d1, %d15

# CHECK-INST: abs %d14, %d0
# CHECK: encoding: [0x0b,0x00,0xc0,0xe1]
abs %d14, %d0

# CHECK-INST: abs %d14, %d1
# CHECK: encoding: [0x0b,0x10,0xc0,0xe1]
abs %d14, %d1

# CHECK-INST: abs %d14, %d14
# CHECK: encoding: [0x0b,0xe0,0xc0,0xe1]
abs %d14, %d14

# CHECK-INST: abs %d14, %d15
# CHECK: encoding: [0x0b,0xf0,0xc0,0xe1]
abs %d14, %d15

# CHECK-INST: abs %d15, %d0
# CHECK: encoding: [0x0b,0x00,0xc0,0xf1]
abs %d15, %d0

# CHECK-INST: abs %d15, %d1
# CHECK: encoding: [0x0b,0x10,0xc0,0xf1]
abs %d15, %d1

# CHECK-INST: abs %d15, %d14
# CHECK: encoding: [0x0b,0xe0,0xc0,0xf1]
abs %d15, %d14

# CHECK-INST: abs %d15, %d15
# CHECK: encoding: [0x0b,0xf0,0xc0,0xf1]
abs %d15, %d15

# CHECK-INST: absdif %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xe0,0x00]
absdif %d0, %d0, %d0

# CHECK-INST: absdif %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xe0,0x00]
absdif %d0, %d0, %d1

# CHECK-INST: absdif %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xe0,0x00]
absdif %d0, %d0, %d14

# CHECK-INST: absdif %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xe0,0x00]
absdif %d0, %d0, %d15

# CHECK-INST: absdif %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xe0,0x00]
absdif %d0, %d1, %d0

# CHECK-INST: absdif %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xe0,0x00]
absdif %d0, %d1, %d1

# CHECK-INST: absdif %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xe0,0x00]
absdif %d0, %d1, %d14

# CHECK-INST: absdif %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xe0,0x00]
absdif %d0, %d1, %d15

# CHECK-INST: absdif %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xe0,0x00]
absdif %d0, %d14, %d0

# CHECK-INST: absdif %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xe0,0x00]
absdif %d0, %d14, %d1

# CHECK-INST: absdif %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xe0,0x00]
absdif %d0, %d14, %d14

# CHECK-INST: absdif %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xe0,0x00]
absdif %d0, %d14, %d15

# CHECK-INST: absdif %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xe0,0x00]
absdif %d0, %d15, %d0

# CHECK-INST: absdif %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xe0,0x00]
absdif %d0, %d15, %d1

# CHECK-INST: absdif %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xe0,0x00]
absdif %d0, %d15, %d14

# CHECK-INST: absdif %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xe0,0x00]
absdif %d0, %d15, %d15

# CHECK-INST: absdif %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xe0,0x10]
absdif %d1, %d0, %d0

# CHECK-INST: absdif %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xe0,0x10]
absdif %d1, %d0, %d1

# CHECK-INST: absdif %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xe0,0x10]
absdif %d1, %d0, %d14

# CHECK-INST: absdif %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xe0,0x10]
absdif %d1, %d0, %d15

# CHECK-INST: absdif %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xe0,0x10]
absdif %d1, %d1, %d0

# CHECK-INST: absdif %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xe0,0x10]
absdif %d1, %d1, %d1

# CHECK-INST: absdif %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xe0,0x10]
absdif %d1, %d1, %d14

# CHECK-INST: absdif %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xe0,0x10]
absdif %d1, %d1, %d15

# CHECK-INST: absdif %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xe0,0x10]
absdif %d1, %d14, %d0

# CHECK-INST: absdif %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xe0,0x10]
absdif %d1, %d14, %d1

# CHECK-INST: absdif %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xe0,0x10]
absdif %d1, %d14, %d14

# CHECK-INST: absdif %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xe0,0x10]
absdif %d1, %d14, %d15

# CHECK-INST: absdif %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xe0,0x10]
absdif %d1, %d15, %d0

# CHECK-INST: absdif %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xe0,0x10]
absdif %d1, %d15, %d1

# CHECK-INST: absdif %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xe0,0x10]
absdif %d1, %d15, %d14

# CHECK-INST: absdif %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xe0,0x10]
absdif %d1, %d15, %d15

# CHECK-INST: absdif %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xe0,0xe0]
absdif %d14, %d0, %d0

# CHECK-INST: absdif %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xe0,0xe0]
absdif %d14, %d0, %d1

# CHECK-INST: absdif %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xe0,0xe0]
absdif %d14, %d0, %d14

# CHECK-INST: absdif %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xe0,0xe0]
absdif %d14, %d0, %d15

# CHECK-INST: absdif %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xe0,0xe0]
absdif %d14, %d1, %d0

# CHECK-INST: absdif %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xe0,0xe0]
absdif %d14, %d1, %d1

# CHECK-INST: absdif %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xe0,0xe0]
absdif %d14, %d1, %d14

# CHECK-INST: absdif %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xe0,0xe0]
absdif %d14, %d1, %d15

# CHECK-INST: absdif %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xe0,0xe0]
absdif %d14, %d14, %d0

# CHECK-INST: absdif %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xe0,0xe0]
absdif %d14, %d14, %d1

# CHECK-INST: absdif %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xe0,0xe0]
absdif %d14, %d14, %d14

# CHECK-INST: absdif %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xe0,0xe0]
absdif %d14, %d14, %d15

# CHECK-INST: absdif %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xe0,0xe0]
absdif %d14, %d15, %d0

# CHECK-INST: absdif %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xe0,0xe0]
absdif %d14, %d15, %d1

# CHECK-INST: absdif %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xe0,0xe0]
absdif %d14, %d15, %d14

# CHECK-INST: absdif %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xe0,0xe0]
absdif %d14, %d15, %d15

# CHECK-INST: absdif %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xe0,0xf0]
absdif %d15, %d0, %d0

# CHECK-INST: absdif %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xe0,0xf0]
absdif %d15, %d0, %d1

# CHECK-INST: absdif %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xe0,0xf0]
absdif %d15, %d0, %d14

# CHECK-INST: absdif %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xe0,0xf0]
absdif %d15, %d0, %d15

# CHECK-INST: absdif %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xe0,0xf0]
absdif %d15, %d1, %d0

# CHECK-INST: absdif %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xe0,0xf0]
absdif %d15, %d1, %d1

# CHECK-INST: absdif %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xe0,0xf0]
absdif %d15, %d1, %d14

# CHECK-INST: absdif %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xe0,0xf0]
absdif %d15, %d1, %d15

# CHECK-INST: absdif %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xe0,0xf0]
absdif %d15, %d14, %d0

# CHECK-INST: absdif %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xe0,0xf0]
absdif %d15, %d14, %d1

# CHECK-INST: absdif %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xe0,0xf0]
absdif %d15, %d14, %d14

# CHECK-INST: absdif %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xe0,0xf0]
absdif %d15, %d14, %d15

# CHECK-INST: absdif %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xe0,0xf0]
absdif %d15, %d15, %d0

# CHECK-INST: absdif %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xe0,0xf0]
absdif %d15, %d15, %d1

# CHECK-INST: absdif %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xe0,0xf0]
absdif %d15, %d15, %d14

# CHECK-INST: absdif %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xe0,0xf0]
absdif %d15, %d15, %d15

# CHECK-INST: absdif %d0, %d0, -256
# CHECK: encoding: [0x8b,0x00,0xd0,0x01]
absdif %d0, %d0, -256

# CHECK-INST: absdif %d0, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0xd7,0x01]
absdif %d0, %d0, -129

# CHECK-INST: absdif %d0, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0xdf,0x01]
absdif %d0, %d0, -1

# CHECK-INST: absdif %d0, %d0, 0
# CHECK: encoding: [0x8b,0x00,0xc0,0x01]
absdif %d0, %d0, 0

# CHECK-INST: absdif %d0, %d0, 1
# CHECK: encoding: [0x8b,0x10,0xc0,0x01]
absdif %d0, %d0, 1

# CHECK-INST: absdif %d0, %d0, 128
# CHECK: encoding: [0x8b,0x00,0xc8,0x01]
absdif %d0, %d0, 128

# CHECK-INST: absdif %d0, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0xcf,0x01]
absdif %d0, %d0, 255

# CHECK-INST: absdif %d0, %d1, -256
# CHECK: encoding: [0x8b,0x01,0xd0,0x01]
absdif %d0, %d1, -256

# CHECK-INST: absdif %d0, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0xd7,0x01]
absdif %d0, %d1, -129

# CHECK-INST: absdif %d0, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0xdf,0x01]
absdif %d0, %d1, -1

# CHECK-INST: absdif %d0, %d1, 0
# CHECK: encoding: [0x8b,0x01,0xc0,0x01]
absdif %d0, %d1, 0

# CHECK-INST: absdif %d0, %d1, 1
# CHECK: encoding: [0x8b,0x11,0xc0,0x01]
absdif %d0, %d1, 1

# CHECK-INST: absdif %d0, %d1, 128
# CHECK: encoding: [0x8b,0x01,0xc8,0x01]
absdif %d0, %d1, 128

# CHECK-INST: absdif %d0, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0xcf,0x01]
absdif %d0, %d1, 255

# CHECK-INST: absdif %d0, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0xd0,0x01]
absdif %d0, %d14, -256

# CHECK-INST: absdif %d0, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0xd7,0x01]
absdif %d0, %d14, -129

# CHECK-INST: absdif %d0, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0xdf,0x01]
absdif %d0, %d14, -1

# CHECK-INST: absdif %d0, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0xc0,0x01]
absdif %d0, %d14, 0

# CHECK-INST: absdif %d0, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0xc0,0x01]
absdif %d0, %d14, 1

# CHECK-INST: absdif %d0, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0xc8,0x01]
absdif %d0, %d14, 128

# CHECK-INST: absdif %d0, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0xcf,0x01]
absdif %d0, %d14, 255

# CHECK-INST: absdif %d0, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0xd0,0x01]
absdif %d0, %d15, -256

# CHECK-INST: absdif %d0, %d15, -129
# CHECK: encoding: [0x8b,0xff,0xd7,0x01]
absdif %d0, %d15, -129

# CHECK-INST: absdif %d0, %d15, -1
# CHECK: encoding: [0x8b,0xff,0xdf,0x01]
absdif %d0, %d15, -1

# CHECK-INST: absdif %d0, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0xc0,0x01]
absdif %d0, %d15, 0

# CHECK-INST: absdif %d0, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0xc0,0x01]
absdif %d0, %d15, 1

# CHECK-INST: absdif %d0, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0xc8,0x01]
absdif %d0, %d15, 128

# CHECK-INST: absdif %d0, %d15, 255
# CHECK: encoding: [0x8b,0xff,0xcf,0x01]
absdif %d0, %d15, 255

# CHECK-INST: absdif %d1, %d0, -256
# CHECK: encoding: [0x8b,0x00,0xd0,0x11]
absdif %d1, %d0, -256

# CHECK-INST: absdif %d1, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0xd7,0x11]
absdif %d1, %d0, -129

# CHECK-INST: absdif %d1, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0xdf,0x11]
absdif %d1, %d0, -1

# CHECK-INST: absdif %d1, %d0, 0
# CHECK: encoding: [0x8b,0x00,0xc0,0x11]
absdif %d1, %d0, 0

# CHECK-INST: absdif %d1, %d0, 1
# CHECK: encoding: [0x8b,0x10,0xc0,0x11]
absdif %d1, %d0, 1

# CHECK-INST: absdif %d1, %d0, 128
# CHECK: encoding: [0x8b,0x00,0xc8,0x11]
absdif %d1, %d0, 128

# CHECK-INST: absdif %d1, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0xcf,0x11]
absdif %d1, %d0, 255

# CHECK-INST: absdif %d1, %d1, -256
# CHECK: encoding: [0x8b,0x01,0xd0,0x11]
absdif %d1, %d1, -256

# CHECK-INST: absdif %d1, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0xd7,0x11]
absdif %d1, %d1, -129

# CHECK-INST: absdif %d1, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0xdf,0x11]
absdif %d1, %d1, -1

# CHECK-INST: absdif %d1, %d1, 0
# CHECK: encoding: [0x8b,0x01,0xc0,0x11]
absdif %d1, %d1, 0

# CHECK-INST: absdif %d1, %d1, 1
# CHECK: encoding: [0x8b,0x11,0xc0,0x11]
absdif %d1, %d1, 1

# CHECK-INST: absdif %d1, %d1, 128
# CHECK: encoding: [0x8b,0x01,0xc8,0x11]
absdif %d1, %d1, 128

# CHECK-INST: absdif %d1, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0xcf,0x11]
absdif %d1, %d1, 255

# CHECK-INST: absdif %d1, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0xd0,0x11]
absdif %d1, %d14, -256

# CHECK-INST: absdif %d1, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0xd7,0x11]
absdif %d1, %d14, -129

# CHECK-INST: absdif %d1, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0xdf,0x11]
absdif %d1, %d14, -1

# CHECK-INST: absdif %d1, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0xc0,0x11]
absdif %d1, %d14, 0

# CHECK-INST: absdif %d1, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0xc0,0x11]
absdif %d1, %d14, 1

# CHECK-INST: absdif %d1, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0xc8,0x11]
absdif %d1, %d14, 128

# CHECK-INST: absdif %d1, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0xcf,0x11]
absdif %d1, %d14, 255

# CHECK-INST: absdif %d1, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0xd0,0x11]
absdif %d1, %d15, -256

# CHECK-INST: absdif %d1, %d15, -129
# CHECK: encoding: [0x8b,0xff,0xd7,0x11]
absdif %d1, %d15, -129

# CHECK-INST: absdif %d1, %d15, -1
# CHECK: encoding: [0x8b,0xff,0xdf,0x11]
absdif %d1, %d15, -1

# CHECK-INST: absdif %d1, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0xc0,0x11]
absdif %d1, %d15, 0

# CHECK-INST: absdif %d1, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0xc0,0x11]
absdif %d1, %d15, 1

# CHECK-INST: absdif %d1, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0xc8,0x11]
absdif %d1, %d15, 128

# CHECK-INST: absdif %d1, %d15, 255
# CHECK: encoding: [0x8b,0xff,0xcf,0x11]
absdif %d1, %d15, 255

# CHECK-INST: absdif %d14, %d0, -256
# CHECK: encoding: [0x8b,0x00,0xd0,0xe1]
absdif %d14, %d0, -256

# CHECK-INST: absdif %d14, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0xd7,0xe1]
absdif %d14, %d0, -129

# CHECK-INST: absdif %d14, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0xdf,0xe1]
absdif %d14, %d0, -1

# CHECK-INST: absdif %d14, %d0, 0
# CHECK: encoding: [0x8b,0x00,0xc0,0xe1]
absdif %d14, %d0, 0

# CHECK-INST: absdif %d14, %d0, 1
# CHECK: encoding: [0x8b,0x10,0xc0,0xe1]
absdif %d14, %d0, 1

# CHECK-INST: absdif %d14, %d0, 128
# CHECK: encoding: [0x8b,0x00,0xc8,0xe1]
absdif %d14, %d0, 128

# CHECK-INST: absdif %d14, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0xcf,0xe1]
absdif %d14, %d0, 255

# CHECK-INST: absdif %d14, %d1, -256
# CHECK: encoding: [0x8b,0x01,0xd0,0xe1]
absdif %d14, %d1, -256

# CHECK-INST: absdif %d14, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0xd7,0xe1]
absdif %d14, %d1, -129

# CHECK-INST: absdif %d14, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0xdf,0xe1]
absdif %d14, %d1, -1

# CHECK-INST: absdif %d14, %d1, 0
# CHECK: encoding: [0x8b,0x01,0xc0,0xe1]
absdif %d14, %d1, 0

# CHECK-INST: absdif %d14, %d1, 1
# CHECK: encoding: [0x8b,0x11,0xc0,0xe1]
absdif %d14, %d1, 1

# CHECK-INST: absdif %d14, %d1, 128
# CHECK: encoding: [0x8b,0x01,0xc8,0xe1]
absdif %d14, %d1, 128

# CHECK-INST: absdif %d14, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0xcf,0xe1]
absdif %d14, %d1, 255

# CHECK-INST: absdif %d14, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0xd0,0xe1]
absdif %d14, %d14, -256

# CHECK-INST: absdif %d14, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0xd7,0xe1]
absdif %d14, %d14, -129

# CHECK-INST: absdif %d14, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0xdf,0xe1]
absdif %d14, %d14, -1

# CHECK-INST: absdif %d14, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0xc0,0xe1]
absdif %d14, %d14, 0

# CHECK-INST: absdif %d14, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0xc0,0xe1]
absdif %d14, %d14, 1

# CHECK-INST: absdif %d14, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0xc8,0xe1]
absdif %d14, %d14, 128

# CHECK-INST: absdif %d14, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0xcf,0xe1]
absdif %d14, %d14, 255

# CHECK-INST: absdif %d14, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0xd0,0xe1]
absdif %d14, %d15, -256

# CHECK-INST: absdif %d14, %d15, -129
# CHECK: encoding: [0x8b,0xff,0xd7,0xe1]
absdif %d14, %d15, -129

# CHECK-INST: absdif %d14, %d15, -1
# CHECK: encoding: [0x8b,0xff,0xdf,0xe1]
absdif %d14, %d15, -1

# CHECK-INST: absdif %d14, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0xc0,0xe1]
absdif %d14, %d15, 0

# CHECK-INST: absdif %d14, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0xc0,0xe1]
absdif %d14, %d15, 1

# CHECK-INST: absdif %d14, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0xc8,0xe1]
absdif %d14, %d15, 128

# CHECK-INST: absdif %d14, %d15, 255
# CHECK: encoding: [0x8b,0xff,0xcf,0xe1]
absdif %d14, %d15, 255

# CHECK-INST: absdif %d15, %d0, -256
# CHECK: encoding: [0x8b,0x00,0xd0,0xf1]
absdif %d15, %d0, -256

# CHECK-INST: absdif %d15, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0xd7,0xf1]
absdif %d15, %d0, -129

# CHECK-INST: absdif %d15, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0xdf,0xf1]
absdif %d15, %d0, -1

# CHECK-INST: absdif %d15, %d0, 0
# CHECK: encoding: [0x8b,0x00,0xc0,0xf1]
absdif %d15, %d0, 0

# CHECK-INST: absdif %d15, %d0, 1
# CHECK: encoding: [0x8b,0x10,0xc0,0xf1]
absdif %d15, %d0, 1

# CHECK-INST: absdif %d15, %d0, 128
# CHECK: encoding: [0x8b,0x00,0xc8,0xf1]
absdif %d15, %d0, 128

# CHECK-INST: absdif %d15, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0xcf,0xf1]
absdif %d15, %d0, 255

# CHECK-INST: absdif %d15, %d1, -256
# CHECK: encoding: [0x8b,0x01,0xd0,0xf1]
absdif %d15, %d1, -256

# CHECK-INST: absdif %d15, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0xd7,0xf1]
absdif %d15, %d1, -129

# CHECK-INST: absdif %d15, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0xdf,0xf1]
absdif %d15, %d1, -1

# CHECK-INST: absdif %d15, %d1, 0
# CHECK: encoding: [0x8b,0x01,0xc0,0xf1]
absdif %d15, %d1, 0

# CHECK-INST: absdif %d15, %d1, 1
# CHECK: encoding: [0x8b,0x11,0xc0,0xf1]
absdif %d15, %d1, 1

# CHECK-INST: absdif %d15, %d1, 128
# CHECK: encoding: [0x8b,0x01,0xc8,0xf1]
absdif %d15, %d1, 128

# CHECK-INST: absdif %d15, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0xcf,0xf1]
absdif %d15, %d1, 255

# CHECK-INST: absdif %d15, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0xd0,0xf1]
absdif %d15, %d14, -256

# CHECK-INST: absdif %d15, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0xd7,0xf1]
absdif %d15, %d14, -129

# CHECK-INST: absdif %d15, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0xdf,0xf1]
absdif %d15, %d14, -1

# CHECK-INST: absdif %d15, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0xc0,0xf1]
absdif %d15, %d14, 0

# CHECK-INST: absdif %d15, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0xc0,0xf1]
absdif %d15, %d14, 1

# CHECK-INST: absdif %d15, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0xc8,0xf1]
absdif %d15, %d14, 128

# CHECK-INST: absdif %d15, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0xcf,0xf1]
absdif %d15, %d14, 255

# CHECK-INST: absdif %d15, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0xd0,0xf1]
absdif %d15, %d15, -256

# CHECK-INST: absdif %d15, %d15, -129
# CHECK: encoding: [0x8b,0xff,0xd7,0xf1]
absdif %d15, %d15, -129

# CHECK-INST: absdif %d15, %d15, -1
# CHECK: encoding: [0x8b,0xff,0xdf,0xf1]
absdif %d15, %d15, -1

# CHECK-INST: absdif %d15, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0xc0,0xf1]
absdif %d15, %d15, 0

# CHECK-INST: absdif %d15, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0xc0,0xf1]
absdif %d15, %d15, 1

# CHECK-INST: absdif %d15, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0xc8,0xf1]
absdif %d15, %d15, 128

# CHECK-INST: absdif %d15, %d15, 255
# CHECK: encoding: [0x8b,0xff,0xcf,0xf1]
absdif %d15, %d15, 255

# CHECK-INST: absdifs %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xf0,0x00]
absdifs %d0, %d0, %d0

# CHECK-INST: absdifs %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xf0,0x00]
absdifs %d0, %d0, %d1

# CHECK-INST: absdifs %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xf0,0x00]
absdifs %d0, %d0, %d14

# CHECK-INST: absdifs %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xf0,0x00]
absdifs %d0, %d0, %d15

# CHECK-INST: absdifs %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xf0,0x00]
absdifs %d0, %d1, %d0

# CHECK-INST: absdifs %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xf0,0x00]
absdifs %d0, %d1, %d1

# CHECK-INST: absdifs %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xf0,0x00]
absdifs %d0, %d1, %d14

# CHECK-INST: absdifs %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xf0,0x00]
absdifs %d0, %d1, %d15

# CHECK-INST: absdifs %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xf0,0x00]
absdifs %d0, %d14, %d0

# CHECK-INST: absdifs %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xf0,0x00]
absdifs %d0, %d14, %d1

# CHECK-INST: absdifs %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xf0,0x00]
absdifs %d0, %d14, %d14

# CHECK-INST: absdifs %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xf0,0x00]
absdifs %d0, %d14, %d15

# CHECK-INST: absdifs %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xf0,0x00]
absdifs %d0, %d15, %d0

# CHECK-INST: absdifs %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xf0,0x00]
absdifs %d0, %d15, %d1

# CHECK-INST: absdifs %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xf0,0x00]
absdifs %d0, %d15, %d14

# CHECK-INST: absdifs %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xf0,0x00]
absdifs %d0, %d15, %d15

# CHECK-INST: absdifs %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xf0,0x10]
absdifs %d1, %d0, %d0

# CHECK-INST: absdifs %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xf0,0x10]
absdifs %d1, %d0, %d1

# CHECK-INST: absdifs %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xf0,0x10]
absdifs %d1, %d0, %d14

# CHECK-INST: absdifs %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xf0,0x10]
absdifs %d1, %d0, %d15

# CHECK-INST: absdifs %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xf0,0x10]
absdifs %d1, %d1, %d0

# CHECK-INST: absdifs %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xf0,0x10]
absdifs %d1, %d1, %d1

# CHECK-INST: absdifs %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xf0,0x10]
absdifs %d1, %d1, %d14

# CHECK-INST: absdifs %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xf0,0x10]
absdifs %d1, %d1, %d15

# CHECK-INST: absdifs %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xf0,0x10]
absdifs %d1, %d14, %d0

# CHECK-INST: absdifs %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xf0,0x10]
absdifs %d1, %d14, %d1

# CHECK-INST: absdifs %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xf0,0x10]
absdifs %d1, %d14, %d14

# CHECK-INST: absdifs %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xf0,0x10]
absdifs %d1, %d14, %d15

# CHECK-INST: absdifs %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xf0,0x10]
absdifs %d1, %d15, %d0

# CHECK-INST: absdifs %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xf0,0x10]
absdifs %d1, %d15, %d1

# CHECK-INST: absdifs %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xf0,0x10]
absdifs %d1, %d15, %d14

# CHECK-INST: absdifs %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xf0,0x10]
absdifs %d1, %d15, %d15

# CHECK-INST: absdifs %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xf0,0xe0]
absdifs %d14, %d0, %d0

# CHECK-INST: absdifs %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xf0,0xe0]
absdifs %d14, %d0, %d1

# CHECK-INST: absdifs %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xf0,0xe0]
absdifs %d14, %d0, %d14

# CHECK-INST: absdifs %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xf0,0xe0]
absdifs %d14, %d0, %d15

# CHECK-INST: absdifs %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xf0,0xe0]
absdifs %d14, %d1, %d0

# CHECK-INST: absdifs %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xf0,0xe0]
absdifs %d14, %d1, %d1

# CHECK-INST: absdifs %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xf0,0xe0]
absdifs %d14, %d1, %d14

# CHECK-INST: absdifs %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xf0,0xe0]
absdifs %d14, %d1, %d15

# CHECK-INST: absdifs %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xf0,0xe0]
absdifs %d14, %d14, %d0

# CHECK-INST: absdifs %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xf0,0xe0]
absdifs %d14, %d14, %d1

# CHECK-INST: absdifs %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xf0,0xe0]
absdifs %d14, %d14, %d14

# CHECK-INST: absdifs %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xf0,0xe0]
absdifs %d14, %d14, %d15

# CHECK-INST: absdifs %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xf0,0xe0]
absdifs %d14, %d15, %d0

# CHECK-INST: absdifs %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xf0,0xe0]
absdifs %d14, %d15, %d1

# CHECK-INST: absdifs %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xf0,0xe0]
absdifs %d14, %d15, %d14

# CHECK-INST: absdifs %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xf0,0xe0]
absdifs %d14, %d15, %d15

# CHECK-INST: absdifs %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xf0,0xf0]
absdifs %d15, %d0, %d0

# CHECK-INST: absdifs %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xf0,0xf0]
absdifs %d15, %d0, %d1

# CHECK-INST: absdifs %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xf0,0xf0]
absdifs %d15, %d0, %d14

# CHECK-INST: absdifs %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xf0,0xf0]
absdifs %d15, %d0, %d15

# CHECK-INST: absdifs %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xf0,0xf0]
absdifs %d15, %d1, %d0

# CHECK-INST: absdifs %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xf0,0xf0]
absdifs %d15, %d1, %d1

# CHECK-INST: absdifs %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xf0,0xf0]
absdifs %d15, %d1, %d14

# CHECK-INST: absdifs %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xf0,0xf0]
absdifs %d15, %d1, %d15

# CHECK-INST: absdifs %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xf0,0xf0]
absdifs %d15, %d14, %d0

# CHECK-INST: absdifs %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xf0,0xf0]
absdifs %d15, %d14, %d1

# CHECK-INST: absdifs %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xf0,0xf0]
absdifs %d15, %d14, %d14

# CHECK-INST: absdifs %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xf0,0xf0]
absdifs %d15, %d14, %d15

# CHECK-INST: absdifs %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xf0,0xf0]
absdifs %d15, %d15, %d0

# CHECK-INST: absdifs %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xf0,0xf0]
absdifs %d15, %d15, %d1

# CHECK-INST: absdifs %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xf0,0xf0]
absdifs %d15, %d15, %d14

# CHECK-INST: absdifs %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xf0,0xf0]
absdifs %d15, %d15, %d15

# CHECK-INST: absdifs %d0, %d0, -256
# CHECK: encoding: [0x8b,0x00,0xf0,0x01]
absdifs %d0, %d0, -256

# CHECK-INST: absdifs %d0, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0xf7,0x01]
absdifs %d0, %d0, -129

# CHECK-INST: absdifs %d0, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0xff,0x01]
absdifs %d0, %d0, -1

# CHECK-INST: absdifs %d0, %d0, 0
# CHECK: encoding: [0x8b,0x00,0xe0,0x01]
absdifs %d0, %d0, 0

# CHECK-INST: absdifs %d0, %d0, 1
# CHECK: encoding: [0x8b,0x10,0xe0,0x01]
absdifs %d0, %d0, 1

# CHECK-INST: absdifs %d0, %d0, 128
# CHECK: encoding: [0x8b,0x00,0xe8,0x01]
absdifs %d0, %d0, 128

# CHECK-INST: absdifs %d0, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0xef,0x01]
absdifs %d0, %d0, 255

# CHECK-INST: absdifs %d0, %d1, -256
# CHECK: encoding: [0x8b,0x01,0xf0,0x01]
absdifs %d0, %d1, -256

# CHECK-INST: absdifs %d0, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0xf7,0x01]
absdifs %d0, %d1, -129

# CHECK-INST: absdifs %d0, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0xff,0x01]
absdifs %d0, %d1, -1

# CHECK-INST: absdifs %d0, %d1, 0
# CHECK: encoding: [0x8b,0x01,0xe0,0x01]
absdifs %d0, %d1, 0

# CHECK-INST: absdifs %d0, %d1, 1
# CHECK: encoding: [0x8b,0x11,0xe0,0x01]
absdifs %d0, %d1, 1

# CHECK-INST: absdifs %d0, %d1, 128
# CHECK: encoding: [0x8b,0x01,0xe8,0x01]
absdifs %d0, %d1, 128

# CHECK-INST: absdifs %d0, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0xef,0x01]
absdifs %d0, %d1, 255

# CHECK-INST: absdifs %d0, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0xf0,0x01]
absdifs %d0, %d14, -256

# CHECK-INST: absdifs %d0, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0xf7,0x01]
absdifs %d0, %d14, -129

# CHECK-INST: absdifs %d0, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0xff,0x01]
absdifs %d0, %d14, -1

# CHECK-INST: absdifs %d0, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0xe0,0x01]
absdifs %d0, %d14, 0

# CHECK-INST: absdifs %d0, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0xe0,0x01]
absdifs %d0, %d14, 1

# CHECK-INST: absdifs %d0, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0xe8,0x01]
absdifs %d0, %d14, 128

# CHECK-INST: absdifs %d0, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0xef,0x01]
absdifs %d0, %d14, 255

# CHECK-INST: absdifs %d0, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0xf0,0x01]
absdifs %d0, %d15, -256

# CHECK-INST: absdifs %d0, %d15, -129
# CHECK: encoding: [0x8b,0xff,0xf7,0x01]
absdifs %d0, %d15, -129

# CHECK-INST: absdifs %d0, %d15, -1
# CHECK: encoding: [0x8b,0xff,0xff,0x01]
absdifs %d0, %d15, -1

# CHECK-INST: absdifs %d0, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0xe0,0x01]
absdifs %d0, %d15, 0

# CHECK-INST: absdifs %d0, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0xe0,0x01]
absdifs %d0, %d15, 1

# CHECK-INST: absdifs %d0, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0xe8,0x01]
absdifs %d0, %d15, 128

# CHECK-INST: absdifs %d0, %d15, 255
# CHECK: encoding: [0x8b,0xff,0xef,0x01]
absdifs %d0, %d15, 255

# CHECK-INST: absdifs %d1, %d0, -256
# CHECK: encoding: [0x8b,0x00,0xf0,0x11]
absdifs %d1, %d0, -256

# CHECK-INST: absdifs %d1, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0xf7,0x11]
absdifs %d1, %d0, -129

# CHECK-INST: absdifs %d1, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0xff,0x11]
absdifs %d1, %d0, -1

# CHECK-INST: absdifs %d1, %d0, 0
# CHECK: encoding: [0x8b,0x00,0xe0,0x11]
absdifs %d1, %d0, 0

# CHECK-INST: absdifs %d1, %d0, 1
# CHECK: encoding: [0x8b,0x10,0xe0,0x11]
absdifs %d1, %d0, 1

# CHECK-INST: absdifs %d1, %d0, 128
# CHECK: encoding: [0x8b,0x00,0xe8,0x11]
absdifs %d1, %d0, 128

# CHECK-INST: absdifs %d1, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0xef,0x11]
absdifs %d1, %d0, 255

# CHECK-INST: absdifs %d1, %d1, -256
# CHECK: encoding: [0x8b,0x01,0xf0,0x11]
absdifs %d1, %d1, -256

# CHECK-INST: absdifs %d1, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0xf7,0x11]
absdifs %d1, %d1, -129

# CHECK-INST: absdifs %d1, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0xff,0x11]
absdifs %d1, %d1, -1

# CHECK-INST: absdifs %d1, %d1, 0
# CHECK: encoding: [0x8b,0x01,0xe0,0x11]
absdifs %d1, %d1, 0

# CHECK-INST: absdifs %d1, %d1, 1
# CHECK: encoding: [0x8b,0x11,0xe0,0x11]
absdifs %d1, %d1, 1

# CHECK-INST: absdifs %d1, %d1, 128
# CHECK: encoding: [0x8b,0x01,0xe8,0x11]
absdifs %d1, %d1, 128

# CHECK-INST: absdifs %d1, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0xef,0x11]
absdifs %d1, %d1, 255

# CHECK-INST: absdifs %d1, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0xf0,0x11]
absdifs %d1, %d14, -256

# CHECK-INST: absdifs %d1, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0xf7,0x11]
absdifs %d1, %d14, -129

# CHECK-INST: absdifs %d1, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0xff,0x11]
absdifs %d1, %d14, -1

# CHECK-INST: absdifs %d1, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0xe0,0x11]
absdifs %d1, %d14, 0

# CHECK-INST: absdifs %d1, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0xe0,0x11]
absdifs %d1, %d14, 1

# CHECK-INST: absdifs %d1, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0xe8,0x11]
absdifs %d1, %d14, 128

# CHECK-INST: absdifs %d1, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0xef,0x11]
absdifs %d1, %d14, 255

# CHECK-INST: absdifs %d1, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0xf0,0x11]
absdifs %d1, %d15, -256

# CHECK-INST: absdifs %d1, %d15, -129
# CHECK: encoding: [0x8b,0xff,0xf7,0x11]
absdifs %d1, %d15, -129

# CHECK-INST: absdifs %d1, %d15, -1
# CHECK: encoding: [0x8b,0xff,0xff,0x11]
absdifs %d1, %d15, -1

# CHECK-INST: absdifs %d1, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0xe0,0x11]
absdifs %d1, %d15, 0

# CHECK-INST: absdifs %d1, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0xe0,0x11]
absdifs %d1, %d15, 1

# CHECK-INST: absdifs %d1, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0xe8,0x11]
absdifs %d1, %d15, 128

# CHECK-INST: absdifs %d1, %d15, 255
# CHECK: encoding: [0x8b,0xff,0xef,0x11]
absdifs %d1, %d15, 255

# CHECK-INST: absdifs %d14, %d0, -256
# CHECK: encoding: [0x8b,0x00,0xf0,0xe1]
absdifs %d14, %d0, -256

# CHECK-INST: absdifs %d14, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0xf7,0xe1]
absdifs %d14, %d0, -129

# CHECK-INST: absdifs %d14, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0xff,0xe1]
absdifs %d14, %d0, -1

# CHECK-INST: absdifs %d14, %d0, 0
# CHECK: encoding: [0x8b,0x00,0xe0,0xe1]
absdifs %d14, %d0, 0

# CHECK-INST: absdifs %d14, %d0, 1
# CHECK: encoding: [0x8b,0x10,0xe0,0xe1]
absdifs %d14, %d0, 1

# CHECK-INST: absdifs %d14, %d0, 128
# CHECK: encoding: [0x8b,0x00,0xe8,0xe1]
absdifs %d14, %d0, 128

# CHECK-INST: absdifs %d14, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0xef,0xe1]
absdifs %d14, %d0, 255

# CHECK-INST: absdifs %d14, %d1, -256
# CHECK: encoding: [0x8b,0x01,0xf0,0xe1]
absdifs %d14, %d1, -256

# CHECK-INST: absdifs %d14, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0xf7,0xe1]
absdifs %d14, %d1, -129

# CHECK-INST: absdifs %d14, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0xff,0xe1]
absdifs %d14, %d1, -1

# CHECK-INST: absdifs %d14, %d1, 0
# CHECK: encoding: [0x8b,0x01,0xe0,0xe1]
absdifs %d14, %d1, 0

# CHECK-INST: absdifs %d14, %d1, 1
# CHECK: encoding: [0x8b,0x11,0xe0,0xe1]
absdifs %d14, %d1, 1

# CHECK-INST: absdifs %d14, %d1, 128
# CHECK: encoding: [0x8b,0x01,0xe8,0xe1]
absdifs %d14, %d1, 128

# CHECK-INST: absdifs %d14, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0xef,0xe1]
absdifs %d14, %d1, 255

# CHECK-INST: absdifs %d14, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0xf0,0xe1]
absdifs %d14, %d14, -256

# CHECK-INST: absdifs %d14, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0xf7,0xe1]
absdifs %d14, %d14, -129

# CHECK-INST: absdifs %d14, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0xff,0xe1]
absdifs %d14, %d14, -1

# CHECK-INST: absdifs %d14, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0xe0,0xe1]
absdifs %d14, %d14, 0

# CHECK-INST: absdifs %d14, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0xe0,0xe1]
absdifs %d14, %d14, 1

# CHECK-INST: absdifs %d14, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0xe8,0xe1]
absdifs %d14, %d14, 128

# CHECK-INST: absdifs %d14, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0xef,0xe1]
absdifs %d14, %d14, 255

# CHECK-INST: absdifs %d14, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0xf0,0xe1]
absdifs %d14, %d15, -256

# CHECK-INST: absdifs %d14, %d15, -129
# CHECK: encoding: [0x8b,0xff,0xf7,0xe1]
absdifs %d14, %d15, -129

# CHECK-INST: absdifs %d14, %d15, -1
# CHECK: encoding: [0x8b,0xff,0xff,0xe1]
absdifs %d14, %d15, -1

# CHECK-INST: absdifs %d14, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0xe0,0xe1]
absdifs %d14, %d15, 0

# CHECK-INST: absdifs %d14, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0xe0,0xe1]
absdifs %d14, %d15, 1

# CHECK-INST: absdifs %d14, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0xe8,0xe1]
absdifs %d14, %d15, 128

# CHECK-INST: absdifs %d14, %d15, 255
# CHECK: encoding: [0x8b,0xff,0xef,0xe1]
absdifs %d14, %d15, 255

# CHECK-INST: absdifs %d15, %d0, -256
# CHECK: encoding: [0x8b,0x00,0xf0,0xf1]
absdifs %d15, %d0, -256

# CHECK-INST: absdifs %d15, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0xf7,0xf1]
absdifs %d15, %d0, -129

# CHECK-INST: absdifs %d15, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0xff,0xf1]
absdifs %d15, %d0, -1

# CHECK-INST: absdifs %d15, %d0, 0
# CHECK: encoding: [0x8b,0x00,0xe0,0xf1]
absdifs %d15, %d0, 0

# CHECK-INST: absdifs %d15, %d0, 1
# CHECK: encoding: [0x8b,0x10,0xe0,0xf1]
absdifs %d15, %d0, 1

# CHECK-INST: absdifs %d15, %d0, 128
# CHECK: encoding: [0x8b,0x00,0xe8,0xf1]
absdifs %d15, %d0, 128

# CHECK-INST: absdifs %d15, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0xef,0xf1]
absdifs %d15, %d0, 255

# CHECK-INST: absdifs %d15, %d1, -256
# CHECK: encoding: [0x8b,0x01,0xf0,0xf1]
absdifs %d15, %d1, -256

# CHECK-INST: absdifs %d15, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0xf7,0xf1]
absdifs %d15, %d1, -129

# CHECK-INST: absdifs %d15, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0xff,0xf1]
absdifs %d15, %d1, -1

# CHECK-INST: absdifs %d15, %d1, 0
# CHECK: encoding: [0x8b,0x01,0xe0,0xf1]
absdifs %d15, %d1, 0

# CHECK-INST: absdifs %d15, %d1, 1
# CHECK: encoding: [0x8b,0x11,0xe0,0xf1]
absdifs %d15, %d1, 1

# CHECK-INST: absdifs %d15, %d1, 128
# CHECK: encoding: [0x8b,0x01,0xe8,0xf1]
absdifs %d15, %d1, 128

# CHECK-INST: absdifs %d15, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0xef,0xf1]
absdifs %d15, %d1, 255

# CHECK-INST: absdifs %d15, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0xf0,0xf1]
absdifs %d15, %d14, -256

# CHECK-INST: absdifs %d15, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0xf7,0xf1]
absdifs %d15, %d14, -129

# CHECK-INST: absdifs %d15, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0xff,0xf1]
absdifs %d15, %d14, -1

# CHECK-INST: absdifs %d15, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0xe0,0xf1]
absdifs %d15, %d14, 0

# CHECK-INST: absdifs %d15, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0xe0,0xf1]
absdifs %d15, %d14, 1

# CHECK-INST: absdifs %d15, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0xe8,0xf1]
absdifs %d15, %d14, 128

# CHECK-INST: absdifs %d15, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0xef,0xf1]
absdifs %d15, %d14, 255

# CHECK-INST: absdifs %d15, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0xf0,0xf1]
absdifs %d15, %d15, -256

# CHECK-INST: absdifs %d15, %d15, -129
# CHECK: encoding: [0x8b,0xff,0xf7,0xf1]
absdifs %d15, %d15, -129

# CHECK-INST: absdifs %d15, %d15, -1
# CHECK: encoding: [0x8b,0xff,0xff,0xf1]
absdifs %d15, %d15, -1

# CHECK-INST: absdifs %d15, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0xe0,0xf1]
absdifs %d15, %d15, 0

# CHECK-INST: absdifs %d15, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0xe0,0xf1]
absdifs %d15, %d15, 1

# CHECK-INST: absdifs %d15, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0xe8,0xf1]
absdifs %d15, %d15, 128

# CHECK-INST: absdifs %d15, %d15, 255
# CHECK: encoding: [0x8b,0xff,0xef,0xf1]
absdifs %d15, %d15, 255

# CHECK-INST: abss %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xd0,0x01]
abss %d0, %d0

# CHECK-INST: abss %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xd0,0x01]
abss %d0, %d1

# CHECK-INST: abss %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xd0,0x01]
abss %d0, %d14

# CHECK-INST: abss %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xd0,0x01]
abss %d0, %d15

# CHECK-INST: abss %d1, %d0
# CHECK: encoding: [0x0b,0x00,0xd0,0x11]
abss %d1, %d0

# CHECK-INST: abss %d1, %d1
# CHECK: encoding: [0x0b,0x10,0xd0,0x11]
abss %d1, %d1

# CHECK-INST: abss %d1, %d14
# CHECK: encoding: [0x0b,0xe0,0xd0,0x11]
abss %d1, %d14

# CHECK-INST: abss %d1, %d15
# CHECK: encoding: [0x0b,0xf0,0xd0,0x11]
abss %d1, %d15

# CHECK-INST: abss %d14, %d0
# CHECK: encoding: [0x0b,0x00,0xd0,0xe1]
abss %d14, %d0

# CHECK-INST: abss %d14, %d1
# CHECK: encoding: [0x0b,0x10,0xd0,0xe1]
abss %d14, %d1

# CHECK-INST: abss %d14, %d14
# CHECK: encoding: [0x0b,0xe0,0xd0,0xe1]
abss %d14, %d14

# CHECK-INST: abss %d14, %d15
# CHECK: encoding: [0x0b,0xf0,0xd0,0xe1]
abss %d14, %d15

# CHECK-INST: abss %d15, %d0
# CHECK: encoding: [0x0b,0x00,0xd0,0xf1]
abss %d15, %d0

# CHECK-INST: abss %d15, %d1
# CHECK: encoding: [0x0b,0x10,0xd0,0xf1]
abss %d15, %d1

# CHECK-INST: abss %d15, %d14
# CHECK: encoding: [0x0b,0xe0,0xd0,0xf1]
abss %d15, %d14

# CHECK-INST: abss %d15, %d15
# CHECK: encoding: [0x0b,0xf0,0xd0,0xf1]
abss %d15, %d15
 