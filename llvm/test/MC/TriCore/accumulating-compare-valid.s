# RUN: llvm-mc %s -triple=tricore -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK,CHECK-INST %s
# RUN: llvm-mc -filetype=obj -triple=tricore < %s \
# RUN:     | llvm-objdump -d - | FileCheck -check-prefix=CHECK-INST %s


# CHECK-INST: and.eq %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x00,0x02]
and.eq %d0, %d0, %d0

# CHECK-INST: and.eq %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x00,0x02]
and.eq %d0, %d0, %d1

# CHECK-INST: and.eq %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x00,0x02]
and.eq %d0, %d0, %d14

# CHECK-INST: and.eq %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x00,0x02]
and.eq %d0, %d0, %d15

# CHECK-INST: and.eq %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x00,0x02]
and.eq %d0, %d1, %d0

# CHECK-INST: and.eq %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x00,0x02]
and.eq %d0, %d1, %d1

# CHECK-INST: and.eq %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x00,0x02]
and.eq %d0, %d1, %d14

# CHECK-INST: and.eq %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x00,0x02]
and.eq %d0, %d1, %d15

# CHECK-INST: and.eq %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x00,0x02]
and.eq %d0, %d14, %d0

# CHECK-INST: and.eq %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x00,0x02]
and.eq %d0, %d14, %d1

# CHECK-INST: and.eq %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x00,0x02]
and.eq %d0, %d14, %d14

# CHECK-INST: and.eq %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x00,0x02]
and.eq %d0, %d14, %d15

# CHECK-INST: and.eq %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x00,0x02]
and.eq %d0, %d15, %d0

# CHECK-INST: and.eq %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x00,0x02]
and.eq %d0, %d15, %d1

# CHECK-INST: and.eq %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x00,0x02]
and.eq %d0, %d15, %d14

# CHECK-INST: and.eq %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x00,0x02]
and.eq %d0, %d15, %d15

# CHECK-INST: and.eq %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x00,0x12]
and.eq %d1, %d0, %d0

# CHECK-INST: and.eq %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x00,0x12]
and.eq %d1, %d0, %d1

# CHECK-INST: and.eq %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x00,0x12]
and.eq %d1, %d0, %d14

# CHECK-INST: and.eq %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x00,0x12]
and.eq %d1, %d0, %d15

# CHECK-INST: and.eq %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x00,0x12]
and.eq %d1, %d1, %d0

# CHECK-INST: and.eq %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x00,0x12]
and.eq %d1, %d1, %d1

# CHECK-INST: and.eq %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x00,0x12]
and.eq %d1, %d1, %d14

# CHECK-INST: and.eq %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x00,0x12]
and.eq %d1, %d1, %d15

# CHECK-INST: and.eq %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x00,0x12]
and.eq %d1, %d14, %d0

# CHECK-INST: and.eq %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x00,0x12]
and.eq %d1, %d14, %d1

# CHECK-INST: and.eq %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x00,0x12]
and.eq %d1, %d14, %d14

# CHECK-INST: and.eq %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x00,0x12]
and.eq %d1, %d14, %d15

# CHECK-INST: and.eq %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x00,0x12]
and.eq %d1, %d15, %d0

# CHECK-INST: and.eq %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x00,0x12]
and.eq %d1, %d15, %d1

# CHECK-INST: and.eq %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x00,0x12]
and.eq %d1, %d15, %d14

# CHECK-INST: and.eq %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x00,0x12]
and.eq %d1, %d15, %d15

# CHECK-INST: and.eq %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x00,0xe2]
and.eq %d14, %d0, %d0

# CHECK-INST: and.eq %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x00,0xe2]
and.eq %d14, %d0, %d1

# CHECK-INST: and.eq %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x00,0xe2]
and.eq %d14, %d0, %d14

# CHECK-INST: and.eq %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x00,0xe2]
and.eq %d14, %d0, %d15

# CHECK-INST: and.eq %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x00,0xe2]
and.eq %d14, %d1, %d0

# CHECK-INST: and.eq %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x00,0xe2]
and.eq %d14, %d1, %d1

# CHECK-INST: and.eq %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x00,0xe2]
and.eq %d14, %d1, %d14

# CHECK-INST: and.eq %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x00,0xe2]
and.eq %d14, %d1, %d15

# CHECK-INST: and.eq %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x00,0xe2]
and.eq %d14, %d14, %d0

# CHECK-INST: and.eq %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x00,0xe2]
and.eq %d14, %d14, %d1

# CHECK-INST: and.eq %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x00,0xe2]
and.eq %d14, %d14, %d14

# CHECK-INST: and.eq %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x00,0xe2]
and.eq %d14, %d14, %d15

# CHECK-INST: and.eq %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x00,0xe2]
and.eq %d14, %d15, %d0

# CHECK-INST: and.eq %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x00,0xe2]
and.eq %d14, %d15, %d1

# CHECK-INST: and.eq %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x00,0xe2]
and.eq %d14, %d15, %d14

# CHECK-INST: and.eq %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x00,0xe2]
and.eq %d14, %d15, %d15

# CHECK-INST: and.eq %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x00,0xf2]
and.eq %d15, %d0, %d0

# CHECK-INST: and.eq %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x00,0xf2]
and.eq %d15, %d0, %d1

# CHECK-INST: and.eq %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x00,0xf2]
and.eq %d15, %d0, %d14

# CHECK-INST: and.eq %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x00,0xf2]
and.eq %d15, %d0, %d15

# CHECK-INST: and.eq %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x00,0xf2]
and.eq %d15, %d1, %d0

# CHECK-INST: and.eq %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x00,0xf2]
and.eq %d15, %d1, %d1

# CHECK-INST: and.eq %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x00,0xf2]
and.eq %d15, %d1, %d14

# CHECK-INST: and.eq %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x00,0xf2]
and.eq %d15, %d1, %d15

# CHECK-INST: and.eq %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x00,0xf2]
and.eq %d15, %d14, %d0

# CHECK-INST: and.eq %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x00,0xf2]
and.eq %d15, %d14, %d1

# CHECK-INST: and.eq %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x00,0xf2]
and.eq %d15, %d14, %d14

# CHECK-INST: and.eq %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x00,0xf2]
and.eq %d15, %d14, %d15

# CHECK-INST: and.eq %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x00,0xf2]
and.eq %d15, %d15, %d0

# CHECK-INST: and.eq %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x00,0xf2]
and.eq %d15, %d15, %d1

# CHECK-INST: and.eq %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x00,0xf2]
and.eq %d15, %d15, %d14

# CHECK-INST: and.eq %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x00,0xf2]
and.eq %d15, %d15, %d15

# CHECK-INST: and.eq %d0, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x10,0x04]
and.eq %d0, %d0, -256

# CHECK-INST: and.eq %d0, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x17,0x04]
and.eq %d0, %d0, -129

# CHECK-INST: and.eq %d0, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x1f,0x04]
and.eq %d0, %d0, -1

# CHECK-INST: and.eq %d0, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x00,0x04]
and.eq %d0, %d0, 0

# CHECK-INST: and.eq %d0, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x00,0x04]
and.eq %d0, %d0, 1

# CHECK-INST: and.eq %d0, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x08,0x04]
and.eq %d0, %d0, 128

# CHECK-INST: and.eq %d0, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x0f,0x04]
and.eq %d0, %d0, 255

# CHECK-INST: and.eq %d0, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x10,0x04]
and.eq %d0, %d1, -256

# CHECK-INST: and.eq %d0, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x17,0x04]
and.eq %d0, %d1, -129

# CHECK-INST: and.eq %d0, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x1f,0x04]
and.eq %d0, %d1, -1

# CHECK-INST: and.eq %d0, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x00,0x04]
and.eq %d0, %d1, 0

# CHECK-INST: and.eq %d0, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x00,0x04]
and.eq %d0, %d1, 1

# CHECK-INST: and.eq %d0, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x08,0x04]
and.eq %d0, %d1, 128

# CHECK-INST: and.eq %d0, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x0f,0x04]
and.eq %d0, %d1, 255

# CHECK-INST: and.eq %d0, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x10,0x04]
and.eq %d0, %d14, -256

# CHECK-INST: and.eq %d0, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x17,0x04]
and.eq %d0, %d14, -129

# CHECK-INST: and.eq %d0, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x1f,0x04]
and.eq %d0, %d14, -1

# CHECK-INST: and.eq %d0, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x00,0x04]
and.eq %d0, %d14, 0

# CHECK-INST: and.eq %d0, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x00,0x04]
and.eq %d0, %d14, 1

# CHECK-INST: and.eq %d0, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x08,0x04]
and.eq %d0, %d14, 128

# CHECK-INST: and.eq %d0, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x0f,0x04]
and.eq %d0, %d14, 255

# CHECK-INST: and.eq %d0, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x10,0x04]
and.eq %d0, %d15, -256

# CHECK-INST: and.eq %d0, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x17,0x04]
and.eq %d0, %d15, -129

# CHECK-INST: and.eq %d0, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x1f,0x04]
and.eq %d0, %d15, -1

# CHECK-INST: and.eq %d0, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x00,0x04]
and.eq %d0, %d15, 0

# CHECK-INST: and.eq %d0, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x00,0x04]
and.eq %d0, %d15, 1

# CHECK-INST: and.eq %d0, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x08,0x04]
and.eq %d0, %d15, 128

# CHECK-INST: and.eq %d0, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x0f,0x04]
and.eq %d0, %d15, 255

# CHECK-INST: and.eq %d1, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x10,0x14]
and.eq %d1, %d0, -256

# CHECK-INST: and.eq %d1, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x17,0x14]
and.eq %d1, %d0, -129

# CHECK-INST: and.eq %d1, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x1f,0x14]
and.eq %d1, %d0, -1

# CHECK-INST: and.eq %d1, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x00,0x14]
and.eq %d1, %d0, 0

# CHECK-INST: and.eq %d1, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x00,0x14]
and.eq %d1, %d0, 1

# CHECK-INST: and.eq %d1, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x08,0x14]
and.eq %d1, %d0, 128

# CHECK-INST: and.eq %d1, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x0f,0x14]
and.eq %d1, %d0, 255

# CHECK-INST: and.eq %d1, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x10,0x14]
and.eq %d1, %d1, -256

# CHECK-INST: and.eq %d1, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x17,0x14]
and.eq %d1, %d1, -129

# CHECK-INST: and.eq %d1, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x1f,0x14]
and.eq %d1, %d1, -1

# CHECK-INST: and.eq %d1, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x00,0x14]
and.eq %d1, %d1, 0

# CHECK-INST: and.eq %d1, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x00,0x14]
and.eq %d1, %d1, 1

# CHECK-INST: and.eq %d1, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x08,0x14]
and.eq %d1, %d1, 128

# CHECK-INST: and.eq %d1, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x0f,0x14]
and.eq %d1, %d1, 255

# CHECK-INST: and.eq %d1, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x10,0x14]
and.eq %d1, %d14, -256

# CHECK-INST: and.eq %d1, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x17,0x14]
and.eq %d1, %d14, -129

# CHECK-INST: and.eq %d1, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x1f,0x14]
and.eq %d1, %d14, -1

# CHECK-INST: and.eq %d1, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x00,0x14]
and.eq %d1, %d14, 0

# CHECK-INST: and.eq %d1, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x00,0x14]
and.eq %d1, %d14, 1

# CHECK-INST: and.eq %d1, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x08,0x14]
and.eq %d1, %d14, 128

# CHECK-INST: and.eq %d1, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x0f,0x14]
and.eq %d1, %d14, 255

# CHECK-INST: and.eq %d1, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x10,0x14]
and.eq %d1, %d15, -256

# CHECK-INST: and.eq %d1, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x17,0x14]
and.eq %d1, %d15, -129

# CHECK-INST: and.eq %d1, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x1f,0x14]
and.eq %d1, %d15, -1

# CHECK-INST: and.eq %d1, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x00,0x14]
and.eq %d1, %d15, 0

# CHECK-INST: and.eq %d1, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x00,0x14]
and.eq %d1, %d15, 1

# CHECK-INST: and.eq %d1, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x08,0x14]
and.eq %d1, %d15, 128

# CHECK-INST: and.eq %d1, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x0f,0x14]
and.eq %d1, %d15, 255

# CHECK-INST: and.eq %d14, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x10,0xe4]
and.eq %d14, %d0, -256

# CHECK-INST: and.eq %d14, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x17,0xe4]
and.eq %d14, %d0, -129

# CHECK-INST: and.eq %d14, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x1f,0xe4]
and.eq %d14, %d0, -1

# CHECK-INST: and.eq %d14, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x00,0xe4]
and.eq %d14, %d0, 0

# CHECK-INST: and.eq %d14, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x00,0xe4]
and.eq %d14, %d0, 1

# CHECK-INST: and.eq %d14, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x08,0xe4]
and.eq %d14, %d0, 128

# CHECK-INST: and.eq %d14, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x0f,0xe4]
and.eq %d14, %d0, 255

# CHECK-INST: and.eq %d14, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x10,0xe4]
and.eq %d14, %d1, -256

# CHECK-INST: and.eq %d14, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x17,0xe4]
and.eq %d14, %d1, -129

# CHECK-INST: and.eq %d14, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x1f,0xe4]
and.eq %d14, %d1, -1

# CHECK-INST: and.eq %d14, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x00,0xe4]
and.eq %d14, %d1, 0

# CHECK-INST: and.eq %d14, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x00,0xe4]
and.eq %d14, %d1, 1

# CHECK-INST: and.eq %d14, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x08,0xe4]
and.eq %d14, %d1, 128

# CHECK-INST: and.eq %d14, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x0f,0xe4]
and.eq %d14, %d1, 255

# CHECK-INST: and.eq %d14, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x10,0xe4]
and.eq %d14, %d14, -256

# CHECK-INST: and.eq %d14, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x17,0xe4]
and.eq %d14, %d14, -129

# CHECK-INST: and.eq %d14, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x1f,0xe4]
and.eq %d14, %d14, -1

# CHECK-INST: and.eq %d14, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x00,0xe4]
and.eq %d14, %d14, 0

# CHECK-INST: and.eq %d14, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x00,0xe4]
and.eq %d14, %d14, 1

# CHECK-INST: and.eq %d14, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x08,0xe4]
and.eq %d14, %d14, 128

# CHECK-INST: and.eq %d14, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x0f,0xe4]
and.eq %d14, %d14, 255

# CHECK-INST: and.eq %d14, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x10,0xe4]
and.eq %d14, %d15, -256

# CHECK-INST: and.eq %d14, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x17,0xe4]
and.eq %d14, %d15, -129

# CHECK-INST: and.eq %d14, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x1f,0xe4]
and.eq %d14, %d15, -1

# CHECK-INST: and.eq %d14, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x00,0xe4]
and.eq %d14, %d15, 0

# CHECK-INST: and.eq %d14, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x00,0xe4]
and.eq %d14, %d15, 1

# CHECK-INST: and.eq %d14, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x08,0xe4]
and.eq %d14, %d15, 128

# CHECK-INST: and.eq %d14, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x0f,0xe4]
and.eq %d14, %d15, 255

# CHECK-INST: and.eq %d15, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x10,0xf4]
and.eq %d15, %d0, -256

# CHECK-INST: and.eq %d15, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x17,0xf4]
and.eq %d15, %d0, -129

# CHECK-INST: and.eq %d15, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x1f,0xf4]
and.eq %d15, %d0, -1

# CHECK-INST: and.eq %d15, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x00,0xf4]
and.eq %d15, %d0, 0

# CHECK-INST: and.eq %d15, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x00,0xf4]
and.eq %d15, %d0, 1

# CHECK-INST: and.eq %d15, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x08,0xf4]
and.eq %d15, %d0, 128

# CHECK-INST: and.eq %d15, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x0f,0xf4]
and.eq %d15, %d0, 255

# CHECK-INST: and.eq %d15, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x10,0xf4]
and.eq %d15, %d1, -256

# CHECK-INST: and.eq %d15, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x17,0xf4]
and.eq %d15, %d1, -129

# CHECK-INST: and.eq %d15, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x1f,0xf4]
and.eq %d15, %d1, -1

# CHECK-INST: and.eq %d15, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x00,0xf4]
and.eq %d15, %d1, 0

# CHECK-INST: and.eq %d15, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x00,0xf4]
and.eq %d15, %d1, 1

# CHECK-INST: and.eq %d15, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x08,0xf4]
and.eq %d15, %d1, 128

# CHECK-INST: and.eq %d15, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x0f,0xf4]
and.eq %d15, %d1, 255

# CHECK-INST: and.eq %d15, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x10,0xf4]
and.eq %d15, %d14, -256

# CHECK-INST: and.eq %d15, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x17,0xf4]
and.eq %d15, %d14, -129

# CHECK-INST: and.eq %d15, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x1f,0xf4]
and.eq %d15, %d14, -1

# CHECK-INST: and.eq %d15, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x00,0xf4]
and.eq %d15, %d14, 0

# CHECK-INST: and.eq %d15, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x00,0xf4]
and.eq %d15, %d14, 1

# CHECK-INST: and.eq %d15, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x08,0xf4]
and.eq %d15, %d14, 128

# CHECK-INST: and.eq %d15, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x0f,0xf4]
and.eq %d15, %d14, 255

# CHECK-INST: and.eq %d15, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x10,0xf4]
and.eq %d15, %d15, -256

# CHECK-INST: and.eq %d15, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x17,0xf4]
and.eq %d15, %d15, -129

# CHECK-INST: and.eq %d15, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x1f,0xf4]
and.eq %d15, %d15, -1

# CHECK-INST: and.eq %d15, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x00,0xf4]
and.eq %d15, %d15, 0

# CHECK-INST: and.eq %d15, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x00,0xf4]
and.eq %d15, %d15, 1

# CHECK-INST: and.eq %d15, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x08,0xf4]
and.eq %d15, %d15, 128

# CHECK-INST: and.eq %d15, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x0f,0xf4]
and.eq %d15, %d15, 255

# CHECK-INST: and.ge %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x40,0x02]
and.ge %d0, %d0, %d0

# CHECK-INST: and.ge %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x40,0x02]
and.ge %d0, %d0, %d1

# CHECK-INST: and.ge %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x40,0x02]
and.ge %d0, %d0, %d14

# CHECK-INST: and.ge %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x40,0x02]
and.ge %d0, %d0, %d15

# CHECK-INST: and.ge %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x40,0x02]
and.ge %d0, %d1, %d0

# CHECK-INST: and.ge %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x40,0x02]
and.ge %d0, %d1, %d1

# CHECK-INST: and.ge %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x40,0x02]
and.ge %d0, %d1, %d14

# CHECK-INST: and.ge %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x40,0x02]
and.ge %d0, %d1, %d15

# CHECK-INST: and.ge %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x40,0x02]
and.ge %d0, %d14, %d0

# CHECK-INST: and.ge %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x40,0x02]
and.ge %d0, %d14, %d1

# CHECK-INST: and.ge %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x40,0x02]
and.ge %d0, %d14, %d14

# CHECK-INST: and.ge %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x40,0x02]
and.ge %d0, %d14, %d15

# CHECK-INST: and.ge %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x40,0x02]
and.ge %d0, %d15, %d0

# CHECK-INST: and.ge %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x40,0x02]
and.ge %d0, %d15, %d1

# CHECK-INST: and.ge %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x40,0x02]
and.ge %d0, %d15, %d14

# CHECK-INST: and.ge %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x40,0x02]
and.ge %d0, %d15, %d15

# CHECK-INST: and.ge %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x40,0x12]
and.ge %d1, %d0, %d0

# CHECK-INST: and.ge %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x40,0x12]
and.ge %d1, %d0, %d1

# CHECK-INST: and.ge %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x40,0x12]
and.ge %d1, %d0, %d14

# CHECK-INST: and.ge %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x40,0x12]
and.ge %d1, %d0, %d15

# CHECK-INST: and.ge %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x40,0x12]
and.ge %d1, %d1, %d0

# CHECK-INST: and.ge %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x40,0x12]
and.ge %d1, %d1, %d1

# CHECK-INST: and.ge %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x40,0x12]
and.ge %d1, %d1, %d14

# CHECK-INST: and.ge %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x40,0x12]
and.ge %d1, %d1, %d15

# CHECK-INST: and.ge %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x40,0x12]
and.ge %d1, %d14, %d0

# CHECK-INST: and.ge %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x40,0x12]
and.ge %d1, %d14, %d1

# CHECK-INST: and.ge %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x40,0x12]
and.ge %d1, %d14, %d14

# CHECK-INST: and.ge %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x40,0x12]
and.ge %d1, %d14, %d15

# CHECK-INST: and.ge %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x40,0x12]
and.ge %d1, %d15, %d0

# CHECK-INST: and.ge %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x40,0x12]
and.ge %d1, %d15, %d1

# CHECK-INST: and.ge %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x40,0x12]
and.ge %d1, %d15, %d14

# CHECK-INST: and.ge %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x40,0x12]
and.ge %d1, %d15, %d15

# CHECK-INST: and.ge %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x40,0xe2]
and.ge %d14, %d0, %d0

# CHECK-INST: and.ge %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x40,0xe2]
and.ge %d14, %d0, %d1

# CHECK-INST: and.ge %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x40,0xe2]
and.ge %d14, %d0, %d14

# CHECK-INST: and.ge %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x40,0xe2]
and.ge %d14, %d0, %d15

# CHECK-INST: and.ge %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x40,0xe2]
and.ge %d14, %d1, %d0

# CHECK-INST: and.ge %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x40,0xe2]
and.ge %d14, %d1, %d1

# CHECK-INST: and.ge %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x40,0xe2]
and.ge %d14, %d1, %d14

# CHECK-INST: and.ge %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x40,0xe2]
and.ge %d14, %d1, %d15

# CHECK-INST: and.ge %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x40,0xe2]
and.ge %d14, %d14, %d0

# CHECK-INST: and.ge %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x40,0xe2]
and.ge %d14, %d14, %d1

# CHECK-INST: and.ge %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x40,0xe2]
and.ge %d14, %d14, %d14

# CHECK-INST: and.ge %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x40,0xe2]
and.ge %d14, %d14, %d15

# CHECK-INST: and.ge %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x40,0xe2]
and.ge %d14, %d15, %d0

# CHECK-INST: and.ge %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x40,0xe2]
and.ge %d14, %d15, %d1

# CHECK-INST: and.ge %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x40,0xe2]
and.ge %d14, %d15, %d14

# CHECK-INST: and.ge %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x40,0xe2]
and.ge %d14, %d15, %d15

# CHECK-INST: and.ge %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x40,0xf2]
and.ge %d15, %d0, %d0

# CHECK-INST: and.ge %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x40,0xf2]
and.ge %d15, %d0, %d1

# CHECK-INST: and.ge %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x40,0xf2]
and.ge %d15, %d0, %d14

# CHECK-INST: and.ge %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x40,0xf2]
and.ge %d15, %d0, %d15

# CHECK-INST: and.ge %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x40,0xf2]
and.ge %d15, %d1, %d0

# CHECK-INST: and.ge %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x40,0xf2]
and.ge %d15, %d1, %d1

# CHECK-INST: and.ge %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x40,0xf2]
and.ge %d15, %d1, %d14

# CHECK-INST: and.ge %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x40,0xf2]
and.ge %d15, %d1, %d15

# CHECK-INST: and.ge %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x40,0xf2]
and.ge %d15, %d14, %d0

# CHECK-INST: and.ge %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x40,0xf2]
and.ge %d15, %d14, %d1

# CHECK-INST: and.ge %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x40,0xf2]
and.ge %d15, %d14, %d14

# CHECK-INST: and.ge %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x40,0xf2]
and.ge %d15, %d14, %d15

# CHECK-INST: and.ge %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x40,0xf2]
and.ge %d15, %d15, %d0

# CHECK-INST: and.ge %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x40,0xf2]
and.ge %d15, %d15, %d1

# CHECK-INST: and.ge %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x40,0xf2]
and.ge %d15, %d15, %d14

# CHECK-INST: and.ge %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x40,0xf2]
and.ge %d15, %d15, %d15

# CHECK-INST: and.ge %d0, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x90,0x04]
and.ge %d0, %d0, -256

# CHECK-INST: and.ge %d0, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x97,0x04]
and.ge %d0, %d0, -129

# CHECK-INST: and.ge %d0, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x9f,0x04]
and.ge %d0, %d0, -1

# CHECK-INST: and.ge %d0, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x80,0x04]
and.ge %d0, %d0, 0

# CHECK-INST: and.ge %d0, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x80,0x04]
and.ge %d0, %d0, 1

# CHECK-INST: and.ge %d0, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x88,0x04]
and.ge %d0, %d0, 128

# CHECK-INST: and.ge %d0, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x8f,0x04]
and.ge %d0, %d0, 255

# CHECK-INST: and.ge %d0, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x90,0x04]
and.ge %d0, %d1, -256

# CHECK-INST: and.ge %d0, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x97,0x04]
and.ge %d0, %d1, -129

# CHECK-INST: and.ge %d0, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x9f,0x04]
and.ge %d0, %d1, -1

# CHECK-INST: and.ge %d0, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x80,0x04]
and.ge %d0, %d1, 0

# CHECK-INST: and.ge %d0, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x80,0x04]
and.ge %d0, %d1, 1

# CHECK-INST: and.ge %d0, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x88,0x04]
and.ge %d0, %d1, 128

# CHECK-INST: and.ge %d0, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x8f,0x04]
and.ge %d0, %d1, 255

# CHECK-INST: and.ge %d0, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x90,0x04]
and.ge %d0, %d14, -256

# CHECK-INST: and.ge %d0, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x97,0x04]
and.ge %d0, %d14, -129

# CHECK-INST: and.ge %d0, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x9f,0x04]
and.ge %d0, %d14, -1

# CHECK-INST: and.ge %d0, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x80,0x04]
and.ge %d0, %d14, 0

# CHECK-INST: and.ge %d0, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x80,0x04]
and.ge %d0, %d14, 1

# CHECK-INST: and.ge %d0, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x88,0x04]
and.ge %d0, %d14, 128

# CHECK-INST: and.ge %d0, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x8f,0x04]
and.ge %d0, %d14, 255

# CHECK-INST: and.ge %d0, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x90,0x04]
and.ge %d0, %d15, -256

# CHECK-INST: and.ge %d0, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x97,0x04]
and.ge %d0, %d15, -129

# CHECK-INST: and.ge %d0, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x9f,0x04]
and.ge %d0, %d15, -1

# CHECK-INST: and.ge %d0, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x80,0x04]
and.ge %d0, %d15, 0

# CHECK-INST: and.ge %d0, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x80,0x04]
and.ge %d0, %d15, 1

# CHECK-INST: and.ge %d0, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x88,0x04]
and.ge %d0, %d15, 128

# CHECK-INST: and.ge %d0, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x8f,0x04]
and.ge %d0, %d15, 255

# CHECK-INST: and.ge %d1, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x90,0x14]
and.ge %d1, %d0, -256

# CHECK-INST: and.ge %d1, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x97,0x14]
and.ge %d1, %d0, -129

# CHECK-INST: and.ge %d1, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x9f,0x14]
and.ge %d1, %d0, -1

# CHECK-INST: and.ge %d1, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x80,0x14]
and.ge %d1, %d0, 0

# CHECK-INST: and.ge %d1, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x80,0x14]
and.ge %d1, %d0, 1

# CHECK-INST: and.ge %d1, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x88,0x14]
and.ge %d1, %d0, 128

# CHECK-INST: and.ge %d1, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x8f,0x14]
and.ge %d1, %d0, 255

# CHECK-INST: and.ge %d1, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x90,0x14]
and.ge %d1, %d1, -256

# CHECK-INST: and.ge %d1, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x97,0x14]
and.ge %d1, %d1, -129

# CHECK-INST: and.ge %d1, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x9f,0x14]
and.ge %d1, %d1, -1

# CHECK-INST: and.ge %d1, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x80,0x14]
and.ge %d1, %d1, 0

# CHECK-INST: and.ge %d1, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x80,0x14]
and.ge %d1, %d1, 1

# CHECK-INST: and.ge %d1, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x88,0x14]
and.ge %d1, %d1, 128

# CHECK-INST: and.ge %d1, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x8f,0x14]
and.ge %d1, %d1, 255

# CHECK-INST: and.ge %d1, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x90,0x14]
and.ge %d1, %d14, -256

# CHECK-INST: and.ge %d1, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x97,0x14]
and.ge %d1, %d14, -129

# CHECK-INST: and.ge %d1, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x9f,0x14]
and.ge %d1, %d14, -1

# CHECK-INST: and.ge %d1, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x80,0x14]
and.ge %d1, %d14, 0

# CHECK-INST: and.ge %d1, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x80,0x14]
and.ge %d1, %d14, 1

# CHECK-INST: and.ge %d1, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x88,0x14]
and.ge %d1, %d14, 128

# CHECK-INST: and.ge %d1, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x8f,0x14]
and.ge %d1, %d14, 255

# CHECK-INST: and.ge %d1, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x90,0x14]
and.ge %d1, %d15, -256

# CHECK-INST: and.ge %d1, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x97,0x14]
and.ge %d1, %d15, -129

# CHECK-INST: and.ge %d1, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x9f,0x14]
and.ge %d1, %d15, -1

# CHECK-INST: and.ge %d1, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x80,0x14]
and.ge %d1, %d15, 0

# CHECK-INST: and.ge %d1, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x80,0x14]
and.ge %d1, %d15, 1

# CHECK-INST: and.ge %d1, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x88,0x14]
and.ge %d1, %d15, 128

# CHECK-INST: and.ge %d1, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x8f,0x14]
and.ge %d1, %d15, 255

# CHECK-INST: and.ge %d14, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x90,0xe4]
and.ge %d14, %d0, -256

# CHECK-INST: and.ge %d14, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x97,0xe4]
and.ge %d14, %d0, -129

# CHECK-INST: and.ge %d14, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x9f,0xe4]
and.ge %d14, %d0, -1

# CHECK-INST: and.ge %d14, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x80,0xe4]
and.ge %d14, %d0, 0

# CHECK-INST: and.ge %d14, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x80,0xe4]
and.ge %d14, %d0, 1

# CHECK-INST: and.ge %d14, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x88,0xe4]
and.ge %d14, %d0, 128

# CHECK-INST: and.ge %d14, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x8f,0xe4]
and.ge %d14, %d0, 255

# CHECK-INST: and.ge %d14, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x90,0xe4]
and.ge %d14, %d1, -256

# CHECK-INST: and.ge %d14, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x97,0xe4]
and.ge %d14, %d1, -129

# CHECK-INST: and.ge %d14, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x9f,0xe4]
and.ge %d14, %d1, -1

# CHECK-INST: and.ge %d14, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x80,0xe4]
and.ge %d14, %d1, 0

# CHECK-INST: and.ge %d14, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x80,0xe4]
and.ge %d14, %d1, 1

# CHECK-INST: and.ge %d14, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x88,0xe4]
and.ge %d14, %d1, 128

# CHECK-INST: and.ge %d14, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x8f,0xe4]
and.ge %d14, %d1, 255

# CHECK-INST: and.ge %d14, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x90,0xe4]
and.ge %d14, %d14, -256

# CHECK-INST: and.ge %d14, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x97,0xe4]
and.ge %d14, %d14, -129

# CHECK-INST: and.ge %d14, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x9f,0xe4]
and.ge %d14, %d14, -1

# CHECK-INST: and.ge %d14, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x80,0xe4]
and.ge %d14, %d14, 0

# CHECK-INST: and.ge %d14, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x80,0xe4]
and.ge %d14, %d14, 1

# CHECK-INST: and.ge %d14, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x88,0xe4]
and.ge %d14, %d14, 128

# CHECK-INST: and.ge %d14, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x8f,0xe4]
and.ge %d14, %d14, 255

# CHECK-INST: and.ge %d14, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x90,0xe4]
and.ge %d14, %d15, -256

# CHECK-INST: and.ge %d14, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x97,0xe4]
and.ge %d14, %d15, -129

# CHECK-INST: and.ge %d14, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x9f,0xe4]
and.ge %d14, %d15, -1

# CHECK-INST: and.ge %d14, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x80,0xe4]
and.ge %d14, %d15, 0

# CHECK-INST: and.ge %d14, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x80,0xe4]
and.ge %d14, %d15, 1

# CHECK-INST: and.ge %d14, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x88,0xe4]
and.ge %d14, %d15, 128

# CHECK-INST: and.ge %d14, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x8f,0xe4]
and.ge %d14, %d15, 255

# CHECK-INST: and.ge %d15, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x90,0xf4]
and.ge %d15, %d0, -256

# CHECK-INST: and.ge %d15, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x97,0xf4]
and.ge %d15, %d0, -129

# CHECK-INST: and.ge %d15, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x9f,0xf4]
and.ge %d15, %d0, -1

# CHECK-INST: and.ge %d15, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x80,0xf4]
and.ge %d15, %d0, 0

# CHECK-INST: and.ge %d15, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x80,0xf4]
and.ge %d15, %d0, 1

# CHECK-INST: and.ge %d15, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x88,0xf4]
and.ge %d15, %d0, 128

# CHECK-INST: and.ge %d15, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x8f,0xf4]
and.ge %d15, %d0, 255

# CHECK-INST: and.ge %d15, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x90,0xf4]
and.ge %d15, %d1, -256

# CHECK-INST: and.ge %d15, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x97,0xf4]
and.ge %d15, %d1, -129

# CHECK-INST: and.ge %d15, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x9f,0xf4]
and.ge %d15, %d1, -1

# CHECK-INST: and.ge %d15, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x80,0xf4]
and.ge %d15, %d1, 0

# CHECK-INST: and.ge %d15, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x80,0xf4]
and.ge %d15, %d1, 1

# CHECK-INST: and.ge %d15, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x88,0xf4]
and.ge %d15, %d1, 128

# CHECK-INST: and.ge %d15, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x8f,0xf4]
and.ge %d15, %d1, 255

# CHECK-INST: and.ge %d15, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x90,0xf4]
and.ge %d15, %d14, -256

# CHECK-INST: and.ge %d15, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x97,0xf4]
and.ge %d15, %d14, -129

# CHECK-INST: and.ge %d15, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x9f,0xf4]
and.ge %d15, %d14, -1

# CHECK-INST: and.ge %d15, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x80,0xf4]
and.ge %d15, %d14, 0

# CHECK-INST: and.ge %d15, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x80,0xf4]
and.ge %d15, %d14, 1

# CHECK-INST: and.ge %d15, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x88,0xf4]
and.ge %d15, %d14, 128

# CHECK-INST: and.ge %d15, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x8f,0xf4]
and.ge %d15, %d14, 255

# CHECK-INST: and.ge %d15, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x90,0xf4]
and.ge %d15, %d15, -256

# CHECK-INST: and.ge %d15, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x97,0xf4]
and.ge %d15, %d15, -129

# CHECK-INST: and.ge %d15, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x9f,0xf4]
and.ge %d15, %d15, -1

# CHECK-INST: and.ge %d15, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x80,0xf4]
and.ge %d15, %d15, 0

# CHECK-INST: and.ge %d15, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x80,0xf4]
and.ge %d15, %d15, 1

# CHECK-INST: and.ge %d15, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x88,0xf4]
and.ge %d15, %d15, 128

# CHECK-INST: and.ge %d15, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x8f,0xf4]
and.ge %d15, %d15, 255

# CHECK-INST: and.ge.u %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x50,0x02]
and.ge.u %d0, %d0, %d0

# CHECK-INST: and.ge.u %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x50,0x02]
and.ge.u %d0, %d0, %d1

# CHECK-INST: and.ge.u %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x50,0x02]
and.ge.u %d0, %d0, %d14

# CHECK-INST: and.ge.u %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x50,0x02]
and.ge.u %d0, %d0, %d15

# CHECK-INST: and.ge.u %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x50,0x02]
and.ge.u %d0, %d1, %d0

# CHECK-INST: and.ge.u %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x50,0x02]
and.ge.u %d0, %d1, %d1

# CHECK-INST: and.ge.u %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x50,0x02]
and.ge.u %d0, %d1, %d14

# CHECK-INST: and.ge.u %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x50,0x02]
and.ge.u %d0, %d1, %d15

# CHECK-INST: and.ge.u %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x50,0x02]
and.ge.u %d0, %d14, %d0

# CHECK-INST: and.ge.u %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x50,0x02]
and.ge.u %d0, %d14, %d1

# CHECK-INST: and.ge.u %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x50,0x02]
and.ge.u %d0, %d14, %d14

# CHECK-INST: and.ge.u %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x50,0x02]
and.ge.u %d0, %d14, %d15

# CHECK-INST: and.ge.u %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x50,0x02]
and.ge.u %d0, %d15, %d0

# CHECK-INST: and.ge.u %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x50,0x02]
and.ge.u %d0, %d15, %d1

# CHECK-INST: and.ge.u %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x50,0x02]
and.ge.u %d0, %d15, %d14

# CHECK-INST: and.ge.u %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x50,0x02]
and.ge.u %d0, %d15, %d15

# CHECK-INST: and.ge.u %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x50,0x12]
and.ge.u %d1, %d0, %d0

# CHECK-INST: and.ge.u %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x50,0x12]
and.ge.u %d1, %d0, %d1

# CHECK-INST: and.ge.u %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x50,0x12]
and.ge.u %d1, %d0, %d14

# CHECK-INST: and.ge.u %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x50,0x12]
and.ge.u %d1, %d0, %d15

# CHECK-INST: and.ge.u %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x50,0x12]
and.ge.u %d1, %d1, %d0

# CHECK-INST: and.ge.u %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x50,0x12]
and.ge.u %d1, %d1, %d1

# CHECK-INST: and.ge.u %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x50,0x12]
and.ge.u %d1, %d1, %d14

# CHECK-INST: and.ge.u %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x50,0x12]
and.ge.u %d1, %d1, %d15

# CHECK-INST: and.ge.u %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x50,0x12]
and.ge.u %d1, %d14, %d0

# CHECK-INST: and.ge.u %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x50,0x12]
and.ge.u %d1, %d14, %d1

# CHECK-INST: and.ge.u %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x50,0x12]
and.ge.u %d1, %d14, %d14

# CHECK-INST: and.ge.u %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x50,0x12]
and.ge.u %d1, %d14, %d15

# CHECK-INST: and.ge.u %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x50,0x12]
and.ge.u %d1, %d15, %d0

# CHECK-INST: and.ge.u %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x50,0x12]
and.ge.u %d1, %d15, %d1

# CHECK-INST: and.ge.u %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x50,0x12]
and.ge.u %d1, %d15, %d14

# CHECK-INST: and.ge.u %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x50,0x12]
and.ge.u %d1, %d15, %d15

# CHECK-INST: and.ge.u %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x50,0xe2]
and.ge.u %d14, %d0, %d0

# CHECK-INST: and.ge.u %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x50,0xe2]
and.ge.u %d14, %d0, %d1

# CHECK-INST: and.ge.u %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x50,0xe2]
and.ge.u %d14, %d0, %d14

# CHECK-INST: and.ge.u %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x50,0xe2]
and.ge.u %d14, %d0, %d15

# CHECK-INST: and.ge.u %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x50,0xe2]
and.ge.u %d14, %d1, %d0

# CHECK-INST: and.ge.u %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x50,0xe2]
and.ge.u %d14, %d1, %d1

# CHECK-INST: and.ge.u %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x50,0xe2]
and.ge.u %d14, %d1, %d14

# CHECK-INST: and.ge.u %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x50,0xe2]
and.ge.u %d14, %d1, %d15

# CHECK-INST: and.ge.u %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x50,0xe2]
and.ge.u %d14, %d14, %d0

# CHECK-INST: and.ge.u %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x50,0xe2]
and.ge.u %d14, %d14, %d1

# CHECK-INST: and.ge.u %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x50,0xe2]
and.ge.u %d14, %d14, %d14

# CHECK-INST: and.ge.u %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x50,0xe2]
and.ge.u %d14, %d14, %d15

# CHECK-INST: and.ge.u %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x50,0xe2]
and.ge.u %d14, %d15, %d0

# CHECK-INST: and.ge.u %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x50,0xe2]
and.ge.u %d14, %d15, %d1

# CHECK-INST: and.ge.u %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x50,0xe2]
and.ge.u %d14, %d15, %d14

# CHECK-INST: and.ge.u %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x50,0xe2]
and.ge.u %d14, %d15, %d15

# CHECK-INST: and.ge.u %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x50,0xf2]
and.ge.u %d15, %d0, %d0

# CHECK-INST: and.ge.u %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x50,0xf2]
and.ge.u %d15, %d0, %d1

# CHECK-INST: and.ge.u %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x50,0xf2]
and.ge.u %d15, %d0, %d14

# CHECK-INST: and.ge.u %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x50,0xf2]
and.ge.u %d15, %d0, %d15

# CHECK-INST: and.ge.u %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x50,0xf2]
and.ge.u %d15, %d1, %d0

# CHECK-INST: and.ge.u %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x50,0xf2]
and.ge.u %d15, %d1, %d1

# CHECK-INST: and.ge.u %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x50,0xf2]
and.ge.u %d15, %d1, %d14

# CHECK-INST: and.ge.u %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x50,0xf2]
and.ge.u %d15, %d1, %d15

# CHECK-INST: and.ge.u %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x50,0xf2]
and.ge.u %d15, %d14, %d0

# CHECK-INST: and.ge.u %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x50,0xf2]
and.ge.u %d15, %d14, %d1

# CHECK-INST: and.ge.u %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x50,0xf2]
and.ge.u %d15, %d14, %d14

# CHECK-INST: and.ge.u %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x50,0xf2]
and.ge.u %d15, %d14, %d15

# CHECK-INST: and.ge.u %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x50,0xf2]
and.ge.u %d15, %d15, %d0

# CHECK-INST: and.ge.u %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x50,0xf2]
and.ge.u %d15, %d15, %d1

# CHECK-INST: and.ge.u %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x50,0xf2]
and.ge.u %d15, %d15, %d14

# CHECK-INST: and.ge.u %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x50,0xf2]
and.ge.u %d15, %d15, %d15

# CHECK-INST: and.ge.u %d0, %d0, 271
# CHECK: encoding: [0x8b,0xf0,0xb0,0x04]
and.ge.u %d0, %d0, 271

# CHECK-INST: and.ge.u %d0, %d0, 496
# CHECK: encoding: [0x8b,0x00,0xbf,0x04]
and.ge.u %d0, %d0, 496

# CHECK-INST: and.ge.u %d0, %d0, 511
# CHECK: encoding: [0x8b,0xf0,0xbf,0x04]
and.ge.u %d0, %d0, 511

# CHECK-INST: and.ge.u %d0, %d1, 271
# CHECK: encoding: [0x8b,0xf1,0xb0,0x04]
and.ge.u %d0, %d1, 271

# CHECK-INST: and.ge.u %d0, %d1, 496
# CHECK: encoding: [0x8b,0x01,0xbf,0x04]
and.ge.u %d0, %d1, 496

# CHECK-INST: and.ge.u %d0, %d1, 511
# CHECK: encoding: [0x8b,0xf1,0xbf,0x04]
and.ge.u %d0, %d1, 511

# CHECK-INST: and.ge.u %d0, %d14, 271
# CHECK: encoding: [0x8b,0xfe,0xb0,0x04]
and.ge.u %d0, %d14, 271

# CHECK-INST: and.ge.u %d0, %d14, 496
# CHECK: encoding: [0x8b,0x0e,0xbf,0x04]
and.ge.u %d0, %d14, 496

# CHECK-INST: and.ge.u %d0, %d14, 511
# CHECK: encoding: [0x8b,0xfe,0xbf,0x04]
and.ge.u %d0, %d14, 511

# CHECK-INST: and.ge.u %d0, %d15, 271
# CHECK: encoding: [0x8b,0xff,0xb0,0x04]
and.ge.u %d0, %d15, 271

# CHECK-INST: and.ge.u %d0, %d15, 496
# CHECK: encoding: [0x8b,0x0f,0xbf,0x04]
and.ge.u %d0, %d15, 496

# CHECK-INST: and.ge.u %d0, %d15, 511
# CHECK: encoding: [0x8b,0xff,0xbf,0x04]
and.ge.u %d0, %d15, 511

# CHECK-INST: and.ge.u %d1, %d0, 271
# CHECK: encoding: [0x8b,0xf0,0xb0,0x14]
and.ge.u %d1, %d0, 271

# CHECK-INST: and.ge.u %d1, %d0, 496
# CHECK: encoding: [0x8b,0x00,0xbf,0x14]
and.ge.u %d1, %d0, 496

# CHECK-INST: and.ge.u %d1, %d0, 511
# CHECK: encoding: [0x8b,0xf0,0xbf,0x14]
and.ge.u %d1, %d0, 511

# CHECK-INST: and.ge.u %d1, %d1, 271
# CHECK: encoding: [0x8b,0xf1,0xb0,0x14]
and.ge.u %d1, %d1, 271

# CHECK-INST: and.ge.u %d1, %d1, 496
# CHECK: encoding: [0x8b,0x01,0xbf,0x14]
and.ge.u %d1, %d1, 496

# CHECK-INST: and.ge.u %d1, %d1, 511
# CHECK: encoding: [0x8b,0xf1,0xbf,0x14]
and.ge.u %d1, %d1, 511

# CHECK-INST: and.ge.u %d1, %d14, 271
# CHECK: encoding: [0x8b,0xfe,0xb0,0x14]
and.ge.u %d1, %d14, 271

# CHECK-INST: and.ge.u %d1, %d14, 496
# CHECK: encoding: [0x8b,0x0e,0xbf,0x14]
and.ge.u %d1, %d14, 496

# CHECK-INST: and.ge.u %d1, %d14, 511
# CHECK: encoding: [0x8b,0xfe,0xbf,0x14]
and.ge.u %d1, %d14, 511

# CHECK-INST: and.ge.u %d1, %d15, 271
# CHECK: encoding: [0x8b,0xff,0xb0,0x14]
and.ge.u %d1, %d15, 271

# CHECK-INST: and.ge.u %d1, %d15, 496
# CHECK: encoding: [0x8b,0x0f,0xbf,0x14]
and.ge.u %d1, %d15, 496

# CHECK-INST: and.ge.u %d1, %d15, 511
# CHECK: encoding: [0x8b,0xff,0xbf,0x14]
and.ge.u %d1, %d15, 511

# CHECK-INST: and.ge.u %d14, %d0, 271
# CHECK: encoding: [0x8b,0xf0,0xb0,0xe4]
and.ge.u %d14, %d0, 271

# CHECK-INST: and.ge.u %d14, %d0, 496
# CHECK: encoding: [0x8b,0x00,0xbf,0xe4]
and.ge.u %d14, %d0, 496

# CHECK-INST: and.ge.u %d14, %d0, 511
# CHECK: encoding: [0x8b,0xf0,0xbf,0xe4]
and.ge.u %d14, %d0, 511

# CHECK-INST: and.ge.u %d14, %d1, 271
# CHECK: encoding: [0x8b,0xf1,0xb0,0xe4]
and.ge.u %d14, %d1, 271

# CHECK-INST: and.ge.u %d14, %d1, 496
# CHECK: encoding: [0x8b,0x01,0xbf,0xe4]
and.ge.u %d14, %d1, 496

# CHECK-INST: and.ge.u %d14, %d1, 511
# CHECK: encoding: [0x8b,0xf1,0xbf,0xe4]
and.ge.u %d14, %d1, 511

# CHECK-INST: and.ge.u %d14, %d14, 271
# CHECK: encoding: [0x8b,0xfe,0xb0,0xe4]
and.ge.u %d14, %d14, 271

# CHECK-INST: and.ge.u %d14, %d14, 496
# CHECK: encoding: [0x8b,0x0e,0xbf,0xe4]
and.ge.u %d14, %d14, 496

# CHECK-INST: and.ge.u %d14, %d14, 511
# CHECK: encoding: [0x8b,0xfe,0xbf,0xe4]
and.ge.u %d14, %d14, 511

# CHECK-INST: and.ge.u %d14, %d15, 271
# CHECK: encoding: [0x8b,0xff,0xb0,0xe4]
and.ge.u %d14, %d15, 271

# CHECK-INST: and.ge.u %d14, %d15, 496
# CHECK: encoding: [0x8b,0x0f,0xbf,0xe4]
and.ge.u %d14, %d15, 496

# CHECK-INST: and.ge.u %d14, %d15, 511
# CHECK: encoding: [0x8b,0xff,0xbf,0xe4]
and.ge.u %d14, %d15, 511

# CHECK-INST: and.ge.u %d15, %d0, 271
# CHECK: encoding: [0x8b,0xf0,0xb0,0xf4]
and.ge.u %d15, %d0, 271

# CHECK-INST: and.ge.u %d15, %d0, 496
# CHECK: encoding: [0x8b,0x00,0xbf,0xf4]
and.ge.u %d15, %d0, 496

# CHECK-INST: and.ge.u %d15, %d0, 511
# CHECK: encoding: [0x8b,0xf0,0xbf,0xf4]
and.ge.u %d15, %d0, 511

# CHECK-INST: and.ge.u %d15, %d1, 271
# CHECK: encoding: [0x8b,0xf1,0xb0,0xf4]
and.ge.u %d15, %d1, 271

# CHECK-INST: and.ge.u %d15, %d1, 496
# CHECK: encoding: [0x8b,0x01,0xbf,0xf4]
and.ge.u %d15, %d1, 496

# CHECK-INST: and.ge.u %d15, %d1, 511
# CHECK: encoding: [0x8b,0xf1,0xbf,0xf4]
and.ge.u %d15, %d1, 511

# CHECK-INST: and.ge.u %d15, %d14, 271
# CHECK: encoding: [0x8b,0xfe,0xb0,0xf4]
and.ge.u %d15, %d14, 271

# CHECK-INST: and.ge.u %d15, %d14, 496
# CHECK: encoding: [0x8b,0x0e,0xbf,0xf4]
and.ge.u %d15, %d14, 496

# CHECK-INST: and.ge.u %d15, %d14, 511
# CHECK: encoding: [0x8b,0xfe,0xbf,0xf4]
and.ge.u %d15, %d14, 511

# CHECK-INST: and.ge.u %d15, %d15, 271
# CHECK: encoding: [0x8b,0xff,0xb0,0xf4]
and.ge.u %d15, %d15, 271

# CHECK-INST: and.ge.u %d15, %d15, 496
# CHECK: encoding: [0x8b,0x0f,0xbf,0xf4]
and.ge.u %d15, %d15, 496

# CHECK-INST: and.ge.u %d15, %d15, 511
# CHECK: encoding: [0x8b,0xff,0xbf,0xf4]
and.ge.u %d15, %d15, 511

# CHECK-INST: and.lt %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x20,0x02]
and.lt %d0, %d0, %d0

# CHECK-INST: and.lt %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x20,0x02]
and.lt %d0, %d0, %d1

# CHECK-INST: and.lt %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x20,0x02]
and.lt %d0, %d0, %d14

# CHECK-INST: and.lt %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x20,0x02]
and.lt %d0, %d0, %d15

# CHECK-INST: and.lt %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x20,0x02]
and.lt %d0, %d1, %d0

# CHECK-INST: and.lt %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x20,0x02]
and.lt %d0, %d1, %d1

# CHECK-INST: and.lt %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x20,0x02]
and.lt %d0, %d1, %d14

# CHECK-INST: and.lt %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x20,0x02]
and.lt %d0, %d1, %d15

# CHECK-INST: and.lt %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x20,0x02]
and.lt %d0, %d14, %d0

# CHECK-INST: and.lt %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x20,0x02]
and.lt %d0, %d14, %d1

# CHECK-INST: and.lt %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x20,0x02]
and.lt %d0, %d14, %d14

# CHECK-INST: and.lt %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x20,0x02]
and.lt %d0, %d14, %d15

# CHECK-INST: and.lt %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x20,0x02]
and.lt %d0, %d15, %d0

# CHECK-INST: and.lt %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x20,0x02]
and.lt %d0, %d15, %d1

# CHECK-INST: and.lt %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x20,0x02]
and.lt %d0, %d15, %d14

# CHECK-INST: and.lt %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x20,0x02]
and.lt %d0, %d15, %d15

# CHECK-INST: and.lt %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x20,0x12]
and.lt %d1, %d0, %d0

# CHECK-INST: and.lt %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x20,0x12]
and.lt %d1, %d0, %d1

# CHECK-INST: and.lt %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x20,0x12]
and.lt %d1, %d0, %d14

# CHECK-INST: and.lt %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x20,0x12]
and.lt %d1, %d0, %d15

# CHECK-INST: and.lt %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x20,0x12]
and.lt %d1, %d1, %d0

# CHECK-INST: and.lt %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x20,0x12]
and.lt %d1, %d1, %d1

# CHECK-INST: and.lt %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x20,0x12]
and.lt %d1, %d1, %d14

# CHECK-INST: and.lt %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x20,0x12]
and.lt %d1, %d1, %d15

# CHECK-INST: and.lt %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x20,0x12]
and.lt %d1, %d14, %d0

# CHECK-INST: and.lt %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x20,0x12]
and.lt %d1, %d14, %d1

# CHECK-INST: and.lt %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x20,0x12]
and.lt %d1, %d14, %d14

# CHECK-INST: and.lt %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x20,0x12]
and.lt %d1, %d14, %d15

# CHECK-INST: and.lt %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x20,0x12]
and.lt %d1, %d15, %d0

# CHECK-INST: and.lt %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x20,0x12]
and.lt %d1, %d15, %d1

# CHECK-INST: and.lt %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x20,0x12]
and.lt %d1, %d15, %d14

# CHECK-INST: and.lt %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x20,0x12]
and.lt %d1, %d15, %d15

# CHECK-INST: and.lt %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x20,0xe2]
and.lt %d14, %d0, %d0

# CHECK-INST: and.lt %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x20,0xe2]
and.lt %d14, %d0, %d1

# CHECK-INST: and.lt %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x20,0xe2]
and.lt %d14, %d0, %d14

# CHECK-INST: and.lt %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x20,0xe2]
and.lt %d14, %d0, %d15

# CHECK-INST: and.lt %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x20,0xe2]
and.lt %d14, %d1, %d0

# CHECK-INST: and.lt %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x20,0xe2]
and.lt %d14, %d1, %d1

# CHECK-INST: and.lt %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x20,0xe2]
and.lt %d14, %d1, %d14

# CHECK-INST: and.lt %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x20,0xe2]
and.lt %d14, %d1, %d15

# CHECK-INST: and.lt %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x20,0xe2]
and.lt %d14, %d14, %d0

# CHECK-INST: and.lt %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x20,0xe2]
and.lt %d14, %d14, %d1

# CHECK-INST: and.lt %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x20,0xe2]
and.lt %d14, %d14, %d14

# CHECK-INST: and.lt %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x20,0xe2]
and.lt %d14, %d14, %d15

# CHECK-INST: and.lt %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x20,0xe2]
and.lt %d14, %d15, %d0

# CHECK-INST: and.lt %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x20,0xe2]
and.lt %d14, %d15, %d1

# CHECK-INST: and.lt %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x20,0xe2]
and.lt %d14, %d15, %d14

# CHECK-INST: and.lt %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x20,0xe2]
and.lt %d14, %d15, %d15

# CHECK-INST: and.lt %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x20,0xf2]
and.lt %d15, %d0, %d0

# CHECK-INST: and.lt %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x20,0xf2]
and.lt %d15, %d0, %d1

# CHECK-INST: and.lt %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x20,0xf2]
and.lt %d15, %d0, %d14

# CHECK-INST: and.lt %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x20,0xf2]
and.lt %d15, %d0, %d15

# CHECK-INST: and.lt %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x20,0xf2]
and.lt %d15, %d1, %d0

# CHECK-INST: and.lt %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x20,0xf2]
and.lt %d15, %d1, %d1

# CHECK-INST: and.lt %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x20,0xf2]
and.lt %d15, %d1, %d14

# CHECK-INST: and.lt %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x20,0xf2]
and.lt %d15, %d1, %d15

# CHECK-INST: and.lt %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x20,0xf2]
and.lt %d15, %d14, %d0

# CHECK-INST: and.lt %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x20,0xf2]
and.lt %d15, %d14, %d1

# CHECK-INST: and.lt %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x20,0xf2]
and.lt %d15, %d14, %d14

# CHECK-INST: and.lt %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x20,0xf2]
and.lt %d15, %d14, %d15

# CHECK-INST: and.lt %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x20,0xf2]
and.lt %d15, %d15, %d0

# CHECK-INST: and.lt %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x20,0xf2]
and.lt %d15, %d15, %d1

# CHECK-INST: and.lt %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x20,0xf2]
and.lt %d15, %d15, %d14

# CHECK-INST: and.lt %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x20,0xf2]
and.lt %d15, %d15, %d15

# CHECK-INST: and.lt %d0, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x50,0x04]
and.lt %d0, %d0, -256

# CHECK-INST: and.lt %d0, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x57,0x04]
and.lt %d0, %d0, -129

# CHECK-INST: and.lt %d0, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x5f,0x04]
and.lt %d0, %d0, -1

# CHECK-INST: and.lt %d0, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x40,0x04]
and.lt %d0, %d0, 0

# CHECK-INST: and.lt %d0, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x40,0x04]
and.lt %d0, %d0, 1

# CHECK-INST: and.lt %d0, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x48,0x04]
and.lt %d0, %d0, 128

# CHECK-INST: and.lt %d0, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x4f,0x04]
and.lt %d0, %d0, 255

# CHECK-INST: and.lt %d0, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x50,0x04]
and.lt %d0, %d1, -256

# CHECK-INST: and.lt %d0, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x57,0x04]
and.lt %d0, %d1, -129

# CHECK-INST: and.lt %d0, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x5f,0x04]
and.lt %d0, %d1, -1

# CHECK-INST: and.lt %d0, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x40,0x04]
and.lt %d0, %d1, 0

# CHECK-INST: and.lt %d0, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x40,0x04]
and.lt %d0, %d1, 1

# CHECK-INST: and.lt %d0, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x48,0x04]
and.lt %d0, %d1, 128

# CHECK-INST: and.lt %d0, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x4f,0x04]
and.lt %d0, %d1, 255

# CHECK-INST: and.lt %d0, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x50,0x04]
and.lt %d0, %d14, -256

# CHECK-INST: and.lt %d0, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x57,0x04]
and.lt %d0, %d14, -129

# CHECK-INST: and.lt %d0, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x5f,0x04]
and.lt %d0, %d14, -1

# CHECK-INST: and.lt %d0, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x40,0x04]
and.lt %d0, %d14, 0

# CHECK-INST: and.lt %d0, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x40,0x04]
and.lt %d0, %d14, 1

# CHECK-INST: and.lt %d0, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x48,0x04]
and.lt %d0, %d14, 128

# CHECK-INST: and.lt %d0, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x4f,0x04]
and.lt %d0, %d14, 255

# CHECK-INST: and.lt %d0, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x50,0x04]
and.lt %d0, %d15, -256

# CHECK-INST: and.lt %d0, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x57,0x04]
and.lt %d0, %d15, -129

# CHECK-INST: and.lt %d0, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x5f,0x04]
and.lt %d0, %d15, -1

# CHECK-INST: and.lt %d0, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x40,0x04]
and.lt %d0, %d15, 0

# CHECK-INST: and.lt %d0, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x40,0x04]
and.lt %d0, %d15, 1

# CHECK-INST: and.lt %d0, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x48,0x04]
and.lt %d0, %d15, 128

# CHECK-INST: and.lt %d0, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x4f,0x04]
and.lt %d0, %d15, 255

# CHECK-INST: and.lt %d1, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x50,0x14]
and.lt %d1, %d0, -256

# CHECK-INST: and.lt %d1, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x57,0x14]
and.lt %d1, %d0, -129

# CHECK-INST: and.lt %d1, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x5f,0x14]
and.lt %d1, %d0, -1

# CHECK-INST: and.lt %d1, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x40,0x14]
and.lt %d1, %d0, 0

# CHECK-INST: and.lt %d1, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x40,0x14]
and.lt %d1, %d0, 1

# CHECK-INST: and.lt %d1, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x48,0x14]
and.lt %d1, %d0, 128

# CHECK-INST: and.lt %d1, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x4f,0x14]
and.lt %d1, %d0, 255

# CHECK-INST: and.lt %d1, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x50,0x14]
and.lt %d1, %d1, -256

# CHECK-INST: and.lt %d1, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x57,0x14]
and.lt %d1, %d1, -129

# CHECK-INST: and.lt %d1, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x5f,0x14]
and.lt %d1, %d1, -1

# CHECK-INST: and.lt %d1, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x40,0x14]
and.lt %d1, %d1, 0

# CHECK-INST: and.lt %d1, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x40,0x14]
and.lt %d1, %d1, 1

# CHECK-INST: and.lt %d1, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x48,0x14]
and.lt %d1, %d1, 128

# CHECK-INST: and.lt %d1, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x4f,0x14]
and.lt %d1, %d1, 255

# CHECK-INST: and.lt %d1, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x50,0x14]
and.lt %d1, %d14, -256

# CHECK-INST: and.lt %d1, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x57,0x14]
and.lt %d1, %d14, -129

# CHECK-INST: and.lt %d1, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x5f,0x14]
and.lt %d1, %d14, -1

# CHECK-INST: and.lt %d1, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x40,0x14]
and.lt %d1, %d14, 0

# CHECK-INST: and.lt %d1, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x40,0x14]
and.lt %d1, %d14, 1

# CHECK-INST: and.lt %d1, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x48,0x14]
and.lt %d1, %d14, 128

# CHECK-INST: and.lt %d1, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x4f,0x14]
and.lt %d1, %d14, 255

# CHECK-INST: and.lt %d1, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x50,0x14]
and.lt %d1, %d15, -256

# CHECK-INST: and.lt %d1, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x57,0x14]
and.lt %d1, %d15, -129

# CHECK-INST: and.lt %d1, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x5f,0x14]
and.lt %d1, %d15, -1

# CHECK-INST: and.lt %d1, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x40,0x14]
and.lt %d1, %d15, 0

# CHECK-INST: and.lt %d1, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x40,0x14]
and.lt %d1, %d15, 1

# CHECK-INST: and.lt %d1, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x48,0x14]
and.lt %d1, %d15, 128

# CHECK-INST: and.lt %d1, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x4f,0x14]
and.lt %d1, %d15, 255

# CHECK-INST: and.lt %d14, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x50,0xe4]
and.lt %d14, %d0, -256

# CHECK-INST: and.lt %d14, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x57,0xe4]
and.lt %d14, %d0, -129

# CHECK-INST: and.lt %d14, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x5f,0xe4]
and.lt %d14, %d0, -1

# CHECK-INST: and.lt %d14, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x40,0xe4]
and.lt %d14, %d0, 0

# CHECK-INST: and.lt %d14, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x40,0xe4]
and.lt %d14, %d0, 1

# CHECK-INST: and.lt %d14, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x48,0xe4]
and.lt %d14, %d0, 128

# CHECK-INST: and.lt %d14, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x4f,0xe4]
and.lt %d14, %d0, 255

# CHECK-INST: and.lt %d14, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x50,0xe4]
and.lt %d14, %d1, -256

# CHECK-INST: and.lt %d14, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x57,0xe4]
and.lt %d14, %d1, -129

# CHECK-INST: and.lt %d14, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x5f,0xe4]
and.lt %d14, %d1, -1

# CHECK-INST: and.lt %d14, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x40,0xe4]
and.lt %d14, %d1, 0

# CHECK-INST: and.lt %d14, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x40,0xe4]
and.lt %d14, %d1, 1

# CHECK-INST: and.lt %d14, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x48,0xe4]
and.lt %d14, %d1, 128

# CHECK-INST: and.lt %d14, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x4f,0xe4]
and.lt %d14, %d1, 255

# CHECK-INST: and.lt %d14, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x50,0xe4]
and.lt %d14, %d14, -256

# CHECK-INST: and.lt %d14, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x57,0xe4]
and.lt %d14, %d14, -129

# CHECK-INST: and.lt %d14, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x5f,0xe4]
and.lt %d14, %d14, -1

# CHECK-INST: and.lt %d14, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x40,0xe4]
and.lt %d14, %d14, 0

# CHECK-INST: and.lt %d14, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x40,0xe4]
and.lt %d14, %d14, 1

# CHECK-INST: and.lt %d14, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x48,0xe4]
and.lt %d14, %d14, 128

# CHECK-INST: and.lt %d14, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x4f,0xe4]
and.lt %d14, %d14, 255

# CHECK-INST: and.lt %d14, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x50,0xe4]
and.lt %d14, %d15, -256

# CHECK-INST: and.lt %d14, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x57,0xe4]
and.lt %d14, %d15, -129

# CHECK-INST: and.lt %d14, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x5f,0xe4]
and.lt %d14, %d15, -1

# CHECK-INST: and.lt %d14, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x40,0xe4]
and.lt %d14, %d15, 0

# CHECK-INST: and.lt %d14, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x40,0xe4]
and.lt %d14, %d15, 1

# CHECK-INST: and.lt %d14, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x48,0xe4]
and.lt %d14, %d15, 128

# CHECK-INST: and.lt %d14, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x4f,0xe4]
and.lt %d14, %d15, 255

# CHECK-INST: and.lt %d15, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x50,0xf4]
and.lt %d15, %d0, -256

# CHECK-INST: and.lt %d15, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x57,0xf4]
and.lt %d15, %d0, -129

# CHECK-INST: and.lt %d15, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x5f,0xf4]
and.lt %d15, %d0, -1

# CHECK-INST: and.lt %d15, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x40,0xf4]
and.lt %d15, %d0, 0

# CHECK-INST: and.lt %d15, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x40,0xf4]
and.lt %d15, %d0, 1

# CHECK-INST: and.lt %d15, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x48,0xf4]
and.lt %d15, %d0, 128

# CHECK-INST: and.lt %d15, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x4f,0xf4]
and.lt %d15, %d0, 255

# CHECK-INST: and.lt %d15, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x50,0xf4]
and.lt %d15, %d1, -256

# CHECK-INST: and.lt %d15, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x57,0xf4]
and.lt %d15, %d1, -129

# CHECK-INST: and.lt %d15, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x5f,0xf4]
and.lt %d15, %d1, -1

# CHECK-INST: and.lt %d15, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x40,0xf4]
and.lt %d15, %d1, 0

# CHECK-INST: and.lt %d15, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x40,0xf4]
and.lt %d15, %d1, 1

# CHECK-INST: and.lt %d15, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x48,0xf4]
and.lt %d15, %d1, 128

# CHECK-INST: and.lt %d15, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x4f,0xf4]
and.lt %d15, %d1, 255

# CHECK-INST: and.lt %d15, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x50,0xf4]
and.lt %d15, %d14, -256

# CHECK-INST: and.lt %d15, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x57,0xf4]
and.lt %d15, %d14, -129

# CHECK-INST: and.lt %d15, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x5f,0xf4]
and.lt %d15, %d14, -1

# CHECK-INST: and.lt %d15, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x40,0xf4]
and.lt %d15, %d14, 0

# CHECK-INST: and.lt %d15, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x40,0xf4]
and.lt %d15, %d14, 1

# CHECK-INST: and.lt %d15, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x48,0xf4]
and.lt %d15, %d14, 128

# CHECK-INST: and.lt %d15, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x4f,0xf4]
and.lt %d15, %d14, 255

# CHECK-INST: and.lt %d15, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x50,0xf4]
and.lt %d15, %d15, -256

# CHECK-INST: and.lt %d15, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x57,0xf4]
and.lt %d15, %d15, -129

# CHECK-INST: and.lt %d15, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x5f,0xf4]
and.lt %d15, %d15, -1

# CHECK-INST: and.lt %d15, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x40,0xf4]
and.lt %d15, %d15, 0

# CHECK-INST: and.lt %d15, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x40,0xf4]
and.lt %d15, %d15, 1

# CHECK-INST: and.lt %d15, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x48,0xf4]
and.lt %d15, %d15, 128

# CHECK-INST: and.lt %d15, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x4f,0xf4]
and.lt %d15, %d15, 255

# CHECK-INST: and.lt.u %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x30,0x02]
and.lt.u %d0, %d0, %d0

# CHECK-INST: and.lt.u %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x30,0x02]
and.lt.u %d0, %d0, %d1

# CHECK-INST: and.lt.u %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x30,0x02]
and.lt.u %d0, %d0, %d14

# CHECK-INST: and.lt.u %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x30,0x02]
and.lt.u %d0, %d0, %d15

# CHECK-INST: and.lt.u %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x30,0x02]
and.lt.u %d0, %d1, %d0

# CHECK-INST: and.lt.u %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x30,0x02]
and.lt.u %d0, %d1, %d1

# CHECK-INST: and.lt.u %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x30,0x02]
and.lt.u %d0, %d1, %d14

# CHECK-INST: and.lt.u %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x30,0x02]
and.lt.u %d0, %d1, %d15

# CHECK-INST: and.lt.u %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x30,0x02]
and.lt.u %d0, %d14, %d0

# CHECK-INST: and.lt.u %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x30,0x02]
and.lt.u %d0, %d14, %d1

# CHECK-INST: and.lt.u %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x30,0x02]
and.lt.u %d0, %d14, %d14

# CHECK-INST: and.lt.u %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x30,0x02]
and.lt.u %d0, %d14, %d15

# CHECK-INST: and.lt.u %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x30,0x02]
and.lt.u %d0, %d15, %d0

# CHECK-INST: and.lt.u %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x30,0x02]
and.lt.u %d0, %d15, %d1

# CHECK-INST: and.lt.u %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x30,0x02]
and.lt.u %d0, %d15, %d14

# CHECK-INST: and.lt.u %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x30,0x02]
and.lt.u %d0, %d15, %d15

# CHECK-INST: and.lt.u %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x30,0x12]
and.lt.u %d1, %d0, %d0

# CHECK-INST: and.lt.u %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x30,0x12]
and.lt.u %d1, %d0, %d1

# CHECK-INST: and.lt.u %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x30,0x12]
and.lt.u %d1, %d0, %d14

# CHECK-INST: and.lt.u %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x30,0x12]
and.lt.u %d1, %d0, %d15

# CHECK-INST: and.lt.u %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x30,0x12]
and.lt.u %d1, %d1, %d0

# CHECK-INST: and.lt.u %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x30,0x12]
and.lt.u %d1, %d1, %d1

# CHECK-INST: and.lt.u %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x30,0x12]
and.lt.u %d1, %d1, %d14

# CHECK-INST: and.lt.u %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x30,0x12]
and.lt.u %d1, %d1, %d15

# CHECK-INST: and.lt.u %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x30,0x12]
and.lt.u %d1, %d14, %d0

# CHECK-INST: and.lt.u %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x30,0x12]
and.lt.u %d1, %d14, %d1

# CHECK-INST: and.lt.u %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x30,0x12]
and.lt.u %d1, %d14, %d14

# CHECK-INST: and.lt.u %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x30,0x12]
and.lt.u %d1, %d14, %d15

# CHECK-INST: and.lt.u %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x30,0x12]
and.lt.u %d1, %d15, %d0

# CHECK-INST: and.lt.u %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x30,0x12]
and.lt.u %d1, %d15, %d1

# CHECK-INST: and.lt.u %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x30,0x12]
and.lt.u %d1, %d15, %d14

# CHECK-INST: and.lt.u %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x30,0x12]
and.lt.u %d1, %d15, %d15

# CHECK-INST: and.lt.u %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x30,0xe2]
and.lt.u %d14, %d0, %d0

# CHECK-INST: and.lt.u %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x30,0xe2]
and.lt.u %d14, %d0, %d1

# CHECK-INST: and.lt.u %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x30,0xe2]
and.lt.u %d14, %d0, %d14

# CHECK-INST: and.lt.u %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x30,0xe2]
and.lt.u %d14, %d0, %d15

# CHECK-INST: and.lt.u %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x30,0xe2]
and.lt.u %d14, %d1, %d0

# CHECK-INST: and.lt.u %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x30,0xe2]
and.lt.u %d14, %d1, %d1

# CHECK-INST: and.lt.u %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x30,0xe2]
and.lt.u %d14, %d1, %d14

# CHECK-INST: and.lt.u %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x30,0xe2]
and.lt.u %d14, %d1, %d15

# CHECK-INST: and.lt.u %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x30,0xe2]
and.lt.u %d14, %d14, %d0

# CHECK-INST: and.lt.u %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x30,0xe2]
and.lt.u %d14, %d14, %d1

# CHECK-INST: and.lt.u %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x30,0xe2]
and.lt.u %d14, %d14, %d14

# CHECK-INST: and.lt.u %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x30,0xe2]
and.lt.u %d14, %d14, %d15

# CHECK-INST: and.lt.u %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x30,0xe2]
and.lt.u %d14, %d15, %d0

# CHECK-INST: and.lt.u %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x30,0xe2]
and.lt.u %d14, %d15, %d1

# CHECK-INST: and.lt.u %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x30,0xe2]
and.lt.u %d14, %d15, %d14

# CHECK-INST: and.lt.u %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x30,0xe2]
and.lt.u %d14, %d15, %d15

# CHECK-INST: and.lt.u %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x30,0xf2]
and.lt.u %d15, %d0, %d0

# CHECK-INST: and.lt.u %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x30,0xf2]
and.lt.u %d15, %d0, %d1

# CHECK-INST: and.lt.u %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x30,0xf2]
and.lt.u %d15, %d0, %d14

# CHECK-INST: and.lt.u %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x30,0xf2]
and.lt.u %d15, %d0, %d15

# CHECK-INST: and.lt.u %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x30,0xf2]
and.lt.u %d15, %d1, %d0

# CHECK-INST: and.lt.u %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x30,0xf2]
and.lt.u %d15, %d1, %d1

# CHECK-INST: and.lt.u %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x30,0xf2]
and.lt.u %d15, %d1, %d14

# CHECK-INST: and.lt.u %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x30,0xf2]
and.lt.u %d15, %d1, %d15

# CHECK-INST: and.lt.u %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x30,0xf2]
and.lt.u %d15, %d14, %d0

# CHECK-INST: and.lt.u %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x30,0xf2]
and.lt.u %d15, %d14, %d1

# CHECK-INST: and.lt.u %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x30,0xf2]
and.lt.u %d15, %d14, %d14

# CHECK-INST: and.lt.u %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x30,0xf2]
and.lt.u %d15, %d14, %d15

# CHECK-INST: and.lt.u %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x30,0xf2]
and.lt.u %d15, %d15, %d0

# CHECK-INST: and.lt.u %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x30,0xf2]
and.lt.u %d15, %d15, %d1

# CHECK-INST: and.lt.u %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x30,0xf2]
and.lt.u %d15, %d15, %d14

# CHECK-INST: and.lt.u %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x30,0xf2]
and.lt.u %d15, %d15, %d15

# CHECK-INST: and.lt.u %d0, %d0, 271
# CHECK: encoding: [0x8b,0xf0,0x70,0x04]
and.lt.u %d0, %d0, 271

# CHECK-INST: and.lt.u %d0, %d0, 496
# CHECK: encoding: [0x8b,0x00,0x7f,0x04]
and.lt.u %d0, %d0, 496

# CHECK-INST: and.lt.u %d0, %d0, 511
# CHECK: encoding: [0x8b,0xf0,0x7f,0x04]
and.lt.u %d0, %d0, 511

# CHECK-INST: and.lt.u %d0, %d1, 271
# CHECK: encoding: [0x8b,0xf1,0x70,0x04]
and.lt.u %d0, %d1, 271

# CHECK-INST: and.lt.u %d0, %d1, 496
# CHECK: encoding: [0x8b,0x01,0x7f,0x04]
and.lt.u %d0, %d1, 496

# CHECK-INST: and.lt.u %d0, %d1, 511
# CHECK: encoding: [0x8b,0xf1,0x7f,0x04]
and.lt.u %d0, %d1, 511

# CHECK-INST: and.lt.u %d0, %d14, 271
# CHECK: encoding: [0x8b,0xfe,0x70,0x04]
and.lt.u %d0, %d14, 271

# CHECK-INST: and.lt.u %d0, %d14, 496
# CHECK: encoding: [0x8b,0x0e,0x7f,0x04]
and.lt.u %d0, %d14, 496

# CHECK-INST: and.lt.u %d0, %d14, 511
# CHECK: encoding: [0x8b,0xfe,0x7f,0x04]
and.lt.u %d0, %d14, 511

# CHECK-INST: and.lt.u %d0, %d15, 271
# CHECK: encoding: [0x8b,0xff,0x70,0x04]
and.lt.u %d0, %d15, 271

# CHECK-INST: and.lt.u %d0, %d15, 496
# CHECK: encoding: [0x8b,0x0f,0x7f,0x04]
and.lt.u %d0, %d15, 496

# CHECK-INST: and.lt.u %d0, %d15, 511
# CHECK: encoding: [0x8b,0xff,0x7f,0x04]
and.lt.u %d0, %d15, 511

# CHECK-INST: and.lt.u %d1, %d0, 271
# CHECK: encoding: [0x8b,0xf0,0x70,0x14]
and.lt.u %d1, %d0, 271

# CHECK-INST: and.lt.u %d1, %d0, 496
# CHECK: encoding: [0x8b,0x00,0x7f,0x14]
and.lt.u %d1, %d0, 496

# CHECK-INST: and.lt.u %d1, %d0, 511
# CHECK: encoding: [0x8b,0xf0,0x7f,0x14]
and.lt.u %d1, %d0, 511

# CHECK-INST: and.lt.u %d1, %d1, 271
# CHECK: encoding: [0x8b,0xf1,0x70,0x14]
and.lt.u %d1, %d1, 271

# CHECK-INST: and.lt.u %d1, %d1, 496
# CHECK: encoding: [0x8b,0x01,0x7f,0x14]
and.lt.u %d1, %d1, 496

# CHECK-INST: and.lt.u %d1, %d1, 511
# CHECK: encoding: [0x8b,0xf1,0x7f,0x14]
and.lt.u %d1, %d1, 511

# CHECK-INST: and.lt.u %d1, %d14, 271
# CHECK: encoding: [0x8b,0xfe,0x70,0x14]
and.lt.u %d1, %d14, 271

# CHECK-INST: and.lt.u %d1, %d14, 496
# CHECK: encoding: [0x8b,0x0e,0x7f,0x14]
and.lt.u %d1, %d14, 496

# CHECK-INST: and.lt.u %d1, %d14, 511
# CHECK: encoding: [0x8b,0xfe,0x7f,0x14]
and.lt.u %d1, %d14, 511

# CHECK-INST: and.lt.u %d1, %d15, 271
# CHECK: encoding: [0x8b,0xff,0x70,0x14]
and.lt.u %d1, %d15, 271

# CHECK-INST: and.lt.u %d1, %d15, 496
# CHECK: encoding: [0x8b,0x0f,0x7f,0x14]
and.lt.u %d1, %d15, 496

# CHECK-INST: and.lt.u %d1, %d15, 511
# CHECK: encoding: [0x8b,0xff,0x7f,0x14]
and.lt.u %d1, %d15, 511

# CHECK-INST: and.lt.u %d14, %d0, 271
# CHECK: encoding: [0x8b,0xf0,0x70,0xe4]
and.lt.u %d14, %d0, 271

# CHECK-INST: and.lt.u %d14, %d0, 496
# CHECK: encoding: [0x8b,0x00,0x7f,0xe4]
and.lt.u %d14, %d0, 496

# CHECK-INST: and.lt.u %d14, %d0, 511
# CHECK: encoding: [0x8b,0xf0,0x7f,0xe4]
and.lt.u %d14, %d0, 511

# CHECK-INST: and.lt.u %d14, %d1, 271
# CHECK: encoding: [0x8b,0xf1,0x70,0xe4]
and.lt.u %d14, %d1, 271

# CHECK-INST: and.lt.u %d14, %d1, 496
# CHECK: encoding: [0x8b,0x01,0x7f,0xe4]
and.lt.u %d14, %d1, 496

# CHECK-INST: and.lt.u %d14, %d1, 511
# CHECK: encoding: [0x8b,0xf1,0x7f,0xe4]
and.lt.u %d14, %d1, 511

# CHECK-INST: and.lt.u %d14, %d14, 271
# CHECK: encoding: [0x8b,0xfe,0x70,0xe4]
and.lt.u %d14, %d14, 271

# CHECK-INST: and.lt.u %d14, %d14, 496
# CHECK: encoding: [0x8b,0x0e,0x7f,0xe4]
and.lt.u %d14, %d14, 496

# CHECK-INST: and.lt.u %d14, %d14, 511
# CHECK: encoding: [0x8b,0xfe,0x7f,0xe4]
and.lt.u %d14, %d14, 511

# CHECK-INST: and.lt.u %d14, %d15, 271
# CHECK: encoding: [0x8b,0xff,0x70,0xe4]
and.lt.u %d14, %d15, 271

# CHECK-INST: and.lt.u %d14, %d15, 496
# CHECK: encoding: [0x8b,0x0f,0x7f,0xe4]
and.lt.u %d14, %d15, 496

# CHECK-INST: and.lt.u %d14, %d15, 511
# CHECK: encoding: [0x8b,0xff,0x7f,0xe4]
and.lt.u %d14, %d15, 511

# CHECK-INST: and.lt.u %d15, %d0, 271
# CHECK: encoding: [0x8b,0xf0,0x70,0xf4]
and.lt.u %d15, %d0, 271

# CHECK-INST: and.lt.u %d15, %d0, 496
# CHECK: encoding: [0x8b,0x00,0x7f,0xf4]
and.lt.u %d15, %d0, 496

# CHECK-INST: and.lt.u %d15, %d0, 511
# CHECK: encoding: [0x8b,0xf0,0x7f,0xf4]
and.lt.u %d15, %d0, 511

# CHECK-INST: and.lt.u %d15, %d1, 271
# CHECK: encoding: [0x8b,0xf1,0x70,0xf4]
and.lt.u %d15, %d1, 271

# CHECK-INST: and.lt.u %d15, %d1, 496
# CHECK: encoding: [0x8b,0x01,0x7f,0xf4]
and.lt.u %d15, %d1, 496

# CHECK-INST: and.lt.u %d15, %d1, 511
# CHECK: encoding: [0x8b,0xf1,0x7f,0xf4]
and.lt.u %d15, %d1, 511

# CHECK-INST: and.lt.u %d15, %d14, 271
# CHECK: encoding: [0x8b,0xfe,0x70,0xf4]
and.lt.u %d15, %d14, 271

# CHECK-INST: and.lt.u %d15, %d14, 496
# CHECK: encoding: [0x8b,0x0e,0x7f,0xf4]
and.lt.u %d15, %d14, 496

# CHECK-INST: and.lt.u %d15, %d14, 511
# CHECK: encoding: [0x8b,0xfe,0x7f,0xf4]
and.lt.u %d15, %d14, 511

# CHECK-INST: and.lt.u %d15, %d15, 271
# CHECK: encoding: [0x8b,0xff,0x70,0xf4]
and.lt.u %d15, %d15, 271

# CHECK-INST: and.lt.u %d15, %d15, 496
# CHECK: encoding: [0x8b,0x0f,0x7f,0xf4]
and.lt.u %d15, %d15, 496

# CHECK-INST: and.lt.u %d15, %d15, 511
# CHECK: encoding: [0x8b,0xff,0x7f,0xf4]
and.lt.u %d15, %d15, 511

# CHECK-INST: and.ne %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x10,0x02]
and.ne %d0, %d0, %d0

# CHECK-INST: and.ne %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x10,0x02]
and.ne %d0, %d0, %d1

# CHECK-INST: and.ne %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x10,0x02]
and.ne %d0, %d0, %d14

# CHECK-INST: and.ne %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x10,0x02]
and.ne %d0, %d0, %d15

# CHECK-INST: and.ne %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x10,0x02]
and.ne %d0, %d1, %d0

# CHECK-INST: and.ne %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x10,0x02]
and.ne %d0, %d1, %d1

# CHECK-INST: and.ne %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x10,0x02]
and.ne %d0, %d1, %d14

# CHECK-INST: and.ne %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x10,0x02]
and.ne %d0, %d1, %d15

# CHECK-INST: and.ne %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x10,0x02]
and.ne %d0, %d14, %d0

# CHECK-INST: and.ne %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x10,0x02]
and.ne %d0, %d14, %d1

# CHECK-INST: and.ne %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x10,0x02]
and.ne %d0, %d14, %d14

# CHECK-INST: and.ne %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x10,0x02]
and.ne %d0, %d14, %d15

# CHECK-INST: and.ne %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x10,0x02]
and.ne %d0, %d15, %d0

# CHECK-INST: and.ne %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x10,0x02]
and.ne %d0, %d15, %d1

# CHECK-INST: and.ne %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x10,0x02]
and.ne %d0, %d15, %d14

# CHECK-INST: and.ne %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x10,0x02]
and.ne %d0, %d15, %d15

# CHECK-INST: and.ne %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x10,0x12]
and.ne %d1, %d0, %d0

# CHECK-INST: and.ne %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x10,0x12]
and.ne %d1, %d0, %d1

# CHECK-INST: and.ne %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x10,0x12]
and.ne %d1, %d0, %d14

# CHECK-INST: and.ne %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x10,0x12]
and.ne %d1, %d0, %d15

# CHECK-INST: and.ne %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x10,0x12]
and.ne %d1, %d1, %d0

# CHECK-INST: and.ne %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x10,0x12]
and.ne %d1, %d1, %d1

# CHECK-INST: and.ne %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x10,0x12]
and.ne %d1, %d1, %d14

# CHECK-INST: and.ne %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x10,0x12]
and.ne %d1, %d1, %d15

# CHECK-INST: and.ne %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x10,0x12]
and.ne %d1, %d14, %d0

# CHECK-INST: and.ne %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x10,0x12]
and.ne %d1, %d14, %d1

# CHECK-INST: and.ne %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x10,0x12]
and.ne %d1, %d14, %d14

# CHECK-INST: and.ne %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x10,0x12]
and.ne %d1, %d14, %d15

# CHECK-INST: and.ne %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x10,0x12]
and.ne %d1, %d15, %d0

# CHECK-INST: and.ne %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x10,0x12]
and.ne %d1, %d15, %d1

# CHECK-INST: and.ne %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x10,0x12]
and.ne %d1, %d15, %d14

# CHECK-INST: and.ne %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x10,0x12]
and.ne %d1, %d15, %d15

# CHECK-INST: and.ne %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x10,0xe2]
and.ne %d14, %d0, %d0

# CHECK-INST: and.ne %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x10,0xe2]
and.ne %d14, %d0, %d1

# CHECK-INST: and.ne %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x10,0xe2]
and.ne %d14, %d0, %d14

# CHECK-INST: and.ne %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x10,0xe2]
and.ne %d14, %d0, %d15

# CHECK-INST: and.ne %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x10,0xe2]
and.ne %d14, %d1, %d0

# CHECK-INST: and.ne %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x10,0xe2]
and.ne %d14, %d1, %d1

# CHECK-INST: and.ne %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x10,0xe2]
and.ne %d14, %d1, %d14

# CHECK-INST: and.ne %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x10,0xe2]
and.ne %d14, %d1, %d15

# CHECK-INST: and.ne %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x10,0xe2]
and.ne %d14, %d14, %d0

# CHECK-INST: and.ne %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x10,0xe2]
and.ne %d14, %d14, %d1

# CHECK-INST: and.ne %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x10,0xe2]
and.ne %d14, %d14, %d14

# CHECK-INST: and.ne %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x10,0xe2]
and.ne %d14, %d14, %d15

# CHECK-INST: and.ne %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x10,0xe2]
and.ne %d14, %d15, %d0

# CHECK-INST: and.ne %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x10,0xe2]
and.ne %d14, %d15, %d1

# CHECK-INST: and.ne %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x10,0xe2]
and.ne %d14, %d15, %d14

# CHECK-INST: and.ne %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x10,0xe2]
and.ne %d14, %d15, %d15

# CHECK-INST: and.ne %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x10,0xf2]
and.ne %d15, %d0, %d0

# CHECK-INST: and.ne %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x10,0xf2]
and.ne %d15, %d0, %d1

# CHECK-INST: and.ne %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x10,0xf2]
and.ne %d15, %d0, %d14

# CHECK-INST: and.ne %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x10,0xf2]
and.ne %d15, %d0, %d15

# CHECK-INST: and.ne %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x10,0xf2]
and.ne %d15, %d1, %d0

# CHECK-INST: and.ne %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x10,0xf2]
and.ne %d15, %d1, %d1

# CHECK-INST: and.ne %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x10,0xf2]
and.ne %d15, %d1, %d14

# CHECK-INST: and.ne %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x10,0xf2]
and.ne %d15, %d1, %d15

# CHECK-INST: and.ne %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x10,0xf2]
and.ne %d15, %d14, %d0

# CHECK-INST: and.ne %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x10,0xf2]
and.ne %d15, %d14, %d1

# CHECK-INST: and.ne %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x10,0xf2]
and.ne %d15, %d14, %d14

# CHECK-INST: and.ne %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x10,0xf2]
and.ne %d15, %d14, %d15

# CHECK-INST: and.ne %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x10,0xf2]
and.ne %d15, %d15, %d0

# CHECK-INST: and.ne %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x10,0xf2]
and.ne %d15, %d15, %d1

# CHECK-INST: and.ne %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x10,0xf2]
and.ne %d15, %d15, %d14

# CHECK-INST: and.ne %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x10,0xf2]
and.ne %d15, %d15, %d15

# CHECK-INST: and.ne %d0, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x30,0x04]
and.ne %d0, %d0, -256

# CHECK-INST: and.ne %d0, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x37,0x04]
and.ne %d0, %d0, -129

# CHECK-INST: and.ne %d0, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x3f,0x04]
and.ne %d0, %d0, -1

# CHECK-INST: and.ne %d0, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x20,0x04]
and.ne %d0, %d0, 0

# CHECK-INST: and.ne %d0, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x20,0x04]
and.ne %d0, %d0, 1

# CHECK-INST: and.ne %d0, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x28,0x04]
and.ne %d0, %d0, 128

# CHECK-INST: and.ne %d0, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x2f,0x04]
and.ne %d0, %d0, 255

# CHECK-INST: and.ne %d0, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x30,0x04]
and.ne %d0, %d1, -256

# CHECK-INST: and.ne %d0, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x37,0x04]
and.ne %d0, %d1, -129

# CHECK-INST: and.ne %d0, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x3f,0x04]
and.ne %d0, %d1, -1

# CHECK-INST: and.ne %d0, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x20,0x04]
and.ne %d0, %d1, 0

# CHECK-INST: and.ne %d0, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x20,0x04]
and.ne %d0, %d1, 1

# CHECK-INST: and.ne %d0, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x28,0x04]
and.ne %d0, %d1, 128

# CHECK-INST: and.ne %d0, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x2f,0x04]
and.ne %d0, %d1, 255

# CHECK-INST: and.ne %d0, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x30,0x04]
and.ne %d0, %d14, -256

# CHECK-INST: and.ne %d0, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x37,0x04]
and.ne %d0, %d14, -129

# CHECK-INST: and.ne %d0, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x3f,0x04]
and.ne %d0, %d14, -1

# CHECK-INST: and.ne %d0, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x20,0x04]
and.ne %d0, %d14, 0

# CHECK-INST: and.ne %d0, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x20,0x04]
and.ne %d0, %d14, 1

# CHECK-INST: and.ne %d0, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x28,0x04]
and.ne %d0, %d14, 128

# CHECK-INST: and.ne %d0, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x2f,0x04]
and.ne %d0, %d14, 255

# CHECK-INST: and.ne %d0, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x30,0x04]
and.ne %d0, %d15, -256

# CHECK-INST: and.ne %d0, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x37,0x04]
and.ne %d0, %d15, -129

# CHECK-INST: and.ne %d0, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x3f,0x04]
and.ne %d0, %d15, -1

# CHECK-INST: and.ne %d0, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x20,0x04]
and.ne %d0, %d15, 0

# CHECK-INST: and.ne %d0, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x20,0x04]
and.ne %d0, %d15, 1

# CHECK-INST: and.ne %d0, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x28,0x04]
and.ne %d0, %d15, 128

# CHECK-INST: and.ne %d0, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x2f,0x04]
and.ne %d0, %d15, 255

# CHECK-INST: and.ne %d1, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x30,0x14]
and.ne %d1, %d0, -256

# CHECK-INST: and.ne %d1, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x37,0x14]
and.ne %d1, %d0, -129

# CHECK-INST: and.ne %d1, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x3f,0x14]
and.ne %d1, %d0, -1

# CHECK-INST: and.ne %d1, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x20,0x14]
and.ne %d1, %d0, 0

# CHECK-INST: and.ne %d1, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x20,0x14]
and.ne %d1, %d0, 1

# CHECK-INST: and.ne %d1, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x28,0x14]
and.ne %d1, %d0, 128

# CHECK-INST: and.ne %d1, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x2f,0x14]
and.ne %d1, %d0, 255

# CHECK-INST: and.ne %d1, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x30,0x14]
and.ne %d1, %d1, -256

# CHECK-INST: and.ne %d1, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x37,0x14]
and.ne %d1, %d1, -129

# CHECK-INST: and.ne %d1, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x3f,0x14]
and.ne %d1, %d1, -1

# CHECK-INST: and.ne %d1, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x20,0x14]
and.ne %d1, %d1, 0

# CHECK-INST: and.ne %d1, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x20,0x14]
and.ne %d1, %d1, 1

# CHECK-INST: and.ne %d1, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x28,0x14]
and.ne %d1, %d1, 128

# CHECK-INST: and.ne %d1, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x2f,0x14]
and.ne %d1, %d1, 255

# CHECK-INST: and.ne %d1, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x30,0x14]
and.ne %d1, %d14, -256

# CHECK-INST: and.ne %d1, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x37,0x14]
and.ne %d1, %d14, -129

# CHECK-INST: and.ne %d1, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x3f,0x14]
and.ne %d1, %d14, -1

# CHECK-INST: and.ne %d1, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x20,0x14]
and.ne %d1, %d14, 0

# CHECK-INST: and.ne %d1, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x20,0x14]
and.ne %d1, %d14, 1

# CHECK-INST: and.ne %d1, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x28,0x14]
and.ne %d1, %d14, 128

# CHECK-INST: and.ne %d1, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x2f,0x14]
and.ne %d1, %d14, 255

# CHECK-INST: and.ne %d1, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x30,0x14]
and.ne %d1, %d15, -256

# CHECK-INST: and.ne %d1, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x37,0x14]
and.ne %d1, %d15, -129

# CHECK-INST: and.ne %d1, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x3f,0x14]
and.ne %d1, %d15, -1

# CHECK-INST: and.ne %d1, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x20,0x14]
and.ne %d1, %d15, 0

# CHECK-INST: and.ne %d1, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x20,0x14]
and.ne %d1, %d15, 1

# CHECK-INST: and.ne %d1, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x28,0x14]
and.ne %d1, %d15, 128

# CHECK-INST: and.ne %d1, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x2f,0x14]
and.ne %d1, %d15, 255

# CHECK-INST: and.ne %d14, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x30,0xe4]
and.ne %d14, %d0, -256

# CHECK-INST: and.ne %d14, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x37,0xe4]
and.ne %d14, %d0, -129

# CHECK-INST: and.ne %d14, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x3f,0xe4]
and.ne %d14, %d0, -1

# CHECK-INST: and.ne %d14, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x20,0xe4]
and.ne %d14, %d0, 0

# CHECK-INST: and.ne %d14, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x20,0xe4]
and.ne %d14, %d0, 1

# CHECK-INST: and.ne %d14, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x28,0xe4]
and.ne %d14, %d0, 128

# CHECK-INST: and.ne %d14, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x2f,0xe4]
and.ne %d14, %d0, 255

# CHECK-INST: and.ne %d14, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x30,0xe4]
and.ne %d14, %d1, -256

# CHECK-INST: and.ne %d14, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x37,0xe4]
and.ne %d14, %d1, -129

# CHECK-INST: and.ne %d14, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x3f,0xe4]
and.ne %d14, %d1, -1

# CHECK-INST: and.ne %d14, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x20,0xe4]
and.ne %d14, %d1, 0

# CHECK-INST: and.ne %d14, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x20,0xe4]
and.ne %d14, %d1, 1

# CHECK-INST: and.ne %d14, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x28,0xe4]
and.ne %d14, %d1, 128

# CHECK-INST: and.ne %d14, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x2f,0xe4]
and.ne %d14, %d1, 255

# CHECK-INST: and.ne %d14, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x30,0xe4]
and.ne %d14, %d14, -256

# CHECK-INST: and.ne %d14, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x37,0xe4]
and.ne %d14, %d14, -129

# CHECK-INST: and.ne %d14, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x3f,0xe4]
and.ne %d14, %d14, -1

# CHECK-INST: and.ne %d14, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x20,0xe4]
and.ne %d14, %d14, 0

# CHECK-INST: and.ne %d14, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x20,0xe4]
and.ne %d14, %d14, 1

# CHECK-INST: and.ne %d14, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x28,0xe4]
and.ne %d14, %d14, 128

# CHECK-INST: and.ne %d14, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x2f,0xe4]
and.ne %d14, %d14, 255

# CHECK-INST: and.ne %d14, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x30,0xe4]
and.ne %d14, %d15, -256

# CHECK-INST: and.ne %d14, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x37,0xe4]
and.ne %d14, %d15, -129

# CHECK-INST: and.ne %d14, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x3f,0xe4]
and.ne %d14, %d15, -1

# CHECK-INST: and.ne %d14, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x20,0xe4]
and.ne %d14, %d15, 0

# CHECK-INST: and.ne %d14, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x20,0xe4]
and.ne %d14, %d15, 1

# CHECK-INST: and.ne %d14, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x28,0xe4]
and.ne %d14, %d15, 128

# CHECK-INST: and.ne %d14, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x2f,0xe4]
and.ne %d14, %d15, 255

# CHECK-INST: and.ne %d15, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x30,0xf4]
and.ne %d15, %d0, -256

# CHECK-INST: and.ne %d15, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x37,0xf4]
and.ne %d15, %d0, -129

# CHECK-INST: and.ne %d15, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x3f,0xf4]
and.ne %d15, %d0, -1

# CHECK-INST: and.ne %d15, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x20,0xf4]
and.ne %d15, %d0, 0

# CHECK-INST: and.ne %d15, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x20,0xf4]
and.ne %d15, %d0, 1

# CHECK-INST: and.ne %d15, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x28,0xf4]
and.ne %d15, %d0, 128

# CHECK-INST: and.ne %d15, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x2f,0xf4]
and.ne %d15, %d0, 255

# CHECK-INST: and.ne %d15, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x30,0xf4]
and.ne %d15, %d1, -256

# CHECK-INST: and.ne %d15, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x37,0xf4]
and.ne %d15, %d1, -129

# CHECK-INST: and.ne %d15, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x3f,0xf4]
and.ne %d15, %d1, -1

# CHECK-INST: and.ne %d15, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x20,0xf4]
and.ne %d15, %d1, 0

# CHECK-INST: and.ne %d15, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x20,0xf4]
and.ne %d15, %d1, 1

# CHECK-INST: and.ne %d15, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x28,0xf4]
and.ne %d15, %d1, 128

# CHECK-INST: and.ne %d15, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x2f,0xf4]
and.ne %d15, %d1, 255

# CHECK-INST: and.ne %d15, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x30,0xf4]
and.ne %d15, %d14, -256

# CHECK-INST: and.ne %d15, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x37,0xf4]
and.ne %d15, %d14, -129

# CHECK-INST: and.ne %d15, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x3f,0xf4]
and.ne %d15, %d14, -1

# CHECK-INST: and.ne %d15, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x20,0xf4]
and.ne %d15, %d14, 0

# CHECK-INST: and.ne %d15, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x20,0xf4]
and.ne %d15, %d14, 1

# CHECK-INST: and.ne %d15, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x28,0xf4]
and.ne %d15, %d14, 128

# CHECK-INST: and.ne %d15, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x2f,0xf4]
and.ne %d15, %d14, 255

# CHECK-INST: and.ne %d15, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x30,0xf4]
and.ne %d15, %d15, -256

# CHECK-INST: and.ne %d15, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x37,0xf4]
and.ne %d15, %d15, -129

# CHECK-INST: and.ne %d15, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x3f,0xf4]
and.ne %d15, %d15, -1

# CHECK-INST: and.ne %d15, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x20,0xf4]
and.ne %d15, %d15, 0

# CHECK-INST: and.ne %d15, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x20,0xf4]
and.ne %d15, %d15, 1

# CHECK-INST: and.ne %d15, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x28,0xf4]
and.ne %d15, %d15, 128

# CHECK-INST: and.ne %d15, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x2f,0xf4]
and.ne %d15, %d15, 255

# CHECK-INST: or.eq %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x70,0x02]
or.eq %d0, %d0, %d0

# CHECK-INST: or.eq %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x70,0x02]
or.eq %d0, %d0, %d1

# CHECK-INST: or.eq %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x70,0x02]
or.eq %d0, %d0, %d14

# CHECK-INST: or.eq %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x70,0x02]
or.eq %d0, %d0, %d15

# CHECK-INST: or.eq %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x70,0x02]
or.eq %d0, %d1, %d0

# CHECK-INST: or.eq %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x70,0x02]
or.eq %d0, %d1, %d1

# CHECK-INST: or.eq %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x70,0x02]
or.eq %d0, %d1, %d14

# CHECK-INST: or.eq %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x70,0x02]
or.eq %d0, %d1, %d15

# CHECK-INST: or.eq %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x70,0x02]
or.eq %d0, %d14, %d0

# CHECK-INST: or.eq %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x70,0x02]
or.eq %d0, %d14, %d1

# CHECK-INST: or.eq %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x70,0x02]
or.eq %d0, %d14, %d14

# CHECK-INST: or.eq %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x70,0x02]
or.eq %d0, %d14, %d15

# CHECK-INST: or.eq %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x70,0x02]
or.eq %d0, %d15, %d0

# CHECK-INST: or.eq %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x70,0x02]
or.eq %d0, %d15, %d1

# CHECK-INST: or.eq %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x70,0x02]
or.eq %d0, %d15, %d14

# CHECK-INST: or.eq %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x70,0x02]
or.eq %d0, %d15, %d15

# CHECK-INST: or.eq %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x70,0x12]
or.eq %d1, %d0, %d0

# CHECK-INST: or.eq %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x70,0x12]
or.eq %d1, %d0, %d1

# CHECK-INST: or.eq %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x70,0x12]
or.eq %d1, %d0, %d14

# CHECK-INST: or.eq %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x70,0x12]
or.eq %d1, %d0, %d15

# CHECK-INST: or.eq %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x70,0x12]
or.eq %d1, %d1, %d0

# CHECK-INST: or.eq %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x70,0x12]
or.eq %d1, %d1, %d1

# CHECK-INST: or.eq %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x70,0x12]
or.eq %d1, %d1, %d14

# CHECK-INST: or.eq %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x70,0x12]
or.eq %d1, %d1, %d15

# CHECK-INST: or.eq %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x70,0x12]
or.eq %d1, %d14, %d0

# CHECK-INST: or.eq %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x70,0x12]
or.eq %d1, %d14, %d1

# CHECK-INST: or.eq %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x70,0x12]
or.eq %d1, %d14, %d14

# CHECK-INST: or.eq %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x70,0x12]
or.eq %d1, %d14, %d15

# CHECK-INST: or.eq %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x70,0x12]
or.eq %d1, %d15, %d0

# CHECK-INST: or.eq %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x70,0x12]
or.eq %d1, %d15, %d1

# CHECK-INST: or.eq %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x70,0x12]
or.eq %d1, %d15, %d14

# CHECK-INST: or.eq %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x70,0x12]
or.eq %d1, %d15, %d15

# CHECK-INST: or.eq %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x70,0xe2]
or.eq %d14, %d0, %d0

# CHECK-INST: or.eq %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x70,0xe2]
or.eq %d14, %d0, %d1

# CHECK-INST: or.eq %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x70,0xe2]
or.eq %d14, %d0, %d14

# CHECK-INST: or.eq %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x70,0xe2]
or.eq %d14, %d0, %d15

# CHECK-INST: or.eq %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x70,0xe2]
or.eq %d14, %d1, %d0

# CHECK-INST: or.eq %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x70,0xe2]
or.eq %d14, %d1, %d1

# CHECK-INST: or.eq %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x70,0xe2]
or.eq %d14, %d1, %d14

# CHECK-INST: or.eq %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x70,0xe2]
or.eq %d14, %d1, %d15

# CHECK-INST: or.eq %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x70,0xe2]
or.eq %d14, %d14, %d0

# CHECK-INST: or.eq %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x70,0xe2]
or.eq %d14, %d14, %d1

# CHECK-INST: or.eq %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x70,0xe2]
or.eq %d14, %d14, %d14

# CHECK-INST: or.eq %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x70,0xe2]
or.eq %d14, %d14, %d15

# CHECK-INST: or.eq %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x70,0xe2]
or.eq %d14, %d15, %d0

# CHECK-INST: or.eq %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x70,0xe2]
or.eq %d14, %d15, %d1

# CHECK-INST: or.eq %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x70,0xe2]
or.eq %d14, %d15, %d14

# CHECK-INST: or.eq %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x70,0xe2]
or.eq %d14, %d15, %d15

# CHECK-INST: or.eq %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x70,0xf2]
or.eq %d15, %d0, %d0

# CHECK-INST: or.eq %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x70,0xf2]
or.eq %d15, %d0, %d1

# CHECK-INST: or.eq %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x70,0xf2]
or.eq %d15, %d0, %d14

# CHECK-INST: or.eq %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x70,0xf2]
or.eq %d15, %d0, %d15

# CHECK-INST: or.eq %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x70,0xf2]
or.eq %d15, %d1, %d0

# CHECK-INST: or.eq %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x70,0xf2]
or.eq %d15, %d1, %d1

# CHECK-INST: or.eq %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x70,0xf2]
or.eq %d15, %d1, %d14

# CHECK-INST: or.eq %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x70,0xf2]
or.eq %d15, %d1, %d15

# CHECK-INST: or.eq %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x70,0xf2]
or.eq %d15, %d14, %d0

# CHECK-INST: or.eq %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x70,0xf2]
or.eq %d15, %d14, %d1

# CHECK-INST: or.eq %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x70,0xf2]
or.eq %d15, %d14, %d14

# CHECK-INST: or.eq %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x70,0xf2]
or.eq %d15, %d14, %d15

# CHECK-INST: or.eq %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x70,0xf2]
or.eq %d15, %d15, %d0

# CHECK-INST: or.eq %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x70,0xf2]
or.eq %d15, %d15, %d1

# CHECK-INST: or.eq %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x70,0xf2]
or.eq %d15, %d15, %d14

# CHECK-INST: or.eq %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x70,0xf2]
or.eq %d15, %d15, %d15

# CHECK-INST: or.eq %d0, %d0, -256
# CHECK: encoding: [0x8b,0x00,0xf0,0x04]
or.eq %d0, %d0, -256

# CHECK-INST: or.eq %d0, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0xf7,0x04]
or.eq %d0, %d0, -129

# CHECK-INST: or.eq %d0, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0xff,0x04]
or.eq %d0, %d0, -1

# CHECK-INST: or.eq %d0, %d0, 0
# CHECK: encoding: [0x8b,0x00,0xe0,0x04]
or.eq %d0, %d0, 0

# CHECK-INST: or.eq %d0, %d0, 1
# CHECK: encoding: [0x8b,0x10,0xe0,0x04]
or.eq %d0, %d0, 1

# CHECK-INST: or.eq %d0, %d0, 128
# CHECK: encoding: [0x8b,0x00,0xe8,0x04]
or.eq %d0, %d0, 128

# CHECK-INST: or.eq %d0, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0xef,0x04]
or.eq %d0, %d0, 255

# CHECK-INST: or.eq %d0, %d1, -256
# CHECK: encoding: [0x8b,0x01,0xf0,0x04]
or.eq %d0, %d1, -256

# CHECK-INST: or.eq %d0, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0xf7,0x04]
or.eq %d0, %d1, -129

# CHECK-INST: or.eq %d0, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0xff,0x04]
or.eq %d0, %d1, -1

# CHECK-INST: or.eq %d0, %d1, 0
# CHECK: encoding: [0x8b,0x01,0xe0,0x04]
or.eq %d0, %d1, 0

# CHECK-INST: or.eq %d0, %d1, 1
# CHECK: encoding: [0x8b,0x11,0xe0,0x04]
or.eq %d0, %d1, 1

# CHECK-INST: or.eq %d0, %d1, 128
# CHECK: encoding: [0x8b,0x01,0xe8,0x04]
or.eq %d0, %d1, 128

# CHECK-INST: or.eq %d0, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0xef,0x04]
or.eq %d0, %d1, 255

# CHECK-INST: or.eq %d0, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0xf0,0x04]
or.eq %d0, %d14, -256

# CHECK-INST: or.eq %d0, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0xf7,0x04]
or.eq %d0, %d14, -129

# CHECK-INST: or.eq %d0, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0xff,0x04]
or.eq %d0, %d14, -1

# CHECK-INST: or.eq %d0, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0xe0,0x04]
or.eq %d0, %d14, 0

# CHECK-INST: or.eq %d0, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0xe0,0x04]
or.eq %d0, %d14, 1

# CHECK-INST: or.eq %d0, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0xe8,0x04]
or.eq %d0, %d14, 128

# CHECK-INST: or.eq %d0, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0xef,0x04]
or.eq %d0, %d14, 255

# CHECK-INST: or.eq %d0, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0xf0,0x04]
or.eq %d0, %d15, -256

# CHECK-INST: or.eq %d0, %d15, -129
# CHECK: encoding: [0x8b,0xff,0xf7,0x04]
or.eq %d0, %d15, -129

# CHECK-INST: or.eq %d0, %d15, -1
# CHECK: encoding: [0x8b,0xff,0xff,0x04]
or.eq %d0, %d15, -1

# CHECK-INST: or.eq %d0, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0xe0,0x04]
or.eq %d0, %d15, 0

# CHECK-INST: or.eq %d0, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0xe0,0x04]
or.eq %d0, %d15, 1

# CHECK-INST: or.eq %d0, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0xe8,0x04]
or.eq %d0, %d15, 128

# CHECK-INST: or.eq %d0, %d15, 255
# CHECK: encoding: [0x8b,0xff,0xef,0x04]
or.eq %d0, %d15, 255

# CHECK-INST: or.eq %d1, %d0, -256
# CHECK: encoding: [0x8b,0x00,0xf0,0x14]
or.eq %d1, %d0, -256

# CHECK-INST: or.eq %d1, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0xf7,0x14]
or.eq %d1, %d0, -129

# CHECK-INST: or.eq %d1, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0xff,0x14]
or.eq %d1, %d0, -1

# CHECK-INST: or.eq %d1, %d0, 0
# CHECK: encoding: [0x8b,0x00,0xe0,0x14]
or.eq %d1, %d0, 0

# CHECK-INST: or.eq %d1, %d0, 1
# CHECK: encoding: [0x8b,0x10,0xe0,0x14]
or.eq %d1, %d0, 1

# CHECK-INST: or.eq %d1, %d0, 128
# CHECK: encoding: [0x8b,0x00,0xe8,0x14]
or.eq %d1, %d0, 128

# CHECK-INST: or.eq %d1, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0xef,0x14]
or.eq %d1, %d0, 255

# CHECK-INST: or.eq %d1, %d1, -256
# CHECK: encoding: [0x8b,0x01,0xf0,0x14]
or.eq %d1, %d1, -256

# CHECK-INST: or.eq %d1, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0xf7,0x14]
or.eq %d1, %d1, -129

# CHECK-INST: or.eq %d1, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0xff,0x14]
or.eq %d1, %d1, -1

# CHECK-INST: or.eq %d1, %d1, 0
# CHECK: encoding: [0x8b,0x01,0xe0,0x14]
or.eq %d1, %d1, 0

# CHECK-INST: or.eq %d1, %d1, 1
# CHECK: encoding: [0x8b,0x11,0xe0,0x14]
or.eq %d1, %d1, 1

# CHECK-INST: or.eq %d1, %d1, 128
# CHECK: encoding: [0x8b,0x01,0xe8,0x14]
or.eq %d1, %d1, 128

# CHECK-INST: or.eq %d1, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0xef,0x14]
or.eq %d1, %d1, 255

# CHECK-INST: or.eq %d1, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0xf0,0x14]
or.eq %d1, %d14, -256

# CHECK-INST: or.eq %d1, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0xf7,0x14]
or.eq %d1, %d14, -129

# CHECK-INST: or.eq %d1, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0xff,0x14]
or.eq %d1, %d14, -1

# CHECK-INST: or.eq %d1, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0xe0,0x14]
or.eq %d1, %d14, 0

# CHECK-INST: or.eq %d1, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0xe0,0x14]
or.eq %d1, %d14, 1

# CHECK-INST: or.eq %d1, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0xe8,0x14]
or.eq %d1, %d14, 128

# CHECK-INST: or.eq %d1, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0xef,0x14]
or.eq %d1, %d14, 255

# CHECK-INST: or.eq %d1, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0xf0,0x14]
or.eq %d1, %d15, -256

# CHECK-INST: or.eq %d1, %d15, -129
# CHECK: encoding: [0x8b,0xff,0xf7,0x14]
or.eq %d1, %d15, -129

# CHECK-INST: or.eq %d1, %d15, -1
# CHECK: encoding: [0x8b,0xff,0xff,0x14]
or.eq %d1, %d15, -1

# CHECK-INST: or.eq %d1, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0xe0,0x14]
or.eq %d1, %d15, 0

# CHECK-INST: or.eq %d1, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0xe0,0x14]
or.eq %d1, %d15, 1

# CHECK-INST: or.eq %d1, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0xe8,0x14]
or.eq %d1, %d15, 128

# CHECK-INST: or.eq %d1, %d15, 255
# CHECK: encoding: [0x8b,0xff,0xef,0x14]
or.eq %d1, %d15, 255

# CHECK-INST: or.eq %d14, %d0, -256
# CHECK: encoding: [0x8b,0x00,0xf0,0xe4]
or.eq %d14, %d0, -256

# CHECK-INST: or.eq %d14, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0xf7,0xe4]
or.eq %d14, %d0, -129

# CHECK-INST: or.eq %d14, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0xff,0xe4]
or.eq %d14, %d0, -1

# CHECK-INST: or.eq %d14, %d0, 0
# CHECK: encoding: [0x8b,0x00,0xe0,0xe4]
or.eq %d14, %d0, 0

# CHECK-INST: or.eq %d14, %d0, 1
# CHECK: encoding: [0x8b,0x10,0xe0,0xe4]
or.eq %d14, %d0, 1

# CHECK-INST: or.eq %d14, %d0, 128
# CHECK: encoding: [0x8b,0x00,0xe8,0xe4]
or.eq %d14, %d0, 128

# CHECK-INST: or.eq %d14, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0xef,0xe4]
or.eq %d14, %d0, 255

# CHECK-INST: or.eq %d14, %d1, -256
# CHECK: encoding: [0x8b,0x01,0xf0,0xe4]
or.eq %d14, %d1, -256

# CHECK-INST: or.eq %d14, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0xf7,0xe4]
or.eq %d14, %d1, -129

# CHECK-INST: or.eq %d14, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0xff,0xe4]
or.eq %d14, %d1, -1

# CHECK-INST: or.eq %d14, %d1, 0
# CHECK: encoding: [0x8b,0x01,0xe0,0xe4]
or.eq %d14, %d1, 0

# CHECK-INST: or.eq %d14, %d1, 1
# CHECK: encoding: [0x8b,0x11,0xe0,0xe4]
or.eq %d14, %d1, 1

# CHECK-INST: or.eq %d14, %d1, 128
# CHECK: encoding: [0x8b,0x01,0xe8,0xe4]
or.eq %d14, %d1, 128

# CHECK-INST: or.eq %d14, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0xef,0xe4]
or.eq %d14, %d1, 255

# CHECK-INST: or.eq %d14, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0xf0,0xe4]
or.eq %d14, %d14, -256

# CHECK-INST: or.eq %d14, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0xf7,0xe4]
or.eq %d14, %d14, -129

# CHECK-INST: or.eq %d14, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0xff,0xe4]
or.eq %d14, %d14, -1

# CHECK-INST: or.eq %d14, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0xe0,0xe4]
or.eq %d14, %d14, 0

# CHECK-INST: or.eq %d14, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0xe0,0xe4]
or.eq %d14, %d14, 1

# CHECK-INST: or.eq %d14, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0xe8,0xe4]
or.eq %d14, %d14, 128

# CHECK-INST: or.eq %d14, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0xef,0xe4]
or.eq %d14, %d14, 255

# CHECK-INST: or.eq %d14, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0xf0,0xe4]
or.eq %d14, %d15, -256

# CHECK-INST: or.eq %d14, %d15, -129
# CHECK: encoding: [0x8b,0xff,0xf7,0xe4]
or.eq %d14, %d15, -129

# CHECK-INST: or.eq %d14, %d15, -1
# CHECK: encoding: [0x8b,0xff,0xff,0xe4]
or.eq %d14, %d15, -1

# CHECK-INST: or.eq %d14, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0xe0,0xe4]
or.eq %d14, %d15, 0

# CHECK-INST: or.eq %d14, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0xe0,0xe4]
or.eq %d14, %d15, 1

# CHECK-INST: or.eq %d14, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0xe8,0xe4]
or.eq %d14, %d15, 128

# CHECK-INST: or.eq %d14, %d15, 255
# CHECK: encoding: [0x8b,0xff,0xef,0xe4]
or.eq %d14, %d15, 255

# CHECK-INST: or.eq %d15, %d0, -256
# CHECK: encoding: [0x8b,0x00,0xf0,0xf4]
or.eq %d15, %d0, -256

# CHECK-INST: or.eq %d15, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0xf7,0xf4]
or.eq %d15, %d0, -129

# CHECK-INST: or.eq %d15, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0xff,0xf4]
or.eq %d15, %d0, -1

# CHECK-INST: or.eq %d15, %d0, 0
# CHECK: encoding: [0x8b,0x00,0xe0,0xf4]
or.eq %d15, %d0, 0

# CHECK-INST: or.eq %d15, %d0, 1
# CHECK: encoding: [0x8b,0x10,0xe0,0xf4]
or.eq %d15, %d0, 1

# CHECK-INST: or.eq %d15, %d0, 128
# CHECK: encoding: [0x8b,0x00,0xe8,0xf4]
or.eq %d15, %d0, 128

# CHECK-INST: or.eq %d15, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0xef,0xf4]
or.eq %d15, %d0, 255

# CHECK-INST: or.eq %d15, %d1, -256
# CHECK: encoding: [0x8b,0x01,0xf0,0xf4]
or.eq %d15, %d1, -256

# CHECK-INST: or.eq %d15, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0xf7,0xf4]
or.eq %d15, %d1, -129

# CHECK-INST: or.eq %d15, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0xff,0xf4]
or.eq %d15, %d1, -1

# CHECK-INST: or.eq %d15, %d1, 0
# CHECK: encoding: [0x8b,0x01,0xe0,0xf4]
or.eq %d15, %d1, 0

# CHECK-INST: or.eq %d15, %d1, 1
# CHECK: encoding: [0x8b,0x11,0xe0,0xf4]
or.eq %d15, %d1, 1

# CHECK-INST: or.eq %d15, %d1, 128
# CHECK: encoding: [0x8b,0x01,0xe8,0xf4]
or.eq %d15, %d1, 128

# CHECK-INST: or.eq %d15, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0xef,0xf4]
or.eq %d15, %d1, 255

# CHECK-INST: or.eq %d15, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0xf0,0xf4]
or.eq %d15, %d14, -256

# CHECK-INST: or.eq %d15, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0xf7,0xf4]
or.eq %d15, %d14, -129

# CHECK-INST: or.eq %d15, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0xff,0xf4]
or.eq %d15, %d14, -1

# CHECK-INST: or.eq %d15, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0xe0,0xf4]
or.eq %d15, %d14, 0

# CHECK-INST: or.eq %d15, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0xe0,0xf4]
or.eq %d15, %d14, 1

# CHECK-INST: or.eq %d15, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0xe8,0xf4]
or.eq %d15, %d14, 128

# CHECK-INST: or.eq %d15, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0xef,0xf4]
or.eq %d15, %d14, 255

# CHECK-INST: or.eq %d15, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0xf0,0xf4]
or.eq %d15, %d15, -256

# CHECK-INST: or.eq %d15, %d15, -129
# CHECK: encoding: [0x8b,0xff,0xf7,0xf4]
or.eq %d15, %d15, -129

# CHECK-INST: or.eq %d15, %d15, -1
# CHECK: encoding: [0x8b,0xff,0xff,0xf4]
or.eq %d15, %d15, -1

# CHECK-INST: or.eq %d15, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0xe0,0xf4]
or.eq %d15, %d15, 0

# CHECK-INST: or.eq %d15, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0xe0,0xf4]
or.eq %d15, %d15, 1

# CHECK-INST: or.eq %d15, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0xe8,0xf4]
or.eq %d15, %d15, 128

# CHECK-INST: or.eq %d15, %d15, 255
# CHECK: encoding: [0x8b,0xff,0xef,0xf4]
or.eq %d15, %d15, 255

# CHECK-INST: or.ge %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xb0,0x02]
or.ge %d0, %d0, %d0

# CHECK-INST: or.ge %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xb0,0x02]
or.ge %d0, %d0, %d1

# CHECK-INST: or.ge %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xb0,0x02]
or.ge %d0, %d0, %d14

# CHECK-INST: or.ge %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xb0,0x02]
or.ge %d0, %d0, %d15

# CHECK-INST: or.ge %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xb0,0x02]
or.ge %d0, %d1, %d0

# CHECK-INST: or.ge %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xb0,0x02]
or.ge %d0, %d1, %d1

# CHECK-INST: or.ge %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xb0,0x02]
or.ge %d0, %d1, %d14

# CHECK-INST: or.ge %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xb0,0x02]
or.ge %d0, %d1, %d15

# CHECK-INST: or.ge %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xb0,0x02]
or.ge %d0, %d14, %d0

# CHECK-INST: or.ge %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xb0,0x02]
or.ge %d0, %d14, %d1

# CHECK-INST: or.ge %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xb0,0x02]
or.ge %d0, %d14, %d14

# CHECK-INST: or.ge %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xb0,0x02]
or.ge %d0, %d14, %d15

# CHECK-INST: or.ge %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xb0,0x02]
or.ge %d0, %d15, %d0

# CHECK-INST: or.ge %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xb0,0x02]
or.ge %d0, %d15, %d1

# CHECK-INST: or.ge %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xb0,0x02]
or.ge %d0, %d15, %d14

# CHECK-INST: or.ge %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xb0,0x02]
or.ge %d0, %d15, %d15

# CHECK-INST: or.ge %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xb0,0x12]
or.ge %d1, %d0, %d0

# CHECK-INST: or.ge %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xb0,0x12]
or.ge %d1, %d0, %d1

# CHECK-INST: or.ge %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xb0,0x12]
or.ge %d1, %d0, %d14

# CHECK-INST: or.ge %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xb0,0x12]
or.ge %d1, %d0, %d15

# CHECK-INST: or.ge %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xb0,0x12]
or.ge %d1, %d1, %d0

# CHECK-INST: or.ge %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xb0,0x12]
or.ge %d1, %d1, %d1

# CHECK-INST: or.ge %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xb0,0x12]
or.ge %d1, %d1, %d14

# CHECK-INST: or.ge %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xb0,0x12]
or.ge %d1, %d1, %d15

# CHECK-INST: or.ge %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xb0,0x12]
or.ge %d1, %d14, %d0

# CHECK-INST: or.ge %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xb0,0x12]
or.ge %d1, %d14, %d1

# CHECK-INST: or.ge %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xb0,0x12]
or.ge %d1, %d14, %d14

# CHECK-INST: or.ge %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xb0,0x12]
or.ge %d1, %d14, %d15

# CHECK-INST: or.ge %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xb0,0x12]
or.ge %d1, %d15, %d0

# CHECK-INST: or.ge %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xb0,0x12]
or.ge %d1, %d15, %d1

# CHECK-INST: or.ge %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xb0,0x12]
or.ge %d1, %d15, %d14

# CHECK-INST: or.ge %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xb0,0x12]
or.ge %d1, %d15, %d15

# CHECK-INST: or.ge %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xb0,0xe2]
or.ge %d14, %d0, %d0

# CHECK-INST: or.ge %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xb0,0xe2]
or.ge %d14, %d0, %d1

# CHECK-INST: or.ge %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xb0,0xe2]
or.ge %d14, %d0, %d14

# CHECK-INST: or.ge %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xb0,0xe2]
or.ge %d14, %d0, %d15

# CHECK-INST: or.ge %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xb0,0xe2]
or.ge %d14, %d1, %d0

# CHECK-INST: or.ge %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xb0,0xe2]
or.ge %d14, %d1, %d1

# CHECK-INST: or.ge %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xb0,0xe2]
or.ge %d14, %d1, %d14

# CHECK-INST: or.ge %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xb0,0xe2]
or.ge %d14, %d1, %d15

# CHECK-INST: or.ge %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xb0,0xe2]
or.ge %d14, %d14, %d0

# CHECK-INST: or.ge %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xb0,0xe2]
or.ge %d14, %d14, %d1

# CHECK-INST: or.ge %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xb0,0xe2]
or.ge %d14, %d14, %d14

# CHECK-INST: or.ge %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xb0,0xe2]
or.ge %d14, %d14, %d15

# CHECK-INST: or.ge %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xb0,0xe2]
or.ge %d14, %d15, %d0

# CHECK-INST: or.ge %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xb0,0xe2]
or.ge %d14, %d15, %d1

# CHECK-INST: or.ge %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xb0,0xe2]
or.ge %d14, %d15, %d14

# CHECK-INST: or.ge %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xb0,0xe2]
or.ge %d14, %d15, %d15

# CHECK-INST: or.ge %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xb0,0xf2]
or.ge %d15, %d0, %d0

# CHECK-INST: or.ge %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xb0,0xf2]
or.ge %d15, %d0, %d1

# CHECK-INST: or.ge %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xb0,0xf2]
or.ge %d15, %d0, %d14

# CHECK-INST: or.ge %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xb0,0xf2]
or.ge %d15, %d0, %d15

# CHECK-INST: or.ge %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xb0,0xf2]
or.ge %d15, %d1, %d0

# CHECK-INST: or.ge %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xb0,0xf2]
or.ge %d15, %d1, %d1

# CHECK-INST: or.ge %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xb0,0xf2]
or.ge %d15, %d1, %d14

# CHECK-INST: or.ge %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xb0,0xf2]
or.ge %d15, %d1, %d15

# CHECK-INST: or.ge %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xb0,0xf2]
or.ge %d15, %d14, %d0

# CHECK-INST: or.ge %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xb0,0xf2]
or.ge %d15, %d14, %d1

# CHECK-INST: or.ge %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xb0,0xf2]
or.ge %d15, %d14, %d14

# CHECK-INST: or.ge %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xb0,0xf2]
or.ge %d15, %d14, %d15

# CHECK-INST: or.ge %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xb0,0xf2]
or.ge %d15, %d15, %d0

# CHECK-INST: or.ge %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xb0,0xf2]
or.ge %d15, %d15, %d1

# CHECK-INST: or.ge %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xb0,0xf2]
or.ge %d15, %d15, %d14

# CHECK-INST: or.ge %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xb0,0xf2]
or.ge %d15, %d15, %d15

# CHECK-INST: or.ge %d0, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x70,0x05]
or.ge %d0, %d0, -256

# CHECK-INST: or.ge %d0, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x77,0x05]
or.ge %d0, %d0, -129

# CHECK-INST: or.ge %d0, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x7f,0x05]
or.ge %d0, %d0, -1

# CHECK-INST: or.ge %d0, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x60,0x05]
or.ge %d0, %d0, 0

# CHECK-INST: or.ge %d0, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x60,0x05]
or.ge %d0, %d0, 1

# CHECK-INST: or.ge %d0, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x68,0x05]
or.ge %d0, %d0, 128

# CHECK-INST: or.ge %d0, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x6f,0x05]
or.ge %d0, %d0, 255

# CHECK-INST: or.ge %d0, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x70,0x05]
or.ge %d0, %d1, -256

# CHECK-INST: or.ge %d0, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x77,0x05]
or.ge %d0, %d1, -129

# CHECK-INST: or.ge %d0, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x7f,0x05]
or.ge %d0, %d1, -1

# CHECK-INST: or.ge %d0, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x60,0x05]
or.ge %d0, %d1, 0

# CHECK-INST: or.ge %d0, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x60,0x05]
or.ge %d0, %d1, 1

# CHECK-INST: or.ge %d0, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x68,0x05]
or.ge %d0, %d1, 128

# CHECK-INST: or.ge %d0, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x6f,0x05]
or.ge %d0, %d1, 255

# CHECK-INST: or.ge %d0, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x70,0x05]
or.ge %d0, %d14, -256

# CHECK-INST: or.ge %d0, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x77,0x05]
or.ge %d0, %d14, -129

# CHECK-INST: or.ge %d0, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x7f,0x05]
or.ge %d0, %d14, -1

# CHECK-INST: or.ge %d0, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x60,0x05]
or.ge %d0, %d14, 0

# CHECK-INST: or.ge %d0, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x60,0x05]
or.ge %d0, %d14, 1

# CHECK-INST: or.ge %d0, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x68,0x05]
or.ge %d0, %d14, 128

# CHECK-INST: or.ge %d0, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x6f,0x05]
or.ge %d0, %d14, 255

# CHECK-INST: or.ge %d0, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x70,0x05]
or.ge %d0, %d15, -256

# CHECK-INST: or.ge %d0, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x77,0x05]
or.ge %d0, %d15, -129

# CHECK-INST: or.ge %d0, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x7f,0x05]
or.ge %d0, %d15, -1

# CHECK-INST: or.ge %d0, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x60,0x05]
or.ge %d0, %d15, 0

# CHECK-INST: or.ge %d0, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x60,0x05]
or.ge %d0, %d15, 1

# CHECK-INST: or.ge %d0, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x68,0x05]
or.ge %d0, %d15, 128

# CHECK-INST: or.ge %d0, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x6f,0x05]
or.ge %d0, %d15, 255

# CHECK-INST: or.ge %d1, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x70,0x15]
or.ge %d1, %d0, -256

# CHECK-INST: or.ge %d1, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x77,0x15]
or.ge %d1, %d0, -129

# CHECK-INST: or.ge %d1, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x7f,0x15]
or.ge %d1, %d0, -1

# CHECK-INST: or.ge %d1, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x60,0x15]
or.ge %d1, %d0, 0

# CHECK-INST: or.ge %d1, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x60,0x15]
or.ge %d1, %d0, 1

# CHECK-INST: or.ge %d1, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x68,0x15]
or.ge %d1, %d0, 128

# CHECK-INST: or.ge %d1, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x6f,0x15]
or.ge %d1, %d0, 255

# CHECK-INST: or.ge %d1, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x70,0x15]
or.ge %d1, %d1, -256

# CHECK-INST: or.ge %d1, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x77,0x15]
or.ge %d1, %d1, -129

# CHECK-INST: or.ge %d1, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x7f,0x15]
or.ge %d1, %d1, -1

# CHECK-INST: or.ge %d1, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x60,0x15]
or.ge %d1, %d1, 0

# CHECK-INST: or.ge %d1, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x60,0x15]
or.ge %d1, %d1, 1

# CHECK-INST: or.ge %d1, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x68,0x15]
or.ge %d1, %d1, 128

# CHECK-INST: or.ge %d1, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x6f,0x15]
or.ge %d1, %d1, 255

# CHECK-INST: or.ge %d1, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x70,0x15]
or.ge %d1, %d14, -256

# CHECK-INST: or.ge %d1, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x77,0x15]
or.ge %d1, %d14, -129

# CHECK-INST: or.ge %d1, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x7f,0x15]
or.ge %d1, %d14, -1

# CHECK-INST: or.ge %d1, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x60,0x15]
or.ge %d1, %d14, 0

# CHECK-INST: or.ge %d1, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x60,0x15]
or.ge %d1, %d14, 1

# CHECK-INST: or.ge %d1, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x68,0x15]
or.ge %d1, %d14, 128

# CHECK-INST: or.ge %d1, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x6f,0x15]
or.ge %d1, %d14, 255

# CHECK-INST: or.ge %d1, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x70,0x15]
or.ge %d1, %d15, -256

# CHECK-INST: or.ge %d1, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x77,0x15]
or.ge %d1, %d15, -129

# CHECK-INST: or.ge %d1, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x7f,0x15]
or.ge %d1, %d15, -1

# CHECK-INST: or.ge %d1, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x60,0x15]
or.ge %d1, %d15, 0

# CHECK-INST: or.ge %d1, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x60,0x15]
or.ge %d1, %d15, 1

# CHECK-INST: or.ge %d1, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x68,0x15]
or.ge %d1, %d15, 128

# CHECK-INST: or.ge %d1, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x6f,0x15]
or.ge %d1, %d15, 255

# CHECK-INST: or.ge %d14, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x70,0xe5]
or.ge %d14, %d0, -256

# CHECK-INST: or.ge %d14, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x77,0xe5]
or.ge %d14, %d0, -129

# CHECK-INST: or.ge %d14, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x7f,0xe5]
or.ge %d14, %d0, -1

# CHECK-INST: or.ge %d14, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x60,0xe5]
or.ge %d14, %d0, 0

# CHECK-INST: or.ge %d14, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x60,0xe5]
or.ge %d14, %d0, 1

# CHECK-INST: or.ge %d14, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x68,0xe5]
or.ge %d14, %d0, 128

# CHECK-INST: or.ge %d14, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x6f,0xe5]
or.ge %d14, %d0, 255

# CHECK-INST: or.ge %d14, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x70,0xe5]
or.ge %d14, %d1, -256

# CHECK-INST: or.ge %d14, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x77,0xe5]
or.ge %d14, %d1, -129

# CHECK-INST: or.ge %d14, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x7f,0xe5]
or.ge %d14, %d1, -1

# CHECK-INST: or.ge %d14, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x60,0xe5]
or.ge %d14, %d1, 0

# CHECK-INST: or.ge %d14, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x60,0xe5]
or.ge %d14, %d1, 1

# CHECK-INST: or.ge %d14, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x68,0xe5]
or.ge %d14, %d1, 128

# CHECK-INST: or.ge %d14, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x6f,0xe5]
or.ge %d14, %d1, 255

# CHECK-INST: or.ge %d14, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x70,0xe5]
or.ge %d14, %d14, -256

# CHECK-INST: or.ge %d14, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x77,0xe5]
or.ge %d14, %d14, -129

# CHECK-INST: or.ge %d14, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x7f,0xe5]
or.ge %d14, %d14, -1

# CHECK-INST: or.ge %d14, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x60,0xe5]
or.ge %d14, %d14, 0

# CHECK-INST: or.ge %d14, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x60,0xe5]
or.ge %d14, %d14, 1

# CHECK-INST: or.ge %d14, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x68,0xe5]
or.ge %d14, %d14, 128

# CHECK-INST: or.ge %d14, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x6f,0xe5]
or.ge %d14, %d14, 255

# CHECK-INST: or.ge %d14, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x70,0xe5]
or.ge %d14, %d15, -256

# CHECK-INST: or.ge %d14, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x77,0xe5]
or.ge %d14, %d15, -129

# CHECK-INST: or.ge %d14, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x7f,0xe5]
or.ge %d14, %d15, -1

# CHECK-INST: or.ge %d14, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x60,0xe5]
or.ge %d14, %d15, 0

# CHECK-INST: or.ge %d14, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x60,0xe5]
or.ge %d14, %d15, 1

# CHECK-INST: or.ge %d14, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x68,0xe5]
or.ge %d14, %d15, 128

# CHECK-INST: or.ge %d14, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x6f,0xe5]
or.ge %d14, %d15, 255

# CHECK-INST: or.ge %d15, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x70,0xf5]
or.ge %d15, %d0, -256

# CHECK-INST: or.ge %d15, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x77,0xf5]
or.ge %d15, %d0, -129

# CHECK-INST: or.ge %d15, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x7f,0xf5]
or.ge %d15, %d0, -1

# CHECK-INST: or.ge %d15, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x60,0xf5]
or.ge %d15, %d0, 0

# CHECK-INST: or.ge %d15, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x60,0xf5]
or.ge %d15, %d0, 1

# CHECK-INST: or.ge %d15, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x68,0xf5]
or.ge %d15, %d0, 128

# CHECK-INST: or.ge %d15, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x6f,0xf5]
or.ge %d15, %d0, 255

# CHECK-INST: or.ge %d15, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x70,0xf5]
or.ge %d15, %d1, -256

# CHECK-INST: or.ge %d15, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x77,0xf5]
or.ge %d15, %d1, -129

# CHECK-INST: or.ge %d15, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x7f,0xf5]
or.ge %d15, %d1, -1

# CHECK-INST: or.ge %d15, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x60,0xf5]
or.ge %d15, %d1, 0

# CHECK-INST: or.ge %d15, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x60,0xf5]
or.ge %d15, %d1, 1

# CHECK-INST: or.ge %d15, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x68,0xf5]
or.ge %d15, %d1, 128

# CHECK-INST: or.ge %d15, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x6f,0xf5]
or.ge %d15, %d1, 255

# CHECK-INST: or.ge %d15, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x70,0xf5]
or.ge %d15, %d14, -256

# CHECK-INST: or.ge %d15, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x77,0xf5]
or.ge %d15, %d14, -129

# CHECK-INST: or.ge %d15, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x7f,0xf5]
or.ge %d15, %d14, -1

# CHECK-INST: or.ge %d15, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x60,0xf5]
or.ge %d15, %d14, 0

# CHECK-INST: or.ge %d15, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x60,0xf5]
or.ge %d15, %d14, 1

# CHECK-INST: or.ge %d15, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x68,0xf5]
or.ge %d15, %d14, 128

# CHECK-INST: or.ge %d15, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x6f,0xf5]
or.ge %d15, %d14, 255

# CHECK-INST: or.ge %d15, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x70,0xf5]
or.ge %d15, %d15, -256

# CHECK-INST: or.ge %d15, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x77,0xf5]
or.ge %d15, %d15, -129

# CHECK-INST: or.ge %d15, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x7f,0xf5]
or.ge %d15, %d15, -1

# CHECK-INST: or.ge %d15, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x60,0xf5]
or.ge %d15, %d15, 0

# CHECK-INST: or.ge %d15, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x60,0xf5]
or.ge %d15, %d15, 1

# CHECK-INST: or.ge %d15, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x68,0xf5]
or.ge %d15, %d15, 128

# CHECK-INST: or.ge %d15, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x6f,0xf5]
or.ge %d15, %d15, 255

# CHECK-INST: or.ge.u %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xc0,0x02]
or.ge.u %d0, %d0, %d0

# CHECK-INST: or.ge.u %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xc0,0x02]
or.ge.u %d0, %d0, %d1

# CHECK-INST: or.ge.u %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xc0,0x02]
or.ge.u %d0, %d0, %d14

# CHECK-INST: or.ge.u %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xc0,0x02]
or.ge.u %d0, %d0, %d15

# CHECK-INST: or.ge.u %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xc0,0x02]
or.ge.u %d0, %d1, %d0

# CHECK-INST: or.ge.u %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xc0,0x02]
or.ge.u %d0, %d1, %d1

# CHECK-INST: or.ge.u %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xc0,0x02]
or.ge.u %d0, %d1, %d14

# CHECK-INST: or.ge.u %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xc0,0x02]
or.ge.u %d0, %d1, %d15

# CHECK-INST: or.ge.u %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xc0,0x02]
or.ge.u %d0, %d14, %d0

# CHECK-INST: or.ge.u %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xc0,0x02]
or.ge.u %d0, %d14, %d1

# CHECK-INST: or.ge.u %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xc0,0x02]
or.ge.u %d0, %d14, %d14

# CHECK-INST: or.ge.u %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xc0,0x02]
or.ge.u %d0, %d14, %d15

# CHECK-INST: or.ge.u %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xc0,0x02]
or.ge.u %d0, %d15, %d0

# CHECK-INST: or.ge.u %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xc0,0x02]
or.ge.u %d0, %d15, %d1

# CHECK-INST: or.ge.u %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xc0,0x02]
or.ge.u %d0, %d15, %d14

# CHECK-INST: or.ge.u %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xc0,0x02]
or.ge.u %d0, %d15, %d15

# CHECK-INST: or.ge.u %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xc0,0x12]
or.ge.u %d1, %d0, %d0

# CHECK-INST: or.ge.u %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xc0,0x12]
or.ge.u %d1, %d0, %d1

# CHECK-INST: or.ge.u %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xc0,0x12]
or.ge.u %d1, %d0, %d14

# CHECK-INST: or.ge.u %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xc0,0x12]
or.ge.u %d1, %d0, %d15

# CHECK-INST: or.ge.u %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xc0,0x12]
or.ge.u %d1, %d1, %d0

# CHECK-INST: or.ge.u %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xc0,0x12]
or.ge.u %d1, %d1, %d1

# CHECK-INST: or.ge.u %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xc0,0x12]
or.ge.u %d1, %d1, %d14

# CHECK-INST: or.ge.u %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xc0,0x12]
or.ge.u %d1, %d1, %d15

# CHECK-INST: or.ge.u %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xc0,0x12]
or.ge.u %d1, %d14, %d0

# CHECK-INST: or.ge.u %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xc0,0x12]
or.ge.u %d1, %d14, %d1

# CHECK-INST: or.ge.u %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xc0,0x12]
or.ge.u %d1, %d14, %d14

# CHECK-INST: or.ge.u %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xc0,0x12]
or.ge.u %d1, %d14, %d15

# CHECK-INST: or.ge.u %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xc0,0x12]
or.ge.u %d1, %d15, %d0

# CHECK-INST: or.ge.u %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xc0,0x12]
or.ge.u %d1, %d15, %d1

# CHECK-INST: or.ge.u %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xc0,0x12]
or.ge.u %d1, %d15, %d14

# CHECK-INST: or.ge.u %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xc0,0x12]
or.ge.u %d1, %d15, %d15

# CHECK-INST: or.ge.u %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xc0,0xe2]
or.ge.u %d14, %d0, %d0

# CHECK-INST: or.ge.u %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xc0,0xe2]
or.ge.u %d14, %d0, %d1

# CHECK-INST: or.ge.u %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xc0,0xe2]
or.ge.u %d14, %d0, %d14

# CHECK-INST: or.ge.u %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xc0,0xe2]
or.ge.u %d14, %d0, %d15

# CHECK-INST: or.ge.u %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xc0,0xe2]
or.ge.u %d14, %d1, %d0

# CHECK-INST: or.ge.u %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xc0,0xe2]
or.ge.u %d14, %d1, %d1

# CHECK-INST: or.ge.u %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xc0,0xe2]
or.ge.u %d14, %d1, %d14

# CHECK-INST: or.ge.u %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xc0,0xe2]
or.ge.u %d14, %d1, %d15

# CHECK-INST: or.ge.u %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xc0,0xe2]
or.ge.u %d14, %d14, %d0

# CHECK-INST: or.ge.u %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xc0,0xe2]
or.ge.u %d14, %d14, %d1

# CHECK-INST: or.ge.u %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xc0,0xe2]
or.ge.u %d14, %d14, %d14

# CHECK-INST: or.ge.u %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xc0,0xe2]
or.ge.u %d14, %d14, %d15

# CHECK-INST: or.ge.u %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xc0,0xe2]
or.ge.u %d14, %d15, %d0

# CHECK-INST: or.ge.u %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xc0,0xe2]
or.ge.u %d14, %d15, %d1

# CHECK-INST: or.ge.u %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xc0,0xe2]
or.ge.u %d14, %d15, %d14

# CHECK-INST: or.ge.u %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xc0,0xe2]
or.ge.u %d14, %d15, %d15

# CHECK-INST: or.ge.u %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xc0,0xf2]
or.ge.u %d15, %d0, %d0

# CHECK-INST: or.ge.u %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xc0,0xf2]
or.ge.u %d15, %d0, %d1

# CHECK-INST: or.ge.u %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xc0,0xf2]
or.ge.u %d15, %d0, %d14

# CHECK-INST: or.ge.u %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xc0,0xf2]
or.ge.u %d15, %d0, %d15

# CHECK-INST: or.ge.u %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xc0,0xf2]
or.ge.u %d15, %d1, %d0

# CHECK-INST: or.ge.u %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xc0,0xf2]
or.ge.u %d15, %d1, %d1

# CHECK-INST: or.ge.u %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xc0,0xf2]
or.ge.u %d15, %d1, %d14

# CHECK-INST: or.ge.u %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xc0,0xf2]
or.ge.u %d15, %d1, %d15

# CHECK-INST: or.ge.u %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xc0,0xf2]
or.ge.u %d15, %d14, %d0

# CHECK-INST: or.ge.u %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xc0,0xf2]
or.ge.u %d15, %d14, %d1

# CHECK-INST: or.ge.u %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xc0,0xf2]
or.ge.u %d15, %d14, %d14

# CHECK-INST: or.ge.u %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xc0,0xf2]
or.ge.u %d15, %d14, %d15

# CHECK-INST: or.ge.u %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xc0,0xf2]
or.ge.u %d15, %d15, %d0

# CHECK-INST: or.ge.u %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xc0,0xf2]
or.ge.u %d15, %d15, %d1

# CHECK-INST: or.ge.u %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xc0,0xf2]
or.ge.u %d15, %d15, %d14

# CHECK-INST: or.ge.u %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xc0,0xf2]
or.ge.u %d15, %d15, %d15

# CHECK-INST: or.ge.u %d0, %d0, 271
# CHECK: encoding: [0x8b,0xf0,0x90,0x05]
or.ge.u %d0, %d0, 271

# CHECK-INST: or.ge.u %d0, %d0, 496
# CHECK: encoding: [0x8b,0x00,0x9f,0x05]
or.ge.u %d0, %d0, 496

# CHECK-INST: or.ge.u %d0, %d0, 511
# CHECK: encoding: [0x8b,0xf0,0x9f,0x05]
or.ge.u %d0, %d0, 511

# CHECK-INST: or.ge.u %d0, %d1, 271
# CHECK: encoding: [0x8b,0xf1,0x90,0x05]
or.ge.u %d0, %d1, 271

# CHECK-INST: or.ge.u %d0, %d1, 496
# CHECK: encoding: [0x8b,0x01,0x9f,0x05]
or.ge.u %d0, %d1, 496

# CHECK-INST: or.ge.u %d0, %d1, 511
# CHECK: encoding: [0x8b,0xf1,0x9f,0x05]
or.ge.u %d0, %d1, 511

# CHECK-INST: or.ge.u %d0, %d14, 271
# CHECK: encoding: [0x8b,0xfe,0x90,0x05]
or.ge.u %d0, %d14, 271

# CHECK-INST: or.ge.u %d0, %d14, 496
# CHECK: encoding: [0x8b,0x0e,0x9f,0x05]
or.ge.u %d0, %d14, 496

# CHECK-INST: or.ge.u %d0, %d14, 511
# CHECK: encoding: [0x8b,0xfe,0x9f,0x05]
or.ge.u %d0, %d14, 511

# CHECK-INST: or.ge.u %d0, %d15, 271
# CHECK: encoding: [0x8b,0xff,0x90,0x05]
or.ge.u %d0, %d15, 271

# CHECK-INST: or.ge.u %d0, %d15, 496
# CHECK: encoding: [0x8b,0x0f,0x9f,0x05]
or.ge.u %d0, %d15, 496

# CHECK-INST: or.ge.u %d0, %d15, 511
# CHECK: encoding: [0x8b,0xff,0x9f,0x05]
or.ge.u %d0, %d15, 511

# CHECK-INST: or.ge.u %d1, %d0, 271
# CHECK: encoding: [0x8b,0xf0,0x90,0x15]
or.ge.u %d1, %d0, 271

# CHECK-INST: or.ge.u %d1, %d0, 496
# CHECK: encoding: [0x8b,0x00,0x9f,0x15]
or.ge.u %d1, %d0, 496

# CHECK-INST: or.ge.u %d1, %d0, 511
# CHECK: encoding: [0x8b,0xf0,0x9f,0x15]
or.ge.u %d1, %d0, 511

# CHECK-INST: or.ge.u %d1, %d1, 271
# CHECK: encoding: [0x8b,0xf1,0x90,0x15]
or.ge.u %d1, %d1, 271

# CHECK-INST: or.ge.u %d1, %d1, 496
# CHECK: encoding: [0x8b,0x01,0x9f,0x15]
or.ge.u %d1, %d1, 496

# CHECK-INST: or.ge.u %d1, %d1, 511
# CHECK: encoding: [0x8b,0xf1,0x9f,0x15]
or.ge.u %d1, %d1, 511

# CHECK-INST: or.ge.u %d1, %d14, 271
# CHECK: encoding: [0x8b,0xfe,0x90,0x15]
or.ge.u %d1, %d14, 271

# CHECK-INST: or.ge.u %d1, %d14, 496
# CHECK: encoding: [0x8b,0x0e,0x9f,0x15]
or.ge.u %d1, %d14, 496

# CHECK-INST: or.ge.u %d1, %d14, 511
# CHECK: encoding: [0x8b,0xfe,0x9f,0x15]
or.ge.u %d1, %d14, 511

# CHECK-INST: or.ge.u %d1, %d15, 271
# CHECK: encoding: [0x8b,0xff,0x90,0x15]
or.ge.u %d1, %d15, 271

# CHECK-INST: or.ge.u %d1, %d15, 496
# CHECK: encoding: [0x8b,0x0f,0x9f,0x15]
or.ge.u %d1, %d15, 496

# CHECK-INST: or.ge.u %d1, %d15, 511
# CHECK: encoding: [0x8b,0xff,0x9f,0x15]
or.ge.u %d1, %d15, 511

# CHECK-INST: or.ge.u %d14, %d0, 271
# CHECK: encoding: [0x8b,0xf0,0x90,0xe5]
or.ge.u %d14, %d0, 271

# CHECK-INST: or.ge.u %d14, %d0, 496
# CHECK: encoding: [0x8b,0x00,0x9f,0xe5]
or.ge.u %d14, %d0, 496

# CHECK-INST: or.ge.u %d14, %d0, 511
# CHECK: encoding: [0x8b,0xf0,0x9f,0xe5]
or.ge.u %d14, %d0, 511

# CHECK-INST: or.ge.u %d14, %d1, 271
# CHECK: encoding: [0x8b,0xf1,0x90,0xe5]
or.ge.u %d14, %d1, 271

# CHECK-INST: or.ge.u %d14, %d1, 496
# CHECK: encoding: [0x8b,0x01,0x9f,0xe5]
or.ge.u %d14, %d1, 496

# CHECK-INST: or.ge.u %d14, %d1, 511
# CHECK: encoding: [0x8b,0xf1,0x9f,0xe5]
or.ge.u %d14, %d1, 511

# CHECK-INST: or.ge.u %d14, %d14, 271
# CHECK: encoding: [0x8b,0xfe,0x90,0xe5]
or.ge.u %d14, %d14, 271

# CHECK-INST: or.ge.u %d14, %d14, 496
# CHECK: encoding: [0x8b,0x0e,0x9f,0xe5]
or.ge.u %d14, %d14, 496

# CHECK-INST: or.ge.u %d14, %d14, 511
# CHECK: encoding: [0x8b,0xfe,0x9f,0xe5]
or.ge.u %d14, %d14, 511

# CHECK-INST: or.ge.u %d14, %d15, 271
# CHECK: encoding: [0x8b,0xff,0x90,0xe5]
or.ge.u %d14, %d15, 271

# CHECK-INST: or.ge.u %d14, %d15, 496
# CHECK: encoding: [0x8b,0x0f,0x9f,0xe5]
or.ge.u %d14, %d15, 496

# CHECK-INST: or.ge.u %d14, %d15, 511
# CHECK: encoding: [0x8b,0xff,0x9f,0xe5]
or.ge.u %d14, %d15, 511

# CHECK-INST: or.ge.u %d15, %d0, 271
# CHECK: encoding: [0x8b,0xf0,0x90,0xf5]
or.ge.u %d15, %d0, 271

# CHECK-INST: or.ge.u %d15, %d0, 496
# CHECK: encoding: [0x8b,0x00,0x9f,0xf5]
or.ge.u %d15, %d0, 496

# CHECK-INST: or.ge.u %d15, %d0, 511
# CHECK: encoding: [0x8b,0xf0,0x9f,0xf5]
or.ge.u %d15, %d0, 511

# CHECK-INST: or.ge.u %d15, %d1, 271
# CHECK: encoding: [0x8b,0xf1,0x90,0xf5]
or.ge.u %d15, %d1, 271

# CHECK-INST: or.ge.u %d15, %d1, 496
# CHECK: encoding: [0x8b,0x01,0x9f,0xf5]
or.ge.u %d15, %d1, 496

# CHECK-INST: or.ge.u %d15, %d1, 511
# CHECK: encoding: [0x8b,0xf1,0x9f,0xf5]
or.ge.u %d15, %d1, 511

# CHECK-INST: or.ge.u %d15, %d14, 271
# CHECK: encoding: [0x8b,0xfe,0x90,0xf5]
or.ge.u %d15, %d14, 271

# CHECK-INST: or.ge.u %d15, %d14, 496
# CHECK: encoding: [0x8b,0x0e,0x9f,0xf5]
or.ge.u %d15, %d14, 496

# CHECK-INST: or.ge.u %d15, %d14, 511
# CHECK: encoding: [0x8b,0xfe,0x9f,0xf5]
or.ge.u %d15, %d14, 511

# CHECK-INST: or.ge.u %d15, %d15, 271
# CHECK: encoding: [0x8b,0xff,0x90,0xf5]
or.ge.u %d15, %d15, 271

# CHECK-INST: or.ge.u %d15, %d15, 496
# CHECK: encoding: [0x8b,0x0f,0x9f,0xf5]
or.ge.u %d15, %d15, 496

# CHECK-INST: or.ge.u %d15, %d15, 511
# CHECK: encoding: [0x8b,0xff,0x9f,0xf5]
or.ge.u %d15, %d15, 511

# CHECK-INST: or.lt %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x90,0x02]
or.lt %d0, %d0, %d0

# CHECK-INST: or.lt %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x90,0x02]
or.lt %d0, %d0, %d1

# CHECK-INST: or.lt %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x90,0x02]
or.lt %d0, %d0, %d14

# CHECK-INST: or.lt %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x90,0x02]
or.lt %d0, %d0, %d15

# CHECK-INST: or.lt %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x90,0x02]
or.lt %d0, %d1, %d0

# CHECK-INST: or.lt %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x90,0x02]
or.lt %d0, %d1, %d1

# CHECK-INST: or.lt %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x90,0x02]
or.lt %d0, %d1, %d14

# CHECK-INST: or.lt %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x90,0x02]
or.lt %d0, %d1, %d15

# CHECK-INST: or.lt %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x90,0x02]
or.lt %d0, %d14, %d0

# CHECK-INST: or.lt %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x90,0x02]
or.lt %d0, %d14, %d1

# CHECK-INST: or.lt %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x90,0x02]
or.lt %d0, %d14, %d14

# CHECK-INST: or.lt %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x90,0x02]
or.lt %d0, %d14, %d15

# CHECK-INST: or.lt %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x90,0x02]
or.lt %d0, %d15, %d0

# CHECK-INST: or.lt %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x90,0x02]
or.lt %d0, %d15, %d1

# CHECK-INST: or.lt %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x90,0x02]
or.lt %d0, %d15, %d14

# CHECK-INST: or.lt %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x90,0x02]
or.lt %d0, %d15, %d15

# CHECK-INST: or.lt %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x90,0x12]
or.lt %d1, %d0, %d0

# CHECK-INST: or.lt %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x90,0x12]
or.lt %d1, %d0, %d1

# CHECK-INST: or.lt %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x90,0x12]
or.lt %d1, %d0, %d14

# CHECK-INST: or.lt %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x90,0x12]
or.lt %d1, %d0, %d15

# CHECK-INST: or.lt %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x90,0x12]
or.lt %d1, %d1, %d0

# CHECK-INST: or.lt %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x90,0x12]
or.lt %d1, %d1, %d1

# CHECK-INST: or.lt %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x90,0x12]
or.lt %d1, %d1, %d14

# CHECK-INST: or.lt %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x90,0x12]
or.lt %d1, %d1, %d15

# CHECK-INST: or.lt %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x90,0x12]
or.lt %d1, %d14, %d0

# CHECK-INST: or.lt %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x90,0x12]
or.lt %d1, %d14, %d1

# CHECK-INST: or.lt %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x90,0x12]
or.lt %d1, %d14, %d14

# CHECK-INST: or.lt %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x90,0x12]
or.lt %d1, %d14, %d15

# CHECK-INST: or.lt %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x90,0x12]
or.lt %d1, %d15, %d0

# CHECK-INST: or.lt %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x90,0x12]
or.lt %d1, %d15, %d1

# CHECK-INST: or.lt %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x90,0x12]
or.lt %d1, %d15, %d14

# CHECK-INST: or.lt %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x90,0x12]
or.lt %d1, %d15, %d15

# CHECK-INST: or.lt %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x90,0xe2]
or.lt %d14, %d0, %d0

# CHECK-INST: or.lt %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x90,0xe2]
or.lt %d14, %d0, %d1

# CHECK-INST: or.lt %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x90,0xe2]
or.lt %d14, %d0, %d14

# CHECK-INST: or.lt %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x90,0xe2]
or.lt %d14, %d0, %d15

# CHECK-INST: or.lt %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x90,0xe2]
or.lt %d14, %d1, %d0

# CHECK-INST: or.lt %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x90,0xe2]
or.lt %d14, %d1, %d1

# CHECK-INST: or.lt %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x90,0xe2]
or.lt %d14, %d1, %d14

# CHECK-INST: or.lt %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x90,0xe2]
or.lt %d14, %d1, %d15

# CHECK-INST: or.lt %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x90,0xe2]
or.lt %d14, %d14, %d0

# CHECK-INST: or.lt %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x90,0xe2]
or.lt %d14, %d14, %d1

# CHECK-INST: or.lt %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x90,0xe2]
or.lt %d14, %d14, %d14

# CHECK-INST: or.lt %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x90,0xe2]
or.lt %d14, %d14, %d15

# CHECK-INST: or.lt %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x90,0xe2]
or.lt %d14, %d15, %d0

# CHECK-INST: or.lt %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x90,0xe2]
or.lt %d14, %d15, %d1

# CHECK-INST: or.lt %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x90,0xe2]
or.lt %d14, %d15, %d14

# CHECK-INST: or.lt %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x90,0xe2]
or.lt %d14, %d15, %d15

# CHECK-INST: or.lt %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x90,0xf2]
or.lt %d15, %d0, %d0

# CHECK-INST: or.lt %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x90,0xf2]
or.lt %d15, %d0, %d1

# CHECK-INST: or.lt %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x90,0xf2]
or.lt %d15, %d0, %d14

# CHECK-INST: or.lt %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x90,0xf2]
or.lt %d15, %d0, %d15

# CHECK-INST: or.lt %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x90,0xf2]
or.lt %d15, %d1, %d0

# CHECK-INST: or.lt %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x90,0xf2]
or.lt %d15, %d1, %d1

# CHECK-INST: or.lt %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x90,0xf2]
or.lt %d15, %d1, %d14

# CHECK-INST: or.lt %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x90,0xf2]
or.lt %d15, %d1, %d15

# CHECK-INST: or.lt %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x90,0xf2]
or.lt %d15, %d14, %d0

# CHECK-INST: or.lt %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x90,0xf2]
or.lt %d15, %d14, %d1

# CHECK-INST: or.lt %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x90,0xf2]
or.lt %d15, %d14, %d14

# CHECK-INST: or.lt %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x90,0xf2]
or.lt %d15, %d14, %d15

# CHECK-INST: or.lt %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x90,0xf2]
or.lt %d15, %d15, %d0

# CHECK-INST: or.lt %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x90,0xf2]
or.lt %d15, %d15, %d1

# CHECK-INST: or.lt %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x90,0xf2]
or.lt %d15, %d15, %d14

# CHECK-INST: or.lt %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x90,0xf2]
or.lt %d15, %d15, %d15

# CHECK-INST: or.lt %d0, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x30,0x05]
or.lt %d0, %d0, -256

# CHECK-INST: or.lt %d0, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x37,0x05]
or.lt %d0, %d0, -129

# CHECK-INST: or.lt %d0, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x3f,0x05]
or.lt %d0, %d0, -1

# CHECK-INST: or.lt %d0, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x20,0x05]
or.lt %d0, %d0, 0

# CHECK-INST: or.lt %d0, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x20,0x05]
or.lt %d0, %d0, 1

# CHECK-INST: or.lt %d0, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x28,0x05]
or.lt %d0, %d0, 128

# CHECK-INST: or.lt %d0, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x2f,0x05]
or.lt %d0, %d0, 255

# CHECK-INST: or.lt %d0, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x30,0x05]
or.lt %d0, %d1, -256

# CHECK-INST: or.lt %d0, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x37,0x05]
or.lt %d0, %d1, -129

# CHECK-INST: or.lt %d0, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x3f,0x05]
or.lt %d0, %d1, -1

# CHECK-INST: or.lt %d0, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x20,0x05]
or.lt %d0, %d1, 0

# CHECK-INST: or.lt %d0, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x20,0x05]
or.lt %d0, %d1, 1

# CHECK-INST: or.lt %d0, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x28,0x05]
or.lt %d0, %d1, 128

# CHECK-INST: or.lt %d0, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x2f,0x05]
or.lt %d0, %d1, 255

# CHECK-INST: or.lt %d0, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x30,0x05]
or.lt %d0, %d14, -256

# CHECK-INST: or.lt %d0, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x37,0x05]
or.lt %d0, %d14, -129

# CHECK-INST: or.lt %d0, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x3f,0x05]
or.lt %d0, %d14, -1

# CHECK-INST: or.lt %d0, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x20,0x05]
or.lt %d0, %d14, 0

# CHECK-INST: or.lt %d0, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x20,0x05]
or.lt %d0, %d14, 1

# CHECK-INST: or.lt %d0, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x28,0x05]
or.lt %d0, %d14, 128

# CHECK-INST: or.lt %d0, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x2f,0x05]
or.lt %d0, %d14, 255

# CHECK-INST: or.lt %d0, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x30,0x05]
or.lt %d0, %d15, -256

# CHECK-INST: or.lt %d0, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x37,0x05]
or.lt %d0, %d15, -129

# CHECK-INST: or.lt %d0, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x3f,0x05]
or.lt %d0, %d15, -1

# CHECK-INST: or.lt %d0, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x20,0x05]
or.lt %d0, %d15, 0

# CHECK-INST: or.lt %d0, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x20,0x05]
or.lt %d0, %d15, 1

# CHECK-INST: or.lt %d0, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x28,0x05]
or.lt %d0, %d15, 128

# CHECK-INST: or.lt %d0, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x2f,0x05]
or.lt %d0, %d15, 255

# CHECK-INST: or.lt %d1, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x30,0x15]
or.lt %d1, %d0, -256

# CHECK-INST: or.lt %d1, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x37,0x15]
or.lt %d1, %d0, -129

# CHECK-INST: or.lt %d1, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x3f,0x15]
or.lt %d1, %d0, -1

# CHECK-INST: or.lt %d1, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x20,0x15]
or.lt %d1, %d0, 0

# CHECK-INST: or.lt %d1, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x20,0x15]
or.lt %d1, %d0, 1

# CHECK-INST: or.lt %d1, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x28,0x15]
or.lt %d1, %d0, 128

# CHECK-INST: or.lt %d1, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x2f,0x15]
or.lt %d1, %d0, 255

# CHECK-INST: or.lt %d1, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x30,0x15]
or.lt %d1, %d1, -256

# CHECK-INST: or.lt %d1, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x37,0x15]
or.lt %d1, %d1, -129

# CHECK-INST: or.lt %d1, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x3f,0x15]
or.lt %d1, %d1, -1

# CHECK-INST: or.lt %d1, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x20,0x15]
or.lt %d1, %d1, 0

# CHECK-INST: or.lt %d1, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x20,0x15]
or.lt %d1, %d1, 1

# CHECK-INST: or.lt %d1, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x28,0x15]
or.lt %d1, %d1, 128

# CHECK-INST: or.lt %d1, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x2f,0x15]
or.lt %d1, %d1, 255

# CHECK-INST: or.lt %d1, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x30,0x15]
or.lt %d1, %d14, -256

# CHECK-INST: or.lt %d1, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x37,0x15]
or.lt %d1, %d14, -129

# CHECK-INST: or.lt %d1, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x3f,0x15]
or.lt %d1, %d14, -1

# CHECK-INST: or.lt %d1, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x20,0x15]
or.lt %d1, %d14, 0

# CHECK-INST: or.lt %d1, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x20,0x15]
or.lt %d1, %d14, 1

# CHECK-INST: or.lt %d1, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x28,0x15]
or.lt %d1, %d14, 128

# CHECK-INST: or.lt %d1, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x2f,0x15]
or.lt %d1, %d14, 255

# CHECK-INST: or.lt %d1, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x30,0x15]
or.lt %d1, %d15, -256

# CHECK-INST: or.lt %d1, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x37,0x15]
or.lt %d1, %d15, -129

# CHECK-INST: or.lt %d1, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x3f,0x15]
or.lt %d1, %d15, -1

# CHECK-INST: or.lt %d1, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x20,0x15]
or.lt %d1, %d15, 0

# CHECK-INST: or.lt %d1, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x20,0x15]
or.lt %d1, %d15, 1

# CHECK-INST: or.lt %d1, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x28,0x15]
or.lt %d1, %d15, 128

# CHECK-INST: or.lt %d1, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x2f,0x15]
or.lt %d1, %d15, 255

# CHECK-INST: or.lt %d14, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x30,0xe5]
or.lt %d14, %d0, -256

# CHECK-INST: or.lt %d14, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x37,0xe5]
or.lt %d14, %d0, -129

# CHECK-INST: or.lt %d14, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x3f,0xe5]
or.lt %d14, %d0, -1

# CHECK-INST: or.lt %d14, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x20,0xe5]
or.lt %d14, %d0, 0

# CHECK-INST: or.lt %d14, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x20,0xe5]
or.lt %d14, %d0, 1

# CHECK-INST: or.lt %d14, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x28,0xe5]
or.lt %d14, %d0, 128

# CHECK-INST: or.lt %d14, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x2f,0xe5]
or.lt %d14, %d0, 255

# CHECK-INST: or.lt %d14, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x30,0xe5]
or.lt %d14, %d1, -256

# CHECK-INST: or.lt %d14, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x37,0xe5]
or.lt %d14, %d1, -129

# CHECK-INST: or.lt %d14, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x3f,0xe5]
or.lt %d14, %d1, -1

# CHECK-INST: or.lt %d14, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x20,0xe5]
or.lt %d14, %d1, 0

# CHECK-INST: or.lt %d14, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x20,0xe5]
or.lt %d14, %d1, 1

# CHECK-INST: or.lt %d14, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x28,0xe5]
or.lt %d14, %d1, 128

# CHECK-INST: or.lt %d14, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x2f,0xe5]
or.lt %d14, %d1, 255

# CHECK-INST: or.lt %d14, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x30,0xe5]
or.lt %d14, %d14, -256

# CHECK-INST: or.lt %d14, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x37,0xe5]
or.lt %d14, %d14, -129

# CHECK-INST: or.lt %d14, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x3f,0xe5]
or.lt %d14, %d14, -1

# CHECK-INST: or.lt %d14, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x20,0xe5]
or.lt %d14, %d14, 0

# CHECK-INST: or.lt %d14, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x20,0xe5]
or.lt %d14, %d14, 1

# CHECK-INST: or.lt %d14, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x28,0xe5]
or.lt %d14, %d14, 128

# CHECK-INST: or.lt %d14, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x2f,0xe5]
or.lt %d14, %d14, 255

# CHECK-INST: or.lt %d14, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x30,0xe5]
or.lt %d14, %d15, -256

# CHECK-INST: or.lt %d14, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x37,0xe5]
or.lt %d14, %d15, -129

# CHECK-INST: or.lt %d14, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x3f,0xe5]
or.lt %d14, %d15, -1

# CHECK-INST: or.lt %d14, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x20,0xe5]
or.lt %d14, %d15, 0

# CHECK-INST: or.lt %d14, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x20,0xe5]
or.lt %d14, %d15, 1

# CHECK-INST: or.lt %d14, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x28,0xe5]
or.lt %d14, %d15, 128

# CHECK-INST: or.lt %d14, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x2f,0xe5]
or.lt %d14, %d15, 255

# CHECK-INST: or.lt %d15, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x30,0xf5]
or.lt %d15, %d0, -256

# CHECK-INST: or.lt %d15, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x37,0xf5]
or.lt %d15, %d0, -129

# CHECK-INST: or.lt %d15, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x3f,0xf5]
or.lt %d15, %d0, -1

# CHECK-INST: or.lt %d15, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x20,0xf5]
or.lt %d15, %d0, 0

# CHECK-INST: or.lt %d15, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x20,0xf5]
or.lt %d15, %d0, 1

# CHECK-INST: or.lt %d15, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x28,0xf5]
or.lt %d15, %d0, 128

# CHECK-INST: or.lt %d15, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x2f,0xf5]
or.lt %d15, %d0, 255

# CHECK-INST: or.lt %d15, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x30,0xf5]
or.lt %d15, %d1, -256

# CHECK-INST: or.lt %d15, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x37,0xf5]
or.lt %d15, %d1, -129

# CHECK-INST: or.lt %d15, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x3f,0xf5]
or.lt %d15, %d1, -1

# CHECK-INST: or.lt %d15, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x20,0xf5]
or.lt %d15, %d1, 0

# CHECK-INST: or.lt %d15, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x20,0xf5]
or.lt %d15, %d1, 1

# CHECK-INST: or.lt %d15, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x28,0xf5]
or.lt %d15, %d1, 128

# CHECK-INST: or.lt %d15, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x2f,0xf5]
or.lt %d15, %d1, 255

# CHECK-INST: or.lt %d15, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x30,0xf5]
or.lt %d15, %d14, -256

# CHECK-INST: or.lt %d15, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x37,0xf5]
or.lt %d15, %d14, -129

# CHECK-INST: or.lt %d15, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x3f,0xf5]
or.lt %d15, %d14, -1

# CHECK-INST: or.lt %d15, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x20,0xf5]
or.lt %d15, %d14, 0

# CHECK-INST: or.lt %d15, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x20,0xf5]
or.lt %d15, %d14, 1

# CHECK-INST: or.lt %d15, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x28,0xf5]
or.lt %d15, %d14, 128

# CHECK-INST: or.lt %d15, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x2f,0xf5]
or.lt %d15, %d14, 255

# CHECK-INST: or.lt %d15, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x30,0xf5]
or.lt %d15, %d15, -256

# CHECK-INST: or.lt %d15, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x37,0xf5]
or.lt %d15, %d15, -129

# CHECK-INST: or.lt %d15, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x3f,0xf5]
or.lt %d15, %d15, -1

# CHECK-INST: or.lt %d15, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x20,0xf5]
or.lt %d15, %d15, 0

# CHECK-INST: or.lt %d15, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x20,0xf5]
or.lt %d15, %d15, 1

# CHECK-INST: or.lt %d15, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x28,0xf5]
or.lt %d15, %d15, 128

# CHECK-INST: or.lt %d15, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x2f,0xf5]
or.lt %d15, %d15, 255

# CHECK-INST: or.lt.u %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xa0,0x02]
or.lt.u %d0, %d0, %d0

# CHECK-INST: or.lt.u %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xa0,0x02]
or.lt.u %d0, %d0, %d1

# CHECK-INST: or.lt.u %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xa0,0x02]
or.lt.u %d0, %d0, %d14

# CHECK-INST: or.lt.u %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xa0,0x02]
or.lt.u %d0, %d0, %d15

# CHECK-INST: or.lt.u %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xa0,0x02]
or.lt.u %d0, %d1, %d0

# CHECK-INST: or.lt.u %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xa0,0x02]
or.lt.u %d0, %d1, %d1

# CHECK-INST: or.lt.u %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xa0,0x02]
or.lt.u %d0, %d1, %d14

# CHECK-INST: or.lt.u %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xa0,0x02]
or.lt.u %d0, %d1, %d15

# CHECK-INST: or.lt.u %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xa0,0x02]
or.lt.u %d0, %d14, %d0

# CHECK-INST: or.lt.u %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xa0,0x02]
or.lt.u %d0, %d14, %d1

# CHECK-INST: or.lt.u %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xa0,0x02]
or.lt.u %d0, %d14, %d14

# CHECK-INST: or.lt.u %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xa0,0x02]
or.lt.u %d0, %d14, %d15

# CHECK-INST: or.lt.u %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xa0,0x02]
or.lt.u %d0, %d15, %d0

# CHECK-INST: or.lt.u %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xa0,0x02]
or.lt.u %d0, %d15, %d1

# CHECK-INST: or.lt.u %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xa0,0x02]
or.lt.u %d0, %d15, %d14

# CHECK-INST: or.lt.u %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xa0,0x02]
or.lt.u %d0, %d15, %d15

# CHECK-INST: or.lt.u %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xa0,0x12]
or.lt.u %d1, %d0, %d0

# CHECK-INST: or.lt.u %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xa0,0x12]
or.lt.u %d1, %d0, %d1

# CHECK-INST: or.lt.u %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xa0,0x12]
or.lt.u %d1, %d0, %d14

# CHECK-INST: or.lt.u %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xa0,0x12]
or.lt.u %d1, %d0, %d15

# CHECK-INST: or.lt.u %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xa0,0x12]
or.lt.u %d1, %d1, %d0

# CHECK-INST: or.lt.u %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xa0,0x12]
or.lt.u %d1, %d1, %d1

# CHECK-INST: or.lt.u %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xa0,0x12]
or.lt.u %d1, %d1, %d14

# CHECK-INST: or.lt.u %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xa0,0x12]
or.lt.u %d1, %d1, %d15

# CHECK-INST: or.lt.u %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xa0,0x12]
or.lt.u %d1, %d14, %d0

# CHECK-INST: or.lt.u %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xa0,0x12]
or.lt.u %d1, %d14, %d1

# CHECK-INST: or.lt.u %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xa0,0x12]
or.lt.u %d1, %d14, %d14

# CHECK-INST: or.lt.u %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xa0,0x12]
or.lt.u %d1, %d14, %d15

# CHECK-INST: or.lt.u %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xa0,0x12]
or.lt.u %d1, %d15, %d0

# CHECK-INST: or.lt.u %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xa0,0x12]
or.lt.u %d1, %d15, %d1

# CHECK-INST: or.lt.u %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xa0,0x12]
or.lt.u %d1, %d15, %d14

# CHECK-INST: or.lt.u %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xa0,0x12]
or.lt.u %d1, %d15, %d15

# CHECK-INST: or.lt.u %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xa0,0xe2]
or.lt.u %d14, %d0, %d0

# CHECK-INST: or.lt.u %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xa0,0xe2]
or.lt.u %d14, %d0, %d1

# CHECK-INST: or.lt.u %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xa0,0xe2]
or.lt.u %d14, %d0, %d14

# CHECK-INST: or.lt.u %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xa0,0xe2]
or.lt.u %d14, %d0, %d15

# CHECK-INST: or.lt.u %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xa0,0xe2]
or.lt.u %d14, %d1, %d0

# CHECK-INST: or.lt.u %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xa0,0xe2]
or.lt.u %d14, %d1, %d1

# CHECK-INST: or.lt.u %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xa0,0xe2]
or.lt.u %d14, %d1, %d14

# CHECK-INST: or.lt.u %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xa0,0xe2]
or.lt.u %d14, %d1, %d15

# CHECK-INST: or.lt.u %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xa0,0xe2]
or.lt.u %d14, %d14, %d0

# CHECK-INST: or.lt.u %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xa0,0xe2]
or.lt.u %d14, %d14, %d1

# CHECK-INST: or.lt.u %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xa0,0xe2]
or.lt.u %d14, %d14, %d14

# CHECK-INST: or.lt.u %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xa0,0xe2]
or.lt.u %d14, %d14, %d15

# CHECK-INST: or.lt.u %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xa0,0xe2]
or.lt.u %d14, %d15, %d0

# CHECK-INST: or.lt.u %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xa0,0xe2]
or.lt.u %d14, %d15, %d1

# CHECK-INST: or.lt.u %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xa0,0xe2]
or.lt.u %d14, %d15, %d14

# CHECK-INST: or.lt.u %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xa0,0xe2]
or.lt.u %d14, %d15, %d15

# CHECK-INST: or.lt.u %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xa0,0xf2]
or.lt.u %d15, %d0, %d0

# CHECK-INST: or.lt.u %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xa0,0xf2]
or.lt.u %d15, %d0, %d1

# CHECK-INST: or.lt.u %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xa0,0xf2]
or.lt.u %d15, %d0, %d14

# CHECK-INST: or.lt.u %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xa0,0xf2]
or.lt.u %d15, %d0, %d15

# CHECK-INST: or.lt.u %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xa0,0xf2]
or.lt.u %d15, %d1, %d0

# CHECK-INST: or.lt.u %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xa0,0xf2]
or.lt.u %d15, %d1, %d1

# CHECK-INST: or.lt.u %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xa0,0xf2]
or.lt.u %d15, %d1, %d14

# CHECK-INST: or.lt.u %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xa0,0xf2]
or.lt.u %d15, %d1, %d15

# CHECK-INST: or.lt.u %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xa0,0xf2]
or.lt.u %d15, %d14, %d0

# CHECK-INST: or.lt.u %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xa0,0xf2]
or.lt.u %d15, %d14, %d1

# CHECK-INST: or.lt.u %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xa0,0xf2]
or.lt.u %d15, %d14, %d14

# CHECK-INST: or.lt.u %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xa0,0xf2]
or.lt.u %d15, %d14, %d15

# CHECK-INST: or.lt.u %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xa0,0xf2]
or.lt.u %d15, %d15, %d0

# CHECK-INST: or.lt.u %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xa0,0xf2]
or.lt.u %d15, %d15, %d1

# CHECK-INST: or.lt.u %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xa0,0xf2]
or.lt.u %d15, %d15, %d14

# CHECK-INST: or.lt.u %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xa0,0xf2]
or.lt.u %d15, %d15, %d15

# CHECK-INST: or.lt.u %d0, %d0, 271
# CHECK: encoding: [0x8b,0xf0,0x50,0x05]
or.lt.u %d0, %d0, 271

# CHECK-INST: or.lt.u %d0, %d0, 496
# CHECK: encoding: [0x8b,0x00,0x5f,0x05]
or.lt.u %d0, %d0, 496

# CHECK-INST: or.lt.u %d0, %d0, 511
# CHECK: encoding: [0x8b,0xf0,0x5f,0x05]
or.lt.u %d0, %d0, 511

# CHECK-INST: or.lt.u %d0, %d1, 271
# CHECK: encoding: [0x8b,0xf1,0x50,0x05]
or.lt.u %d0, %d1, 271

# CHECK-INST: or.lt.u %d0, %d1, 496
# CHECK: encoding: [0x8b,0x01,0x5f,0x05]
or.lt.u %d0, %d1, 496

# CHECK-INST: or.lt.u %d0, %d1, 511
# CHECK: encoding: [0x8b,0xf1,0x5f,0x05]
or.lt.u %d0, %d1, 511

# CHECK-INST: or.lt.u %d0, %d14, 271
# CHECK: encoding: [0x8b,0xfe,0x50,0x05]
or.lt.u %d0, %d14, 271

# CHECK-INST: or.lt.u %d0, %d14, 496
# CHECK: encoding: [0x8b,0x0e,0x5f,0x05]
or.lt.u %d0, %d14, 496

# CHECK-INST: or.lt.u %d0, %d14, 511
# CHECK: encoding: [0x8b,0xfe,0x5f,0x05]
or.lt.u %d0, %d14, 511

# CHECK-INST: or.lt.u %d0, %d15, 271
# CHECK: encoding: [0x8b,0xff,0x50,0x05]
or.lt.u %d0, %d15, 271

# CHECK-INST: or.lt.u %d0, %d15, 496
# CHECK: encoding: [0x8b,0x0f,0x5f,0x05]
or.lt.u %d0, %d15, 496

# CHECK-INST: or.lt.u %d0, %d15, 511
# CHECK: encoding: [0x8b,0xff,0x5f,0x05]
or.lt.u %d0, %d15, 511

# CHECK-INST: or.lt.u %d1, %d0, 271
# CHECK: encoding: [0x8b,0xf0,0x50,0x15]
or.lt.u %d1, %d0, 271

# CHECK-INST: or.lt.u %d1, %d0, 496
# CHECK: encoding: [0x8b,0x00,0x5f,0x15]
or.lt.u %d1, %d0, 496

# CHECK-INST: or.lt.u %d1, %d0, 511
# CHECK: encoding: [0x8b,0xf0,0x5f,0x15]
or.lt.u %d1, %d0, 511

# CHECK-INST: or.lt.u %d1, %d1, 271
# CHECK: encoding: [0x8b,0xf1,0x50,0x15]
or.lt.u %d1, %d1, 271

# CHECK-INST: or.lt.u %d1, %d1, 496
# CHECK: encoding: [0x8b,0x01,0x5f,0x15]
or.lt.u %d1, %d1, 496

# CHECK-INST: or.lt.u %d1, %d1, 511
# CHECK: encoding: [0x8b,0xf1,0x5f,0x15]
or.lt.u %d1, %d1, 511

# CHECK-INST: or.lt.u %d1, %d14, 271
# CHECK: encoding: [0x8b,0xfe,0x50,0x15]
or.lt.u %d1, %d14, 271

# CHECK-INST: or.lt.u %d1, %d14, 496
# CHECK: encoding: [0x8b,0x0e,0x5f,0x15]
or.lt.u %d1, %d14, 496

# CHECK-INST: or.lt.u %d1, %d14, 511
# CHECK: encoding: [0x8b,0xfe,0x5f,0x15]
or.lt.u %d1, %d14, 511

# CHECK-INST: or.lt.u %d1, %d15, 271
# CHECK: encoding: [0x8b,0xff,0x50,0x15]
or.lt.u %d1, %d15, 271

# CHECK-INST: or.lt.u %d1, %d15, 496
# CHECK: encoding: [0x8b,0x0f,0x5f,0x15]
or.lt.u %d1, %d15, 496

# CHECK-INST: or.lt.u %d1, %d15, 511
# CHECK: encoding: [0x8b,0xff,0x5f,0x15]
or.lt.u %d1, %d15, 511

# CHECK-INST: or.lt.u %d14, %d0, 271
# CHECK: encoding: [0x8b,0xf0,0x50,0xe5]
or.lt.u %d14, %d0, 271

# CHECK-INST: or.lt.u %d14, %d0, 496
# CHECK: encoding: [0x8b,0x00,0x5f,0xe5]
or.lt.u %d14, %d0, 496

# CHECK-INST: or.lt.u %d14, %d0, 511
# CHECK: encoding: [0x8b,0xf0,0x5f,0xe5]
or.lt.u %d14, %d0, 511

# CHECK-INST: or.lt.u %d14, %d1, 271
# CHECK: encoding: [0x8b,0xf1,0x50,0xe5]
or.lt.u %d14, %d1, 271

# CHECK-INST: or.lt.u %d14, %d1, 496
# CHECK: encoding: [0x8b,0x01,0x5f,0xe5]
or.lt.u %d14, %d1, 496

# CHECK-INST: or.lt.u %d14, %d1, 511
# CHECK: encoding: [0x8b,0xf1,0x5f,0xe5]
or.lt.u %d14, %d1, 511

# CHECK-INST: or.lt.u %d14, %d14, 271
# CHECK: encoding: [0x8b,0xfe,0x50,0xe5]
or.lt.u %d14, %d14, 271

# CHECK-INST: or.lt.u %d14, %d14, 496
# CHECK: encoding: [0x8b,0x0e,0x5f,0xe5]
or.lt.u %d14, %d14, 496

# CHECK-INST: or.lt.u %d14, %d14, 511
# CHECK: encoding: [0x8b,0xfe,0x5f,0xe5]
or.lt.u %d14, %d14, 511

# CHECK-INST: or.lt.u %d14, %d15, 271
# CHECK: encoding: [0x8b,0xff,0x50,0xe5]
or.lt.u %d14, %d15, 271

# CHECK-INST: or.lt.u %d14, %d15, 496
# CHECK: encoding: [0x8b,0x0f,0x5f,0xe5]
or.lt.u %d14, %d15, 496

# CHECK-INST: or.lt.u %d14, %d15, 511
# CHECK: encoding: [0x8b,0xff,0x5f,0xe5]
or.lt.u %d14, %d15, 511

# CHECK-INST: or.lt.u %d15, %d0, 271
# CHECK: encoding: [0x8b,0xf0,0x50,0xf5]
or.lt.u %d15, %d0, 271

# CHECK-INST: or.lt.u %d15, %d0, 496
# CHECK: encoding: [0x8b,0x00,0x5f,0xf5]
or.lt.u %d15, %d0, 496

# CHECK-INST: or.lt.u %d15, %d0, 511
# CHECK: encoding: [0x8b,0xf0,0x5f,0xf5]
or.lt.u %d15, %d0, 511

# CHECK-INST: or.lt.u %d15, %d1, 271
# CHECK: encoding: [0x8b,0xf1,0x50,0xf5]
or.lt.u %d15, %d1, 271

# CHECK-INST: or.lt.u %d15, %d1, 496
# CHECK: encoding: [0x8b,0x01,0x5f,0xf5]
or.lt.u %d15, %d1, 496

# CHECK-INST: or.lt.u %d15, %d1, 511
# CHECK: encoding: [0x8b,0xf1,0x5f,0xf5]
or.lt.u %d15, %d1, 511

# CHECK-INST: or.lt.u %d15, %d14, 271
# CHECK: encoding: [0x8b,0xfe,0x50,0xf5]
or.lt.u %d15, %d14, 271

# CHECK-INST: or.lt.u %d15, %d14, 496
# CHECK: encoding: [0x8b,0x0e,0x5f,0xf5]
or.lt.u %d15, %d14, 496

# CHECK-INST: or.lt.u %d15, %d14, 511
# CHECK: encoding: [0x8b,0xfe,0x5f,0xf5]
or.lt.u %d15, %d14, 511

# CHECK-INST: or.lt.u %d15, %d15, 271
# CHECK: encoding: [0x8b,0xff,0x50,0xf5]
or.lt.u %d15, %d15, 271

# CHECK-INST: or.lt.u %d15, %d15, 496
# CHECK: encoding: [0x8b,0x0f,0x5f,0xf5]
or.lt.u %d15, %d15, 496

# CHECK-INST: or.lt.u %d15, %d15, 511
# CHECK: encoding: [0x8b,0xff,0x5f,0xf5]
or.lt.u %d15, %d15, 511

# CHECK-INST: or.ne %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x80,0x02]
or.ne %d0, %d0, %d0

# CHECK-INST: or.ne %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x80,0x02]
or.ne %d0, %d0, %d1

# CHECK-INST: or.ne %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x80,0x02]
or.ne %d0, %d0, %d14

# CHECK-INST: or.ne %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x80,0x02]
or.ne %d0, %d0, %d15

# CHECK-INST: or.ne %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x80,0x02]
or.ne %d0, %d1, %d0

# CHECK-INST: or.ne %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x80,0x02]
or.ne %d0, %d1, %d1

# CHECK-INST: or.ne %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x80,0x02]
or.ne %d0, %d1, %d14

# CHECK-INST: or.ne %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x80,0x02]
or.ne %d0, %d1, %d15

# CHECK-INST: or.ne %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x80,0x02]
or.ne %d0, %d14, %d0

# CHECK-INST: or.ne %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x80,0x02]
or.ne %d0, %d14, %d1

# CHECK-INST: or.ne %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x80,0x02]
or.ne %d0, %d14, %d14

# CHECK-INST: or.ne %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x80,0x02]
or.ne %d0, %d14, %d15

# CHECK-INST: or.ne %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x80,0x02]
or.ne %d0, %d15, %d0

# CHECK-INST: or.ne %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x80,0x02]
or.ne %d0, %d15, %d1

# CHECK-INST: or.ne %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x80,0x02]
or.ne %d0, %d15, %d14

# CHECK-INST: or.ne %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x80,0x02]
or.ne %d0, %d15, %d15

# CHECK-INST: or.ne %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x80,0x12]
or.ne %d1, %d0, %d0

# CHECK-INST: or.ne %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x80,0x12]
or.ne %d1, %d0, %d1

# CHECK-INST: or.ne %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x80,0x12]
or.ne %d1, %d0, %d14

# CHECK-INST: or.ne %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x80,0x12]
or.ne %d1, %d0, %d15

# CHECK-INST: or.ne %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x80,0x12]
or.ne %d1, %d1, %d0

# CHECK-INST: or.ne %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x80,0x12]
or.ne %d1, %d1, %d1

# CHECK-INST: or.ne %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x80,0x12]
or.ne %d1, %d1, %d14

# CHECK-INST: or.ne %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x80,0x12]
or.ne %d1, %d1, %d15

# CHECK-INST: or.ne %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x80,0x12]
or.ne %d1, %d14, %d0

# CHECK-INST: or.ne %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x80,0x12]
or.ne %d1, %d14, %d1

# CHECK-INST: or.ne %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x80,0x12]
or.ne %d1, %d14, %d14

# CHECK-INST: or.ne %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x80,0x12]
or.ne %d1, %d14, %d15

# CHECK-INST: or.ne %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x80,0x12]
or.ne %d1, %d15, %d0

# CHECK-INST: or.ne %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x80,0x12]
or.ne %d1, %d15, %d1

# CHECK-INST: or.ne %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x80,0x12]
or.ne %d1, %d15, %d14

# CHECK-INST: or.ne %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x80,0x12]
or.ne %d1, %d15, %d15

# CHECK-INST: or.ne %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x80,0xe2]
or.ne %d14, %d0, %d0

# CHECK-INST: or.ne %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x80,0xe2]
or.ne %d14, %d0, %d1

# CHECK-INST: or.ne %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x80,0xe2]
or.ne %d14, %d0, %d14

# CHECK-INST: or.ne %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x80,0xe2]
or.ne %d14, %d0, %d15

# CHECK-INST: or.ne %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x80,0xe2]
or.ne %d14, %d1, %d0

# CHECK-INST: or.ne %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x80,0xe2]
or.ne %d14, %d1, %d1

# CHECK-INST: or.ne %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x80,0xe2]
or.ne %d14, %d1, %d14

# CHECK-INST: or.ne %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x80,0xe2]
or.ne %d14, %d1, %d15

# CHECK-INST: or.ne %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x80,0xe2]
or.ne %d14, %d14, %d0

# CHECK-INST: or.ne %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x80,0xe2]
or.ne %d14, %d14, %d1

# CHECK-INST: or.ne %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x80,0xe2]
or.ne %d14, %d14, %d14

# CHECK-INST: or.ne %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x80,0xe2]
or.ne %d14, %d14, %d15

# CHECK-INST: or.ne %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x80,0xe2]
or.ne %d14, %d15, %d0

# CHECK-INST: or.ne %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x80,0xe2]
or.ne %d14, %d15, %d1

# CHECK-INST: or.ne %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x80,0xe2]
or.ne %d14, %d15, %d14

# CHECK-INST: or.ne %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x80,0xe2]
or.ne %d14, %d15, %d15

# CHECK-INST: or.ne %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x80,0xf2]
or.ne %d15, %d0, %d0

# CHECK-INST: or.ne %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x80,0xf2]
or.ne %d15, %d0, %d1

# CHECK-INST: or.ne %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x80,0xf2]
or.ne %d15, %d0, %d14

# CHECK-INST: or.ne %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x80,0xf2]
or.ne %d15, %d0, %d15

# CHECK-INST: or.ne %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x80,0xf2]
or.ne %d15, %d1, %d0

# CHECK-INST: or.ne %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x80,0xf2]
or.ne %d15, %d1, %d1

# CHECK-INST: or.ne %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x80,0xf2]
or.ne %d15, %d1, %d14

# CHECK-INST: or.ne %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x80,0xf2]
or.ne %d15, %d1, %d15

# CHECK-INST: or.ne %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x80,0xf2]
or.ne %d15, %d14, %d0

# CHECK-INST: or.ne %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x80,0xf2]
or.ne %d15, %d14, %d1

# CHECK-INST: or.ne %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x80,0xf2]
or.ne %d15, %d14, %d14

# CHECK-INST: or.ne %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x80,0xf2]
or.ne %d15, %d14, %d15

# CHECK-INST: or.ne %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x80,0xf2]
or.ne %d15, %d15, %d0

# CHECK-INST: or.ne %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x80,0xf2]
or.ne %d15, %d15, %d1

# CHECK-INST: or.ne %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x80,0xf2]
or.ne %d15, %d15, %d14

# CHECK-INST: or.ne %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x80,0xf2]
or.ne %d15, %d15, %d15

# CHECK-INST: or.ne %d0, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x10,0x05]
or.ne %d0, %d0, -256

# CHECK-INST: or.ne %d0, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x17,0x05]
or.ne %d0, %d0, -129

# CHECK-INST: or.ne %d0, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x1f,0x05]
or.ne %d0, %d0, -1

# CHECK-INST: or.ne %d0, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x00,0x05]
or.ne %d0, %d0, 0

# CHECK-INST: or.ne %d0, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x00,0x05]
or.ne %d0, %d0, 1

# CHECK-INST: or.ne %d0, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x08,0x05]
or.ne %d0, %d0, 128

# CHECK-INST: or.ne %d0, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x0f,0x05]
or.ne %d0, %d0, 255

# CHECK-INST: or.ne %d0, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x10,0x05]
or.ne %d0, %d1, -256

# CHECK-INST: or.ne %d0, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x17,0x05]
or.ne %d0, %d1, -129

# CHECK-INST: or.ne %d0, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x1f,0x05]
or.ne %d0, %d1, -1

# CHECK-INST: or.ne %d0, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x00,0x05]
or.ne %d0, %d1, 0

# CHECK-INST: or.ne %d0, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x00,0x05]
or.ne %d0, %d1, 1

# CHECK-INST: or.ne %d0, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x08,0x05]
or.ne %d0, %d1, 128

# CHECK-INST: or.ne %d0, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x0f,0x05]
or.ne %d0, %d1, 255

# CHECK-INST: or.ne %d0, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x10,0x05]
or.ne %d0, %d14, -256

# CHECK-INST: or.ne %d0, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x17,0x05]
or.ne %d0, %d14, -129

# CHECK-INST: or.ne %d0, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x1f,0x05]
or.ne %d0, %d14, -1

# CHECK-INST: or.ne %d0, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x00,0x05]
or.ne %d0, %d14, 0

# CHECK-INST: or.ne %d0, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x00,0x05]
or.ne %d0, %d14, 1

# CHECK-INST: or.ne %d0, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x08,0x05]
or.ne %d0, %d14, 128

# CHECK-INST: or.ne %d0, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x0f,0x05]
or.ne %d0, %d14, 255

# CHECK-INST: or.ne %d0, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x10,0x05]
or.ne %d0, %d15, -256

# CHECK-INST: or.ne %d0, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x17,0x05]
or.ne %d0, %d15, -129

# CHECK-INST: or.ne %d0, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x1f,0x05]
or.ne %d0, %d15, -1

# CHECK-INST: or.ne %d0, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x00,0x05]
or.ne %d0, %d15, 0

# CHECK-INST: or.ne %d0, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x00,0x05]
or.ne %d0, %d15, 1

# CHECK-INST: or.ne %d0, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x08,0x05]
or.ne %d0, %d15, 128

# CHECK-INST: or.ne %d0, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x0f,0x05]
or.ne %d0, %d15, 255

# CHECK-INST: or.ne %d1, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x10,0x15]
or.ne %d1, %d0, -256

# CHECK-INST: or.ne %d1, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x17,0x15]
or.ne %d1, %d0, -129

# CHECK-INST: or.ne %d1, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x1f,0x15]
or.ne %d1, %d0, -1

# CHECK-INST: or.ne %d1, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x00,0x15]
or.ne %d1, %d0, 0

# CHECK-INST: or.ne %d1, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x00,0x15]
or.ne %d1, %d0, 1

# CHECK-INST: or.ne %d1, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x08,0x15]
or.ne %d1, %d0, 128

# CHECK-INST: or.ne %d1, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x0f,0x15]
or.ne %d1, %d0, 255

# CHECK-INST: or.ne %d1, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x10,0x15]
or.ne %d1, %d1, -256

# CHECK-INST: or.ne %d1, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x17,0x15]
or.ne %d1, %d1, -129

# CHECK-INST: or.ne %d1, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x1f,0x15]
or.ne %d1, %d1, -1

# CHECK-INST: or.ne %d1, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x00,0x15]
or.ne %d1, %d1, 0

# CHECK-INST: or.ne %d1, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x00,0x15]
or.ne %d1, %d1, 1

# CHECK-INST: or.ne %d1, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x08,0x15]
or.ne %d1, %d1, 128

# CHECK-INST: or.ne %d1, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x0f,0x15]
or.ne %d1, %d1, 255

# CHECK-INST: or.ne %d1, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x10,0x15]
or.ne %d1, %d14, -256

# CHECK-INST: or.ne %d1, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x17,0x15]
or.ne %d1, %d14, -129

# CHECK-INST: or.ne %d1, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x1f,0x15]
or.ne %d1, %d14, -1

# CHECK-INST: or.ne %d1, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x00,0x15]
or.ne %d1, %d14, 0

# CHECK-INST: or.ne %d1, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x00,0x15]
or.ne %d1, %d14, 1

# CHECK-INST: or.ne %d1, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x08,0x15]
or.ne %d1, %d14, 128

# CHECK-INST: or.ne %d1, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x0f,0x15]
or.ne %d1, %d14, 255

# CHECK-INST: or.ne %d1, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x10,0x15]
or.ne %d1, %d15, -256

# CHECK-INST: or.ne %d1, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x17,0x15]
or.ne %d1, %d15, -129

# CHECK-INST: or.ne %d1, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x1f,0x15]
or.ne %d1, %d15, -1

# CHECK-INST: or.ne %d1, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x00,0x15]
or.ne %d1, %d15, 0

# CHECK-INST: or.ne %d1, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x00,0x15]
or.ne %d1, %d15, 1

# CHECK-INST: or.ne %d1, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x08,0x15]
or.ne %d1, %d15, 128

# CHECK-INST: or.ne %d1, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x0f,0x15]
or.ne %d1, %d15, 255

# CHECK-INST: or.ne %d14, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x10,0xe5]
or.ne %d14, %d0, -256

# CHECK-INST: or.ne %d14, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x17,0xe5]
or.ne %d14, %d0, -129

# CHECK-INST: or.ne %d14, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x1f,0xe5]
or.ne %d14, %d0, -1

# CHECK-INST: or.ne %d14, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x00,0xe5]
or.ne %d14, %d0, 0

# CHECK-INST: or.ne %d14, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x00,0xe5]
or.ne %d14, %d0, 1

# CHECK-INST: or.ne %d14, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x08,0xe5]
or.ne %d14, %d0, 128

# CHECK-INST: or.ne %d14, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x0f,0xe5]
or.ne %d14, %d0, 255

# CHECK-INST: or.ne %d14, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x10,0xe5]
or.ne %d14, %d1, -256

# CHECK-INST: or.ne %d14, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x17,0xe5]
or.ne %d14, %d1, -129

# CHECK-INST: or.ne %d14, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x1f,0xe5]
or.ne %d14, %d1, -1

# CHECK-INST: or.ne %d14, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x00,0xe5]
or.ne %d14, %d1, 0

# CHECK-INST: or.ne %d14, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x00,0xe5]
or.ne %d14, %d1, 1

# CHECK-INST: or.ne %d14, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x08,0xe5]
or.ne %d14, %d1, 128

# CHECK-INST: or.ne %d14, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x0f,0xe5]
or.ne %d14, %d1, 255

# CHECK-INST: or.ne %d14, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x10,0xe5]
or.ne %d14, %d14, -256

# CHECK-INST: or.ne %d14, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x17,0xe5]
or.ne %d14, %d14, -129

# CHECK-INST: or.ne %d14, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x1f,0xe5]
or.ne %d14, %d14, -1

# CHECK-INST: or.ne %d14, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x00,0xe5]
or.ne %d14, %d14, 0

# CHECK-INST: or.ne %d14, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x00,0xe5]
or.ne %d14, %d14, 1

# CHECK-INST: or.ne %d14, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x08,0xe5]
or.ne %d14, %d14, 128

# CHECK-INST: or.ne %d14, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x0f,0xe5]
or.ne %d14, %d14, 255

# CHECK-INST: or.ne %d14, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x10,0xe5]
or.ne %d14, %d15, -256

# CHECK-INST: or.ne %d14, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x17,0xe5]
or.ne %d14, %d15, -129

# CHECK-INST: or.ne %d14, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x1f,0xe5]
or.ne %d14, %d15, -1

# CHECK-INST: or.ne %d14, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x00,0xe5]
or.ne %d14, %d15, 0

# CHECK-INST: or.ne %d14, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x00,0xe5]
or.ne %d14, %d15, 1

# CHECK-INST: or.ne %d14, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x08,0xe5]
or.ne %d14, %d15, 128

# CHECK-INST: or.ne %d14, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x0f,0xe5]
or.ne %d14, %d15, 255

# CHECK-INST: or.ne %d15, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x10,0xf5]
or.ne %d15, %d0, -256

# CHECK-INST: or.ne %d15, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x17,0xf5]
or.ne %d15, %d0, -129

# CHECK-INST: or.ne %d15, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x1f,0xf5]
or.ne %d15, %d0, -1

# CHECK-INST: or.ne %d15, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x00,0xf5]
or.ne %d15, %d0, 0

# CHECK-INST: or.ne %d15, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x00,0xf5]
or.ne %d15, %d0, 1

# CHECK-INST: or.ne %d15, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x08,0xf5]
or.ne %d15, %d0, 128

# CHECK-INST: or.ne %d15, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x0f,0xf5]
or.ne %d15, %d0, 255

# CHECK-INST: or.ne %d15, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x10,0xf5]
or.ne %d15, %d1, -256

# CHECK-INST: or.ne %d15, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x17,0xf5]
or.ne %d15, %d1, -129

# CHECK-INST: or.ne %d15, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x1f,0xf5]
or.ne %d15, %d1, -1

# CHECK-INST: or.ne %d15, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x00,0xf5]
or.ne %d15, %d1, 0

# CHECK-INST: or.ne %d15, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x00,0xf5]
or.ne %d15, %d1, 1

# CHECK-INST: or.ne %d15, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x08,0xf5]
or.ne %d15, %d1, 128

# CHECK-INST: or.ne %d15, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x0f,0xf5]
or.ne %d15, %d1, 255

# CHECK-INST: or.ne %d15, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x10,0xf5]
or.ne %d15, %d14, -256

# CHECK-INST: or.ne %d15, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x17,0xf5]
or.ne %d15, %d14, -129

# CHECK-INST: or.ne %d15, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x1f,0xf5]
or.ne %d15, %d14, -1

# CHECK-INST: or.ne %d15, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x00,0xf5]
or.ne %d15, %d14, 0

# CHECK-INST: or.ne %d15, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x00,0xf5]
or.ne %d15, %d14, 1

# CHECK-INST: or.ne %d15, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x08,0xf5]
or.ne %d15, %d14, 128

# CHECK-INST: or.ne %d15, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x0f,0xf5]
or.ne %d15, %d14, 255

# CHECK-INST: or.ne %d15, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x10,0xf5]
or.ne %d15, %d15, -256

# CHECK-INST: or.ne %d15, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x17,0xf5]
or.ne %d15, %d15, -129

# CHECK-INST: or.ne %d15, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x1f,0xf5]
or.ne %d15, %d15, -1

# CHECK-INST: or.ne %d15, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x00,0xf5]
or.ne %d15, %d15, 0

# CHECK-INST: or.ne %d15, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x00,0xf5]
or.ne %d15, %d15, 1

# CHECK-INST: or.ne %d15, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x08,0xf5]
or.ne %d15, %d15, 128

# CHECK-INST: or.ne %d15, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x0f,0xf5]
or.ne %d15, %d15, 255

# CHECK-INST: xor.eq %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xf0,0x02]
xor.eq %d0, %d0, %d0

# CHECK-INST: xor.eq %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xf0,0x02]
xor.eq %d0, %d0, %d1

# CHECK-INST: xor.eq %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xf0,0x02]
xor.eq %d0, %d0, %d14

# CHECK-INST: xor.eq %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xf0,0x02]
xor.eq %d0, %d0, %d15

# CHECK-INST: xor.eq %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xf0,0x02]
xor.eq %d0, %d1, %d0

# CHECK-INST: xor.eq %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xf0,0x02]
xor.eq %d0, %d1, %d1

# CHECK-INST: xor.eq %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xf0,0x02]
xor.eq %d0, %d1, %d14

# CHECK-INST: xor.eq %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xf0,0x02]
xor.eq %d0, %d1, %d15

# CHECK-INST: xor.eq %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xf0,0x02]
xor.eq %d0, %d14, %d0

# CHECK-INST: xor.eq %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xf0,0x02]
xor.eq %d0, %d14, %d1

# CHECK-INST: xor.eq %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xf0,0x02]
xor.eq %d0, %d14, %d14

# CHECK-INST: xor.eq %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xf0,0x02]
xor.eq %d0, %d14, %d15

# CHECK-INST: xor.eq %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xf0,0x02]
xor.eq %d0, %d15, %d0

# CHECK-INST: xor.eq %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xf0,0x02]
xor.eq %d0, %d15, %d1

# CHECK-INST: xor.eq %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xf0,0x02]
xor.eq %d0, %d15, %d14

# CHECK-INST: xor.eq %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xf0,0x02]
xor.eq %d0, %d15, %d15

# CHECK-INST: xor.eq %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xf0,0x12]
xor.eq %d1, %d0, %d0

# CHECK-INST: xor.eq %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xf0,0x12]
xor.eq %d1, %d0, %d1

# CHECK-INST: xor.eq %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xf0,0x12]
xor.eq %d1, %d0, %d14

# CHECK-INST: xor.eq %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xf0,0x12]
xor.eq %d1, %d0, %d15

# CHECK-INST: xor.eq %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xf0,0x12]
xor.eq %d1, %d1, %d0

# CHECK-INST: xor.eq %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xf0,0x12]
xor.eq %d1, %d1, %d1

# CHECK-INST: xor.eq %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xf0,0x12]
xor.eq %d1, %d1, %d14

# CHECK-INST: xor.eq %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xf0,0x12]
xor.eq %d1, %d1, %d15

# CHECK-INST: xor.eq %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xf0,0x12]
xor.eq %d1, %d14, %d0

# CHECK-INST: xor.eq %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xf0,0x12]
xor.eq %d1, %d14, %d1

# CHECK-INST: xor.eq %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xf0,0x12]
xor.eq %d1, %d14, %d14

# CHECK-INST: xor.eq %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xf0,0x12]
xor.eq %d1, %d14, %d15

# CHECK-INST: xor.eq %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xf0,0x12]
xor.eq %d1, %d15, %d0

# CHECK-INST: xor.eq %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xf0,0x12]
xor.eq %d1, %d15, %d1

# CHECK-INST: xor.eq %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xf0,0x12]
xor.eq %d1, %d15, %d14

# CHECK-INST: xor.eq %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xf0,0x12]
xor.eq %d1, %d15, %d15

# CHECK-INST: xor.eq %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xf0,0xe2]
xor.eq %d14, %d0, %d0

# CHECK-INST: xor.eq %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xf0,0xe2]
xor.eq %d14, %d0, %d1

# CHECK-INST: xor.eq %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xf0,0xe2]
xor.eq %d14, %d0, %d14

# CHECK-INST: xor.eq %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xf0,0xe2]
xor.eq %d14, %d0, %d15

# CHECK-INST: xor.eq %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xf0,0xe2]
xor.eq %d14, %d1, %d0

# CHECK-INST: xor.eq %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xf0,0xe2]
xor.eq %d14, %d1, %d1

# CHECK-INST: xor.eq %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xf0,0xe2]
xor.eq %d14, %d1, %d14

# CHECK-INST: xor.eq %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xf0,0xe2]
xor.eq %d14, %d1, %d15

# CHECK-INST: xor.eq %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xf0,0xe2]
xor.eq %d14, %d14, %d0

# CHECK-INST: xor.eq %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xf0,0xe2]
xor.eq %d14, %d14, %d1

# CHECK-INST: xor.eq %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xf0,0xe2]
xor.eq %d14, %d14, %d14

# CHECK-INST: xor.eq %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xf0,0xe2]
xor.eq %d14, %d14, %d15

# CHECK-INST: xor.eq %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xf0,0xe2]
xor.eq %d14, %d15, %d0

# CHECK-INST: xor.eq %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xf0,0xe2]
xor.eq %d14, %d15, %d1

# CHECK-INST: xor.eq %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xf0,0xe2]
xor.eq %d14, %d15, %d14

# CHECK-INST: xor.eq %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xf0,0xe2]
xor.eq %d14, %d15, %d15

# CHECK-INST: xor.eq %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xf0,0xf2]
xor.eq %d15, %d0, %d0

# CHECK-INST: xor.eq %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xf0,0xf2]
xor.eq %d15, %d0, %d1

# CHECK-INST: xor.eq %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xf0,0xf2]
xor.eq %d15, %d0, %d14

# CHECK-INST: xor.eq %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xf0,0xf2]
xor.eq %d15, %d0, %d15

# CHECK-INST: xor.eq %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xf0,0xf2]
xor.eq %d15, %d1, %d0

# CHECK-INST: xor.eq %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xf0,0xf2]
xor.eq %d15, %d1, %d1

# CHECK-INST: xor.eq %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xf0,0xf2]
xor.eq %d15, %d1, %d14

# CHECK-INST: xor.eq %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xf0,0xf2]
xor.eq %d15, %d1, %d15

# CHECK-INST: xor.eq %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xf0,0xf2]
xor.eq %d15, %d14, %d0

# CHECK-INST: xor.eq %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xf0,0xf2]
xor.eq %d15, %d14, %d1

# CHECK-INST: xor.eq %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xf0,0xf2]
xor.eq %d15, %d14, %d14

# CHECK-INST: xor.eq %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xf0,0xf2]
xor.eq %d15, %d14, %d15

# CHECK-INST: xor.eq %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xf0,0xf2]
xor.eq %d15, %d15, %d0

# CHECK-INST: xor.eq %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xf0,0xf2]
xor.eq %d15, %d15, %d1

# CHECK-INST: xor.eq %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xf0,0xf2]
xor.eq %d15, %d15, %d14

# CHECK-INST: xor.eq %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xf0,0xf2]
xor.eq %d15, %d15, %d15

# CHECK-INST: xor.eq %d0, %d0, -256
# CHECK: encoding: [0x8b,0x00,0xf0,0x05]
xor.eq %d0, %d0, -256

# CHECK-INST: xor.eq %d0, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0xf7,0x05]
xor.eq %d0, %d0, -129

# CHECK-INST: xor.eq %d0, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0xff,0x05]
xor.eq %d0, %d0, -1

# CHECK-INST: xor.eq %d0, %d0, 0
# CHECK: encoding: [0x8b,0x00,0xe0,0x05]
xor.eq %d0, %d0, 0

# CHECK-INST: xor.eq %d0, %d0, 1
# CHECK: encoding: [0x8b,0x10,0xe0,0x05]
xor.eq %d0, %d0, 1

# CHECK-INST: xor.eq %d0, %d0, 128
# CHECK: encoding: [0x8b,0x00,0xe8,0x05]
xor.eq %d0, %d0, 128

# CHECK-INST: xor.eq %d0, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0xef,0x05]
xor.eq %d0, %d0, 255

# CHECK-INST: xor.eq %d0, %d1, -256
# CHECK: encoding: [0x8b,0x01,0xf0,0x05]
xor.eq %d0, %d1, -256

# CHECK-INST: xor.eq %d0, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0xf7,0x05]
xor.eq %d0, %d1, -129

# CHECK-INST: xor.eq %d0, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0xff,0x05]
xor.eq %d0, %d1, -1

# CHECK-INST: xor.eq %d0, %d1, 0
# CHECK: encoding: [0x8b,0x01,0xe0,0x05]
xor.eq %d0, %d1, 0

# CHECK-INST: xor.eq %d0, %d1, 1
# CHECK: encoding: [0x8b,0x11,0xe0,0x05]
xor.eq %d0, %d1, 1

# CHECK-INST: xor.eq %d0, %d1, 128
# CHECK: encoding: [0x8b,0x01,0xe8,0x05]
xor.eq %d0, %d1, 128

# CHECK-INST: xor.eq %d0, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0xef,0x05]
xor.eq %d0, %d1, 255

# CHECK-INST: xor.eq %d0, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0xf0,0x05]
xor.eq %d0, %d14, -256

# CHECK-INST: xor.eq %d0, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0xf7,0x05]
xor.eq %d0, %d14, -129

# CHECK-INST: xor.eq %d0, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0xff,0x05]
xor.eq %d0, %d14, -1

# CHECK-INST: xor.eq %d0, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0xe0,0x05]
xor.eq %d0, %d14, 0

# CHECK-INST: xor.eq %d0, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0xe0,0x05]
xor.eq %d0, %d14, 1

# CHECK-INST: xor.eq %d0, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0xe8,0x05]
xor.eq %d0, %d14, 128

# CHECK-INST: xor.eq %d0, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0xef,0x05]
xor.eq %d0, %d14, 255

# CHECK-INST: xor.eq %d0, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0xf0,0x05]
xor.eq %d0, %d15, -256

# CHECK-INST: xor.eq %d0, %d15, -129
# CHECK: encoding: [0x8b,0xff,0xf7,0x05]
xor.eq %d0, %d15, -129

# CHECK-INST: xor.eq %d0, %d15, -1
# CHECK: encoding: [0x8b,0xff,0xff,0x05]
xor.eq %d0, %d15, -1

# CHECK-INST: xor.eq %d0, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0xe0,0x05]
xor.eq %d0, %d15, 0

# CHECK-INST: xor.eq %d0, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0xe0,0x05]
xor.eq %d0, %d15, 1

# CHECK-INST: xor.eq %d0, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0xe8,0x05]
xor.eq %d0, %d15, 128

# CHECK-INST: xor.eq %d0, %d15, 255
# CHECK: encoding: [0x8b,0xff,0xef,0x05]
xor.eq %d0, %d15, 255

# CHECK-INST: xor.eq %d1, %d0, -256
# CHECK: encoding: [0x8b,0x00,0xf0,0x15]
xor.eq %d1, %d0, -256

# CHECK-INST: xor.eq %d1, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0xf7,0x15]
xor.eq %d1, %d0, -129

# CHECK-INST: xor.eq %d1, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0xff,0x15]
xor.eq %d1, %d0, -1

# CHECK-INST: xor.eq %d1, %d0, 0
# CHECK: encoding: [0x8b,0x00,0xe0,0x15]
xor.eq %d1, %d0, 0

# CHECK-INST: xor.eq %d1, %d0, 1
# CHECK: encoding: [0x8b,0x10,0xe0,0x15]
xor.eq %d1, %d0, 1

# CHECK-INST: xor.eq %d1, %d0, 128
# CHECK: encoding: [0x8b,0x00,0xe8,0x15]
xor.eq %d1, %d0, 128

# CHECK-INST: xor.eq %d1, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0xef,0x15]
xor.eq %d1, %d0, 255

# CHECK-INST: xor.eq %d1, %d1, -256
# CHECK: encoding: [0x8b,0x01,0xf0,0x15]
xor.eq %d1, %d1, -256

# CHECK-INST: xor.eq %d1, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0xf7,0x15]
xor.eq %d1, %d1, -129

# CHECK-INST: xor.eq %d1, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0xff,0x15]
xor.eq %d1, %d1, -1

# CHECK-INST: xor.eq %d1, %d1, 0
# CHECK: encoding: [0x8b,0x01,0xe0,0x15]
xor.eq %d1, %d1, 0

# CHECK-INST: xor.eq %d1, %d1, 1
# CHECK: encoding: [0x8b,0x11,0xe0,0x15]
xor.eq %d1, %d1, 1

# CHECK-INST: xor.eq %d1, %d1, 128
# CHECK: encoding: [0x8b,0x01,0xe8,0x15]
xor.eq %d1, %d1, 128

# CHECK-INST: xor.eq %d1, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0xef,0x15]
xor.eq %d1, %d1, 255

# CHECK-INST: xor.eq %d1, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0xf0,0x15]
xor.eq %d1, %d14, -256

# CHECK-INST: xor.eq %d1, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0xf7,0x15]
xor.eq %d1, %d14, -129

# CHECK-INST: xor.eq %d1, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0xff,0x15]
xor.eq %d1, %d14, -1

# CHECK-INST: xor.eq %d1, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0xe0,0x15]
xor.eq %d1, %d14, 0

# CHECK-INST: xor.eq %d1, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0xe0,0x15]
xor.eq %d1, %d14, 1

# CHECK-INST: xor.eq %d1, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0xe8,0x15]
xor.eq %d1, %d14, 128

# CHECK-INST: xor.eq %d1, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0xef,0x15]
xor.eq %d1, %d14, 255

# CHECK-INST: xor.eq %d1, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0xf0,0x15]
xor.eq %d1, %d15, -256

# CHECK-INST: xor.eq %d1, %d15, -129
# CHECK: encoding: [0x8b,0xff,0xf7,0x15]
xor.eq %d1, %d15, -129

# CHECK-INST: xor.eq %d1, %d15, -1
# CHECK: encoding: [0x8b,0xff,0xff,0x15]
xor.eq %d1, %d15, -1

# CHECK-INST: xor.eq %d1, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0xe0,0x15]
xor.eq %d1, %d15, 0

# CHECK-INST: xor.eq %d1, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0xe0,0x15]
xor.eq %d1, %d15, 1

# CHECK-INST: xor.eq %d1, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0xe8,0x15]
xor.eq %d1, %d15, 128

# CHECK-INST: xor.eq %d1, %d15, 255
# CHECK: encoding: [0x8b,0xff,0xef,0x15]
xor.eq %d1, %d15, 255

# CHECK-INST: xor.eq %d14, %d0, -256
# CHECK: encoding: [0x8b,0x00,0xf0,0xe5]
xor.eq %d14, %d0, -256

# CHECK-INST: xor.eq %d14, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0xf7,0xe5]
xor.eq %d14, %d0, -129

# CHECK-INST: xor.eq %d14, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0xff,0xe5]
xor.eq %d14, %d0, -1

# CHECK-INST: xor.eq %d14, %d0, 0
# CHECK: encoding: [0x8b,0x00,0xe0,0xe5]
xor.eq %d14, %d0, 0

# CHECK-INST: xor.eq %d14, %d0, 1
# CHECK: encoding: [0x8b,0x10,0xe0,0xe5]
xor.eq %d14, %d0, 1

# CHECK-INST: xor.eq %d14, %d0, 128
# CHECK: encoding: [0x8b,0x00,0xe8,0xe5]
xor.eq %d14, %d0, 128

# CHECK-INST: xor.eq %d14, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0xef,0xe5]
xor.eq %d14, %d0, 255

# CHECK-INST: xor.eq %d14, %d1, -256
# CHECK: encoding: [0x8b,0x01,0xf0,0xe5]
xor.eq %d14, %d1, -256

# CHECK-INST: xor.eq %d14, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0xf7,0xe5]
xor.eq %d14, %d1, -129

# CHECK-INST: xor.eq %d14, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0xff,0xe5]
xor.eq %d14, %d1, -1

# CHECK-INST: xor.eq %d14, %d1, 0
# CHECK: encoding: [0x8b,0x01,0xe0,0xe5]
xor.eq %d14, %d1, 0

# CHECK-INST: xor.eq %d14, %d1, 1
# CHECK: encoding: [0x8b,0x11,0xe0,0xe5]
xor.eq %d14, %d1, 1

# CHECK-INST: xor.eq %d14, %d1, 128
# CHECK: encoding: [0x8b,0x01,0xe8,0xe5]
xor.eq %d14, %d1, 128

# CHECK-INST: xor.eq %d14, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0xef,0xe5]
xor.eq %d14, %d1, 255

# CHECK-INST: xor.eq %d14, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0xf0,0xe5]
xor.eq %d14, %d14, -256

# CHECK-INST: xor.eq %d14, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0xf7,0xe5]
xor.eq %d14, %d14, -129

# CHECK-INST: xor.eq %d14, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0xff,0xe5]
xor.eq %d14, %d14, -1

# CHECK-INST: xor.eq %d14, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0xe0,0xe5]
xor.eq %d14, %d14, 0

# CHECK-INST: xor.eq %d14, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0xe0,0xe5]
xor.eq %d14, %d14, 1

# CHECK-INST: xor.eq %d14, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0xe8,0xe5]
xor.eq %d14, %d14, 128

# CHECK-INST: xor.eq %d14, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0xef,0xe5]
xor.eq %d14, %d14, 255

# CHECK-INST: xor.eq %d14, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0xf0,0xe5]
xor.eq %d14, %d15, -256

# CHECK-INST: xor.eq %d14, %d15, -129
# CHECK: encoding: [0x8b,0xff,0xf7,0xe5]
xor.eq %d14, %d15, -129

# CHECK-INST: xor.eq %d14, %d15, -1
# CHECK: encoding: [0x8b,0xff,0xff,0xe5]
xor.eq %d14, %d15, -1

# CHECK-INST: xor.eq %d14, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0xe0,0xe5]
xor.eq %d14, %d15, 0

# CHECK-INST: xor.eq %d14, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0xe0,0xe5]
xor.eq %d14, %d15, 1

# CHECK-INST: xor.eq %d14, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0xe8,0xe5]
xor.eq %d14, %d15, 128

# CHECK-INST: xor.eq %d14, %d15, 255
# CHECK: encoding: [0x8b,0xff,0xef,0xe5]
xor.eq %d14, %d15, 255

# CHECK-INST: xor.eq %d15, %d0, -256
# CHECK: encoding: [0x8b,0x00,0xf0,0xf5]
xor.eq %d15, %d0, -256

# CHECK-INST: xor.eq %d15, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0xf7,0xf5]
xor.eq %d15, %d0, -129

# CHECK-INST: xor.eq %d15, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0xff,0xf5]
xor.eq %d15, %d0, -1

# CHECK-INST: xor.eq %d15, %d0, 0
# CHECK: encoding: [0x8b,0x00,0xe0,0xf5]
xor.eq %d15, %d0, 0

# CHECK-INST: xor.eq %d15, %d0, 1
# CHECK: encoding: [0x8b,0x10,0xe0,0xf5]
xor.eq %d15, %d0, 1

# CHECK-INST: xor.eq %d15, %d0, 128
# CHECK: encoding: [0x8b,0x00,0xe8,0xf5]
xor.eq %d15, %d0, 128

# CHECK-INST: xor.eq %d15, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0xef,0xf5]
xor.eq %d15, %d0, 255

# CHECK-INST: xor.eq %d15, %d1, -256
# CHECK: encoding: [0x8b,0x01,0xf0,0xf5]
xor.eq %d15, %d1, -256

# CHECK-INST: xor.eq %d15, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0xf7,0xf5]
xor.eq %d15, %d1, -129

# CHECK-INST: xor.eq %d15, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0xff,0xf5]
xor.eq %d15, %d1, -1

# CHECK-INST: xor.eq %d15, %d1, 0
# CHECK: encoding: [0x8b,0x01,0xe0,0xf5]
xor.eq %d15, %d1, 0

# CHECK-INST: xor.eq %d15, %d1, 1
# CHECK: encoding: [0x8b,0x11,0xe0,0xf5]
xor.eq %d15, %d1, 1

# CHECK-INST: xor.eq %d15, %d1, 128
# CHECK: encoding: [0x8b,0x01,0xe8,0xf5]
xor.eq %d15, %d1, 128

# CHECK-INST: xor.eq %d15, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0xef,0xf5]
xor.eq %d15, %d1, 255

# CHECK-INST: xor.eq %d15, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0xf0,0xf5]
xor.eq %d15, %d14, -256

# CHECK-INST: xor.eq %d15, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0xf7,0xf5]
xor.eq %d15, %d14, -129

# CHECK-INST: xor.eq %d15, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0xff,0xf5]
xor.eq %d15, %d14, -1

# CHECK-INST: xor.eq %d15, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0xe0,0xf5]
xor.eq %d15, %d14, 0

# CHECK-INST: xor.eq %d15, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0xe0,0xf5]
xor.eq %d15, %d14, 1

# CHECK-INST: xor.eq %d15, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0xe8,0xf5]
xor.eq %d15, %d14, 128

# CHECK-INST: xor.eq %d15, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0xef,0xf5]
xor.eq %d15, %d14, 255

# CHECK-INST: xor.eq %d15, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0xf0,0xf5]
xor.eq %d15, %d15, -256

# CHECK-INST: xor.eq %d15, %d15, -129
# CHECK: encoding: [0x8b,0xff,0xf7,0xf5]
xor.eq %d15, %d15, -129

# CHECK-INST: xor.eq %d15, %d15, -1
# CHECK: encoding: [0x8b,0xff,0xff,0xf5]
xor.eq %d15, %d15, -1

# CHECK-INST: xor.eq %d15, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0xe0,0xf5]
xor.eq %d15, %d15, 0

# CHECK-INST: xor.eq %d15, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0xe0,0xf5]
xor.eq %d15, %d15, 1

# CHECK-INST: xor.eq %d15, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0xe8,0xf5]
xor.eq %d15, %d15, 128

# CHECK-INST: xor.eq %d15, %d15, 255
# CHECK: encoding: [0x8b,0xff,0xef,0xf5]
xor.eq %d15, %d15, 255

# CHECK-INST: xor.ge %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x30,0x03]
xor.ge %d0, %d0, %d0

# CHECK-INST: xor.ge %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x30,0x03]
xor.ge %d0, %d0, %d1

# CHECK-INST: xor.ge %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x30,0x03]
xor.ge %d0, %d0, %d14

# CHECK-INST: xor.ge %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x30,0x03]
xor.ge %d0, %d0, %d15

# CHECK-INST: xor.ge %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x30,0x03]
xor.ge %d0, %d1, %d0

# CHECK-INST: xor.ge %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x30,0x03]
xor.ge %d0, %d1, %d1

# CHECK-INST: xor.ge %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x30,0x03]
xor.ge %d0, %d1, %d14

# CHECK-INST: xor.ge %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x30,0x03]
xor.ge %d0, %d1, %d15

# CHECK-INST: xor.ge %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x30,0x03]
xor.ge %d0, %d14, %d0

# CHECK-INST: xor.ge %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x30,0x03]
xor.ge %d0, %d14, %d1

# CHECK-INST: xor.ge %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x30,0x03]
xor.ge %d0, %d14, %d14

# CHECK-INST: xor.ge %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x30,0x03]
xor.ge %d0, %d14, %d15

# CHECK-INST: xor.ge %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x30,0x03]
xor.ge %d0, %d15, %d0

# CHECK-INST: xor.ge %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x30,0x03]
xor.ge %d0, %d15, %d1

# CHECK-INST: xor.ge %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x30,0x03]
xor.ge %d0, %d15, %d14

# CHECK-INST: xor.ge %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x30,0x03]
xor.ge %d0, %d15, %d15

# CHECK-INST: xor.ge %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x30,0x13]
xor.ge %d1, %d0, %d0

# CHECK-INST: xor.ge %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x30,0x13]
xor.ge %d1, %d0, %d1

# CHECK-INST: xor.ge %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x30,0x13]
xor.ge %d1, %d0, %d14

# CHECK-INST: xor.ge %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x30,0x13]
xor.ge %d1, %d0, %d15

# CHECK-INST: xor.ge %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x30,0x13]
xor.ge %d1, %d1, %d0

# CHECK-INST: xor.ge %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x30,0x13]
xor.ge %d1, %d1, %d1

# CHECK-INST: xor.ge %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x30,0x13]
xor.ge %d1, %d1, %d14

# CHECK-INST: xor.ge %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x30,0x13]
xor.ge %d1, %d1, %d15

# CHECK-INST: xor.ge %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x30,0x13]
xor.ge %d1, %d14, %d0

# CHECK-INST: xor.ge %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x30,0x13]
xor.ge %d1, %d14, %d1

# CHECK-INST: xor.ge %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x30,0x13]
xor.ge %d1, %d14, %d14

# CHECK-INST: xor.ge %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x30,0x13]
xor.ge %d1, %d14, %d15

# CHECK-INST: xor.ge %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x30,0x13]
xor.ge %d1, %d15, %d0

# CHECK-INST: xor.ge %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x30,0x13]
xor.ge %d1, %d15, %d1

# CHECK-INST: xor.ge %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x30,0x13]
xor.ge %d1, %d15, %d14

# CHECK-INST: xor.ge %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x30,0x13]
xor.ge %d1, %d15, %d15

# CHECK-INST: xor.ge %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x30,0xe3]
xor.ge %d14, %d0, %d0

# CHECK-INST: xor.ge %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x30,0xe3]
xor.ge %d14, %d0, %d1

# CHECK-INST: xor.ge %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x30,0xe3]
xor.ge %d14, %d0, %d14

# CHECK-INST: xor.ge %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x30,0xe3]
xor.ge %d14, %d0, %d15

# CHECK-INST: xor.ge %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x30,0xe3]
xor.ge %d14, %d1, %d0

# CHECK-INST: xor.ge %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x30,0xe3]
xor.ge %d14, %d1, %d1

# CHECK-INST: xor.ge %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x30,0xe3]
xor.ge %d14, %d1, %d14

# CHECK-INST: xor.ge %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x30,0xe3]
xor.ge %d14, %d1, %d15

# CHECK-INST: xor.ge %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x30,0xe3]
xor.ge %d14, %d14, %d0

# CHECK-INST: xor.ge %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x30,0xe3]
xor.ge %d14, %d14, %d1

# CHECK-INST: xor.ge %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x30,0xe3]
xor.ge %d14, %d14, %d14

# CHECK-INST: xor.ge %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x30,0xe3]
xor.ge %d14, %d14, %d15

# CHECK-INST: xor.ge %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x30,0xe3]
xor.ge %d14, %d15, %d0

# CHECK-INST: xor.ge %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x30,0xe3]
xor.ge %d14, %d15, %d1

# CHECK-INST: xor.ge %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x30,0xe3]
xor.ge %d14, %d15, %d14

# CHECK-INST: xor.ge %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x30,0xe3]
xor.ge %d14, %d15, %d15

# CHECK-INST: xor.ge %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x30,0xf3]
xor.ge %d15, %d0, %d0

# CHECK-INST: xor.ge %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x30,0xf3]
xor.ge %d15, %d0, %d1

# CHECK-INST: xor.ge %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x30,0xf3]
xor.ge %d15, %d0, %d14

# CHECK-INST: xor.ge %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x30,0xf3]
xor.ge %d15, %d0, %d15

# CHECK-INST: xor.ge %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x30,0xf3]
xor.ge %d15, %d1, %d0

# CHECK-INST: xor.ge %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x30,0xf3]
xor.ge %d15, %d1, %d1

# CHECK-INST: xor.ge %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x30,0xf3]
xor.ge %d15, %d1, %d14

# CHECK-INST: xor.ge %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x30,0xf3]
xor.ge %d15, %d1, %d15

# CHECK-INST: xor.ge %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x30,0xf3]
xor.ge %d15, %d14, %d0

# CHECK-INST: xor.ge %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x30,0xf3]
xor.ge %d15, %d14, %d1

# CHECK-INST: xor.ge %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x30,0xf3]
xor.ge %d15, %d14, %d14

# CHECK-INST: xor.ge %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x30,0xf3]
xor.ge %d15, %d14, %d15

# CHECK-INST: xor.ge %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x30,0xf3]
xor.ge %d15, %d15, %d0

# CHECK-INST: xor.ge %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x30,0xf3]
xor.ge %d15, %d15, %d1

# CHECK-INST: xor.ge %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x30,0xf3]
xor.ge %d15, %d15, %d14

# CHECK-INST: xor.ge %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x30,0xf3]
xor.ge %d15, %d15, %d15

# CHECK-INST: xor.ge %d0, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x70,0x06]
xor.ge %d0, %d0, -256

# CHECK-INST: xor.ge %d0, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x77,0x06]
xor.ge %d0, %d0, -129

# CHECK-INST: xor.ge %d0, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x7f,0x06]
xor.ge %d0, %d0, -1

# CHECK-INST: xor.ge %d0, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x60,0x06]
xor.ge %d0, %d0, 0

# CHECK-INST: xor.ge %d0, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x60,0x06]
xor.ge %d0, %d0, 1

# CHECK-INST: xor.ge %d0, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x68,0x06]
xor.ge %d0, %d0, 128

# CHECK-INST: xor.ge %d0, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x6f,0x06]
xor.ge %d0, %d0, 255

# CHECK-INST: xor.ge %d0, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x70,0x06]
xor.ge %d0, %d1, -256

# CHECK-INST: xor.ge %d0, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x77,0x06]
xor.ge %d0, %d1, -129

# CHECK-INST: xor.ge %d0, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x7f,0x06]
xor.ge %d0, %d1, -1

# CHECK-INST: xor.ge %d0, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x60,0x06]
xor.ge %d0, %d1, 0

# CHECK-INST: xor.ge %d0, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x60,0x06]
xor.ge %d0, %d1, 1

# CHECK-INST: xor.ge %d0, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x68,0x06]
xor.ge %d0, %d1, 128

# CHECK-INST: xor.ge %d0, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x6f,0x06]
xor.ge %d0, %d1, 255

# CHECK-INST: xor.ge %d0, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x70,0x06]
xor.ge %d0, %d14, -256

# CHECK-INST: xor.ge %d0, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x77,0x06]
xor.ge %d0, %d14, -129

# CHECK-INST: xor.ge %d0, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x7f,0x06]
xor.ge %d0, %d14, -1

# CHECK-INST: xor.ge %d0, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x60,0x06]
xor.ge %d0, %d14, 0

# CHECK-INST: xor.ge %d0, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x60,0x06]
xor.ge %d0, %d14, 1

# CHECK-INST: xor.ge %d0, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x68,0x06]
xor.ge %d0, %d14, 128

# CHECK-INST: xor.ge %d0, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x6f,0x06]
xor.ge %d0, %d14, 255

# CHECK-INST: xor.ge %d0, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x70,0x06]
xor.ge %d0, %d15, -256

# CHECK-INST: xor.ge %d0, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x77,0x06]
xor.ge %d0, %d15, -129

# CHECK-INST: xor.ge %d0, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x7f,0x06]
xor.ge %d0, %d15, -1

# CHECK-INST: xor.ge %d0, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x60,0x06]
xor.ge %d0, %d15, 0

# CHECK-INST: xor.ge %d0, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x60,0x06]
xor.ge %d0, %d15, 1

# CHECK-INST: xor.ge %d0, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x68,0x06]
xor.ge %d0, %d15, 128

# CHECK-INST: xor.ge %d0, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x6f,0x06]
xor.ge %d0, %d15, 255

# CHECK-INST: xor.ge %d1, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x70,0x16]
xor.ge %d1, %d0, -256

# CHECK-INST: xor.ge %d1, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x77,0x16]
xor.ge %d1, %d0, -129

# CHECK-INST: xor.ge %d1, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x7f,0x16]
xor.ge %d1, %d0, -1

# CHECK-INST: xor.ge %d1, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x60,0x16]
xor.ge %d1, %d0, 0

# CHECK-INST: xor.ge %d1, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x60,0x16]
xor.ge %d1, %d0, 1

# CHECK-INST: xor.ge %d1, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x68,0x16]
xor.ge %d1, %d0, 128

# CHECK-INST: xor.ge %d1, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x6f,0x16]
xor.ge %d1, %d0, 255

# CHECK-INST: xor.ge %d1, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x70,0x16]
xor.ge %d1, %d1, -256

# CHECK-INST: xor.ge %d1, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x77,0x16]
xor.ge %d1, %d1, -129

# CHECK-INST: xor.ge %d1, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x7f,0x16]
xor.ge %d1, %d1, -1

# CHECK-INST: xor.ge %d1, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x60,0x16]
xor.ge %d1, %d1, 0

# CHECK-INST: xor.ge %d1, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x60,0x16]
xor.ge %d1, %d1, 1

# CHECK-INST: xor.ge %d1, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x68,0x16]
xor.ge %d1, %d1, 128

# CHECK-INST: xor.ge %d1, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x6f,0x16]
xor.ge %d1, %d1, 255

# CHECK-INST: xor.ge %d1, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x70,0x16]
xor.ge %d1, %d14, -256

# CHECK-INST: xor.ge %d1, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x77,0x16]
xor.ge %d1, %d14, -129

# CHECK-INST: xor.ge %d1, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x7f,0x16]
xor.ge %d1, %d14, -1

# CHECK-INST: xor.ge %d1, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x60,0x16]
xor.ge %d1, %d14, 0

# CHECK-INST: xor.ge %d1, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x60,0x16]
xor.ge %d1, %d14, 1

# CHECK-INST: xor.ge %d1, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x68,0x16]
xor.ge %d1, %d14, 128

# CHECK-INST: xor.ge %d1, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x6f,0x16]
xor.ge %d1, %d14, 255

# CHECK-INST: xor.ge %d1, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x70,0x16]
xor.ge %d1, %d15, -256

# CHECK-INST: xor.ge %d1, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x77,0x16]
xor.ge %d1, %d15, -129

# CHECK-INST: xor.ge %d1, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x7f,0x16]
xor.ge %d1, %d15, -1

# CHECK-INST: xor.ge %d1, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x60,0x16]
xor.ge %d1, %d15, 0

# CHECK-INST: xor.ge %d1, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x60,0x16]
xor.ge %d1, %d15, 1

# CHECK-INST: xor.ge %d1, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x68,0x16]
xor.ge %d1, %d15, 128

# CHECK-INST: xor.ge %d1, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x6f,0x16]
xor.ge %d1, %d15, 255

# CHECK-INST: xor.ge %d14, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x70,0xe6]
xor.ge %d14, %d0, -256

# CHECK-INST: xor.ge %d14, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x77,0xe6]
xor.ge %d14, %d0, -129

# CHECK-INST: xor.ge %d14, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x7f,0xe6]
xor.ge %d14, %d0, -1

# CHECK-INST: xor.ge %d14, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x60,0xe6]
xor.ge %d14, %d0, 0

# CHECK-INST: xor.ge %d14, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x60,0xe6]
xor.ge %d14, %d0, 1

# CHECK-INST: xor.ge %d14, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x68,0xe6]
xor.ge %d14, %d0, 128

# CHECK-INST: xor.ge %d14, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x6f,0xe6]
xor.ge %d14, %d0, 255

# CHECK-INST: xor.ge %d14, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x70,0xe6]
xor.ge %d14, %d1, -256

# CHECK-INST: xor.ge %d14, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x77,0xe6]
xor.ge %d14, %d1, -129

# CHECK-INST: xor.ge %d14, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x7f,0xe6]
xor.ge %d14, %d1, -1

# CHECK-INST: xor.ge %d14, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x60,0xe6]
xor.ge %d14, %d1, 0

# CHECK-INST: xor.ge %d14, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x60,0xe6]
xor.ge %d14, %d1, 1

# CHECK-INST: xor.ge %d14, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x68,0xe6]
xor.ge %d14, %d1, 128

# CHECK-INST: xor.ge %d14, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x6f,0xe6]
xor.ge %d14, %d1, 255

# CHECK-INST: xor.ge %d14, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x70,0xe6]
xor.ge %d14, %d14, -256

# CHECK-INST: xor.ge %d14, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x77,0xe6]
xor.ge %d14, %d14, -129

# CHECK-INST: xor.ge %d14, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x7f,0xe6]
xor.ge %d14, %d14, -1

# CHECK-INST: xor.ge %d14, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x60,0xe6]
xor.ge %d14, %d14, 0

# CHECK-INST: xor.ge %d14, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x60,0xe6]
xor.ge %d14, %d14, 1

# CHECK-INST: xor.ge %d14, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x68,0xe6]
xor.ge %d14, %d14, 128

# CHECK-INST: xor.ge %d14, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x6f,0xe6]
xor.ge %d14, %d14, 255

# CHECK-INST: xor.ge %d14, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x70,0xe6]
xor.ge %d14, %d15, -256

# CHECK-INST: xor.ge %d14, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x77,0xe6]
xor.ge %d14, %d15, -129

# CHECK-INST: xor.ge %d14, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x7f,0xe6]
xor.ge %d14, %d15, -1

# CHECK-INST: xor.ge %d14, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x60,0xe6]
xor.ge %d14, %d15, 0

# CHECK-INST: xor.ge %d14, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x60,0xe6]
xor.ge %d14, %d15, 1

# CHECK-INST: xor.ge %d14, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x68,0xe6]
xor.ge %d14, %d15, 128

# CHECK-INST: xor.ge %d14, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x6f,0xe6]
xor.ge %d14, %d15, 255

# CHECK-INST: xor.ge %d15, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x70,0xf6]
xor.ge %d15, %d0, -256

# CHECK-INST: xor.ge %d15, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x77,0xf6]
xor.ge %d15, %d0, -129

# CHECK-INST: xor.ge %d15, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x7f,0xf6]
xor.ge %d15, %d0, -1

# CHECK-INST: xor.ge %d15, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x60,0xf6]
xor.ge %d15, %d0, 0

# CHECK-INST: xor.ge %d15, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x60,0xf6]
xor.ge %d15, %d0, 1

# CHECK-INST: xor.ge %d15, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x68,0xf6]
xor.ge %d15, %d0, 128

# CHECK-INST: xor.ge %d15, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x6f,0xf6]
xor.ge %d15, %d0, 255

# CHECK-INST: xor.ge %d15, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x70,0xf6]
xor.ge %d15, %d1, -256

# CHECK-INST: xor.ge %d15, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x77,0xf6]
xor.ge %d15, %d1, -129

# CHECK-INST: xor.ge %d15, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x7f,0xf6]
xor.ge %d15, %d1, -1

# CHECK-INST: xor.ge %d15, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x60,0xf6]
xor.ge %d15, %d1, 0

# CHECK-INST: xor.ge %d15, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x60,0xf6]
xor.ge %d15, %d1, 1

# CHECK-INST: xor.ge %d15, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x68,0xf6]
xor.ge %d15, %d1, 128

# CHECK-INST: xor.ge %d15, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x6f,0xf6]
xor.ge %d15, %d1, 255

# CHECK-INST: xor.ge %d15, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x70,0xf6]
xor.ge %d15, %d14, -256

# CHECK-INST: xor.ge %d15, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x77,0xf6]
xor.ge %d15, %d14, -129

# CHECK-INST: xor.ge %d15, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x7f,0xf6]
xor.ge %d15, %d14, -1

# CHECK-INST: xor.ge %d15, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x60,0xf6]
xor.ge %d15, %d14, 0

# CHECK-INST: xor.ge %d15, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x60,0xf6]
xor.ge %d15, %d14, 1

# CHECK-INST: xor.ge %d15, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x68,0xf6]
xor.ge %d15, %d14, 128

# CHECK-INST: xor.ge %d15, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x6f,0xf6]
xor.ge %d15, %d14, 255

# CHECK-INST: xor.ge %d15, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x70,0xf6]
xor.ge %d15, %d15, -256

# CHECK-INST: xor.ge %d15, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x77,0xf6]
xor.ge %d15, %d15, -129

# CHECK-INST: xor.ge %d15, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x7f,0xf6]
xor.ge %d15, %d15, -1

# CHECK-INST: xor.ge %d15, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x60,0xf6]
xor.ge %d15, %d15, 0

# CHECK-INST: xor.ge %d15, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x60,0xf6]
xor.ge %d15, %d15, 1

# CHECK-INST: xor.ge %d15, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x68,0xf6]
xor.ge %d15, %d15, 128

# CHECK-INST: xor.ge %d15, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x6f,0xf6]
xor.ge %d15, %d15, 255

# CHECK-INST: xor.ge.u %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x40,0x03]
xor.ge.u %d0, %d0, %d0

# CHECK-INST: xor.ge.u %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x40,0x03]
xor.ge.u %d0, %d0, %d1

# CHECK-INST: xor.ge.u %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x40,0x03]
xor.ge.u %d0, %d0, %d14

# CHECK-INST: xor.ge.u %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x40,0x03]
xor.ge.u %d0, %d0, %d15

# CHECK-INST: xor.ge.u %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x40,0x03]
xor.ge.u %d0, %d1, %d0

# CHECK-INST: xor.ge.u %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x40,0x03]
xor.ge.u %d0, %d1, %d1

# CHECK-INST: xor.ge.u %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x40,0x03]
xor.ge.u %d0, %d1, %d14

# CHECK-INST: xor.ge.u %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x40,0x03]
xor.ge.u %d0, %d1, %d15

# CHECK-INST: xor.ge.u %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x40,0x03]
xor.ge.u %d0, %d14, %d0

# CHECK-INST: xor.ge.u %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x40,0x03]
xor.ge.u %d0, %d14, %d1

# CHECK-INST: xor.ge.u %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x40,0x03]
xor.ge.u %d0, %d14, %d14

# CHECK-INST: xor.ge.u %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x40,0x03]
xor.ge.u %d0, %d14, %d15

# CHECK-INST: xor.ge.u %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x40,0x03]
xor.ge.u %d0, %d15, %d0

# CHECK-INST: xor.ge.u %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x40,0x03]
xor.ge.u %d0, %d15, %d1

# CHECK-INST: xor.ge.u %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x40,0x03]
xor.ge.u %d0, %d15, %d14

# CHECK-INST: xor.ge.u %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x40,0x03]
xor.ge.u %d0, %d15, %d15

# CHECK-INST: xor.ge.u %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x40,0x13]
xor.ge.u %d1, %d0, %d0

# CHECK-INST: xor.ge.u %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x40,0x13]
xor.ge.u %d1, %d0, %d1

# CHECK-INST: xor.ge.u %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x40,0x13]
xor.ge.u %d1, %d0, %d14

# CHECK-INST: xor.ge.u %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x40,0x13]
xor.ge.u %d1, %d0, %d15

# CHECK-INST: xor.ge.u %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x40,0x13]
xor.ge.u %d1, %d1, %d0

# CHECK-INST: xor.ge.u %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x40,0x13]
xor.ge.u %d1, %d1, %d1

# CHECK-INST: xor.ge.u %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x40,0x13]
xor.ge.u %d1, %d1, %d14

# CHECK-INST: xor.ge.u %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x40,0x13]
xor.ge.u %d1, %d1, %d15

# CHECK-INST: xor.ge.u %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x40,0x13]
xor.ge.u %d1, %d14, %d0

# CHECK-INST: xor.ge.u %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x40,0x13]
xor.ge.u %d1, %d14, %d1

# CHECK-INST: xor.ge.u %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x40,0x13]
xor.ge.u %d1, %d14, %d14

# CHECK-INST: xor.ge.u %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x40,0x13]
xor.ge.u %d1, %d14, %d15

# CHECK-INST: xor.ge.u %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x40,0x13]
xor.ge.u %d1, %d15, %d0

# CHECK-INST: xor.ge.u %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x40,0x13]
xor.ge.u %d1, %d15, %d1

# CHECK-INST: xor.ge.u %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x40,0x13]
xor.ge.u %d1, %d15, %d14

# CHECK-INST: xor.ge.u %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x40,0x13]
xor.ge.u %d1, %d15, %d15

# CHECK-INST: xor.ge.u %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x40,0xe3]
xor.ge.u %d14, %d0, %d0

# CHECK-INST: xor.ge.u %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x40,0xe3]
xor.ge.u %d14, %d0, %d1

# CHECK-INST: xor.ge.u %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x40,0xe3]
xor.ge.u %d14, %d0, %d14

# CHECK-INST: xor.ge.u %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x40,0xe3]
xor.ge.u %d14, %d0, %d15

# CHECK-INST: xor.ge.u %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x40,0xe3]
xor.ge.u %d14, %d1, %d0

# CHECK-INST: xor.ge.u %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x40,0xe3]
xor.ge.u %d14, %d1, %d1

# CHECK-INST: xor.ge.u %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x40,0xe3]
xor.ge.u %d14, %d1, %d14

# CHECK-INST: xor.ge.u %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x40,0xe3]
xor.ge.u %d14, %d1, %d15

# CHECK-INST: xor.ge.u %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x40,0xe3]
xor.ge.u %d14, %d14, %d0

# CHECK-INST: xor.ge.u %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x40,0xe3]
xor.ge.u %d14, %d14, %d1

# CHECK-INST: xor.ge.u %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x40,0xe3]
xor.ge.u %d14, %d14, %d14

# CHECK-INST: xor.ge.u %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x40,0xe3]
xor.ge.u %d14, %d14, %d15

# CHECK-INST: xor.ge.u %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x40,0xe3]
xor.ge.u %d14, %d15, %d0

# CHECK-INST: xor.ge.u %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x40,0xe3]
xor.ge.u %d14, %d15, %d1

# CHECK-INST: xor.ge.u %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x40,0xe3]
xor.ge.u %d14, %d15, %d14

# CHECK-INST: xor.ge.u %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x40,0xe3]
xor.ge.u %d14, %d15, %d15

# CHECK-INST: xor.ge.u %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x40,0xf3]
xor.ge.u %d15, %d0, %d0

# CHECK-INST: xor.ge.u %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x40,0xf3]
xor.ge.u %d15, %d0, %d1

# CHECK-INST: xor.ge.u %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x40,0xf3]
xor.ge.u %d15, %d0, %d14

# CHECK-INST: xor.ge.u %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x40,0xf3]
xor.ge.u %d15, %d0, %d15

# CHECK-INST: xor.ge.u %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x40,0xf3]
xor.ge.u %d15, %d1, %d0

# CHECK-INST: xor.ge.u %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x40,0xf3]
xor.ge.u %d15, %d1, %d1

# CHECK-INST: xor.ge.u %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x40,0xf3]
xor.ge.u %d15, %d1, %d14

# CHECK-INST: xor.ge.u %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x40,0xf3]
xor.ge.u %d15, %d1, %d15

# CHECK-INST: xor.ge.u %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x40,0xf3]
xor.ge.u %d15, %d14, %d0

# CHECK-INST: xor.ge.u %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x40,0xf3]
xor.ge.u %d15, %d14, %d1

# CHECK-INST: xor.ge.u %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x40,0xf3]
xor.ge.u %d15, %d14, %d14

# CHECK-INST: xor.ge.u %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x40,0xf3]
xor.ge.u %d15, %d14, %d15

# CHECK-INST: xor.ge.u %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x40,0xf3]
xor.ge.u %d15, %d15, %d0

# CHECK-INST: xor.ge.u %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x40,0xf3]
xor.ge.u %d15, %d15, %d1

# CHECK-INST: xor.ge.u %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x40,0xf3]
xor.ge.u %d15, %d15, %d14

# CHECK-INST: xor.ge.u %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x40,0xf3]
xor.ge.u %d15, %d15, %d15

# CHECK-INST: xor.ge.u %d0, %d0, 271
# CHECK: encoding: [0x8b,0xf0,0x90,0x06]
xor.ge.u %d0, %d0, 271

# CHECK-INST: xor.ge.u %d0, %d0, 496
# CHECK: encoding: [0x8b,0x00,0x9f,0x06]
xor.ge.u %d0, %d0, 496

# CHECK-INST: xor.ge.u %d0, %d0, 511
# CHECK: encoding: [0x8b,0xf0,0x9f,0x06]
xor.ge.u %d0, %d0, 511

# CHECK-INST: xor.ge.u %d0, %d1, 271
# CHECK: encoding: [0x8b,0xf1,0x90,0x06]
xor.ge.u %d0, %d1, 271

# CHECK-INST: xor.ge.u %d0, %d1, 496
# CHECK: encoding: [0x8b,0x01,0x9f,0x06]
xor.ge.u %d0, %d1, 496

# CHECK-INST: xor.ge.u %d0, %d1, 511
# CHECK: encoding: [0x8b,0xf1,0x9f,0x06]
xor.ge.u %d0, %d1, 511

# CHECK-INST: xor.ge.u %d0, %d14, 271
# CHECK: encoding: [0x8b,0xfe,0x90,0x06]
xor.ge.u %d0, %d14, 271

# CHECK-INST: xor.ge.u %d0, %d14, 496
# CHECK: encoding: [0x8b,0x0e,0x9f,0x06]
xor.ge.u %d0, %d14, 496

# CHECK-INST: xor.ge.u %d0, %d14, 511
# CHECK: encoding: [0x8b,0xfe,0x9f,0x06]
xor.ge.u %d0, %d14, 511

# CHECK-INST: xor.ge.u %d0, %d15, 271
# CHECK: encoding: [0x8b,0xff,0x90,0x06]
xor.ge.u %d0, %d15, 271

# CHECK-INST: xor.ge.u %d0, %d15, 496
# CHECK: encoding: [0x8b,0x0f,0x9f,0x06]
xor.ge.u %d0, %d15, 496

# CHECK-INST: xor.ge.u %d0, %d15, 511
# CHECK: encoding: [0x8b,0xff,0x9f,0x06]
xor.ge.u %d0, %d15, 511

# CHECK-INST: xor.ge.u %d1, %d0, 271
# CHECK: encoding: [0x8b,0xf0,0x90,0x16]
xor.ge.u %d1, %d0, 271

# CHECK-INST: xor.ge.u %d1, %d0, 496
# CHECK: encoding: [0x8b,0x00,0x9f,0x16]
xor.ge.u %d1, %d0, 496

# CHECK-INST: xor.ge.u %d1, %d0, 511
# CHECK: encoding: [0x8b,0xf0,0x9f,0x16]
xor.ge.u %d1, %d0, 511

# CHECK-INST: xor.ge.u %d1, %d1, 271
# CHECK: encoding: [0x8b,0xf1,0x90,0x16]
xor.ge.u %d1, %d1, 271

# CHECK-INST: xor.ge.u %d1, %d1, 496
# CHECK: encoding: [0x8b,0x01,0x9f,0x16]
xor.ge.u %d1, %d1, 496

# CHECK-INST: xor.ge.u %d1, %d1, 511
# CHECK: encoding: [0x8b,0xf1,0x9f,0x16]
xor.ge.u %d1, %d1, 511

# CHECK-INST: xor.ge.u %d1, %d14, 271
# CHECK: encoding: [0x8b,0xfe,0x90,0x16]
xor.ge.u %d1, %d14, 271

# CHECK-INST: xor.ge.u %d1, %d14, 496
# CHECK: encoding: [0x8b,0x0e,0x9f,0x16]
xor.ge.u %d1, %d14, 496

# CHECK-INST: xor.ge.u %d1, %d14, 511
# CHECK: encoding: [0x8b,0xfe,0x9f,0x16]
xor.ge.u %d1, %d14, 511

# CHECK-INST: xor.ge.u %d1, %d15, 271
# CHECK: encoding: [0x8b,0xff,0x90,0x16]
xor.ge.u %d1, %d15, 271

# CHECK-INST: xor.ge.u %d1, %d15, 496
# CHECK: encoding: [0x8b,0x0f,0x9f,0x16]
xor.ge.u %d1, %d15, 496

# CHECK-INST: xor.ge.u %d1, %d15, 511
# CHECK: encoding: [0x8b,0xff,0x9f,0x16]
xor.ge.u %d1, %d15, 511

# CHECK-INST: xor.ge.u %d14, %d0, 271
# CHECK: encoding: [0x8b,0xf0,0x90,0xe6]
xor.ge.u %d14, %d0, 271

# CHECK-INST: xor.ge.u %d14, %d0, 496
# CHECK: encoding: [0x8b,0x00,0x9f,0xe6]
xor.ge.u %d14, %d0, 496

# CHECK-INST: xor.ge.u %d14, %d0, 511
# CHECK: encoding: [0x8b,0xf0,0x9f,0xe6]
xor.ge.u %d14, %d0, 511

# CHECK-INST: xor.ge.u %d14, %d1, 271
# CHECK: encoding: [0x8b,0xf1,0x90,0xe6]
xor.ge.u %d14, %d1, 271

# CHECK-INST: xor.ge.u %d14, %d1, 496
# CHECK: encoding: [0x8b,0x01,0x9f,0xe6]
xor.ge.u %d14, %d1, 496

# CHECK-INST: xor.ge.u %d14, %d1, 511
# CHECK: encoding: [0x8b,0xf1,0x9f,0xe6]
xor.ge.u %d14, %d1, 511

# CHECK-INST: xor.ge.u %d14, %d14, 271
# CHECK: encoding: [0x8b,0xfe,0x90,0xe6]
xor.ge.u %d14, %d14, 271

# CHECK-INST: xor.ge.u %d14, %d14, 496
# CHECK: encoding: [0x8b,0x0e,0x9f,0xe6]
xor.ge.u %d14, %d14, 496

# CHECK-INST: xor.ge.u %d14, %d14, 511
# CHECK: encoding: [0x8b,0xfe,0x9f,0xe6]
xor.ge.u %d14, %d14, 511

# CHECK-INST: xor.ge.u %d14, %d15, 271
# CHECK: encoding: [0x8b,0xff,0x90,0xe6]
xor.ge.u %d14, %d15, 271

# CHECK-INST: xor.ge.u %d14, %d15, 496
# CHECK: encoding: [0x8b,0x0f,0x9f,0xe6]
xor.ge.u %d14, %d15, 496

# CHECK-INST: xor.ge.u %d14, %d15, 511
# CHECK: encoding: [0x8b,0xff,0x9f,0xe6]
xor.ge.u %d14, %d15, 511

# CHECK-INST: xor.ge.u %d15, %d0, 271
# CHECK: encoding: [0x8b,0xf0,0x90,0xf6]
xor.ge.u %d15, %d0, 271

# CHECK-INST: xor.ge.u %d15, %d0, 496
# CHECK: encoding: [0x8b,0x00,0x9f,0xf6]
xor.ge.u %d15, %d0, 496

# CHECK-INST: xor.ge.u %d15, %d0, 511
# CHECK: encoding: [0x8b,0xf0,0x9f,0xf6]
xor.ge.u %d15, %d0, 511

# CHECK-INST: xor.ge.u %d15, %d1, 271
# CHECK: encoding: [0x8b,0xf1,0x90,0xf6]
xor.ge.u %d15, %d1, 271

# CHECK-INST: xor.ge.u %d15, %d1, 496
# CHECK: encoding: [0x8b,0x01,0x9f,0xf6]
xor.ge.u %d15, %d1, 496

# CHECK-INST: xor.ge.u %d15, %d1, 511
# CHECK: encoding: [0x8b,0xf1,0x9f,0xf6]
xor.ge.u %d15, %d1, 511

# CHECK-INST: xor.ge.u %d15, %d14, 271
# CHECK: encoding: [0x8b,0xfe,0x90,0xf6]
xor.ge.u %d15, %d14, 271

# CHECK-INST: xor.ge.u %d15, %d14, 496
# CHECK: encoding: [0x8b,0x0e,0x9f,0xf6]
xor.ge.u %d15, %d14, 496

# CHECK-INST: xor.ge.u %d15, %d14, 511
# CHECK: encoding: [0x8b,0xfe,0x9f,0xf6]
xor.ge.u %d15, %d14, 511

# CHECK-INST: xor.ge.u %d15, %d15, 271
# CHECK: encoding: [0x8b,0xff,0x90,0xf6]
xor.ge.u %d15, %d15, 271

# CHECK-INST: xor.ge.u %d15, %d15, 496
# CHECK: encoding: [0x8b,0x0f,0x9f,0xf6]
xor.ge.u %d15, %d15, 496

# CHECK-INST: xor.ge.u %d15, %d15, 511
# CHECK: encoding: [0x8b,0xff,0x9f,0xf6]
xor.ge.u %d15, %d15, 511

# CHECK-INST: xor.lt %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x10,0x03]
xor.lt %d0, %d0, %d0

# CHECK-INST: xor.lt %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x10,0x03]
xor.lt %d0, %d0, %d1

# CHECK-INST: xor.lt %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x10,0x03]
xor.lt %d0, %d0, %d14

# CHECK-INST: xor.lt %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x10,0x03]
xor.lt %d0, %d0, %d15

# CHECK-INST: xor.lt %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x10,0x03]
xor.lt %d0, %d1, %d0

# CHECK-INST: xor.lt %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x10,0x03]
xor.lt %d0, %d1, %d1

# CHECK-INST: xor.lt %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x10,0x03]
xor.lt %d0, %d1, %d14

# CHECK-INST: xor.lt %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x10,0x03]
xor.lt %d0, %d1, %d15

# CHECK-INST: xor.lt %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x10,0x03]
xor.lt %d0, %d14, %d0

# CHECK-INST: xor.lt %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x10,0x03]
xor.lt %d0, %d14, %d1

# CHECK-INST: xor.lt %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x10,0x03]
xor.lt %d0, %d14, %d14

# CHECK-INST: xor.lt %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x10,0x03]
xor.lt %d0, %d14, %d15

# CHECK-INST: xor.lt %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x10,0x03]
xor.lt %d0, %d15, %d0

# CHECK-INST: xor.lt %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x10,0x03]
xor.lt %d0, %d15, %d1

# CHECK-INST: xor.lt %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x10,0x03]
xor.lt %d0, %d15, %d14

# CHECK-INST: xor.lt %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x10,0x03]
xor.lt %d0, %d15, %d15

# CHECK-INST: xor.lt %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x10,0x13]
xor.lt %d1, %d0, %d0

# CHECK-INST: xor.lt %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x10,0x13]
xor.lt %d1, %d0, %d1

# CHECK-INST: xor.lt %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x10,0x13]
xor.lt %d1, %d0, %d14

# CHECK-INST: xor.lt %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x10,0x13]
xor.lt %d1, %d0, %d15

# CHECK-INST: xor.lt %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x10,0x13]
xor.lt %d1, %d1, %d0

# CHECK-INST: xor.lt %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x10,0x13]
xor.lt %d1, %d1, %d1

# CHECK-INST: xor.lt %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x10,0x13]
xor.lt %d1, %d1, %d14

# CHECK-INST: xor.lt %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x10,0x13]
xor.lt %d1, %d1, %d15

# CHECK-INST: xor.lt %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x10,0x13]
xor.lt %d1, %d14, %d0

# CHECK-INST: xor.lt %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x10,0x13]
xor.lt %d1, %d14, %d1

# CHECK-INST: xor.lt %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x10,0x13]
xor.lt %d1, %d14, %d14

# CHECK-INST: xor.lt %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x10,0x13]
xor.lt %d1, %d14, %d15

# CHECK-INST: xor.lt %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x10,0x13]
xor.lt %d1, %d15, %d0

# CHECK-INST: xor.lt %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x10,0x13]
xor.lt %d1, %d15, %d1

# CHECK-INST: xor.lt %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x10,0x13]
xor.lt %d1, %d15, %d14

# CHECK-INST: xor.lt %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x10,0x13]
xor.lt %d1, %d15, %d15

# CHECK-INST: xor.lt %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x10,0xe3]
xor.lt %d14, %d0, %d0

# CHECK-INST: xor.lt %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x10,0xe3]
xor.lt %d14, %d0, %d1

# CHECK-INST: xor.lt %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x10,0xe3]
xor.lt %d14, %d0, %d14

# CHECK-INST: xor.lt %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x10,0xe3]
xor.lt %d14, %d0, %d15

# CHECK-INST: xor.lt %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x10,0xe3]
xor.lt %d14, %d1, %d0

# CHECK-INST: xor.lt %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x10,0xe3]
xor.lt %d14, %d1, %d1

# CHECK-INST: xor.lt %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x10,0xe3]
xor.lt %d14, %d1, %d14

# CHECK-INST: xor.lt %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x10,0xe3]
xor.lt %d14, %d1, %d15

# CHECK-INST: xor.lt %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x10,0xe3]
xor.lt %d14, %d14, %d0

# CHECK-INST: xor.lt %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x10,0xe3]
xor.lt %d14, %d14, %d1

# CHECK-INST: xor.lt %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x10,0xe3]
xor.lt %d14, %d14, %d14

# CHECK-INST: xor.lt %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x10,0xe3]
xor.lt %d14, %d14, %d15

# CHECK-INST: xor.lt %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x10,0xe3]
xor.lt %d14, %d15, %d0

# CHECK-INST: xor.lt %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x10,0xe3]
xor.lt %d14, %d15, %d1

# CHECK-INST: xor.lt %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x10,0xe3]
xor.lt %d14, %d15, %d14

# CHECK-INST: xor.lt %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x10,0xe3]
xor.lt %d14, %d15, %d15

# CHECK-INST: xor.lt %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x10,0xf3]
xor.lt %d15, %d0, %d0

# CHECK-INST: xor.lt %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x10,0xf3]
xor.lt %d15, %d0, %d1

# CHECK-INST: xor.lt %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x10,0xf3]
xor.lt %d15, %d0, %d14

# CHECK-INST: xor.lt %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x10,0xf3]
xor.lt %d15, %d0, %d15

# CHECK-INST: xor.lt %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x10,0xf3]
xor.lt %d15, %d1, %d0

# CHECK-INST: xor.lt %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x10,0xf3]
xor.lt %d15, %d1, %d1

# CHECK-INST: xor.lt %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x10,0xf3]
xor.lt %d15, %d1, %d14

# CHECK-INST: xor.lt %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x10,0xf3]
xor.lt %d15, %d1, %d15

# CHECK-INST: xor.lt %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x10,0xf3]
xor.lt %d15, %d14, %d0

# CHECK-INST: xor.lt %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x10,0xf3]
xor.lt %d15, %d14, %d1

# CHECK-INST: xor.lt %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x10,0xf3]
xor.lt %d15, %d14, %d14

# CHECK-INST: xor.lt %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x10,0xf3]
xor.lt %d15, %d14, %d15

# CHECK-INST: xor.lt %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x10,0xf3]
xor.lt %d15, %d15, %d0

# CHECK-INST: xor.lt %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x10,0xf3]
xor.lt %d15, %d15, %d1

# CHECK-INST: xor.lt %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x10,0xf3]
xor.lt %d15, %d15, %d14

# CHECK-INST: xor.lt %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x10,0xf3]
xor.lt %d15, %d15, %d15

# CHECK-INST: xor.lt %d0, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x30,0x06]
xor.lt %d0, %d0, -256

# CHECK-INST: xor.lt %d0, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x37,0x06]
xor.lt %d0, %d0, -129

# CHECK-INST: xor.lt %d0, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x3f,0x06]
xor.lt %d0, %d0, -1

# CHECK-INST: xor.lt %d0, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x20,0x06]
xor.lt %d0, %d0, 0

# CHECK-INST: xor.lt %d0, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x20,0x06]
xor.lt %d0, %d0, 1

# CHECK-INST: xor.lt %d0, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x28,0x06]
xor.lt %d0, %d0, 128

# CHECK-INST: xor.lt %d0, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x2f,0x06]
xor.lt %d0, %d0, 255

# CHECK-INST: xor.lt %d0, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x30,0x06]
xor.lt %d0, %d1, -256

# CHECK-INST: xor.lt %d0, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x37,0x06]
xor.lt %d0, %d1, -129

# CHECK-INST: xor.lt %d0, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x3f,0x06]
xor.lt %d0, %d1, -1

# CHECK-INST: xor.lt %d0, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x20,0x06]
xor.lt %d0, %d1, 0

# CHECK-INST: xor.lt %d0, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x20,0x06]
xor.lt %d0, %d1, 1

# CHECK-INST: xor.lt %d0, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x28,0x06]
xor.lt %d0, %d1, 128

# CHECK-INST: xor.lt %d0, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x2f,0x06]
xor.lt %d0, %d1, 255

# CHECK-INST: xor.lt %d0, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x30,0x06]
xor.lt %d0, %d14, -256

# CHECK-INST: xor.lt %d0, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x37,0x06]
xor.lt %d0, %d14, -129

# CHECK-INST: xor.lt %d0, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x3f,0x06]
xor.lt %d0, %d14, -1

# CHECK-INST: xor.lt %d0, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x20,0x06]
xor.lt %d0, %d14, 0

# CHECK-INST: xor.lt %d0, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x20,0x06]
xor.lt %d0, %d14, 1

# CHECK-INST: xor.lt %d0, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x28,0x06]
xor.lt %d0, %d14, 128

# CHECK-INST: xor.lt %d0, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x2f,0x06]
xor.lt %d0, %d14, 255

# CHECK-INST: xor.lt %d0, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x30,0x06]
xor.lt %d0, %d15, -256

# CHECK-INST: xor.lt %d0, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x37,0x06]
xor.lt %d0, %d15, -129

# CHECK-INST: xor.lt %d0, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x3f,0x06]
xor.lt %d0, %d15, -1

# CHECK-INST: xor.lt %d0, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x20,0x06]
xor.lt %d0, %d15, 0

# CHECK-INST: xor.lt %d0, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x20,0x06]
xor.lt %d0, %d15, 1

# CHECK-INST: xor.lt %d0, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x28,0x06]
xor.lt %d0, %d15, 128

# CHECK-INST: xor.lt %d0, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x2f,0x06]
xor.lt %d0, %d15, 255

# CHECK-INST: xor.lt %d1, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x30,0x16]
xor.lt %d1, %d0, -256

# CHECK-INST: xor.lt %d1, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x37,0x16]
xor.lt %d1, %d0, -129

# CHECK-INST: xor.lt %d1, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x3f,0x16]
xor.lt %d1, %d0, -1

# CHECK-INST: xor.lt %d1, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x20,0x16]
xor.lt %d1, %d0, 0

# CHECK-INST: xor.lt %d1, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x20,0x16]
xor.lt %d1, %d0, 1

# CHECK-INST: xor.lt %d1, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x28,0x16]
xor.lt %d1, %d0, 128

# CHECK-INST: xor.lt %d1, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x2f,0x16]
xor.lt %d1, %d0, 255

# CHECK-INST: xor.lt %d1, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x30,0x16]
xor.lt %d1, %d1, -256

# CHECK-INST: xor.lt %d1, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x37,0x16]
xor.lt %d1, %d1, -129

# CHECK-INST: xor.lt %d1, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x3f,0x16]
xor.lt %d1, %d1, -1

# CHECK-INST: xor.lt %d1, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x20,0x16]
xor.lt %d1, %d1, 0

# CHECK-INST: xor.lt %d1, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x20,0x16]
xor.lt %d1, %d1, 1

# CHECK-INST: xor.lt %d1, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x28,0x16]
xor.lt %d1, %d1, 128

# CHECK-INST: xor.lt %d1, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x2f,0x16]
xor.lt %d1, %d1, 255

# CHECK-INST: xor.lt %d1, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x30,0x16]
xor.lt %d1, %d14, -256

# CHECK-INST: xor.lt %d1, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x37,0x16]
xor.lt %d1, %d14, -129

# CHECK-INST: xor.lt %d1, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x3f,0x16]
xor.lt %d1, %d14, -1

# CHECK-INST: xor.lt %d1, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x20,0x16]
xor.lt %d1, %d14, 0

# CHECK-INST: xor.lt %d1, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x20,0x16]
xor.lt %d1, %d14, 1

# CHECK-INST: xor.lt %d1, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x28,0x16]
xor.lt %d1, %d14, 128

# CHECK-INST: xor.lt %d1, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x2f,0x16]
xor.lt %d1, %d14, 255

# CHECK-INST: xor.lt %d1, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x30,0x16]
xor.lt %d1, %d15, -256

# CHECK-INST: xor.lt %d1, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x37,0x16]
xor.lt %d1, %d15, -129

# CHECK-INST: xor.lt %d1, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x3f,0x16]
xor.lt %d1, %d15, -1

# CHECK-INST: xor.lt %d1, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x20,0x16]
xor.lt %d1, %d15, 0

# CHECK-INST: xor.lt %d1, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x20,0x16]
xor.lt %d1, %d15, 1

# CHECK-INST: xor.lt %d1, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x28,0x16]
xor.lt %d1, %d15, 128

# CHECK-INST: xor.lt %d1, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x2f,0x16]
xor.lt %d1, %d15, 255

# CHECK-INST: xor.lt %d14, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x30,0xe6]
xor.lt %d14, %d0, -256

# CHECK-INST: xor.lt %d14, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x37,0xe6]
xor.lt %d14, %d0, -129

# CHECK-INST: xor.lt %d14, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x3f,0xe6]
xor.lt %d14, %d0, -1

# CHECK-INST: xor.lt %d14, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x20,0xe6]
xor.lt %d14, %d0, 0

# CHECK-INST: xor.lt %d14, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x20,0xe6]
xor.lt %d14, %d0, 1

# CHECK-INST: xor.lt %d14, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x28,0xe6]
xor.lt %d14, %d0, 128

# CHECK-INST: xor.lt %d14, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x2f,0xe6]
xor.lt %d14, %d0, 255

# CHECK-INST: xor.lt %d14, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x30,0xe6]
xor.lt %d14, %d1, -256

# CHECK-INST: xor.lt %d14, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x37,0xe6]
xor.lt %d14, %d1, -129

# CHECK-INST: xor.lt %d14, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x3f,0xe6]
xor.lt %d14, %d1, -1

# CHECK-INST: xor.lt %d14, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x20,0xe6]
xor.lt %d14, %d1, 0

# CHECK-INST: xor.lt %d14, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x20,0xe6]
xor.lt %d14, %d1, 1

# CHECK-INST: xor.lt %d14, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x28,0xe6]
xor.lt %d14, %d1, 128

# CHECK-INST: xor.lt %d14, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x2f,0xe6]
xor.lt %d14, %d1, 255

# CHECK-INST: xor.lt %d14, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x30,0xe6]
xor.lt %d14, %d14, -256

# CHECK-INST: xor.lt %d14, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x37,0xe6]
xor.lt %d14, %d14, -129

# CHECK-INST: xor.lt %d14, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x3f,0xe6]
xor.lt %d14, %d14, -1

# CHECK-INST: xor.lt %d14, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x20,0xe6]
xor.lt %d14, %d14, 0

# CHECK-INST: xor.lt %d14, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x20,0xe6]
xor.lt %d14, %d14, 1

# CHECK-INST: xor.lt %d14, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x28,0xe6]
xor.lt %d14, %d14, 128

# CHECK-INST: xor.lt %d14, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x2f,0xe6]
xor.lt %d14, %d14, 255

# CHECK-INST: xor.lt %d14, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x30,0xe6]
xor.lt %d14, %d15, -256

# CHECK-INST: xor.lt %d14, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x37,0xe6]
xor.lt %d14, %d15, -129

# CHECK-INST: xor.lt %d14, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x3f,0xe6]
xor.lt %d14, %d15, -1

# CHECK-INST: xor.lt %d14, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x20,0xe6]
xor.lt %d14, %d15, 0

# CHECK-INST: xor.lt %d14, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x20,0xe6]
xor.lt %d14, %d15, 1

# CHECK-INST: xor.lt %d14, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x28,0xe6]
xor.lt %d14, %d15, 128

# CHECK-INST: xor.lt %d14, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x2f,0xe6]
xor.lt %d14, %d15, 255

# CHECK-INST: xor.lt %d15, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x30,0xf6]
xor.lt %d15, %d0, -256

# CHECK-INST: xor.lt %d15, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x37,0xf6]
xor.lt %d15, %d0, -129

# CHECK-INST: xor.lt %d15, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x3f,0xf6]
xor.lt %d15, %d0, -1

# CHECK-INST: xor.lt %d15, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x20,0xf6]
xor.lt %d15, %d0, 0

# CHECK-INST: xor.lt %d15, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x20,0xf6]
xor.lt %d15, %d0, 1

# CHECK-INST: xor.lt %d15, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x28,0xf6]
xor.lt %d15, %d0, 128

# CHECK-INST: xor.lt %d15, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x2f,0xf6]
xor.lt %d15, %d0, 255

# CHECK-INST: xor.lt %d15, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x30,0xf6]
xor.lt %d15, %d1, -256

# CHECK-INST: xor.lt %d15, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x37,0xf6]
xor.lt %d15, %d1, -129

# CHECK-INST: xor.lt %d15, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x3f,0xf6]
xor.lt %d15, %d1, -1

# CHECK-INST: xor.lt %d15, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x20,0xf6]
xor.lt %d15, %d1, 0

# CHECK-INST: xor.lt %d15, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x20,0xf6]
xor.lt %d15, %d1, 1

# CHECK-INST: xor.lt %d15, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x28,0xf6]
xor.lt %d15, %d1, 128

# CHECK-INST: xor.lt %d15, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x2f,0xf6]
xor.lt %d15, %d1, 255

# CHECK-INST: xor.lt %d15, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x30,0xf6]
xor.lt %d15, %d14, -256

# CHECK-INST: xor.lt %d15, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x37,0xf6]
xor.lt %d15, %d14, -129

# CHECK-INST: xor.lt %d15, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x3f,0xf6]
xor.lt %d15, %d14, -1

# CHECK-INST: xor.lt %d15, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x20,0xf6]
xor.lt %d15, %d14, 0

# CHECK-INST: xor.lt %d15, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x20,0xf6]
xor.lt %d15, %d14, 1

# CHECK-INST: xor.lt %d15, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x28,0xf6]
xor.lt %d15, %d14, 128

# CHECK-INST: xor.lt %d15, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x2f,0xf6]
xor.lt %d15, %d14, 255

# CHECK-INST: xor.lt %d15, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x30,0xf6]
xor.lt %d15, %d15, -256

# CHECK-INST: xor.lt %d15, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x37,0xf6]
xor.lt %d15, %d15, -129

# CHECK-INST: xor.lt %d15, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x3f,0xf6]
xor.lt %d15, %d15, -1

# CHECK-INST: xor.lt %d15, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x20,0xf6]
xor.lt %d15, %d15, 0

# CHECK-INST: xor.lt %d15, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x20,0xf6]
xor.lt %d15, %d15, 1

# CHECK-INST: xor.lt %d15, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x28,0xf6]
xor.lt %d15, %d15, 128

# CHECK-INST: xor.lt %d15, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x2f,0xf6]
xor.lt %d15, %d15, 255

# CHECK-INST: xor.lt.u %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x20,0x03]
xor.lt.u %d0, %d0, %d0

# CHECK-INST: xor.lt.u %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x20,0x03]
xor.lt.u %d0, %d0, %d1

# CHECK-INST: xor.lt.u %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x20,0x03]
xor.lt.u %d0, %d0, %d14

# CHECK-INST: xor.lt.u %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x20,0x03]
xor.lt.u %d0, %d0, %d15

# CHECK-INST: xor.lt.u %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x20,0x03]
xor.lt.u %d0, %d1, %d0

# CHECK-INST: xor.lt.u %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x20,0x03]
xor.lt.u %d0, %d1, %d1

# CHECK-INST: xor.lt.u %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x20,0x03]
xor.lt.u %d0, %d1, %d14

# CHECK-INST: xor.lt.u %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x20,0x03]
xor.lt.u %d0, %d1, %d15

# CHECK-INST: xor.lt.u %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x20,0x03]
xor.lt.u %d0, %d14, %d0

# CHECK-INST: xor.lt.u %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x20,0x03]
xor.lt.u %d0, %d14, %d1

# CHECK-INST: xor.lt.u %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x20,0x03]
xor.lt.u %d0, %d14, %d14

# CHECK-INST: xor.lt.u %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x20,0x03]
xor.lt.u %d0, %d14, %d15

# CHECK-INST: xor.lt.u %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x20,0x03]
xor.lt.u %d0, %d15, %d0

# CHECK-INST: xor.lt.u %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x20,0x03]
xor.lt.u %d0, %d15, %d1

# CHECK-INST: xor.lt.u %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x20,0x03]
xor.lt.u %d0, %d15, %d14

# CHECK-INST: xor.lt.u %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x20,0x03]
xor.lt.u %d0, %d15, %d15

# CHECK-INST: xor.lt.u %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x20,0x13]
xor.lt.u %d1, %d0, %d0

# CHECK-INST: xor.lt.u %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x20,0x13]
xor.lt.u %d1, %d0, %d1

# CHECK-INST: xor.lt.u %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x20,0x13]
xor.lt.u %d1, %d0, %d14

# CHECK-INST: xor.lt.u %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x20,0x13]
xor.lt.u %d1, %d0, %d15

# CHECK-INST: xor.lt.u %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x20,0x13]
xor.lt.u %d1, %d1, %d0

# CHECK-INST: xor.lt.u %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x20,0x13]
xor.lt.u %d1, %d1, %d1

# CHECK-INST: xor.lt.u %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x20,0x13]
xor.lt.u %d1, %d1, %d14

# CHECK-INST: xor.lt.u %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x20,0x13]
xor.lt.u %d1, %d1, %d15

# CHECK-INST: xor.lt.u %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x20,0x13]
xor.lt.u %d1, %d14, %d0

# CHECK-INST: xor.lt.u %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x20,0x13]
xor.lt.u %d1, %d14, %d1

# CHECK-INST: xor.lt.u %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x20,0x13]
xor.lt.u %d1, %d14, %d14

# CHECK-INST: xor.lt.u %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x20,0x13]
xor.lt.u %d1, %d14, %d15

# CHECK-INST: xor.lt.u %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x20,0x13]
xor.lt.u %d1, %d15, %d0

# CHECK-INST: xor.lt.u %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x20,0x13]
xor.lt.u %d1, %d15, %d1

# CHECK-INST: xor.lt.u %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x20,0x13]
xor.lt.u %d1, %d15, %d14

# CHECK-INST: xor.lt.u %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x20,0x13]
xor.lt.u %d1, %d15, %d15

# CHECK-INST: xor.lt.u %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x20,0xe3]
xor.lt.u %d14, %d0, %d0

# CHECK-INST: xor.lt.u %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x20,0xe3]
xor.lt.u %d14, %d0, %d1

# CHECK-INST: xor.lt.u %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x20,0xe3]
xor.lt.u %d14, %d0, %d14

# CHECK-INST: xor.lt.u %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x20,0xe3]
xor.lt.u %d14, %d0, %d15

# CHECK-INST: xor.lt.u %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x20,0xe3]
xor.lt.u %d14, %d1, %d0

# CHECK-INST: xor.lt.u %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x20,0xe3]
xor.lt.u %d14, %d1, %d1

# CHECK-INST: xor.lt.u %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x20,0xe3]
xor.lt.u %d14, %d1, %d14

# CHECK-INST: xor.lt.u %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x20,0xe3]
xor.lt.u %d14, %d1, %d15

# CHECK-INST: xor.lt.u %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x20,0xe3]
xor.lt.u %d14, %d14, %d0

# CHECK-INST: xor.lt.u %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x20,0xe3]
xor.lt.u %d14, %d14, %d1

# CHECK-INST: xor.lt.u %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x20,0xe3]
xor.lt.u %d14, %d14, %d14

# CHECK-INST: xor.lt.u %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x20,0xe3]
xor.lt.u %d14, %d14, %d15

# CHECK-INST: xor.lt.u %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x20,0xe3]
xor.lt.u %d14, %d15, %d0

# CHECK-INST: xor.lt.u %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x20,0xe3]
xor.lt.u %d14, %d15, %d1

# CHECK-INST: xor.lt.u %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x20,0xe3]
xor.lt.u %d14, %d15, %d14

# CHECK-INST: xor.lt.u %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x20,0xe3]
xor.lt.u %d14, %d15, %d15

# CHECK-INST: xor.lt.u %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x20,0xf3]
xor.lt.u %d15, %d0, %d0

# CHECK-INST: xor.lt.u %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x20,0xf3]
xor.lt.u %d15, %d0, %d1

# CHECK-INST: xor.lt.u %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x20,0xf3]
xor.lt.u %d15, %d0, %d14

# CHECK-INST: xor.lt.u %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x20,0xf3]
xor.lt.u %d15, %d0, %d15

# CHECK-INST: xor.lt.u %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x20,0xf3]
xor.lt.u %d15, %d1, %d0

# CHECK-INST: xor.lt.u %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x20,0xf3]
xor.lt.u %d15, %d1, %d1

# CHECK-INST: xor.lt.u %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x20,0xf3]
xor.lt.u %d15, %d1, %d14

# CHECK-INST: xor.lt.u %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x20,0xf3]
xor.lt.u %d15, %d1, %d15

# CHECK-INST: xor.lt.u %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x20,0xf3]
xor.lt.u %d15, %d14, %d0

# CHECK-INST: xor.lt.u %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x20,0xf3]
xor.lt.u %d15, %d14, %d1

# CHECK-INST: xor.lt.u %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x20,0xf3]
xor.lt.u %d15, %d14, %d14

# CHECK-INST: xor.lt.u %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x20,0xf3]
xor.lt.u %d15, %d14, %d15

# CHECK-INST: xor.lt.u %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x20,0xf3]
xor.lt.u %d15, %d15, %d0

# CHECK-INST: xor.lt.u %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x20,0xf3]
xor.lt.u %d15, %d15, %d1

# CHECK-INST: xor.lt.u %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x20,0xf3]
xor.lt.u %d15, %d15, %d14

# CHECK-INST: xor.lt.u %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x20,0xf3]
xor.lt.u %d15, %d15, %d15

# CHECK-INST: xor.lt.u %d0, %d0, 271
# CHECK: encoding: [0x8b,0xf0,0x50,0x06]
xor.lt.u %d0, %d0, 271

# CHECK-INST: xor.lt.u %d0, %d0, 496
# CHECK: encoding: [0x8b,0x00,0x5f,0x06]
xor.lt.u %d0, %d0, 496

# CHECK-INST: xor.lt.u %d0, %d0, 511
# CHECK: encoding: [0x8b,0xf0,0x5f,0x06]
xor.lt.u %d0, %d0, 511

# CHECK-INST: xor.lt.u %d0, %d1, 271
# CHECK: encoding: [0x8b,0xf1,0x50,0x06]
xor.lt.u %d0, %d1, 271

# CHECK-INST: xor.lt.u %d0, %d1, 496
# CHECK: encoding: [0x8b,0x01,0x5f,0x06]
xor.lt.u %d0, %d1, 496

# CHECK-INST: xor.lt.u %d0, %d1, 511
# CHECK: encoding: [0x8b,0xf1,0x5f,0x06]
xor.lt.u %d0, %d1, 511

# CHECK-INST: xor.lt.u %d0, %d14, 271
# CHECK: encoding: [0x8b,0xfe,0x50,0x06]
xor.lt.u %d0, %d14, 271

# CHECK-INST: xor.lt.u %d0, %d14, 496
# CHECK: encoding: [0x8b,0x0e,0x5f,0x06]
xor.lt.u %d0, %d14, 496

# CHECK-INST: xor.lt.u %d0, %d14, 511
# CHECK: encoding: [0x8b,0xfe,0x5f,0x06]
xor.lt.u %d0, %d14, 511

# CHECK-INST: xor.lt.u %d0, %d15, 271
# CHECK: encoding: [0x8b,0xff,0x50,0x06]
xor.lt.u %d0, %d15, 271

# CHECK-INST: xor.lt.u %d0, %d15, 496
# CHECK: encoding: [0x8b,0x0f,0x5f,0x06]
xor.lt.u %d0, %d15, 496

# CHECK-INST: xor.lt.u %d0, %d15, 511
# CHECK: encoding: [0x8b,0xff,0x5f,0x06]
xor.lt.u %d0, %d15, 511

# CHECK-INST: xor.lt.u %d1, %d0, 271
# CHECK: encoding: [0x8b,0xf0,0x50,0x16]
xor.lt.u %d1, %d0, 271

# CHECK-INST: xor.lt.u %d1, %d0, 496
# CHECK: encoding: [0x8b,0x00,0x5f,0x16]
xor.lt.u %d1, %d0, 496

# CHECK-INST: xor.lt.u %d1, %d0, 511
# CHECK: encoding: [0x8b,0xf0,0x5f,0x16]
xor.lt.u %d1, %d0, 511

# CHECK-INST: xor.lt.u %d1, %d1, 271
# CHECK: encoding: [0x8b,0xf1,0x50,0x16]
xor.lt.u %d1, %d1, 271

# CHECK-INST: xor.lt.u %d1, %d1, 496
# CHECK: encoding: [0x8b,0x01,0x5f,0x16]
xor.lt.u %d1, %d1, 496

# CHECK-INST: xor.lt.u %d1, %d1, 511
# CHECK: encoding: [0x8b,0xf1,0x5f,0x16]
xor.lt.u %d1, %d1, 511

# CHECK-INST: xor.lt.u %d1, %d14, 271
# CHECK: encoding: [0x8b,0xfe,0x50,0x16]
xor.lt.u %d1, %d14, 271

# CHECK-INST: xor.lt.u %d1, %d14, 496
# CHECK: encoding: [0x8b,0x0e,0x5f,0x16]
xor.lt.u %d1, %d14, 496

# CHECK-INST: xor.lt.u %d1, %d14, 511
# CHECK: encoding: [0x8b,0xfe,0x5f,0x16]
xor.lt.u %d1, %d14, 511

# CHECK-INST: xor.lt.u %d1, %d15, 271
# CHECK: encoding: [0x8b,0xff,0x50,0x16]
xor.lt.u %d1, %d15, 271

# CHECK-INST: xor.lt.u %d1, %d15, 496
# CHECK: encoding: [0x8b,0x0f,0x5f,0x16]
xor.lt.u %d1, %d15, 496

# CHECK-INST: xor.lt.u %d1, %d15, 511
# CHECK: encoding: [0x8b,0xff,0x5f,0x16]
xor.lt.u %d1, %d15, 511

# CHECK-INST: xor.lt.u %d14, %d0, 271
# CHECK: encoding: [0x8b,0xf0,0x50,0xe6]
xor.lt.u %d14, %d0, 271

# CHECK-INST: xor.lt.u %d14, %d0, 496
# CHECK: encoding: [0x8b,0x00,0x5f,0xe6]
xor.lt.u %d14, %d0, 496

# CHECK-INST: xor.lt.u %d14, %d0, 511
# CHECK: encoding: [0x8b,0xf0,0x5f,0xe6]
xor.lt.u %d14, %d0, 511

# CHECK-INST: xor.lt.u %d14, %d1, 271
# CHECK: encoding: [0x8b,0xf1,0x50,0xe6]
xor.lt.u %d14, %d1, 271

# CHECK-INST: xor.lt.u %d14, %d1, 496
# CHECK: encoding: [0x8b,0x01,0x5f,0xe6]
xor.lt.u %d14, %d1, 496

# CHECK-INST: xor.lt.u %d14, %d1, 511
# CHECK: encoding: [0x8b,0xf1,0x5f,0xe6]
xor.lt.u %d14, %d1, 511

# CHECK-INST: xor.lt.u %d14, %d14, 271
# CHECK: encoding: [0x8b,0xfe,0x50,0xe6]
xor.lt.u %d14, %d14, 271

# CHECK-INST: xor.lt.u %d14, %d14, 496
# CHECK: encoding: [0x8b,0x0e,0x5f,0xe6]
xor.lt.u %d14, %d14, 496

# CHECK-INST: xor.lt.u %d14, %d14, 511
# CHECK: encoding: [0x8b,0xfe,0x5f,0xe6]
xor.lt.u %d14, %d14, 511

# CHECK-INST: xor.lt.u %d14, %d15, 271
# CHECK: encoding: [0x8b,0xff,0x50,0xe6]
xor.lt.u %d14, %d15, 271

# CHECK-INST: xor.lt.u %d14, %d15, 496
# CHECK: encoding: [0x8b,0x0f,0x5f,0xe6]
xor.lt.u %d14, %d15, 496

# CHECK-INST: xor.lt.u %d14, %d15, 511
# CHECK: encoding: [0x8b,0xff,0x5f,0xe6]
xor.lt.u %d14, %d15, 511

# CHECK-INST: xor.lt.u %d15, %d0, 271
# CHECK: encoding: [0x8b,0xf0,0x50,0xf6]
xor.lt.u %d15, %d0, 271

# CHECK-INST: xor.lt.u %d15, %d0, 496
# CHECK: encoding: [0x8b,0x00,0x5f,0xf6]
xor.lt.u %d15, %d0, 496

# CHECK-INST: xor.lt.u %d15, %d0, 511
# CHECK: encoding: [0x8b,0xf0,0x5f,0xf6]
xor.lt.u %d15, %d0, 511

# CHECK-INST: xor.lt.u %d15, %d1, 271
# CHECK: encoding: [0x8b,0xf1,0x50,0xf6]
xor.lt.u %d15, %d1, 271

# CHECK-INST: xor.lt.u %d15, %d1, 496
# CHECK: encoding: [0x8b,0x01,0x5f,0xf6]
xor.lt.u %d15, %d1, 496

# CHECK-INST: xor.lt.u %d15, %d1, 511
# CHECK: encoding: [0x8b,0xf1,0x5f,0xf6]
xor.lt.u %d15, %d1, 511

# CHECK-INST: xor.lt.u %d15, %d14, 271
# CHECK: encoding: [0x8b,0xfe,0x50,0xf6]
xor.lt.u %d15, %d14, 271

# CHECK-INST: xor.lt.u %d15, %d14, 496
# CHECK: encoding: [0x8b,0x0e,0x5f,0xf6]
xor.lt.u %d15, %d14, 496

# CHECK-INST: xor.lt.u %d15, %d14, 511
# CHECK: encoding: [0x8b,0xfe,0x5f,0xf6]
xor.lt.u %d15, %d14, 511

# CHECK-INST: xor.lt.u %d15, %d15, 271
# CHECK: encoding: [0x8b,0xff,0x50,0xf6]
xor.lt.u %d15, %d15, 271

# CHECK-INST: xor.lt.u %d15, %d15, 496
# CHECK: encoding: [0x8b,0x0f,0x5f,0xf6]
xor.lt.u %d15, %d15, 496

# CHECK-INST: xor.lt.u %d15, %d15, 511
# CHECK: encoding: [0x8b,0xff,0x5f,0xf6]
xor.lt.u %d15, %d15, 511

# CHECK-INST: xor.ne %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x00,0x03]
xor.ne %d0, %d0, %d0

# CHECK-INST: xor.ne %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x00,0x03]
xor.ne %d0, %d0, %d1

# CHECK-INST: xor.ne %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x00,0x03]
xor.ne %d0, %d0, %d14

# CHECK-INST: xor.ne %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x00,0x03]
xor.ne %d0, %d0, %d15

# CHECK-INST: xor.ne %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x00,0x03]
xor.ne %d0, %d1, %d0

# CHECK-INST: xor.ne %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x00,0x03]
xor.ne %d0, %d1, %d1

# CHECK-INST: xor.ne %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x00,0x03]
xor.ne %d0, %d1, %d14

# CHECK-INST: xor.ne %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x00,0x03]
xor.ne %d0, %d1, %d15

# CHECK-INST: xor.ne %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x00,0x03]
xor.ne %d0, %d14, %d0

# CHECK-INST: xor.ne %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x00,0x03]
xor.ne %d0, %d14, %d1

# CHECK-INST: xor.ne %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x00,0x03]
xor.ne %d0, %d14, %d14

# CHECK-INST: xor.ne %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x00,0x03]
xor.ne %d0, %d14, %d15

# CHECK-INST: xor.ne %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x00,0x03]
xor.ne %d0, %d15, %d0

# CHECK-INST: xor.ne %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x00,0x03]
xor.ne %d0, %d15, %d1

# CHECK-INST: xor.ne %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x00,0x03]
xor.ne %d0, %d15, %d14

# CHECK-INST: xor.ne %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x00,0x03]
xor.ne %d0, %d15, %d15

# CHECK-INST: xor.ne %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x00,0x13]
xor.ne %d1, %d0, %d0

# CHECK-INST: xor.ne %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x00,0x13]
xor.ne %d1, %d0, %d1

# CHECK-INST: xor.ne %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x00,0x13]
xor.ne %d1, %d0, %d14

# CHECK-INST: xor.ne %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x00,0x13]
xor.ne %d1, %d0, %d15

# CHECK-INST: xor.ne %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x00,0x13]
xor.ne %d1, %d1, %d0

# CHECK-INST: xor.ne %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x00,0x13]
xor.ne %d1, %d1, %d1

# CHECK-INST: xor.ne %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x00,0x13]
xor.ne %d1, %d1, %d14

# CHECK-INST: xor.ne %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x00,0x13]
xor.ne %d1, %d1, %d15

# CHECK-INST: xor.ne %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x00,0x13]
xor.ne %d1, %d14, %d0

# CHECK-INST: xor.ne %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x00,0x13]
xor.ne %d1, %d14, %d1

# CHECK-INST: xor.ne %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x00,0x13]
xor.ne %d1, %d14, %d14

# CHECK-INST: xor.ne %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x00,0x13]
xor.ne %d1, %d14, %d15

# CHECK-INST: xor.ne %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x00,0x13]
xor.ne %d1, %d15, %d0

# CHECK-INST: xor.ne %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x00,0x13]
xor.ne %d1, %d15, %d1

# CHECK-INST: xor.ne %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x00,0x13]
xor.ne %d1, %d15, %d14

# CHECK-INST: xor.ne %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x00,0x13]
xor.ne %d1, %d15, %d15

# CHECK-INST: xor.ne %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x00,0xe3]
xor.ne %d14, %d0, %d0

# CHECK-INST: xor.ne %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x00,0xe3]
xor.ne %d14, %d0, %d1

# CHECK-INST: xor.ne %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x00,0xe3]
xor.ne %d14, %d0, %d14

# CHECK-INST: xor.ne %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x00,0xe3]
xor.ne %d14, %d0, %d15

# CHECK-INST: xor.ne %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x00,0xe3]
xor.ne %d14, %d1, %d0

# CHECK-INST: xor.ne %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x00,0xe3]
xor.ne %d14, %d1, %d1

# CHECK-INST: xor.ne %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x00,0xe3]
xor.ne %d14, %d1, %d14

# CHECK-INST: xor.ne %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x00,0xe3]
xor.ne %d14, %d1, %d15

# CHECK-INST: xor.ne %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x00,0xe3]
xor.ne %d14, %d14, %d0

# CHECK-INST: xor.ne %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x00,0xe3]
xor.ne %d14, %d14, %d1

# CHECK-INST: xor.ne %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x00,0xe3]
xor.ne %d14, %d14, %d14

# CHECK-INST: xor.ne %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x00,0xe3]
xor.ne %d14, %d14, %d15

# CHECK-INST: xor.ne %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x00,0xe3]
xor.ne %d14, %d15, %d0

# CHECK-INST: xor.ne %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x00,0xe3]
xor.ne %d14, %d15, %d1

# CHECK-INST: xor.ne %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x00,0xe3]
xor.ne %d14, %d15, %d14

# CHECK-INST: xor.ne %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x00,0xe3]
xor.ne %d14, %d15, %d15

# CHECK-INST: xor.ne %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x00,0xf3]
xor.ne %d15, %d0, %d0

# CHECK-INST: xor.ne %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x00,0xf3]
xor.ne %d15, %d0, %d1

# CHECK-INST: xor.ne %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x00,0xf3]
xor.ne %d15, %d0, %d14

# CHECK-INST: xor.ne %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x00,0xf3]
xor.ne %d15, %d0, %d15

# CHECK-INST: xor.ne %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x00,0xf3]
xor.ne %d15, %d1, %d0

# CHECK-INST: xor.ne %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x00,0xf3]
xor.ne %d15, %d1, %d1

# CHECK-INST: xor.ne %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x00,0xf3]
xor.ne %d15, %d1, %d14

# CHECK-INST: xor.ne %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x00,0xf3]
xor.ne %d15, %d1, %d15

# CHECK-INST: xor.ne %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x00,0xf3]
xor.ne %d15, %d14, %d0

# CHECK-INST: xor.ne %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x00,0xf3]
xor.ne %d15, %d14, %d1

# CHECK-INST: xor.ne %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x00,0xf3]
xor.ne %d15, %d14, %d14

# CHECK-INST: xor.ne %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x00,0xf3]
xor.ne %d15, %d14, %d15

# CHECK-INST: xor.ne %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x00,0xf3]
xor.ne %d15, %d15, %d0

# CHECK-INST: xor.ne %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x00,0xf3]
xor.ne %d15, %d15, %d1

# CHECK-INST: xor.ne %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x00,0xf3]
xor.ne %d15, %d15, %d14

# CHECK-INST: xor.ne %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x00,0xf3]
xor.ne %d15, %d15, %d15

# CHECK-INST: xor.ne %d0, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x10,0x06]
xor.ne %d0, %d0, -256

# CHECK-INST: xor.ne %d0, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x17,0x06]
xor.ne %d0, %d0, -129

# CHECK-INST: xor.ne %d0, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x1f,0x06]
xor.ne %d0, %d0, -1

# CHECK-INST: xor.ne %d0, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x00,0x06]
xor.ne %d0, %d0, 0

# CHECK-INST: xor.ne %d0, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x00,0x06]
xor.ne %d0, %d0, 1

# CHECK-INST: xor.ne %d0, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x08,0x06]
xor.ne %d0, %d0, 128

# CHECK-INST: xor.ne %d0, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x0f,0x06]
xor.ne %d0, %d0, 255

# CHECK-INST: xor.ne %d0, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x10,0x06]
xor.ne %d0, %d1, -256

# CHECK-INST: xor.ne %d0, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x17,0x06]
xor.ne %d0, %d1, -129

# CHECK-INST: xor.ne %d0, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x1f,0x06]
xor.ne %d0, %d1, -1

# CHECK-INST: xor.ne %d0, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x00,0x06]
xor.ne %d0, %d1, 0

# CHECK-INST: xor.ne %d0, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x00,0x06]
xor.ne %d0, %d1, 1

# CHECK-INST: xor.ne %d0, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x08,0x06]
xor.ne %d0, %d1, 128

# CHECK-INST: xor.ne %d0, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x0f,0x06]
xor.ne %d0, %d1, 255

# CHECK-INST: xor.ne %d0, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x10,0x06]
xor.ne %d0, %d14, -256

# CHECK-INST: xor.ne %d0, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x17,0x06]
xor.ne %d0, %d14, -129

# CHECK-INST: xor.ne %d0, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x1f,0x06]
xor.ne %d0, %d14, -1

# CHECK-INST: xor.ne %d0, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x00,0x06]
xor.ne %d0, %d14, 0

# CHECK-INST: xor.ne %d0, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x00,0x06]
xor.ne %d0, %d14, 1

# CHECK-INST: xor.ne %d0, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x08,0x06]
xor.ne %d0, %d14, 128

# CHECK-INST: xor.ne %d0, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x0f,0x06]
xor.ne %d0, %d14, 255

# CHECK-INST: xor.ne %d0, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x10,0x06]
xor.ne %d0, %d15, -256

# CHECK-INST: xor.ne %d0, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x17,0x06]
xor.ne %d0, %d15, -129

# CHECK-INST: xor.ne %d0, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x1f,0x06]
xor.ne %d0, %d15, -1

# CHECK-INST: xor.ne %d0, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x00,0x06]
xor.ne %d0, %d15, 0

# CHECK-INST: xor.ne %d0, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x00,0x06]
xor.ne %d0, %d15, 1

# CHECK-INST: xor.ne %d0, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x08,0x06]
xor.ne %d0, %d15, 128

# CHECK-INST: xor.ne %d0, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x0f,0x06]
xor.ne %d0, %d15, 255

# CHECK-INST: xor.ne %d1, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x10,0x16]
xor.ne %d1, %d0, -256

# CHECK-INST: xor.ne %d1, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x17,0x16]
xor.ne %d1, %d0, -129

# CHECK-INST: xor.ne %d1, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x1f,0x16]
xor.ne %d1, %d0, -1

# CHECK-INST: xor.ne %d1, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x00,0x16]
xor.ne %d1, %d0, 0

# CHECK-INST: xor.ne %d1, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x00,0x16]
xor.ne %d1, %d0, 1

# CHECK-INST: xor.ne %d1, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x08,0x16]
xor.ne %d1, %d0, 128

# CHECK-INST: xor.ne %d1, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x0f,0x16]
xor.ne %d1, %d0, 255

# CHECK-INST: xor.ne %d1, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x10,0x16]
xor.ne %d1, %d1, -256

# CHECK-INST: xor.ne %d1, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x17,0x16]
xor.ne %d1, %d1, -129

# CHECK-INST: xor.ne %d1, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x1f,0x16]
xor.ne %d1, %d1, -1

# CHECK-INST: xor.ne %d1, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x00,0x16]
xor.ne %d1, %d1, 0

# CHECK-INST: xor.ne %d1, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x00,0x16]
xor.ne %d1, %d1, 1

# CHECK-INST: xor.ne %d1, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x08,0x16]
xor.ne %d1, %d1, 128

# CHECK-INST: xor.ne %d1, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x0f,0x16]
xor.ne %d1, %d1, 255

# CHECK-INST: xor.ne %d1, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x10,0x16]
xor.ne %d1, %d14, -256

# CHECK-INST: xor.ne %d1, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x17,0x16]
xor.ne %d1, %d14, -129

# CHECK-INST: xor.ne %d1, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x1f,0x16]
xor.ne %d1, %d14, -1

# CHECK-INST: xor.ne %d1, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x00,0x16]
xor.ne %d1, %d14, 0

# CHECK-INST: xor.ne %d1, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x00,0x16]
xor.ne %d1, %d14, 1

# CHECK-INST: xor.ne %d1, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x08,0x16]
xor.ne %d1, %d14, 128

# CHECK-INST: xor.ne %d1, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x0f,0x16]
xor.ne %d1, %d14, 255

# CHECK-INST: xor.ne %d1, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x10,0x16]
xor.ne %d1, %d15, -256

# CHECK-INST: xor.ne %d1, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x17,0x16]
xor.ne %d1, %d15, -129

# CHECK-INST: xor.ne %d1, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x1f,0x16]
xor.ne %d1, %d15, -1

# CHECK-INST: xor.ne %d1, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x00,0x16]
xor.ne %d1, %d15, 0

# CHECK-INST: xor.ne %d1, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x00,0x16]
xor.ne %d1, %d15, 1

# CHECK-INST: xor.ne %d1, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x08,0x16]
xor.ne %d1, %d15, 128

# CHECK-INST: xor.ne %d1, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x0f,0x16]
xor.ne %d1, %d15, 255

# CHECK-INST: xor.ne %d14, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x10,0xe6]
xor.ne %d14, %d0, -256

# CHECK-INST: xor.ne %d14, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x17,0xe6]
xor.ne %d14, %d0, -129

# CHECK-INST: xor.ne %d14, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x1f,0xe6]
xor.ne %d14, %d0, -1

# CHECK-INST: xor.ne %d14, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x00,0xe6]
xor.ne %d14, %d0, 0

# CHECK-INST: xor.ne %d14, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x00,0xe6]
xor.ne %d14, %d0, 1

# CHECK-INST: xor.ne %d14, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x08,0xe6]
xor.ne %d14, %d0, 128

# CHECK-INST: xor.ne %d14, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x0f,0xe6]
xor.ne %d14, %d0, 255

# CHECK-INST: xor.ne %d14, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x10,0xe6]
xor.ne %d14, %d1, -256

# CHECK-INST: xor.ne %d14, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x17,0xe6]
xor.ne %d14, %d1, -129

# CHECK-INST: xor.ne %d14, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x1f,0xe6]
xor.ne %d14, %d1, -1

# CHECK-INST: xor.ne %d14, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x00,0xe6]
xor.ne %d14, %d1, 0

# CHECK-INST: xor.ne %d14, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x00,0xe6]
xor.ne %d14, %d1, 1

# CHECK-INST: xor.ne %d14, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x08,0xe6]
xor.ne %d14, %d1, 128

# CHECK-INST: xor.ne %d14, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x0f,0xe6]
xor.ne %d14, %d1, 255

# CHECK-INST: xor.ne %d14, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x10,0xe6]
xor.ne %d14, %d14, -256

# CHECK-INST: xor.ne %d14, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x17,0xe6]
xor.ne %d14, %d14, -129

# CHECK-INST: xor.ne %d14, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x1f,0xe6]
xor.ne %d14, %d14, -1

# CHECK-INST: xor.ne %d14, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x00,0xe6]
xor.ne %d14, %d14, 0

# CHECK-INST: xor.ne %d14, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x00,0xe6]
xor.ne %d14, %d14, 1

# CHECK-INST: xor.ne %d14, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x08,0xe6]
xor.ne %d14, %d14, 128

# CHECK-INST: xor.ne %d14, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x0f,0xe6]
xor.ne %d14, %d14, 255

# CHECK-INST: xor.ne %d14, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x10,0xe6]
xor.ne %d14, %d15, -256

# CHECK-INST: xor.ne %d14, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x17,0xe6]
xor.ne %d14, %d15, -129

# CHECK-INST: xor.ne %d14, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x1f,0xe6]
xor.ne %d14, %d15, -1

# CHECK-INST: xor.ne %d14, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x00,0xe6]
xor.ne %d14, %d15, 0

# CHECK-INST: xor.ne %d14, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x00,0xe6]
xor.ne %d14, %d15, 1

# CHECK-INST: xor.ne %d14, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x08,0xe6]
xor.ne %d14, %d15, 128

# CHECK-INST: xor.ne %d14, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x0f,0xe6]
xor.ne %d14, %d15, 255

# CHECK-INST: xor.ne %d15, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x10,0xf6]
xor.ne %d15, %d0, -256

# CHECK-INST: xor.ne %d15, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x17,0xf6]
xor.ne %d15, %d0, -129

# CHECK-INST: xor.ne %d15, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x1f,0xf6]
xor.ne %d15, %d0, -1

# CHECK-INST: xor.ne %d15, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x00,0xf6]
xor.ne %d15, %d0, 0

# CHECK-INST: xor.ne %d15, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x00,0xf6]
xor.ne %d15, %d0, 1

# CHECK-INST: xor.ne %d15, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x08,0xf6]
xor.ne %d15, %d0, 128

# CHECK-INST: xor.ne %d15, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x0f,0xf6]
xor.ne %d15, %d0, 255

# CHECK-INST: xor.ne %d15, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x10,0xf6]
xor.ne %d15, %d1, -256

# CHECK-INST: xor.ne %d15, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x17,0xf6]
xor.ne %d15, %d1, -129

# CHECK-INST: xor.ne %d15, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x1f,0xf6]
xor.ne %d15, %d1, -1

# CHECK-INST: xor.ne %d15, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x00,0xf6]
xor.ne %d15, %d1, 0

# CHECK-INST: xor.ne %d15, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x00,0xf6]
xor.ne %d15, %d1, 1

# CHECK-INST: xor.ne %d15, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x08,0xf6]
xor.ne %d15, %d1, 128

# CHECK-INST: xor.ne %d15, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x0f,0xf6]
xor.ne %d15, %d1, 255

# CHECK-INST: xor.ne %d15, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x10,0xf6]
xor.ne %d15, %d14, -256

# CHECK-INST: xor.ne %d15, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x17,0xf6]
xor.ne %d15, %d14, -129

# CHECK-INST: xor.ne %d15, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x1f,0xf6]
xor.ne %d15, %d14, -1

# CHECK-INST: xor.ne %d15, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x00,0xf6]
xor.ne %d15, %d14, 0

# CHECK-INST: xor.ne %d15, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x00,0xf6]
xor.ne %d15, %d14, 1

# CHECK-INST: xor.ne %d15, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x08,0xf6]
xor.ne %d15, %d14, 128

# CHECK-INST: xor.ne %d15, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x0f,0xf6]
xor.ne %d15, %d14, 255

# CHECK-INST: xor.ne %d15, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x10,0xf6]
xor.ne %d15, %d15, -256

# CHECK-INST: xor.ne %d15, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x17,0xf6]
xor.ne %d15, %d15, -129

# CHECK-INST: xor.ne %d15, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x1f,0xf6]
xor.ne %d15, %d15, -1

# CHECK-INST: xor.ne %d15, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x00,0xf6]
xor.ne %d15, %d15, 0

# CHECK-INST: xor.ne %d15, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x00,0xf6]
xor.ne %d15, %d15, 1

# CHECK-INST: xor.ne %d15, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x08,0xf6]
xor.ne %d15, %d15, 128

# CHECK-INST: xor.ne %d15, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x0f,0xf6]
xor.ne %d15, %d15, 255
 