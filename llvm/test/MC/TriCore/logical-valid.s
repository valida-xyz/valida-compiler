# RUN: llvm-mc %s -triple=tricore -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK,CHECK-INST %s


# CHECK-INST: and %d15, 0
# CHECK: encoding: [0x16,0x00]
.code16
and %d15, 0

# CHECK-INST: and %d15, 1
# CHECK: encoding: [0x16,0x01]
.code16
and %d15, 1

# CHECK-INST: and %d15, 16
# CHECK: encoding: [0x16,0x10]
.code16
and %d15, 16

# CHECK-INST: and %d15, 255
# CHECK: encoding: [0x16,0xff]
.code16
and %d15, 255

# CHECK-INST: and %d0, %d0
# CHECK: encoding: [0x26,0x00]
.code16
and %d0, %d0

# CHECK-INST: and %d0, %d1
# CHECK: encoding: [0x26,0x10]
.code16
and %d0, %d1

# CHECK-INST: and %d0, %d14
# CHECK: encoding: [0x26,0xe0]
.code16
and %d0, %d14

# CHECK-INST: and %d0, %d15
# CHECK: encoding: [0x26,0xf0]
.code16
and %d0, %d15

# CHECK-INST: and %d1, %d0
# CHECK: encoding: [0x26,0x01]
.code16
and %d1, %d0

# CHECK-INST: and %d1, %d1
# CHECK: encoding: [0x26,0x11]
.code16
and %d1, %d1

# CHECK-INST: and %d1, %d14
# CHECK: encoding: [0x26,0xe1]
.code16
and %d1, %d14

# CHECK-INST: and %d1, %d15
# CHECK: encoding: [0x26,0xf1]
.code16
and %d1, %d15

# CHECK-INST: and %d14, %d0
# CHECK: encoding: [0x26,0x0e]
.code16
and %d14, %d0

# CHECK-INST: and %d14, %d1
# CHECK: encoding: [0x26,0x1e]
.code16
and %d14, %d1

# CHECK-INST: and %d14, %d14
# CHECK: encoding: [0x26,0xee]
.code16
and %d14, %d14

# CHECK-INST: and %d14, %d15
# CHECK: encoding: [0x26,0xfe]
.code16
and %d14, %d15

# CHECK-INST: and %d15, %d0
# CHECK: encoding: [0x26,0x0f]
.code16
and %d15, %d0

# CHECK-INST: and %d15, %d1
# CHECK: encoding: [0x26,0x1f]
.code16
and %d15, %d1

# CHECK-INST: and %d15, %d14
# CHECK: encoding: [0x26,0xef]
.code16
and %d15, %d14

# CHECK-INST: and %d15, %d15
# CHECK: encoding: [0x26,0xff]
.code16
and %d15, %d15

# CHECK-INST: and %d0, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0x80,0x00]
.code32
and %d0, %d0, %d0

# CHECK-INST: and %d0, %d0, %d1
# CHECK: encoding: [0x0f,0x10,0x80,0x00]
.code32
and %d0, %d0, %d1

# CHECK-INST: and %d0, %d0, %d14
# CHECK: encoding: [0x0f,0xe0,0x80,0x00]
.code32
and %d0, %d0, %d14

# CHECK-INST: and %d0, %d0, %d15
# CHECK: encoding: [0x0f,0xf0,0x80,0x00]
.code32
and %d0, %d0, %d15

# CHECK-INST: and %d0, %d1, %d0
# CHECK: encoding: [0x0f,0x01,0x80,0x00]
.code32
and %d0, %d1, %d0

# CHECK-INST: and %d0, %d1, %d1
# CHECK: encoding: [0x0f,0x11,0x80,0x00]
.code32
and %d0, %d1, %d1

# CHECK-INST: and %d0, %d1, %d14
# CHECK: encoding: [0x0f,0xe1,0x80,0x00]
.code32
and %d0, %d1, %d14

# CHECK-INST: and %d0, %d1, %d15
# CHECK: encoding: [0x0f,0xf1,0x80,0x00]
.code32
and %d0, %d1, %d15

# CHECK-INST: and %d0, %d14, %d0
# CHECK: encoding: [0x0f,0x0e,0x80,0x00]
.code32
and %d0, %d14, %d0

# CHECK-INST: and %d0, %d14, %d1
# CHECK: encoding: [0x0f,0x1e,0x80,0x00]
.code32
and %d0, %d14, %d1

# CHECK-INST: and %d0, %d14, %d14
# CHECK: encoding: [0x0f,0xee,0x80,0x00]
.code32
and %d0, %d14, %d14

# CHECK-INST: and %d0, %d14, %d15
# CHECK: encoding: [0x0f,0xfe,0x80,0x00]
.code32
and %d0, %d14, %d15

# CHECK-INST: and %d0, %d15, %d0
# CHECK: encoding: [0x0f,0x0f,0x80,0x00]
.code32
and %d0, %d15, %d0

# CHECK-INST: and %d0, %d15, %d1
# CHECK: encoding: [0x0f,0x1f,0x80,0x00]
.code32
and %d0, %d15, %d1

# CHECK-INST: and %d0, %d15, %d14
# CHECK: encoding: [0x0f,0xef,0x80,0x00]
.code32
and %d0, %d15, %d14

# CHECK-INST: and %d0, %d15, %d15
# CHECK: encoding: [0x0f,0xff,0x80,0x00]
.code32
and %d0, %d15, %d15

# CHECK-INST: and %d1, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0x80,0x10]
.code32
and %d1, %d0, %d0

# CHECK-INST: and %d1, %d0, %d1
# CHECK: encoding: [0x0f,0x10,0x80,0x10]
.code32
and %d1, %d0, %d1

# CHECK-INST: and %d1, %d0, %d14
# CHECK: encoding: [0x0f,0xe0,0x80,0x10]
.code32
and %d1, %d0, %d14

# CHECK-INST: and %d1, %d0, %d15
# CHECK: encoding: [0x0f,0xf0,0x80,0x10]
.code32
and %d1, %d0, %d15

# CHECK-INST: and %d1, %d1, %d0
# CHECK: encoding: [0x0f,0x01,0x80,0x10]
.code32
and %d1, %d1, %d0

# CHECK-INST: and %d1, %d1, %d1
# CHECK: encoding: [0x0f,0x11,0x80,0x10]
.code32
and %d1, %d1, %d1

# CHECK-INST: and %d1, %d1, %d14
# CHECK: encoding: [0x0f,0xe1,0x80,0x10]
.code32
and %d1, %d1, %d14

# CHECK-INST: and %d1, %d1, %d15
# CHECK: encoding: [0x0f,0xf1,0x80,0x10]
.code32
and %d1, %d1, %d15

# CHECK-INST: and %d1, %d14, %d0
# CHECK: encoding: [0x0f,0x0e,0x80,0x10]
.code32
and %d1, %d14, %d0

# CHECK-INST: and %d1, %d14, %d1
# CHECK: encoding: [0x0f,0x1e,0x80,0x10]
.code32
and %d1, %d14, %d1

# CHECK-INST: and %d1, %d14, %d14
# CHECK: encoding: [0x0f,0xee,0x80,0x10]
.code32
and %d1, %d14, %d14

# CHECK-INST: and %d1, %d14, %d15
# CHECK: encoding: [0x0f,0xfe,0x80,0x10]
.code32
and %d1, %d14, %d15

# CHECK-INST: and %d1, %d15, %d0
# CHECK: encoding: [0x0f,0x0f,0x80,0x10]
.code32
and %d1, %d15, %d0

# CHECK-INST: and %d1, %d15, %d1
# CHECK: encoding: [0x0f,0x1f,0x80,0x10]
.code32
and %d1, %d15, %d1

# CHECK-INST: and %d1, %d15, %d14
# CHECK: encoding: [0x0f,0xef,0x80,0x10]
.code32
and %d1, %d15, %d14

# CHECK-INST: and %d1, %d15, %d15
# CHECK: encoding: [0x0f,0xff,0x80,0x10]
.code32
and %d1, %d15, %d15

# CHECK-INST: and %d14, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0x80,0xe0]
.code32
and %d14, %d0, %d0

# CHECK-INST: and %d14, %d0, %d1
# CHECK: encoding: [0x0f,0x10,0x80,0xe0]
.code32
and %d14, %d0, %d1

# CHECK-INST: and %d14, %d0, %d14
# CHECK: encoding: [0x0f,0xe0,0x80,0xe0]
.code32
and %d14, %d0, %d14

# CHECK-INST: and %d14, %d0, %d15
# CHECK: encoding: [0x0f,0xf0,0x80,0xe0]
.code32
and %d14, %d0, %d15

# CHECK-INST: and %d14, %d1, %d0
# CHECK: encoding: [0x0f,0x01,0x80,0xe0]
.code32
and %d14, %d1, %d0

# CHECK-INST: and %d14, %d1, %d1
# CHECK: encoding: [0x0f,0x11,0x80,0xe0]
.code32
and %d14, %d1, %d1

# CHECK-INST: and %d14, %d1, %d14
# CHECK: encoding: [0x0f,0xe1,0x80,0xe0]
.code32
and %d14, %d1, %d14

# CHECK-INST: and %d14, %d1, %d15
# CHECK: encoding: [0x0f,0xf1,0x80,0xe0]
.code32
and %d14, %d1, %d15

# CHECK-INST: and %d14, %d14, %d0
# CHECK: encoding: [0x0f,0x0e,0x80,0xe0]
.code32
and %d14, %d14, %d0

# CHECK-INST: and %d14, %d14, %d1
# CHECK: encoding: [0x0f,0x1e,0x80,0xe0]
.code32
and %d14, %d14, %d1

# CHECK-INST: and %d14, %d14, %d14
# CHECK: encoding: [0x0f,0xee,0x80,0xe0]
.code32
and %d14, %d14, %d14

# CHECK-INST: and %d14, %d14, %d15
# CHECK: encoding: [0x0f,0xfe,0x80,0xe0]
.code32
and %d14, %d14, %d15

# CHECK-INST: and %d14, %d15, %d0
# CHECK: encoding: [0x0f,0x0f,0x80,0xe0]
.code32
and %d14, %d15, %d0

# CHECK-INST: and %d14, %d15, %d1
# CHECK: encoding: [0x0f,0x1f,0x80,0xe0]
.code32
and %d14, %d15, %d1

# CHECK-INST: and %d14, %d15, %d14
# CHECK: encoding: [0x0f,0xef,0x80,0xe0]
.code32
and %d14, %d15, %d14

# CHECK-INST: and %d14, %d15, %d15
# CHECK: encoding: [0x0f,0xff,0x80,0xe0]
.code32
and %d14, %d15, %d15

# CHECK-INST: and %d15, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0x80,0xf0]
.code32
and %d15, %d0, %d0

# CHECK-INST: and %d15, %d0, %d1
# CHECK: encoding: [0x0f,0x10,0x80,0xf0]
.code32
and %d15, %d0, %d1

# CHECK-INST: and %d15, %d0, %d14
# CHECK: encoding: [0x0f,0xe0,0x80,0xf0]
.code32
and %d15, %d0, %d14

# CHECK-INST: and %d15, %d0, %d15
# CHECK: encoding: [0x0f,0xf0,0x80,0xf0]
.code32
and %d15, %d0, %d15

# CHECK-INST: and %d15, %d1, %d0
# CHECK: encoding: [0x0f,0x01,0x80,0xf0]
.code32
and %d15, %d1, %d0

# CHECK-INST: and %d15, %d1, %d1
# CHECK: encoding: [0x0f,0x11,0x80,0xf0]
.code32
and %d15, %d1, %d1

# CHECK-INST: and %d15, %d1, %d14
# CHECK: encoding: [0x0f,0xe1,0x80,0xf0]
.code32
and %d15, %d1, %d14

# CHECK-INST: and %d15, %d1, %d15
# CHECK: encoding: [0x0f,0xf1,0x80,0xf0]
.code32
and %d15, %d1, %d15

# CHECK-INST: and %d15, %d14, %d0
# CHECK: encoding: [0x0f,0x0e,0x80,0xf0]
.code32
and %d15, %d14, %d0

# CHECK-INST: and %d15, %d14, %d1
# CHECK: encoding: [0x0f,0x1e,0x80,0xf0]
.code32
and %d15, %d14, %d1

# CHECK-INST: and %d15, %d14, %d14
# CHECK: encoding: [0x0f,0xee,0x80,0xf0]
.code32
and %d15, %d14, %d14

# CHECK-INST: and %d15, %d14, %d15
# CHECK: encoding: [0x0f,0xfe,0x80,0xf0]
.code32
and %d15, %d14, %d15

# CHECK-INST: and %d15, %d15, %d0
# CHECK: encoding: [0x0f,0x0f,0x80,0xf0]
.code32
and %d15, %d15, %d0

# CHECK-INST: and %d15, %d15, %d1
# CHECK: encoding: [0x0f,0x1f,0x80,0xf0]
.code32
and %d15, %d15, %d1

# CHECK-INST: and %d15, %d15, %d14
# CHECK: encoding: [0x0f,0xef,0x80,0xf0]
.code32
and %d15, %d15, %d14

# CHECK-INST: and %d15, %d15, %d15
# CHECK: encoding: [0x0f,0xff,0x80,0xf0]
.code32
and %d15, %d15, %d15

# CHECK-INST: and %d0, %d0, 271
# CHECK: encoding: [0x8f,0xf0,0x10,0x01]
.code32
and %d0, %d0, 271

# CHECK-INST: and %d0, %d0, 496
# CHECK: encoding: [0x8f,0x00,0x1f,0x01]
.code32
and %d0, %d0, 496

# CHECK-INST: and %d0, %d0, 511
# CHECK: encoding: [0x8f,0xf0,0x1f,0x01]
.code32
and %d0, %d0, 511

# CHECK-INST: and %d0, %d1, 271
# CHECK: encoding: [0x8f,0xf1,0x10,0x01]
.code32
and %d0, %d1, 271

# CHECK-INST: and %d0, %d1, 496
# CHECK: encoding: [0x8f,0x01,0x1f,0x01]
.code32
and %d0, %d1, 496

# CHECK-INST: and %d0, %d1, 511
# CHECK: encoding: [0x8f,0xf1,0x1f,0x01]
.code32
and %d0, %d1, 511

# CHECK-INST: and %d0, %d14, 271
# CHECK: encoding: [0x8f,0xfe,0x10,0x01]
.code32
and %d0, %d14, 271

# CHECK-INST: and %d0, %d14, 496
# CHECK: encoding: [0x8f,0x0e,0x1f,0x01]
.code32
and %d0, %d14, 496

# CHECK-INST: and %d0, %d14, 511
# CHECK: encoding: [0x8f,0xfe,0x1f,0x01]
.code32
and %d0, %d14, 511

# CHECK-INST: and %d0, %d15, 271
# CHECK: encoding: [0x8f,0xff,0x10,0x01]
.code32
and %d0, %d15, 271

# CHECK-INST: and %d0, %d15, 496
# CHECK: encoding: [0x8f,0x0f,0x1f,0x01]
.code32
and %d0, %d15, 496

# CHECK-INST: and %d0, %d15, 511
# CHECK: encoding: [0x8f,0xff,0x1f,0x01]
.code32
and %d0, %d15, 511

# CHECK-INST: and %d1, %d0, 271
# CHECK: encoding: [0x8f,0xf0,0x10,0x11]
.code32
and %d1, %d0, 271

# CHECK-INST: and %d1, %d0, 496
# CHECK: encoding: [0x8f,0x00,0x1f,0x11]
.code32
and %d1, %d0, 496

# CHECK-INST: and %d1, %d0, 511
# CHECK: encoding: [0x8f,0xf0,0x1f,0x11]
.code32
and %d1, %d0, 511

# CHECK-INST: and %d1, %d1, 271
# CHECK: encoding: [0x8f,0xf1,0x10,0x11]
.code32
and %d1, %d1, 271

# CHECK-INST: and %d1, %d1, 496
# CHECK: encoding: [0x8f,0x01,0x1f,0x11]
.code32
and %d1, %d1, 496

# CHECK-INST: and %d1, %d1, 511
# CHECK: encoding: [0x8f,0xf1,0x1f,0x11]
.code32
and %d1, %d1, 511

# CHECK-INST: and %d1, %d14, 271
# CHECK: encoding: [0x8f,0xfe,0x10,0x11]
.code32
and %d1, %d14, 271

# CHECK-INST: and %d1, %d14, 496
# CHECK: encoding: [0x8f,0x0e,0x1f,0x11]
.code32
and %d1, %d14, 496

# CHECK-INST: and %d1, %d14, 511
# CHECK: encoding: [0x8f,0xfe,0x1f,0x11]
.code32
and %d1, %d14, 511

# CHECK-INST: and %d1, %d15, 271
# CHECK: encoding: [0x8f,0xff,0x10,0x11]
.code32
and %d1, %d15, 271

# CHECK-INST: and %d1, %d15, 496
# CHECK: encoding: [0x8f,0x0f,0x1f,0x11]
.code32
and %d1, %d15, 496

# CHECK-INST: and %d1, %d15, 511
# CHECK: encoding: [0x8f,0xff,0x1f,0x11]
.code32
and %d1, %d15, 511

# CHECK-INST: and %d14, %d0, 271
# CHECK: encoding: [0x8f,0xf0,0x10,0xe1]
.code32
and %d14, %d0, 271

# CHECK-INST: and %d14, %d0, 496
# CHECK: encoding: [0x8f,0x00,0x1f,0xe1]
.code32
and %d14, %d0, 496

# CHECK-INST: and %d14, %d0, 511
# CHECK: encoding: [0x8f,0xf0,0x1f,0xe1]
.code32
and %d14, %d0, 511

# CHECK-INST: and %d14, %d1, 271
# CHECK: encoding: [0x8f,0xf1,0x10,0xe1]
.code32
and %d14, %d1, 271

# CHECK-INST: and %d14, %d1, 496
# CHECK: encoding: [0x8f,0x01,0x1f,0xe1]
.code32
and %d14, %d1, 496

# CHECK-INST: and %d14, %d1, 511
# CHECK: encoding: [0x8f,0xf1,0x1f,0xe1]
.code32
and %d14, %d1, 511

# CHECK-INST: and %d14, %d14, 271
# CHECK: encoding: [0x8f,0xfe,0x10,0xe1]
.code32
and %d14, %d14, 271

# CHECK-INST: and %d14, %d14, 496
# CHECK: encoding: [0x8f,0x0e,0x1f,0xe1]
.code32
and %d14, %d14, 496

# CHECK-INST: and %d14, %d14, 511
# CHECK: encoding: [0x8f,0xfe,0x1f,0xe1]
.code32
and %d14, %d14, 511

# CHECK-INST: and %d14, %d15, 271
# CHECK: encoding: [0x8f,0xff,0x10,0xe1]
.code32
and %d14, %d15, 271

# CHECK-INST: and %d14, %d15, 496
# CHECK: encoding: [0x8f,0x0f,0x1f,0xe1]
.code32
and %d14, %d15, 496

# CHECK-INST: and %d14, %d15, 511
# CHECK: encoding: [0x8f,0xff,0x1f,0xe1]
.code32
and %d14, %d15, 511

# CHECK-INST: and %d15, %d0, 271
# CHECK: encoding: [0x8f,0xf0,0x10,0xf1]
.code32
and %d15, %d0, 271

# CHECK-INST: and %d15, %d0, 496
# CHECK: encoding: [0x8f,0x00,0x1f,0xf1]
.code32
and %d15, %d0, 496

# CHECK-INST: and %d15, %d0, 511
# CHECK: encoding: [0x8f,0xf0,0x1f,0xf1]
.code32
and %d15, %d0, 511

# CHECK-INST: and %d15, %d1, 271
# CHECK: encoding: [0x8f,0xf1,0x10,0xf1]
.code32
and %d15, %d1, 271

# CHECK-INST: and %d15, %d1, 496
# CHECK: encoding: [0x8f,0x01,0x1f,0xf1]
.code32
and %d15, %d1, 496

# CHECK-INST: and %d15, %d1, 511
# CHECK: encoding: [0x8f,0xf1,0x1f,0xf1]
.code32
and %d15, %d1, 511

# CHECK-INST: and %d15, %d14, 271
# CHECK: encoding: [0x8f,0xfe,0x10,0xf1]
.code32
and %d15, %d14, 271

# CHECK-INST: and %d15, %d14, 496
# CHECK: encoding: [0x8f,0x0e,0x1f,0xf1]
.code32
and %d15, %d14, 496

# CHECK-INST: and %d15, %d14, 511
# CHECK: encoding: [0x8f,0xfe,0x1f,0xf1]
.code32
and %d15, %d14, 511

# CHECK-INST: and %d15, %d15, 271
# CHECK: encoding: [0x8f,0xff,0x10,0xf1]
.code32
and %d15, %d15, 271

# CHECK-INST: and %d15, %d15, 496
# CHECK: encoding: [0x8f,0x0f,0x1f,0xf1]
.code32
and %d15, %d15, 496

# CHECK-INST: and %d15, %d15, 511
# CHECK: encoding: [0x8f,0xff,0x1f,0xf1]
.code32
and %d15, %d15, 511

# CHECK-INST: andn %d0, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0xe0,0x00]
.code32
andn %d0, %d0, %d0

# CHECK-INST: andn %d0, %d0, %d1
# CHECK: encoding: [0x0f,0x10,0xe0,0x00]
.code32
andn %d0, %d0, %d1

# CHECK-INST: andn %d0, %d0, %d14
# CHECK: encoding: [0x0f,0xe0,0xe0,0x00]
.code32
andn %d0, %d0, %d14

# CHECK-INST: andn %d0, %d0, %d15
# CHECK: encoding: [0x0f,0xf0,0xe0,0x00]
.code32
andn %d0, %d0, %d15

# CHECK-INST: andn %d0, %d1, %d0
# CHECK: encoding: [0x0f,0x01,0xe0,0x00]
.code32
andn %d0, %d1, %d0

# CHECK-INST: andn %d0, %d1, %d1
# CHECK: encoding: [0x0f,0x11,0xe0,0x00]
.code32
andn %d0, %d1, %d1

# CHECK-INST: andn %d0, %d1, %d14
# CHECK: encoding: [0x0f,0xe1,0xe0,0x00]
.code32
andn %d0, %d1, %d14

# CHECK-INST: andn %d0, %d1, %d15
# CHECK: encoding: [0x0f,0xf1,0xe0,0x00]
.code32
andn %d0, %d1, %d15

# CHECK-INST: andn %d0, %d14, %d0
# CHECK: encoding: [0x0f,0x0e,0xe0,0x00]
.code32
andn %d0, %d14, %d0

# CHECK-INST: andn %d0, %d14, %d1
# CHECK: encoding: [0x0f,0x1e,0xe0,0x00]
.code32
andn %d0, %d14, %d1

# CHECK-INST: andn %d0, %d14, %d14
# CHECK: encoding: [0x0f,0xee,0xe0,0x00]
.code32
andn %d0, %d14, %d14

# CHECK-INST: andn %d0, %d14, %d15
# CHECK: encoding: [0x0f,0xfe,0xe0,0x00]
.code32
andn %d0, %d14, %d15

# CHECK-INST: andn %d0, %d15, %d0
# CHECK: encoding: [0x0f,0x0f,0xe0,0x00]
.code32
andn %d0, %d15, %d0

# CHECK-INST: andn %d0, %d15, %d1
# CHECK: encoding: [0x0f,0x1f,0xe0,0x00]
.code32
andn %d0, %d15, %d1

# CHECK-INST: andn %d0, %d15, %d14
# CHECK: encoding: [0x0f,0xef,0xe0,0x00]
.code32
andn %d0, %d15, %d14

# CHECK-INST: andn %d0, %d15, %d15
# CHECK: encoding: [0x0f,0xff,0xe0,0x00]
.code32
andn %d0, %d15, %d15

# CHECK-INST: andn %d1, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0xe0,0x10]
.code32
andn %d1, %d0, %d0

# CHECK-INST: andn %d1, %d0, %d1
# CHECK: encoding: [0x0f,0x10,0xe0,0x10]
.code32
andn %d1, %d0, %d1

# CHECK-INST: andn %d1, %d0, %d14
# CHECK: encoding: [0x0f,0xe0,0xe0,0x10]
.code32
andn %d1, %d0, %d14

# CHECK-INST: andn %d1, %d0, %d15
# CHECK: encoding: [0x0f,0xf0,0xe0,0x10]
.code32
andn %d1, %d0, %d15

# CHECK-INST: andn %d1, %d1, %d0
# CHECK: encoding: [0x0f,0x01,0xe0,0x10]
.code32
andn %d1, %d1, %d0

# CHECK-INST: andn %d1, %d1, %d1
# CHECK: encoding: [0x0f,0x11,0xe0,0x10]
.code32
andn %d1, %d1, %d1

# CHECK-INST: andn %d1, %d1, %d14
# CHECK: encoding: [0x0f,0xe1,0xe0,0x10]
.code32
andn %d1, %d1, %d14

# CHECK-INST: andn %d1, %d1, %d15
# CHECK: encoding: [0x0f,0xf1,0xe0,0x10]
.code32
andn %d1, %d1, %d15

# CHECK-INST: andn %d1, %d14, %d0
# CHECK: encoding: [0x0f,0x0e,0xe0,0x10]
.code32
andn %d1, %d14, %d0

# CHECK-INST: andn %d1, %d14, %d1
# CHECK: encoding: [0x0f,0x1e,0xe0,0x10]
.code32
andn %d1, %d14, %d1

# CHECK-INST: andn %d1, %d14, %d14
# CHECK: encoding: [0x0f,0xee,0xe0,0x10]
.code32
andn %d1, %d14, %d14

# CHECK-INST: andn %d1, %d14, %d15
# CHECK: encoding: [0x0f,0xfe,0xe0,0x10]
.code32
andn %d1, %d14, %d15

# CHECK-INST: andn %d1, %d15, %d0
# CHECK: encoding: [0x0f,0x0f,0xe0,0x10]
.code32
andn %d1, %d15, %d0

# CHECK-INST: andn %d1, %d15, %d1
# CHECK: encoding: [0x0f,0x1f,0xe0,0x10]
.code32
andn %d1, %d15, %d1

# CHECK-INST: andn %d1, %d15, %d14
# CHECK: encoding: [0x0f,0xef,0xe0,0x10]
.code32
andn %d1, %d15, %d14

# CHECK-INST: andn %d1, %d15, %d15
# CHECK: encoding: [0x0f,0xff,0xe0,0x10]
.code32
andn %d1, %d15, %d15

# CHECK-INST: andn %d14, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0xe0,0xe0]
.code32
andn %d14, %d0, %d0

# CHECK-INST: andn %d14, %d0, %d1
# CHECK: encoding: [0x0f,0x10,0xe0,0xe0]
.code32
andn %d14, %d0, %d1

# CHECK-INST: andn %d14, %d0, %d14
# CHECK: encoding: [0x0f,0xe0,0xe0,0xe0]
.code32
andn %d14, %d0, %d14

# CHECK-INST: andn %d14, %d0, %d15
# CHECK: encoding: [0x0f,0xf0,0xe0,0xe0]
.code32
andn %d14, %d0, %d15

# CHECK-INST: andn %d14, %d1, %d0
# CHECK: encoding: [0x0f,0x01,0xe0,0xe0]
.code32
andn %d14, %d1, %d0

# CHECK-INST: andn %d14, %d1, %d1
# CHECK: encoding: [0x0f,0x11,0xe0,0xe0]
.code32
andn %d14, %d1, %d1

# CHECK-INST: andn %d14, %d1, %d14
# CHECK: encoding: [0x0f,0xe1,0xe0,0xe0]
.code32
andn %d14, %d1, %d14

# CHECK-INST: andn %d14, %d1, %d15
# CHECK: encoding: [0x0f,0xf1,0xe0,0xe0]
.code32
andn %d14, %d1, %d15

# CHECK-INST: andn %d14, %d14, %d0
# CHECK: encoding: [0x0f,0x0e,0xe0,0xe0]
.code32
andn %d14, %d14, %d0

# CHECK-INST: andn %d14, %d14, %d1
# CHECK: encoding: [0x0f,0x1e,0xe0,0xe0]
.code32
andn %d14, %d14, %d1

# CHECK-INST: andn %d14, %d14, %d14
# CHECK: encoding: [0x0f,0xee,0xe0,0xe0]
.code32
andn %d14, %d14, %d14

# CHECK-INST: andn %d14, %d14, %d15
# CHECK: encoding: [0x0f,0xfe,0xe0,0xe0]
.code32
andn %d14, %d14, %d15

# CHECK-INST: andn %d14, %d15, %d0
# CHECK: encoding: [0x0f,0x0f,0xe0,0xe0]
.code32
andn %d14, %d15, %d0

# CHECK-INST: andn %d14, %d15, %d1
# CHECK: encoding: [0x0f,0x1f,0xe0,0xe0]
.code32
andn %d14, %d15, %d1

# CHECK-INST: andn %d14, %d15, %d14
# CHECK: encoding: [0x0f,0xef,0xe0,0xe0]
.code32
andn %d14, %d15, %d14

# CHECK-INST: andn %d14, %d15, %d15
# CHECK: encoding: [0x0f,0xff,0xe0,0xe0]
.code32
andn %d14, %d15, %d15

# CHECK-INST: andn %d15, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0xe0,0xf0]
.code32
andn %d15, %d0, %d0

# CHECK-INST: andn %d15, %d0, %d1
# CHECK: encoding: [0x0f,0x10,0xe0,0xf0]
.code32
andn %d15, %d0, %d1

# CHECK-INST: andn %d15, %d0, %d14
# CHECK: encoding: [0x0f,0xe0,0xe0,0xf0]
.code32
andn %d15, %d0, %d14

# CHECK-INST: andn %d15, %d0, %d15
# CHECK: encoding: [0x0f,0xf0,0xe0,0xf0]
.code32
andn %d15, %d0, %d15

# CHECK-INST: andn %d15, %d1, %d0
# CHECK: encoding: [0x0f,0x01,0xe0,0xf0]
.code32
andn %d15, %d1, %d0

# CHECK-INST: andn %d15, %d1, %d1
# CHECK: encoding: [0x0f,0x11,0xe0,0xf0]
.code32
andn %d15, %d1, %d1

# CHECK-INST: andn %d15, %d1, %d14
# CHECK: encoding: [0x0f,0xe1,0xe0,0xf0]
.code32
andn %d15, %d1, %d14

# CHECK-INST: andn %d15, %d1, %d15
# CHECK: encoding: [0x0f,0xf1,0xe0,0xf0]
.code32
andn %d15, %d1, %d15

# CHECK-INST: andn %d15, %d14, %d0
# CHECK: encoding: [0x0f,0x0e,0xe0,0xf0]
.code32
andn %d15, %d14, %d0

# CHECK-INST: andn %d15, %d14, %d1
# CHECK: encoding: [0x0f,0x1e,0xe0,0xf0]
.code32
andn %d15, %d14, %d1

# CHECK-INST: andn %d15, %d14, %d14
# CHECK: encoding: [0x0f,0xee,0xe0,0xf0]
.code32
andn %d15, %d14, %d14

# CHECK-INST: andn %d15, %d14, %d15
# CHECK: encoding: [0x0f,0xfe,0xe0,0xf0]
.code32
andn %d15, %d14, %d15

# CHECK-INST: andn %d15, %d15, %d0
# CHECK: encoding: [0x0f,0x0f,0xe0,0xf0]
.code32
andn %d15, %d15, %d0

# CHECK-INST: andn %d15, %d15, %d1
# CHECK: encoding: [0x0f,0x1f,0xe0,0xf0]
.code32
andn %d15, %d15, %d1

# CHECK-INST: andn %d15, %d15, %d14
# CHECK: encoding: [0x0f,0xef,0xe0,0xf0]
.code32
andn %d15, %d15, %d14

# CHECK-INST: andn %d15, %d15, %d15
# CHECK: encoding: [0x0f,0xff,0xe0,0xf0]
.code32
andn %d15, %d15, %d15

# CHECK-INST: andn %d0, %d0, 271
# CHECK: encoding: [0x8f,0xf0,0xd0,0x01]
.code32
andn %d0, %d0, 271

# CHECK-INST: andn %d0, %d0, 496
# CHECK: encoding: [0x8f,0x00,0xdf,0x01]
.code32
andn %d0, %d0, 496

# CHECK-INST: andn %d0, %d0, 511
# CHECK: encoding: [0x8f,0xf0,0xdf,0x01]
.code32
andn %d0, %d0, 511

# CHECK-INST: andn %d0, %d1, 271
# CHECK: encoding: [0x8f,0xf1,0xd0,0x01]
.code32
andn %d0, %d1, 271

# CHECK-INST: andn %d0, %d1, 496
# CHECK: encoding: [0x8f,0x01,0xdf,0x01]
.code32
andn %d0, %d1, 496

# CHECK-INST: andn %d0, %d1, 511
# CHECK: encoding: [0x8f,0xf1,0xdf,0x01]
.code32
andn %d0, %d1, 511

# CHECK-INST: andn %d0, %d14, 271
# CHECK: encoding: [0x8f,0xfe,0xd0,0x01]
.code32
andn %d0, %d14, 271

# CHECK-INST: andn %d0, %d14, 496
# CHECK: encoding: [0x8f,0x0e,0xdf,0x01]
.code32
andn %d0, %d14, 496

# CHECK-INST: andn %d0, %d14, 511
# CHECK: encoding: [0x8f,0xfe,0xdf,0x01]
.code32
andn %d0, %d14, 511

# CHECK-INST: andn %d0, %d15, 271
# CHECK: encoding: [0x8f,0xff,0xd0,0x01]
.code32
andn %d0, %d15, 271

# CHECK-INST: andn %d0, %d15, 496
# CHECK: encoding: [0x8f,0x0f,0xdf,0x01]
.code32
andn %d0, %d15, 496

# CHECK-INST: andn %d0, %d15, 511
# CHECK: encoding: [0x8f,0xff,0xdf,0x01]
.code32
andn %d0, %d15, 511

# CHECK-INST: andn %d1, %d0, 271
# CHECK: encoding: [0x8f,0xf0,0xd0,0x11]
.code32
andn %d1, %d0, 271

# CHECK-INST: andn %d1, %d0, 496
# CHECK: encoding: [0x8f,0x00,0xdf,0x11]
.code32
andn %d1, %d0, 496

# CHECK-INST: andn %d1, %d0, 511
# CHECK: encoding: [0x8f,0xf0,0xdf,0x11]
.code32
andn %d1, %d0, 511

# CHECK-INST: andn %d1, %d1, 271
# CHECK: encoding: [0x8f,0xf1,0xd0,0x11]
.code32
andn %d1, %d1, 271

# CHECK-INST: andn %d1, %d1, 496
# CHECK: encoding: [0x8f,0x01,0xdf,0x11]
.code32
andn %d1, %d1, 496

# CHECK-INST: andn %d1, %d1, 511
# CHECK: encoding: [0x8f,0xf1,0xdf,0x11]
.code32
andn %d1, %d1, 511

# CHECK-INST: andn %d1, %d14, 271
# CHECK: encoding: [0x8f,0xfe,0xd0,0x11]
.code32
andn %d1, %d14, 271

# CHECK-INST: andn %d1, %d14, 496
# CHECK: encoding: [0x8f,0x0e,0xdf,0x11]
.code32
andn %d1, %d14, 496

# CHECK-INST: andn %d1, %d14, 511
# CHECK: encoding: [0x8f,0xfe,0xdf,0x11]
.code32
andn %d1, %d14, 511

# CHECK-INST: andn %d1, %d15, 271
# CHECK: encoding: [0x8f,0xff,0xd0,0x11]
.code32
andn %d1, %d15, 271

# CHECK-INST: andn %d1, %d15, 496
# CHECK: encoding: [0x8f,0x0f,0xdf,0x11]
.code32
andn %d1, %d15, 496

# CHECK-INST: andn %d1, %d15, 511
# CHECK: encoding: [0x8f,0xff,0xdf,0x11]
.code32
andn %d1, %d15, 511

# CHECK-INST: andn %d14, %d0, 271
# CHECK: encoding: [0x8f,0xf0,0xd0,0xe1]
.code32
andn %d14, %d0, 271

# CHECK-INST: andn %d14, %d0, 496
# CHECK: encoding: [0x8f,0x00,0xdf,0xe1]
.code32
andn %d14, %d0, 496

# CHECK-INST: andn %d14, %d0, 511
# CHECK: encoding: [0x8f,0xf0,0xdf,0xe1]
.code32
andn %d14, %d0, 511

# CHECK-INST: andn %d14, %d1, 271
# CHECK: encoding: [0x8f,0xf1,0xd0,0xe1]
.code32
andn %d14, %d1, 271

# CHECK-INST: andn %d14, %d1, 496
# CHECK: encoding: [0x8f,0x01,0xdf,0xe1]
.code32
andn %d14, %d1, 496

# CHECK-INST: andn %d14, %d1, 511
# CHECK: encoding: [0x8f,0xf1,0xdf,0xe1]
.code32
andn %d14, %d1, 511

# CHECK-INST: andn %d14, %d14, 271
# CHECK: encoding: [0x8f,0xfe,0xd0,0xe1]
.code32
andn %d14, %d14, 271

# CHECK-INST: andn %d14, %d14, 496
# CHECK: encoding: [0x8f,0x0e,0xdf,0xe1]
.code32
andn %d14, %d14, 496

# CHECK-INST: andn %d14, %d14, 511
# CHECK: encoding: [0x8f,0xfe,0xdf,0xe1]
.code32
andn %d14, %d14, 511

# CHECK-INST: andn %d14, %d15, 271
# CHECK: encoding: [0x8f,0xff,0xd0,0xe1]
.code32
andn %d14, %d15, 271

# CHECK-INST: andn %d14, %d15, 496
# CHECK: encoding: [0x8f,0x0f,0xdf,0xe1]
.code32
andn %d14, %d15, 496

# CHECK-INST: andn %d14, %d15, 511
# CHECK: encoding: [0x8f,0xff,0xdf,0xe1]
.code32
andn %d14, %d15, 511

# CHECK-INST: andn %d15, %d0, 271
# CHECK: encoding: [0x8f,0xf0,0xd0,0xf1]
.code32
andn %d15, %d0, 271

# CHECK-INST: andn %d15, %d0, 496
# CHECK: encoding: [0x8f,0x00,0xdf,0xf1]
.code32
andn %d15, %d0, 496

# CHECK-INST: andn %d15, %d0, 511
# CHECK: encoding: [0x8f,0xf0,0xdf,0xf1]
.code32
andn %d15, %d0, 511

# CHECK-INST: andn %d15, %d1, 271
# CHECK: encoding: [0x8f,0xf1,0xd0,0xf1]
.code32
andn %d15, %d1, 271

# CHECK-INST: andn %d15, %d1, 496
# CHECK: encoding: [0x8f,0x01,0xdf,0xf1]
.code32
andn %d15, %d1, 496

# CHECK-INST: andn %d15, %d1, 511
# CHECK: encoding: [0x8f,0xf1,0xdf,0xf1]
.code32
andn %d15, %d1, 511

# CHECK-INST: andn %d15, %d14, 271
# CHECK: encoding: [0x8f,0xfe,0xd0,0xf1]
.code32
andn %d15, %d14, 271

# CHECK-INST: andn %d15, %d14, 496
# CHECK: encoding: [0x8f,0x0e,0xdf,0xf1]
.code32
andn %d15, %d14, 496

# CHECK-INST: andn %d15, %d14, 511
# CHECK: encoding: [0x8f,0xfe,0xdf,0xf1]
.code32
andn %d15, %d14, 511

# CHECK-INST: andn %d15, %d15, 271
# CHECK: encoding: [0x8f,0xff,0xd0,0xf1]
.code32
andn %d15, %d15, 271

# CHECK-INST: andn %d15, %d15, 496
# CHECK: encoding: [0x8f,0x0f,0xdf,0xf1]
.code32
andn %d15, %d15, 496

# CHECK-INST: andn %d15, %d15, 511
# CHECK: encoding: [0x8f,0xff,0xdf,0xf1]
.code32
andn %d15, %d15, 511

# CHECK-INST: nand %d0, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0x90,0x00]
.code32
nand %d0, %d0, %d0

# CHECK-INST: nand %d0, %d0, %d1
# CHECK: encoding: [0x0f,0x10,0x90,0x00]
.code32
nand %d0, %d0, %d1

# CHECK-INST: nand %d0, %d0, %d14
# CHECK: encoding: [0x0f,0xe0,0x90,0x00]
.code32
nand %d0, %d0, %d14

# CHECK-INST: nand %d0, %d0, %d15
# CHECK: encoding: [0x0f,0xf0,0x90,0x00]
.code32
nand %d0, %d0, %d15

# CHECK-INST: nand %d0, %d1, %d0
# CHECK: encoding: [0x0f,0x01,0x90,0x00]
.code32
nand %d0, %d1, %d0

# CHECK-INST: nand %d0, %d1, %d1
# CHECK: encoding: [0x0f,0x11,0x90,0x00]
.code32
nand %d0, %d1, %d1

# CHECK-INST: nand %d0, %d1, %d14
# CHECK: encoding: [0x0f,0xe1,0x90,0x00]
.code32
nand %d0, %d1, %d14

# CHECK-INST: nand %d0, %d1, %d15
# CHECK: encoding: [0x0f,0xf1,0x90,0x00]
.code32
nand %d0, %d1, %d15

# CHECK-INST: nand %d0, %d14, %d0
# CHECK: encoding: [0x0f,0x0e,0x90,0x00]
.code32
nand %d0, %d14, %d0

# CHECK-INST: nand %d0, %d14, %d1
# CHECK: encoding: [0x0f,0x1e,0x90,0x00]
.code32
nand %d0, %d14, %d1

# CHECK-INST: nand %d0, %d14, %d14
# CHECK: encoding: [0x0f,0xee,0x90,0x00]
.code32
nand %d0, %d14, %d14

# CHECK-INST: nand %d0, %d14, %d15
# CHECK: encoding: [0x0f,0xfe,0x90,0x00]
.code32
nand %d0, %d14, %d15

# CHECK-INST: nand %d0, %d15, %d0
# CHECK: encoding: [0x0f,0x0f,0x90,0x00]
.code32
nand %d0, %d15, %d0

# CHECK-INST: nand %d0, %d15, %d1
# CHECK: encoding: [0x0f,0x1f,0x90,0x00]
.code32
nand %d0, %d15, %d1

# CHECK-INST: nand %d0, %d15, %d14
# CHECK: encoding: [0x0f,0xef,0x90,0x00]
.code32
nand %d0, %d15, %d14

# CHECK-INST: nand %d0, %d15, %d15
# CHECK: encoding: [0x0f,0xff,0x90,0x00]
.code32
nand %d0, %d15, %d15

# CHECK-INST: nand %d1, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0x90,0x10]
.code32
nand %d1, %d0, %d0

# CHECK-INST: nand %d1, %d0, %d1
# CHECK: encoding: [0x0f,0x10,0x90,0x10]
.code32
nand %d1, %d0, %d1

# CHECK-INST: nand %d1, %d0, %d14
# CHECK: encoding: [0x0f,0xe0,0x90,0x10]
.code32
nand %d1, %d0, %d14

# CHECK-INST: nand %d1, %d0, %d15
# CHECK: encoding: [0x0f,0xf0,0x90,0x10]
.code32
nand %d1, %d0, %d15

# CHECK-INST: nand %d1, %d1, %d0
# CHECK: encoding: [0x0f,0x01,0x90,0x10]
.code32
nand %d1, %d1, %d0

# CHECK-INST: nand %d1, %d1, %d1
# CHECK: encoding: [0x0f,0x11,0x90,0x10]
.code32
nand %d1, %d1, %d1

# CHECK-INST: nand %d1, %d1, %d14
# CHECK: encoding: [0x0f,0xe1,0x90,0x10]
.code32
nand %d1, %d1, %d14

# CHECK-INST: nand %d1, %d1, %d15
# CHECK: encoding: [0x0f,0xf1,0x90,0x10]
.code32
nand %d1, %d1, %d15

# CHECK-INST: nand %d1, %d14, %d0
# CHECK: encoding: [0x0f,0x0e,0x90,0x10]
.code32
nand %d1, %d14, %d0

# CHECK-INST: nand %d1, %d14, %d1
# CHECK: encoding: [0x0f,0x1e,0x90,0x10]
.code32
nand %d1, %d14, %d1

# CHECK-INST: nand %d1, %d14, %d14
# CHECK: encoding: [0x0f,0xee,0x90,0x10]
.code32
nand %d1, %d14, %d14

# CHECK-INST: nand %d1, %d14, %d15
# CHECK: encoding: [0x0f,0xfe,0x90,0x10]
.code32
nand %d1, %d14, %d15

# CHECK-INST: nand %d1, %d15, %d0
# CHECK: encoding: [0x0f,0x0f,0x90,0x10]
.code32
nand %d1, %d15, %d0

# CHECK-INST: nand %d1, %d15, %d1
# CHECK: encoding: [0x0f,0x1f,0x90,0x10]
.code32
nand %d1, %d15, %d1

# CHECK-INST: nand %d1, %d15, %d14
# CHECK: encoding: [0x0f,0xef,0x90,0x10]
.code32
nand %d1, %d15, %d14

# CHECK-INST: nand %d1, %d15, %d15
# CHECK: encoding: [0x0f,0xff,0x90,0x10]
.code32
nand %d1, %d15, %d15

# CHECK-INST: nand %d14, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0x90,0xe0]
.code32
nand %d14, %d0, %d0

# CHECK-INST: nand %d14, %d0, %d1
# CHECK: encoding: [0x0f,0x10,0x90,0xe0]
.code32
nand %d14, %d0, %d1

# CHECK-INST: nand %d14, %d0, %d14
# CHECK: encoding: [0x0f,0xe0,0x90,0xe0]
.code32
nand %d14, %d0, %d14

# CHECK-INST: nand %d14, %d0, %d15
# CHECK: encoding: [0x0f,0xf0,0x90,0xe0]
.code32
nand %d14, %d0, %d15

# CHECK-INST: nand %d14, %d1, %d0
# CHECK: encoding: [0x0f,0x01,0x90,0xe0]
.code32
nand %d14, %d1, %d0

# CHECK-INST: nand %d14, %d1, %d1
# CHECK: encoding: [0x0f,0x11,0x90,0xe0]
.code32
nand %d14, %d1, %d1

# CHECK-INST: nand %d14, %d1, %d14
# CHECK: encoding: [0x0f,0xe1,0x90,0xe0]
.code32
nand %d14, %d1, %d14

# CHECK-INST: nand %d14, %d1, %d15
# CHECK: encoding: [0x0f,0xf1,0x90,0xe0]
.code32
nand %d14, %d1, %d15

# CHECK-INST: nand %d14, %d14, %d0
# CHECK: encoding: [0x0f,0x0e,0x90,0xe0]
.code32
nand %d14, %d14, %d0

# CHECK-INST: nand %d14, %d14, %d1
# CHECK: encoding: [0x0f,0x1e,0x90,0xe0]
.code32
nand %d14, %d14, %d1

# CHECK-INST: nand %d14, %d14, %d14
# CHECK: encoding: [0x0f,0xee,0x90,0xe0]
.code32
nand %d14, %d14, %d14

# CHECK-INST: nand %d14, %d14, %d15
# CHECK: encoding: [0x0f,0xfe,0x90,0xe0]
.code32
nand %d14, %d14, %d15

# CHECK-INST: nand %d14, %d15, %d0
# CHECK: encoding: [0x0f,0x0f,0x90,0xe0]
.code32
nand %d14, %d15, %d0

# CHECK-INST: nand %d14, %d15, %d1
# CHECK: encoding: [0x0f,0x1f,0x90,0xe0]
.code32
nand %d14, %d15, %d1

# CHECK-INST: nand %d14, %d15, %d14
# CHECK: encoding: [0x0f,0xef,0x90,0xe0]
.code32
nand %d14, %d15, %d14

# CHECK-INST: nand %d14, %d15, %d15
# CHECK: encoding: [0x0f,0xff,0x90,0xe0]
.code32
nand %d14, %d15, %d15

# CHECK-INST: nand %d15, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0x90,0xf0]
.code32
nand %d15, %d0, %d0

# CHECK-INST: nand %d15, %d0, %d1
# CHECK: encoding: [0x0f,0x10,0x90,0xf0]
.code32
nand %d15, %d0, %d1

# CHECK-INST: nand %d15, %d0, %d14
# CHECK: encoding: [0x0f,0xe0,0x90,0xf0]
.code32
nand %d15, %d0, %d14

# CHECK-INST: nand %d15, %d0, %d15
# CHECK: encoding: [0x0f,0xf0,0x90,0xf0]
.code32
nand %d15, %d0, %d15

# CHECK-INST: nand %d15, %d1, %d0
# CHECK: encoding: [0x0f,0x01,0x90,0xf0]
.code32
nand %d15, %d1, %d0

# CHECK-INST: nand %d15, %d1, %d1
# CHECK: encoding: [0x0f,0x11,0x90,0xf0]
.code32
nand %d15, %d1, %d1

# CHECK-INST: nand %d15, %d1, %d14
# CHECK: encoding: [0x0f,0xe1,0x90,0xf0]
.code32
nand %d15, %d1, %d14

# CHECK-INST: nand %d15, %d1, %d15
# CHECK: encoding: [0x0f,0xf1,0x90,0xf0]
.code32
nand %d15, %d1, %d15

# CHECK-INST: nand %d15, %d14, %d0
# CHECK: encoding: [0x0f,0x0e,0x90,0xf0]
.code32
nand %d15, %d14, %d0

# CHECK-INST: nand %d15, %d14, %d1
# CHECK: encoding: [0x0f,0x1e,0x90,0xf0]
.code32
nand %d15, %d14, %d1

# CHECK-INST: nand %d15, %d14, %d14
# CHECK: encoding: [0x0f,0xee,0x90,0xf0]
.code32
nand %d15, %d14, %d14

# CHECK-INST: nand %d15, %d14, %d15
# CHECK: encoding: [0x0f,0xfe,0x90,0xf0]
.code32
nand %d15, %d14, %d15

# CHECK-INST: nand %d15, %d15, %d0
# CHECK: encoding: [0x0f,0x0f,0x90,0xf0]
.code32
nand %d15, %d15, %d0

# CHECK-INST: nand %d15, %d15, %d1
# CHECK: encoding: [0x0f,0x1f,0x90,0xf0]
.code32
nand %d15, %d15, %d1

# CHECK-INST: nand %d15, %d15, %d14
# CHECK: encoding: [0x0f,0xef,0x90,0xf0]
.code32
nand %d15, %d15, %d14

# CHECK-INST: nand %d15, %d15, %d15
# CHECK: encoding: [0x0f,0xff,0x90,0xf0]
.code32
nand %d15, %d15, %d15

# CHECK-INST: nand %d0, %d0, 271
# CHECK: encoding: [0x8f,0xf0,0x30,0x01]
.code32
nand %d0, %d0, 271

# CHECK-INST: nand %d0, %d0, 496
# CHECK: encoding: [0x8f,0x00,0x3f,0x01]
.code32
nand %d0, %d0, 496

# CHECK-INST: nand %d0, %d0, 511
# CHECK: encoding: [0x8f,0xf0,0x3f,0x01]
.code32
nand %d0, %d0, 511

# CHECK-INST: nand %d0, %d1, 271
# CHECK: encoding: [0x8f,0xf1,0x30,0x01]
.code32
nand %d0, %d1, 271

# CHECK-INST: nand %d0, %d1, 496
# CHECK: encoding: [0x8f,0x01,0x3f,0x01]
.code32
nand %d0, %d1, 496

# CHECK-INST: nand %d0, %d1, 511
# CHECK: encoding: [0x8f,0xf1,0x3f,0x01]
.code32
nand %d0, %d1, 511

# CHECK-INST: nand %d0, %d14, 271
# CHECK: encoding: [0x8f,0xfe,0x30,0x01]
.code32
nand %d0, %d14, 271

# CHECK-INST: nand %d0, %d14, 496
# CHECK: encoding: [0x8f,0x0e,0x3f,0x01]
.code32
nand %d0, %d14, 496

# CHECK-INST: nand %d0, %d14, 511
# CHECK: encoding: [0x8f,0xfe,0x3f,0x01]
.code32
nand %d0, %d14, 511

# CHECK-INST: nand %d0, %d15, 271
# CHECK: encoding: [0x8f,0xff,0x30,0x01]
.code32
nand %d0, %d15, 271

# CHECK-INST: nand %d0, %d15, 496
# CHECK: encoding: [0x8f,0x0f,0x3f,0x01]
.code32
nand %d0, %d15, 496

# CHECK-INST: nand %d0, %d15, 511
# CHECK: encoding: [0x8f,0xff,0x3f,0x01]
.code32
nand %d0, %d15, 511

# CHECK-INST: nand %d1, %d0, 271
# CHECK: encoding: [0x8f,0xf0,0x30,0x11]
.code32
nand %d1, %d0, 271

# CHECK-INST: nand %d1, %d0, 496
# CHECK: encoding: [0x8f,0x00,0x3f,0x11]
.code32
nand %d1, %d0, 496

# CHECK-INST: nand %d1, %d0, 511
# CHECK: encoding: [0x8f,0xf0,0x3f,0x11]
.code32
nand %d1, %d0, 511

# CHECK-INST: nand %d1, %d1, 271
# CHECK: encoding: [0x8f,0xf1,0x30,0x11]
.code32
nand %d1, %d1, 271

# CHECK-INST: nand %d1, %d1, 496
# CHECK: encoding: [0x8f,0x01,0x3f,0x11]
.code32
nand %d1, %d1, 496

# CHECK-INST: nand %d1, %d1, 511
# CHECK: encoding: [0x8f,0xf1,0x3f,0x11]
.code32
nand %d1, %d1, 511

# CHECK-INST: nand %d1, %d14, 271
# CHECK: encoding: [0x8f,0xfe,0x30,0x11]
.code32
nand %d1, %d14, 271

# CHECK-INST: nand %d1, %d14, 496
# CHECK: encoding: [0x8f,0x0e,0x3f,0x11]
.code32
nand %d1, %d14, 496

# CHECK-INST: nand %d1, %d14, 511
# CHECK: encoding: [0x8f,0xfe,0x3f,0x11]
.code32
nand %d1, %d14, 511

# CHECK-INST: nand %d1, %d15, 271
# CHECK: encoding: [0x8f,0xff,0x30,0x11]
.code32
nand %d1, %d15, 271

# CHECK-INST: nand %d1, %d15, 496
# CHECK: encoding: [0x8f,0x0f,0x3f,0x11]
.code32
nand %d1, %d15, 496

# CHECK-INST: nand %d1, %d15, 511
# CHECK: encoding: [0x8f,0xff,0x3f,0x11]
.code32
nand %d1, %d15, 511

# CHECK-INST: nand %d14, %d0, 271
# CHECK: encoding: [0x8f,0xf0,0x30,0xe1]
.code32
nand %d14, %d0, 271

# CHECK-INST: nand %d14, %d0, 496
# CHECK: encoding: [0x8f,0x00,0x3f,0xe1]
.code32
nand %d14, %d0, 496

# CHECK-INST: nand %d14, %d0, 511
# CHECK: encoding: [0x8f,0xf0,0x3f,0xe1]
.code32
nand %d14, %d0, 511

# CHECK-INST: nand %d14, %d1, 271
# CHECK: encoding: [0x8f,0xf1,0x30,0xe1]
.code32
nand %d14, %d1, 271

# CHECK-INST: nand %d14, %d1, 496
# CHECK: encoding: [0x8f,0x01,0x3f,0xe1]
.code32
nand %d14, %d1, 496

# CHECK-INST: nand %d14, %d1, 511
# CHECK: encoding: [0x8f,0xf1,0x3f,0xe1]
.code32
nand %d14, %d1, 511

# CHECK-INST: nand %d14, %d14, 271
# CHECK: encoding: [0x8f,0xfe,0x30,0xe1]
.code32
nand %d14, %d14, 271

# CHECK-INST: nand %d14, %d14, 496
# CHECK: encoding: [0x8f,0x0e,0x3f,0xe1]
.code32
nand %d14, %d14, 496

# CHECK-INST: nand %d14, %d14, 511
# CHECK: encoding: [0x8f,0xfe,0x3f,0xe1]
.code32
nand %d14, %d14, 511

# CHECK-INST: nand %d14, %d15, 271
# CHECK: encoding: [0x8f,0xff,0x30,0xe1]
.code32
nand %d14, %d15, 271

# CHECK-INST: nand %d14, %d15, 496
# CHECK: encoding: [0x8f,0x0f,0x3f,0xe1]
.code32
nand %d14, %d15, 496

# CHECK-INST: nand %d14, %d15, 511
# CHECK: encoding: [0x8f,0xff,0x3f,0xe1]
.code32
nand %d14, %d15, 511

# CHECK-INST: nand %d15, %d0, 271
# CHECK: encoding: [0x8f,0xf0,0x30,0xf1]
.code32
nand %d15, %d0, 271

# CHECK-INST: nand %d15, %d0, 496
# CHECK: encoding: [0x8f,0x00,0x3f,0xf1]
.code32
nand %d15, %d0, 496

# CHECK-INST: nand %d15, %d0, 511
# CHECK: encoding: [0x8f,0xf0,0x3f,0xf1]
.code32
nand %d15, %d0, 511

# CHECK-INST: nand %d15, %d1, 271
# CHECK: encoding: [0x8f,0xf1,0x30,0xf1]
.code32
nand %d15, %d1, 271

# CHECK-INST: nand %d15, %d1, 496
# CHECK: encoding: [0x8f,0x01,0x3f,0xf1]
.code32
nand %d15, %d1, 496

# CHECK-INST: nand %d15, %d1, 511
# CHECK: encoding: [0x8f,0xf1,0x3f,0xf1]
.code32
nand %d15, %d1, 511

# CHECK-INST: nand %d15, %d14, 271
# CHECK: encoding: [0x8f,0xfe,0x30,0xf1]
.code32
nand %d15, %d14, 271

# CHECK-INST: nand %d15, %d14, 496
# CHECK: encoding: [0x8f,0x0e,0x3f,0xf1]
.code32
nand %d15, %d14, 496

# CHECK-INST: nand %d15, %d14, 511
# CHECK: encoding: [0x8f,0xfe,0x3f,0xf1]
.code32
nand %d15, %d14, 511

# CHECK-INST: nand %d15, %d15, 271
# CHECK: encoding: [0x8f,0xff,0x30,0xf1]
.code32
nand %d15, %d15, 271

# CHECK-INST: nand %d15, %d15, 496
# CHECK: encoding: [0x8f,0x0f,0x3f,0xf1]
.code32
nand %d15, %d15, 496

# CHECK-INST: nand %d15, %d15, 511
# CHECK: encoding: [0x8f,0xff,0x3f,0xf1]
.code32
nand %d15, %d15, 511

# CHECK-INST: nor %d0, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0xb0,0x00]
.code32
nor %d0, %d0, %d0

# CHECK-INST: nor %d0, %d0, %d1
# CHECK: encoding: [0x0f,0x10,0xb0,0x00]
.code32
nor %d0, %d0, %d1

# CHECK-INST: nor %d0, %d0, %d14
# CHECK: encoding: [0x0f,0xe0,0xb0,0x00]
.code32
nor %d0, %d0, %d14

# CHECK-INST: nor %d0, %d0, %d15
# CHECK: encoding: [0x0f,0xf0,0xb0,0x00]
.code32
nor %d0, %d0, %d15

# CHECK-INST: nor %d0, %d1, %d0
# CHECK: encoding: [0x0f,0x01,0xb0,0x00]
.code32
nor %d0, %d1, %d0

# CHECK-INST: nor %d0, %d1, %d1
# CHECK: encoding: [0x0f,0x11,0xb0,0x00]
.code32
nor %d0, %d1, %d1

# CHECK-INST: nor %d0, %d1, %d14
# CHECK: encoding: [0x0f,0xe1,0xb0,0x00]
.code32
nor %d0, %d1, %d14

# CHECK-INST: nor %d0, %d1, %d15
# CHECK: encoding: [0x0f,0xf1,0xb0,0x00]
.code32
nor %d0, %d1, %d15

# CHECK-INST: nor %d0, %d14, %d0
# CHECK: encoding: [0x0f,0x0e,0xb0,0x00]
.code32
nor %d0, %d14, %d0

# CHECK-INST: nor %d0, %d14, %d1
# CHECK: encoding: [0x0f,0x1e,0xb0,0x00]
.code32
nor %d0, %d14, %d1

# CHECK-INST: nor %d0, %d14, %d14
# CHECK: encoding: [0x0f,0xee,0xb0,0x00]
.code32
nor %d0, %d14, %d14

# CHECK-INST: nor %d0, %d14, %d15
# CHECK: encoding: [0x0f,0xfe,0xb0,0x00]
.code32
nor %d0, %d14, %d15

# CHECK-INST: nor %d0, %d15, %d0
# CHECK: encoding: [0x0f,0x0f,0xb0,0x00]
.code32
nor %d0, %d15, %d0

# CHECK-INST: nor %d0, %d15, %d1
# CHECK: encoding: [0x0f,0x1f,0xb0,0x00]
.code32
nor %d0, %d15, %d1

# CHECK-INST: nor %d0, %d15, %d14
# CHECK: encoding: [0x0f,0xef,0xb0,0x00]
.code32
nor %d0, %d15, %d14

# CHECK-INST: nor %d0, %d15, %d15
# CHECK: encoding: [0x0f,0xff,0xb0,0x00]
.code32
nor %d0, %d15, %d15

# CHECK-INST: nor %d1, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0xb0,0x10]
.code32
nor %d1, %d0, %d0

# CHECK-INST: nor %d1, %d0, %d1
# CHECK: encoding: [0x0f,0x10,0xb0,0x10]
.code32
nor %d1, %d0, %d1

# CHECK-INST: nor %d1, %d0, %d14
# CHECK: encoding: [0x0f,0xe0,0xb0,0x10]
.code32
nor %d1, %d0, %d14

# CHECK-INST: nor %d1, %d0, %d15
# CHECK: encoding: [0x0f,0xf0,0xb0,0x10]
.code32
nor %d1, %d0, %d15

# CHECK-INST: nor %d1, %d1, %d0
# CHECK: encoding: [0x0f,0x01,0xb0,0x10]
.code32
nor %d1, %d1, %d0

# CHECK-INST: nor %d1, %d1, %d1
# CHECK: encoding: [0x0f,0x11,0xb0,0x10]
.code32
nor %d1, %d1, %d1

# CHECK-INST: nor %d1, %d1, %d14
# CHECK: encoding: [0x0f,0xe1,0xb0,0x10]
.code32
nor %d1, %d1, %d14

# CHECK-INST: nor %d1, %d1, %d15
# CHECK: encoding: [0x0f,0xf1,0xb0,0x10]
.code32
nor %d1, %d1, %d15

# CHECK-INST: nor %d1, %d14, %d0
# CHECK: encoding: [0x0f,0x0e,0xb0,0x10]
.code32
nor %d1, %d14, %d0

# CHECK-INST: nor %d1, %d14, %d1
# CHECK: encoding: [0x0f,0x1e,0xb0,0x10]
.code32
nor %d1, %d14, %d1

# CHECK-INST: nor %d1, %d14, %d14
# CHECK: encoding: [0x0f,0xee,0xb0,0x10]
.code32
nor %d1, %d14, %d14

# CHECK-INST: nor %d1, %d14, %d15
# CHECK: encoding: [0x0f,0xfe,0xb0,0x10]
.code32
nor %d1, %d14, %d15

# CHECK-INST: nor %d1, %d15, %d0
# CHECK: encoding: [0x0f,0x0f,0xb0,0x10]
.code32
nor %d1, %d15, %d0

# CHECK-INST: nor %d1, %d15, %d1
# CHECK: encoding: [0x0f,0x1f,0xb0,0x10]
.code32
nor %d1, %d15, %d1

# CHECK-INST: nor %d1, %d15, %d14
# CHECK: encoding: [0x0f,0xef,0xb0,0x10]
.code32
nor %d1, %d15, %d14

# CHECK-INST: nor %d1, %d15, %d15
# CHECK: encoding: [0x0f,0xff,0xb0,0x10]
.code32
nor %d1, %d15, %d15

# CHECK-INST: nor %d14, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0xb0,0xe0]
.code32
nor %d14, %d0, %d0

# CHECK-INST: nor %d14, %d0, %d1
# CHECK: encoding: [0x0f,0x10,0xb0,0xe0]
.code32
nor %d14, %d0, %d1

# CHECK-INST: nor %d14, %d0, %d14
# CHECK: encoding: [0x0f,0xe0,0xb0,0xe0]
.code32
nor %d14, %d0, %d14

# CHECK-INST: nor %d14, %d0, %d15
# CHECK: encoding: [0x0f,0xf0,0xb0,0xe0]
.code32
nor %d14, %d0, %d15

# CHECK-INST: nor %d14, %d1, %d0
# CHECK: encoding: [0x0f,0x01,0xb0,0xe0]
.code32
nor %d14, %d1, %d0

# CHECK-INST: nor %d14, %d1, %d1
# CHECK: encoding: [0x0f,0x11,0xb0,0xe0]
.code32
nor %d14, %d1, %d1

# CHECK-INST: nor %d14, %d1, %d14
# CHECK: encoding: [0x0f,0xe1,0xb0,0xe0]
.code32
nor %d14, %d1, %d14

# CHECK-INST: nor %d14, %d1, %d15
# CHECK: encoding: [0x0f,0xf1,0xb0,0xe0]
.code32
nor %d14, %d1, %d15

# CHECK-INST: nor %d14, %d14, %d0
# CHECK: encoding: [0x0f,0x0e,0xb0,0xe0]
.code32
nor %d14, %d14, %d0

# CHECK-INST: nor %d14, %d14, %d1
# CHECK: encoding: [0x0f,0x1e,0xb0,0xe0]
.code32
nor %d14, %d14, %d1

# CHECK-INST: nor %d14, %d14, %d14
# CHECK: encoding: [0x0f,0xee,0xb0,0xe0]
.code32
nor %d14, %d14, %d14

# CHECK-INST: nor %d14, %d14, %d15
# CHECK: encoding: [0x0f,0xfe,0xb0,0xe0]
.code32
nor %d14, %d14, %d15

# CHECK-INST: nor %d14, %d15, %d0
# CHECK: encoding: [0x0f,0x0f,0xb0,0xe0]
.code32
nor %d14, %d15, %d0

# CHECK-INST: nor %d14, %d15, %d1
# CHECK: encoding: [0x0f,0x1f,0xb0,0xe0]
.code32
nor %d14, %d15, %d1

# CHECK-INST: nor %d14, %d15, %d14
# CHECK: encoding: [0x0f,0xef,0xb0,0xe0]
.code32
nor %d14, %d15, %d14

# CHECK-INST: nor %d14, %d15, %d15
# CHECK: encoding: [0x0f,0xff,0xb0,0xe0]
.code32
nor %d14, %d15, %d15

# CHECK-INST: nor %d15, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0xb0,0xf0]
.code32
nor %d15, %d0, %d0

# CHECK-INST: nor %d15, %d0, %d1
# CHECK: encoding: [0x0f,0x10,0xb0,0xf0]
.code32
nor %d15, %d0, %d1

# CHECK-INST: nor %d15, %d0, %d14
# CHECK: encoding: [0x0f,0xe0,0xb0,0xf0]
.code32
nor %d15, %d0, %d14

# CHECK-INST: nor %d15, %d0, %d15
# CHECK: encoding: [0x0f,0xf0,0xb0,0xf0]
.code32
nor %d15, %d0, %d15

# CHECK-INST: nor %d15, %d1, %d0
# CHECK: encoding: [0x0f,0x01,0xb0,0xf0]
.code32
nor %d15, %d1, %d0

# CHECK-INST: nor %d15, %d1, %d1
# CHECK: encoding: [0x0f,0x11,0xb0,0xf0]
.code32
nor %d15, %d1, %d1

# CHECK-INST: nor %d15, %d1, %d14
# CHECK: encoding: [0x0f,0xe1,0xb0,0xf0]
.code32
nor %d15, %d1, %d14

# CHECK-INST: nor %d15, %d1, %d15
# CHECK: encoding: [0x0f,0xf1,0xb0,0xf0]
.code32
nor %d15, %d1, %d15

# CHECK-INST: nor %d15, %d14, %d0
# CHECK: encoding: [0x0f,0x0e,0xb0,0xf0]
.code32
nor %d15, %d14, %d0

# CHECK-INST: nor %d15, %d14, %d1
# CHECK: encoding: [0x0f,0x1e,0xb0,0xf0]
.code32
nor %d15, %d14, %d1

# CHECK-INST: nor %d15, %d14, %d14
# CHECK: encoding: [0x0f,0xee,0xb0,0xf0]
.code32
nor %d15, %d14, %d14

# CHECK-INST: nor %d15, %d14, %d15
# CHECK: encoding: [0x0f,0xfe,0xb0,0xf0]
.code32
nor %d15, %d14, %d15

# CHECK-INST: nor %d15, %d15, %d0
# CHECK: encoding: [0x0f,0x0f,0xb0,0xf0]
.code32
nor %d15, %d15, %d0

# CHECK-INST: nor %d15, %d15, %d1
# CHECK: encoding: [0x0f,0x1f,0xb0,0xf0]
.code32
nor %d15, %d15, %d1

# CHECK-INST: nor %d15, %d15, %d14
# CHECK: encoding: [0x0f,0xef,0xb0,0xf0]
.code32
nor %d15, %d15, %d14

# CHECK-INST: nor %d15, %d15, %d15
# CHECK: encoding: [0x0f,0xff,0xb0,0xf0]
.code32
nor %d15, %d15, %d15

# CHECK-INST: nor %d0, %d0, 271
# CHECK: encoding: [0x8f,0xf0,0x70,0x01]
.code32
nor %d0, %d0, 271

# CHECK-INST: nor %d0, %d0, 496
# CHECK: encoding: [0x8f,0x00,0x7f,0x01]
.code32
nor %d0, %d0, 496

# CHECK-INST: nor %d0, %d0, 511
# CHECK: encoding: [0x8f,0xf0,0x7f,0x01]
.code32
nor %d0, %d0, 511

# CHECK-INST: nor %d0, %d1, 271
# CHECK: encoding: [0x8f,0xf1,0x70,0x01]
.code32
nor %d0, %d1, 271

# CHECK-INST: nor %d0, %d1, 496
# CHECK: encoding: [0x8f,0x01,0x7f,0x01]
.code32
nor %d0, %d1, 496

# CHECK-INST: nor %d0, %d1, 511
# CHECK: encoding: [0x8f,0xf1,0x7f,0x01]
.code32
nor %d0, %d1, 511

# CHECK-INST: nor %d0, %d14, 271
# CHECK: encoding: [0x8f,0xfe,0x70,0x01]
.code32
nor %d0, %d14, 271

# CHECK-INST: nor %d0, %d14, 496
# CHECK: encoding: [0x8f,0x0e,0x7f,0x01]
.code32
nor %d0, %d14, 496

# CHECK-INST: nor %d0, %d14, 511
# CHECK: encoding: [0x8f,0xfe,0x7f,0x01]
.code32
nor %d0, %d14, 511

# CHECK-INST: nor %d0, %d15, 271
# CHECK: encoding: [0x8f,0xff,0x70,0x01]
.code32
nor %d0, %d15, 271

# CHECK-INST: nor %d0, %d15, 496
# CHECK: encoding: [0x8f,0x0f,0x7f,0x01]
.code32
nor %d0, %d15, 496

# CHECK-INST: nor %d0, %d15, 511
# CHECK: encoding: [0x8f,0xff,0x7f,0x01]
.code32
nor %d0, %d15, 511

# CHECK-INST: nor %d1, %d0, 271
# CHECK: encoding: [0x8f,0xf0,0x70,0x11]
.code32
nor %d1, %d0, 271

# CHECK-INST: nor %d1, %d0, 496
# CHECK: encoding: [0x8f,0x00,0x7f,0x11]
.code32
nor %d1, %d0, 496

# CHECK-INST: nor %d1, %d0, 511
# CHECK: encoding: [0x8f,0xf0,0x7f,0x11]
.code32
nor %d1, %d0, 511

# CHECK-INST: nor %d1, %d1, 271
# CHECK: encoding: [0x8f,0xf1,0x70,0x11]
.code32
nor %d1, %d1, 271

# CHECK-INST: nor %d1, %d1, 496
# CHECK: encoding: [0x8f,0x01,0x7f,0x11]
.code32
nor %d1, %d1, 496

# CHECK-INST: nor %d1, %d1, 511
# CHECK: encoding: [0x8f,0xf1,0x7f,0x11]
.code32
nor %d1, %d1, 511

# CHECK-INST: nor %d1, %d14, 271
# CHECK: encoding: [0x8f,0xfe,0x70,0x11]
.code32
nor %d1, %d14, 271

# CHECK-INST: nor %d1, %d14, 496
# CHECK: encoding: [0x8f,0x0e,0x7f,0x11]
.code32
nor %d1, %d14, 496

# CHECK-INST: nor %d1, %d14, 511
# CHECK: encoding: [0x8f,0xfe,0x7f,0x11]
.code32
nor %d1, %d14, 511

# CHECK-INST: nor %d1, %d15, 271
# CHECK: encoding: [0x8f,0xff,0x70,0x11]
.code32
nor %d1, %d15, 271

# CHECK-INST: nor %d1, %d15, 496
# CHECK: encoding: [0x8f,0x0f,0x7f,0x11]
.code32
nor %d1, %d15, 496

# CHECK-INST: nor %d1, %d15, 511
# CHECK: encoding: [0x8f,0xff,0x7f,0x11]
.code32
nor %d1, %d15, 511

# CHECK-INST: nor %d14, %d0, 271
# CHECK: encoding: [0x8f,0xf0,0x70,0xe1]
.code32
nor %d14, %d0, 271

# CHECK-INST: nor %d14, %d0, 496
# CHECK: encoding: [0x8f,0x00,0x7f,0xe1]
.code32
nor %d14, %d0, 496

# CHECK-INST: nor %d14, %d0, 511
# CHECK: encoding: [0x8f,0xf0,0x7f,0xe1]
.code32
nor %d14, %d0, 511

# CHECK-INST: nor %d14, %d1, 271
# CHECK: encoding: [0x8f,0xf1,0x70,0xe1]
.code32
nor %d14, %d1, 271

# CHECK-INST: nor %d14, %d1, 496
# CHECK: encoding: [0x8f,0x01,0x7f,0xe1]
.code32
nor %d14, %d1, 496

# CHECK-INST: nor %d14, %d1, 511
# CHECK: encoding: [0x8f,0xf1,0x7f,0xe1]
.code32
nor %d14, %d1, 511

# CHECK-INST: nor %d14, %d14, 271
# CHECK: encoding: [0x8f,0xfe,0x70,0xe1]
.code32
nor %d14, %d14, 271

# CHECK-INST: nor %d14, %d14, 496
# CHECK: encoding: [0x8f,0x0e,0x7f,0xe1]
.code32
nor %d14, %d14, 496

# CHECK-INST: nor %d14, %d14, 511
# CHECK: encoding: [0x8f,0xfe,0x7f,0xe1]
.code32
nor %d14, %d14, 511

# CHECK-INST: nor %d14, %d15, 271
# CHECK: encoding: [0x8f,0xff,0x70,0xe1]
.code32
nor %d14, %d15, 271

# CHECK-INST: nor %d14, %d15, 496
# CHECK: encoding: [0x8f,0x0f,0x7f,0xe1]
.code32
nor %d14, %d15, 496

# CHECK-INST: nor %d14, %d15, 511
# CHECK: encoding: [0x8f,0xff,0x7f,0xe1]
.code32
nor %d14, %d15, 511

# CHECK-INST: nor %d15, %d0, 271
# CHECK: encoding: [0x8f,0xf0,0x70,0xf1]
.code32
nor %d15, %d0, 271

# CHECK-INST: nor %d15, %d0, 496
# CHECK: encoding: [0x8f,0x00,0x7f,0xf1]
.code32
nor %d15, %d0, 496

# CHECK-INST: nor %d15, %d0, 511
# CHECK: encoding: [0x8f,0xf0,0x7f,0xf1]
.code32
nor %d15, %d0, 511

# CHECK-INST: nor %d15, %d1, 271
# CHECK: encoding: [0x8f,0xf1,0x70,0xf1]
.code32
nor %d15, %d1, 271

# CHECK-INST: nor %d15, %d1, 496
# CHECK: encoding: [0x8f,0x01,0x7f,0xf1]
.code32
nor %d15, %d1, 496

# CHECK-INST: nor %d15, %d1, 511
# CHECK: encoding: [0x8f,0xf1,0x7f,0xf1]
.code32
nor %d15, %d1, 511

# CHECK-INST: nor %d15, %d14, 271
# CHECK: encoding: [0x8f,0xfe,0x70,0xf1]
.code32
nor %d15, %d14, 271

# CHECK-INST: nor %d15, %d14, 496
# CHECK: encoding: [0x8f,0x0e,0x7f,0xf1]
.code32
nor %d15, %d14, 496

# CHECK-INST: nor %d15, %d14, 511
# CHECK: encoding: [0x8f,0xfe,0x7f,0xf1]
.code32
nor %d15, %d14, 511

# CHECK-INST: nor %d15, %d15, 271
# CHECK: encoding: [0x8f,0xff,0x70,0xf1]
.code32
nor %d15, %d15, 271

# CHECK-INST: nor %d15, %d15, 496
# CHECK: encoding: [0x8f,0x0f,0x7f,0xf1]
.code32
nor %d15, %d15, 496

# CHECK-INST: nor %d15, %d15, 511
# CHECK: encoding: [0x8f,0xff,0x7f,0xf1]
.code32
nor %d15, %d15, 511

# CHECK-INST: not %d0
# CHECK: encoding: [0x46,0x00]
.code16
not %d0

# CHECK-INST: not %d1
# CHECK: encoding: [0x46,0x01]
.code16
not %d1

# CHECK-INST: not %d14
# CHECK: encoding: [0x46,0x0e]
.code16
not %d14

# CHECK-INST: not %d15
# CHECK: encoding: [0x46,0x0f]
.code16
not %d15

# CHECK-INST: or %d15, 0
# CHECK: encoding: [0x96,0x00]
.code16
or %d15, 0

# CHECK-INST: or %d15, 1
# CHECK: encoding: [0x96,0x01]
.code16
or %d15, 1

# CHECK-INST: or %d15, 16
# CHECK: encoding: [0x96,0x10]
.code16
or %d15, 16

# CHECK-INST: or %d15, 255
# CHECK: encoding: [0x96,0xff]
.code16
or %d15, 255

# CHECK-INST: or %d0, %d0
# CHECK: encoding: [0xa6,0x00]
.code16
or %d0, %d0

# CHECK-INST: or %d0, %d1
# CHECK: encoding: [0xa6,0x10]
.code16
or %d0, %d1

# CHECK-INST: or %d0, %d14
# CHECK: encoding: [0xa6,0xe0]
.code16
or %d0, %d14

# CHECK-INST: or %d0, %d15
# CHECK: encoding: [0xa6,0xf0]
.code16
or %d0, %d15

# CHECK-INST: or %d1, %d0
# CHECK: encoding: [0xa6,0x01]
.code16
or %d1, %d0

# CHECK-INST: or %d1, %d1
# CHECK: encoding: [0xa6,0x11]
.code16
or %d1, %d1

# CHECK-INST: or %d1, %d14
# CHECK: encoding: [0xa6,0xe1]
.code16
or %d1, %d14

# CHECK-INST: or %d1, %d15
# CHECK: encoding: [0xa6,0xf1]
.code16
or %d1, %d15

# CHECK-INST: or %d14, %d0
# CHECK: encoding: [0xa6,0x0e]
.code16
or %d14, %d0

# CHECK-INST: or %d14, %d1
# CHECK: encoding: [0xa6,0x1e]
.code16
or %d14, %d1

# CHECK-INST: or %d14, %d14
# CHECK: encoding: [0xa6,0xee]
.code16
or %d14, %d14

# CHECK-INST: or %d14, %d15
# CHECK: encoding: [0xa6,0xfe]
.code16
or %d14, %d15

# CHECK-INST: or %d15, %d0
# CHECK: encoding: [0xa6,0x0f]
.code16
or %d15, %d0

# CHECK-INST: or %d15, %d1
# CHECK: encoding: [0xa6,0x1f]
.code16
or %d15, %d1

# CHECK-INST: or %d15, %d14
# CHECK: encoding: [0xa6,0xef]
.code16
or %d15, %d14

# CHECK-INST: or %d15, %d15
# CHECK: encoding: [0xa6,0xff]
.code16
or %d15, %d15

# CHECK-INST: or %d0, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0xa0,0x00]
.code32
or %d0, %d0, %d0

# CHECK-INST: or %d0, %d0, %d1
# CHECK: encoding: [0x0f,0x10,0xa0,0x00]
.code32
or %d0, %d0, %d1

# CHECK-INST: or %d0, %d0, %d14
# CHECK: encoding: [0x0f,0xe0,0xa0,0x00]
.code32
or %d0, %d0, %d14

# CHECK-INST: or %d0, %d0, %d15
# CHECK: encoding: [0x0f,0xf0,0xa0,0x00]
.code32
or %d0, %d0, %d15

# CHECK-INST: or %d0, %d1, %d0
# CHECK: encoding: [0x0f,0x01,0xa0,0x00]
.code32
or %d0, %d1, %d0

# CHECK-INST: or %d0, %d1, %d1
# CHECK: encoding: [0x0f,0x11,0xa0,0x00]
.code32
or %d0, %d1, %d1

# CHECK-INST: or %d0, %d1, %d14
# CHECK: encoding: [0x0f,0xe1,0xa0,0x00]
.code32
or %d0, %d1, %d14

# CHECK-INST: or %d0, %d1, %d15
# CHECK: encoding: [0x0f,0xf1,0xa0,0x00]
.code32
or %d0, %d1, %d15

# CHECK-INST: or %d0, %d14, %d0
# CHECK: encoding: [0x0f,0x0e,0xa0,0x00]
.code32
or %d0, %d14, %d0

# CHECK-INST: or %d0, %d14, %d1
# CHECK: encoding: [0x0f,0x1e,0xa0,0x00]
.code32
or %d0, %d14, %d1

# CHECK-INST: or %d0, %d14, %d14
# CHECK: encoding: [0x0f,0xee,0xa0,0x00]
.code32
or %d0, %d14, %d14

# CHECK-INST: or %d0, %d14, %d15
# CHECK: encoding: [0x0f,0xfe,0xa0,0x00]
.code32
or %d0, %d14, %d15

# CHECK-INST: or %d0, %d15, %d0
# CHECK: encoding: [0x0f,0x0f,0xa0,0x00]
.code32
or %d0, %d15, %d0

# CHECK-INST: or %d0, %d15, %d1
# CHECK: encoding: [0x0f,0x1f,0xa0,0x00]
.code32
or %d0, %d15, %d1

# CHECK-INST: or %d0, %d15, %d14
# CHECK: encoding: [0x0f,0xef,0xa0,0x00]
.code32
or %d0, %d15, %d14

# CHECK-INST: or %d0, %d15, %d15
# CHECK: encoding: [0x0f,0xff,0xa0,0x00]
.code32
or %d0, %d15, %d15

# CHECK-INST: or %d1, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0xa0,0x10]
.code32
or %d1, %d0, %d0

# CHECK-INST: or %d1, %d0, %d1
# CHECK: encoding: [0x0f,0x10,0xa0,0x10]
.code32
or %d1, %d0, %d1

# CHECK-INST: or %d1, %d0, %d14
# CHECK: encoding: [0x0f,0xe0,0xa0,0x10]
.code32
or %d1, %d0, %d14

# CHECK-INST: or %d1, %d0, %d15
# CHECK: encoding: [0x0f,0xf0,0xa0,0x10]
.code32
or %d1, %d0, %d15

# CHECK-INST: or %d1, %d1, %d0
# CHECK: encoding: [0x0f,0x01,0xa0,0x10]
.code32
or %d1, %d1, %d0

# CHECK-INST: or %d1, %d1, %d1
# CHECK: encoding: [0x0f,0x11,0xa0,0x10]
.code32
or %d1, %d1, %d1

# CHECK-INST: or %d1, %d1, %d14
# CHECK: encoding: [0x0f,0xe1,0xa0,0x10]
.code32
or %d1, %d1, %d14

# CHECK-INST: or %d1, %d1, %d15
# CHECK: encoding: [0x0f,0xf1,0xa0,0x10]
.code32
or %d1, %d1, %d15

# CHECK-INST: or %d1, %d14, %d0
# CHECK: encoding: [0x0f,0x0e,0xa0,0x10]
.code32
or %d1, %d14, %d0

# CHECK-INST: or %d1, %d14, %d1
# CHECK: encoding: [0x0f,0x1e,0xa0,0x10]
.code32
or %d1, %d14, %d1

# CHECK-INST: or %d1, %d14, %d14
# CHECK: encoding: [0x0f,0xee,0xa0,0x10]
.code32
or %d1, %d14, %d14

# CHECK-INST: or %d1, %d14, %d15
# CHECK: encoding: [0x0f,0xfe,0xa0,0x10]
.code32
or %d1, %d14, %d15

# CHECK-INST: or %d1, %d15, %d0
# CHECK: encoding: [0x0f,0x0f,0xa0,0x10]
.code32
or %d1, %d15, %d0

# CHECK-INST: or %d1, %d15, %d1
# CHECK: encoding: [0x0f,0x1f,0xa0,0x10]
.code32
or %d1, %d15, %d1

# CHECK-INST: or %d1, %d15, %d14
# CHECK: encoding: [0x0f,0xef,0xa0,0x10]
.code32
or %d1, %d15, %d14

# CHECK-INST: or %d1, %d15, %d15
# CHECK: encoding: [0x0f,0xff,0xa0,0x10]
.code32
or %d1, %d15, %d15

# CHECK-INST: or %d14, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0xa0,0xe0]
.code32
or %d14, %d0, %d0

# CHECK-INST: or %d14, %d0, %d1
# CHECK: encoding: [0x0f,0x10,0xa0,0xe0]
.code32
or %d14, %d0, %d1

# CHECK-INST: or %d14, %d0, %d14
# CHECK: encoding: [0x0f,0xe0,0xa0,0xe0]
.code32
or %d14, %d0, %d14

# CHECK-INST: or %d14, %d0, %d15
# CHECK: encoding: [0x0f,0xf0,0xa0,0xe0]
.code32
or %d14, %d0, %d15

# CHECK-INST: or %d14, %d1, %d0
# CHECK: encoding: [0x0f,0x01,0xa0,0xe0]
.code32
or %d14, %d1, %d0

# CHECK-INST: or %d14, %d1, %d1
# CHECK: encoding: [0x0f,0x11,0xa0,0xe0]
.code32
or %d14, %d1, %d1

# CHECK-INST: or %d14, %d1, %d14
# CHECK: encoding: [0x0f,0xe1,0xa0,0xe0]
.code32
or %d14, %d1, %d14

# CHECK-INST: or %d14, %d1, %d15
# CHECK: encoding: [0x0f,0xf1,0xa0,0xe0]
.code32
or %d14, %d1, %d15

# CHECK-INST: or %d14, %d14, %d0
# CHECK: encoding: [0x0f,0x0e,0xa0,0xe0]
.code32
or %d14, %d14, %d0

# CHECK-INST: or %d14, %d14, %d1
# CHECK: encoding: [0x0f,0x1e,0xa0,0xe0]
.code32
or %d14, %d14, %d1

# CHECK-INST: or %d14, %d14, %d14
# CHECK: encoding: [0x0f,0xee,0xa0,0xe0]
.code32
or %d14, %d14, %d14

# CHECK-INST: or %d14, %d14, %d15
# CHECK: encoding: [0x0f,0xfe,0xa0,0xe0]
.code32
or %d14, %d14, %d15

# CHECK-INST: or %d14, %d15, %d0
# CHECK: encoding: [0x0f,0x0f,0xa0,0xe0]
.code32
or %d14, %d15, %d0

# CHECK-INST: or %d14, %d15, %d1
# CHECK: encoding: [0x0f,0x1f,0xa0,0xe0]
.code32
or %d14, %d15, %d1

# CHECK-INST: or %d14, %d15, %d14
# CHECK: encoding: [0x0f,0xef,0xa0,0xe0]
.code32
or %d14, %d15, %d14

# CHECK-INST: or %d14, %d15, %d15
# CHECK: encoding: [0x0f,0xff,0xa0,0xe0]
.code32
or %d14, %d15, %d15

# CHECK-INST: or %d15, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0xa0,0xf0]
.code32
or %d15, %d0, %d0

# CHECK-INST: or %d15, %d0, %d1
# CHECK: encoding: [0x0f,0x10,0xa0,0xf0]
.code32
or %d15, %d0, %d1

# CHECK-INST: or %d15, %d0, %d14
# CHECK: encoding: [0x0f,0xe0,0xa0,0xf0]
.code32
or %d15, %d0, %d14

# CHECK-INST: or %d15, %d0, %d15
# CHECK: encoding: [0x0f,0xf0,0xa0,0xf0]
.code32
or %d15, %d0, %d15

# CHECK-INST: or %d15, %d1, %d0
# CHECK: encoding: [0x0f,0x01,0xa0,0xf0]
.code32
or %d15, %d1, %d0

# CHECK-INST: or %d15, %d1, %d1
# CHECK: encoding: [0x0f,0x11,0xa0,0xf0]
.code32
or %d15, %d1, %d1

# CHECK-INST: or %d15, %d1, %d14
# CHECK: encoding: [0x0f,0xe1,0xa0,0xf0]
.code32
or %d15, %d1, %d14

# CHECK-INST: or %d15, %d1, %d15
# CHECK: encoding: [0x0f,0xf1,0xa0,0xf0]
.code32
or %d15, %d1, %d15

# CHECK-INST: or %d15, %d14, %d0
# CHECK: encoding: [0x0f,0x0e,0xa0,0xf0]
.code32
or %d15, %d14, %d0

# CHECK-INST: or %d15, %d14, %d1
# CHECK: encoding: [0x0f,0x1e,0xa0,0xf0]
.code32
or %d15, %d14, %d1

# CHECK-INST: or %d15, %d14, %d14
# CHECK: encoding: [0x0f,0xee,0xa0,0xf0]
.code32
or %d15, %d14, %d14

# CHECK-INST: or %d15, %d14, %d15
# CHECK: encoding: [0x0f,0xfe,0xa0,0xf0]
.code32
or %d15, %d14, %d15

# CHECK-INST: or %d15, %d15, %d0
# CHECK: encoding: [0x0f,0x0f,0xa0,0xf0]
.code32
or %d15, %d15, %d0

# CHECK-INST: or %d15, %d15, %d1
# CHECK: encoding: [0x0f,0x1f,0xa0,0xf0]
.code32
or %d15, %d15, %d1

# CHECK-INST: or %d15, %d15, %d14
# CHECK: encoding: [0x0f,0xef,0xa0,0xf0]
.code32
or %d15, %d15, %d14

# CHECK-INST: or %d15, %d15, %d15
# CHECK: encoding: [0x0f,0xff,0xa0,0xf0]
.code32
or %d15, %d15, %d15

# CHECK-INST: or %d0, %d0, 271
# CHECK: encoding: [0x8f,0xf0,0x50,0x01]
.code32
or %d0, %d0, 271

# CHECK-INST: or %d0, %d0, 496
# CHECK: encoding: [0x8f,0x00,0x5f,0x01]
.code32
or %d0, %d0, 496

# CHECK-INST: or %d0, %d0, 511
# CHECK: encoding: [0x8f,0xf0,0x5f,0x01]
.code32
or %d0, %d0, 511

# CHECK-INST: or %d0, %d1, 271
# CHECK: encoding: [0x8f,0xf1,0x50,0x01]
.code32
or %d0, %d1, 271

# CHECK-INST: or %d0, %d1, 496
# CHECK: encoding: [0x8f,0x01,0x5f,0x01]
.code32
or %d0, %d1, 496

# CHECK-INST: or %d0, %d1, 511
# CHECK: encoding: [0x8f,0xf1,0x5f,0x01]
.code32
or %d0, %d1, 511

# CHECK-INST: or %d0, %d14, 271
# CHECK: encoding: [0x8f,0xfe,0x50,0x01]
.code32
or %d0, %d14, 271

# CHECK-INST: or %d0, %d14, 496
# CHECK: encoding: [0x8f,0x0e,0x5f,0x01]
.code32
or %d0, %d14, 496

# CHECK-INST: or %d0, %d14, 511
# CHECK: encoding: [0x8f,0xfe,0x5f,0x01]
.code32
or %d0, %d14, 511

# CHECK-INST: or %d0, %d15, 271
# CHECK: encoding: [0x8f,0xff,0x50,0x01]
.code32
or %d0, %d15, 271

# CHECK-INST: or %d0, %d15, 496
# CHECK: encoding: [0x8f,0x0f,0x5f,0x01]
.code32
or %d0, %d15, 496

# CHECK-INST: or %d0, %d15, 511
# CHECK: encoding: [0x8f,0xff,0x5f,0x01]
.code32
or %d0, %d15, 511

# CHECK-INST: or %d1, %d0, 271
# CHECK: encoding: [0x8f,0xf0,0x50,0x11]
.code32
or %d1, %d0, 271

# CHECK-INST: or %d1, %d0, 496
# CHECK: encoding: [0x8f,0x00,0x5f,0x11]
.code32
or %d1, %d0, 496

# CHECK-INST: or %d1, %d0, 511
# CHECK: encoding: [0x8f,0xf0,0x5f,0x11]
.code32
or %d1, %d0, 511

# CHECK-INST: or %d1, %d1, 271
# CHECK: encoding: [0x8f,0xf1,0x50,0x11]
.code32
or %d1, %d1, 271

# CHECK-INST: or %d1, %d1, 496
# CHECK: encoding: [0x8f,0x01,0x5f,0x11]
.code32
or %d1, %d1, 496

# CHECK-INST: or %d1, %d1, 511
# CHECK: encoding: [0x8f,0xf1,0x5f,0x11]
.code32
or %d1, %d1, 511

# CHECK-INST: or %d1, %d14, 271
# CHECK: encoding: [0x8f,0xfe,0x50,0x11]
.code32
or %d1, %d14, 271

# CHECK-INST: or %d1, %d14, 496
# CHECK: encoding: [0x8f,0x0e,0x5f,0x11]
.code32
or %d1, %d14, 496

# CHECK-INST: or %d1, %d14, 511
# CHECK: encoding: [0x8f,0xfe,0x5f,0x11]
.code32
or %d1, %d14, 511

# CHECK-INST: or %d1, %d15, 271
# CHECK: encoding: [0x8f,0xff,0x50,0x11]
.code32
or %d1, %d15, 271

# CHECK-INST: or %d1, %d15, 496
# CHECK: encoding: [0x8f,0x0f,0x5f,0x11]
.code32
or %d1, %d15, 496

# CHECK-INST: or %d1, %d15, 511
# CHECK: encoding: [0x8f,0xff,0x5f,0x11]
.code32
or %d1, %d15, 511

# CHECK-INST: or %d14, %d0, 271
# CHECK: encoding: [0x8f,0xf0,0x50,0xe1]
.code32
or %d14, %d0, 271

# CHECK-INST: or %d14, %d0, 496
# CHECK: encoding: [0x8f,0x00,0x5f,0xe1]
.code32
or %d14, %d0, 496

# CHECK-INST: or %d14, %d0, 511
# CHECK: encoding: [0x8f,0xf0,0x5f,0xe1]
.code32
or %d14, %d0, 511

# CHECK-INST: or %d14, %d1, 271
# CHECK: encoding: [0x8f,0xf1,0x50,0xe1]
.code32
or %d14, %d1, 271

# CHECK-INST: or %d14, %d1, 496
# CHECK: encoding: [0x8f,0x01,0x5f,0xe1]
.code32
or %d14, %d1, 496

# CHECK-INST: or %d14, %d1, 511
# CHECK: encoding: [0x8f,0xf1,0x5f,0xe1]
.code32
or %d14, %d1, 511

# CHECK-INST: or %d14, %d14, 271
# CHECK: encoding: [0x8f,0xfe,0x50,0xe1]
.code32
or %d14, %d14, 271

# CHECK-INST: or %d14, %d14, 496
# CHECK: encoding: [0x8f,0x0e,0x5f,0xe1]
.code32
or %d14, %d14, 496

# CHECK-INST: or %d14, %d14, 511
# CHECK: encoding: [0x8f,0xfe,0x5f,0xe1]
.code32
or %d14, %d14, 511

# CHECK-INST: or %d14, %d15, 271
# CHECK: encoding: [0x8f,0xff,0x50,0xe1]
.code32
or %d14, %d15, 271

# CHECK-INST: or %d14, %d15, 496
# CHECK: encoding: [0x8f,0x0f,0x5f,0xe1]
.code32
or %d14, %d15, 496

# CHECK-INST: or %d14, %d15, 511
# CHECK: encoding: [0x8f,0xff,0x5f,0xe1]
.code32
or %d14, %d15, 511

# CHECK-INST: or %d15, %d0, 271
# CHECK: encoding: [0x8f,0xf0,0x50,0xf1]
.code32
or %d15, %d0, 271

# CHECK-INST: or %d15, %d0, 496
# CHECK: encoding: [0x8f,0x00,0x5f,0xf1]
.code32
or %d15, %d0, 496

# CHECK-INST: or %d15, %d0, 511
# CHECK: encoding: [0x8f,0xf0,0x5f,0xf1]
.code32
or %d15, %d0, 511

# CHECK-INST: or %d15, %d1, 271
# CHECK: encoding: [0x8f,0xf1,0x50,0xf1]
.code32
or %d15, %d1, 271

# CHECK-INST: or %d15, %d1, 496
# CHECK: encoding: [0x8f,0x01,0x5f,0xf1]
.code32
or %d15, %d1, 496

# CHECK-INST: or %d15, %d1, 511
# CHECK: encoding: [0x8f,0xf1,0x5f,0xf1]
.code32
or %d15, %d1, 511

# CHECK-INST: or %d15, %d14, 271
# CHECK: encoding: [0x8f,0xfe,0x50,0xf1]
.code32
or %d15, %d14, 271

# CHECK-INST: or %d15, %d14, 496
# CHECK: encoding: [0x8f,0x0e,0x5f,0xf1]
.code32
or %d15, %d14, 496

# CHECK-INST: or %d15, %d14, 511
# CHECK: encoding: [0x8f,0xfe,0x5f,0xf1]
.code32
or %d15, %d14, 511

# CHECK-INST: or %d15, %d15, 271
# CHECK: encoding: [0x8f,0xff,0x50,0xf1]
.code32
or %d15, %d15, 271

# CHECK-INST: or %d15, %d15, 496
# CHECK: encoding: [0x8f,0x0f,0x5f,0xf1]
.code32
or %d15, %d15, 496

# CHECK-INST: or %d15, %d15, 511
# CHECK: encoding: [0x8f,0xff,0x5f,0xf1]
.code32
or %d15, %d15, 511

# CHECK-INST: orn %d0, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0xf0,0x00]
.code32
orn %d0, %d0, %d0

# CHECK-INST: orn %d0, %d0, %d1
# CHECK: encoding: [0x0f,0x10,0xf0,0x00]
.code32
orn %d0, %d0, %d1

# CHECK-INST: orn %d0, %d0, %d14
# CHECK: encoding: [0x0f,0xe0,0xf0,0x00]
.code32
orn %d0, %d0, %d14

# CHECK-INST: orn %d0, %d0, %d15
# CHECK: encoding: [0x0f,0xf0,0xf0,0x00]
.code32
orn %d0, %d0, %d15

# CHECK-INST: orn %d0, %d1, %d0
# CHECK: encoding: [0x0f,0x01,0xf0,0x00]
.code32
orn %d0, %d1, %d0

# CHECK-INST: orn %d0, %d1, %d1
# CHECK: encoding: [0x0f,0x11,0xf0,0x00]
.code32
orn %d0, %d1, %d1

# CHECK-INST: orn %d0, %d1, %d14
# CHECK: encoding: [0x0f,0xe1,0xf0,0x00]
.code32
orn %d0, %d1, %d14

# CHECK-INST: orn %d0, %d1, %d15
# CHECK: encoding: [0x0f,0xf1,0xf0,0x00]
.code32
orn %d0, %d1, %d15

# CHECK-INST: orn %d0, %d14, %d0
# CHECK: encoding: [0x0f,0x0e,0xf0,0x00]
.code32
orn %d0, %d14, %d0

# CHECK-INST: orn %d0, %d14, %d1
# CHECK: encoding: [0x0f,0x1e,0xf0,0x00]
.code32
orn %d0, %d14, %d1

# CHECK-INST: orn %d0, %d14, %d14
# CHECK: encoding: [0x0f,0xee,0xf0,0x00]
.code32
orn %d0, %d14, %d14

# CHECK-INST: orn %d0, %d14, %d15
# CHECK: encoding: [0x0f,0xfe,0xf0,0x00]
.code32
orn %d0, %d14, %d15

# CHECK-INST: orn %d0, %d15, %d0
# CHECK: encoding: [0x0f,0x0f,0xf0,0x00]
.code32
orn %d0, %d15, %d0

# CHECK-INST: orn %d0, %d15, %d1
# CHECK: encoding: [0x0f,0x1f,0xf0,0x00]
.code32
orn %d0, %d15, %d1

# CHECK-INST: orn %d0, %d15, %d14
# CHECK: encoding: [0x0f,0xef,0xf0,0x00]
.code32
orn %d0, %d15, %d14

# CHECK-INST: orn %d0, %d15, %d15
# CHECK: encoding: [0x0f,0xff,0xf0,0x00]
.code32
orn %d0, %d15, %d15

# CHECK-INST: orn %d1, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0xf0,0x10]
.code32
orn %d1, %d0, %d0

# CHECK-INST: orn %d1, %d0, %d1
# CHECK: encoding: [0x0f,0x10,0xf0,0x10]
.code32
orn %d1, %d0, %d1

# CHECK-INST: orn %d1, %d0, %d14
# CHECK: encoding: [0x0f,0xe0,0xf0,0x10]
.code32
orn %d1, %d0, %d14

# CHECK-INST: orn %d1, %d0, %d15
# CHECK: encoding: [0x0f,0xf0,0xf0,0x10]
.code32
orn %d1, %d0, %d15

# CHECK-INST: orn %d1, %d1, %d0
# CHECK: encoding: [0x0f,0x01,0xf0,0x10]
.code32
orn %d1, %d1, %d0

# CHECK-INST: orn %d1, %d1, %d1
# CHECK: encoding: [0x0f,0x11,0xf0,0x10]
.code32
orn %d1, %d1, %d1

# CHECK-INST: orn %d1, %d1, %d14
# CHECK: encoding: [0x0f,0xe1,0xf0,0x10]
.code32
orn %d1, %d1, %d14

# CHECK-INST: orn %d1, %d1, %d15
# CHECK: encoding: [0x0f,0xf1,0xf0,0x10]
.code32
orn %d1, %d1, %d15

# CHECK-INST: orn %d1, %d14, %d0
# CHECK: encoding: [0x0f,0x0e,0xf0,0x10]
.code32
orn %d1, %d14, %d0

# CHECK-INST: orn %d1, %d14, %d1
# CHECK: encoding: [0x0f,0x1e,0xf0,0x10]
.code32
orn %d1, %d14, %d1

# CHECK-INST: orn %d1, %d14, %d14
# CHECK: encoding: [0x0f,0xee,0xf0,0x10]
.code32
orn %d1, %d14, %d14

# CHECK-INST: orn %d1, %d14, %d15
# CHECK: encoding: [0x0f,0xfe,0xf0,0x10]
.code32
orn %d1, %d14, %d15

# CHECK-INST: orn %d1, %d15, %d0
# CHECK: encoding: [0x0f,0x0f,0xf0,0x10]
.code32
orn %d1, %d15, %d0

# CHECK-INST: orn %d1, %d15, %d1
# CHECK: encoding: [0x0f,0x1f,0xf0,0x10]
.code32
orn %d1, %d15, %d1

# CHECK-INST: orn %d1, %d15, %d14
# CHECK: encoding: [0x0f,0xef,0xf0,0x10]
.code32
orn %d1, %d15, %d14

# CHECK-INST: orn %d1, %d15, %d15
# CHECK: encoding: [0x0f,0xff,0xf0,0x10]
.code32
orn %d1, %d15, %d15

# CHECK-INST: orn %d14, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0xf0,0xe0]
.code32
orn %d14, %d0, %d0

# CHECK-INST: orn %d14, %d0, %d1
# CHECK: encoding: [0x0f,0x10,0xf0,0xe0]
.code32
orn %d14, %d0, %d1

# CHECK-INST: orn %d14, %d0, %d14
# CHECK: encoding: [0x0f,0xe0,0xf0,0xe0]
.code32
orn %d14, %d0, %d14

# CHECK-INST: orn %d14, %d0, %d15
# CHECK: encoding: [0x0f,0xf0,0xf0,0xe0]
.code32
orn %d14, %d0, %d15

# CHECK-INST: orn %d14, %d1, %d0
# CHECK: encoding: [0x0f,0x01,0xf0,0xe0]
.code32
orn %d14, %d1, %d0

# CHECK-INST: orn %d14, %d1, %d1
# CHECK: encoding: [0x0f,0x11,0xf0,0xe0]
.code32
orn %d14, %d1, %d1

# CHECK-INST: orn %d14, %d1, %d14
# CHECK: encoding: [0x0f,0xe1,0xf0,0xe0]
.code32
orn %d14, %d1, %d14

# CHECK-INST: orn %d14, %d1, %d15
# CHECK: encoding: [0x0f,0xf1,0xf0,0xe0]
.code32
orn %d14, %d1, %d15

# CHECK-INST: orn %d14, %d14, %d0
# CHECK: encoding: [0x0f,0x0e,0xf0,0xe0]
.code32
orn %d14, %d14, %d0

# CHECK-INST: orn %d14, %d14, %d1
# CHECK: encoding: [0x0f,0x1e,0xf0,0xe0]
.code32
orn %d14, %d14, %d1

# CHECK-INST: orn %d14, %d14, %d14
# CHECK: encoding: [0x0f,0xee,0xf0,0xe0]
.code32
orn %d14, %d14, %d14

# CHECK-INST: orn %d14, %d14, %d15
# CHECK: encoding: [0x0f,0xfe,0xf0,0xe0]
.code32
orn %d14, %d14, %d15

# CHECK-INST: orn %d14, %d15, %d0
# CHECK: encoding: [0x0f,0x0f,0xf0,0xe0]
.code32
orn %d14, %d15, %d0

# CHECK-INST: orn %d14, %d15, %d1
# CHECK: encoding: [0x0f,0x1f,0xf0,0xe0]
.code32
orn %d14, %d15, %d1

# CHECK-INST: orn %d14, %d15, %d14
# CHECK: encoding: [0x0f,0xef,0xf0,0xe0]
.code32
orn %d14, %d15, %d14

# CHECK-INST: orn %d14, %d15, %d15
# CHECK: encoding: [0x0f,0xff,0xf0,0xe0]
.code32
orn %d14, %d15, %d15

# CHECK-INST: orn %d15, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0xf0,0xf0]
.code32
orn %d15, %d0, %d0

# CHECK-INST: orn %d15, %d0, %d1
# CHECK: encoding: [0x0f,0x10,0xf0,0xf0]
.code32
orn %d15, %d0, %d1

# CHECK-INST: orn %d15, %d0, %d14
# CHECK: encoding: [0x0f,0xe0,0xf0,0xf0]
.code32
orn %d15, %d0, %d14

# CHECK-INST: orn %d15, %d0, %d15
# CHECK: encoding: [0x0f,0xf0,0xf0,0xf0]
.code32
orn %d15, %d0, %d15

# CHECK-INST: orn %d15, %d1, %d0
# CHECK: encoding: [0x0f,0x01,0xf0,0xf0]
.code32
orn %d15, %d1, %d0

# CHECK-INST: orn %d15, %d1, %d1
# CHECK: encoding: [0x0f,0x11,0xf0,0xf0]
.code32
orn %d15, %d1, %d1

# CHECK-INST: orn %d15, %d1, %d14
# CHECK: encoding: [0x0f,0xe1,0xf0,0xf0]
.code32
orn %d15, %d1, %d14

# CHECK-INST: orn %d15, %d1, %d15
# CHECK: encoding: [0x0f,0xf1,0xf0,0xf0]
.code32
orn %d15, %d1, %d15

# CHECK-INST: orn %d15, %d14, %d0
# CHECK: encoding: [0x0f,0x0e,0xf0,0xf0]
.code32
orn %d15, %d14, %d0

# CHECK-INST: orn %d15, %d14, %d1
# CHECK: encoding: [0x0f,0x1e,0xf0,0xf0]
.code32
orn %d15, %d14, %d1

# CHECK-INST: orn %d15, %d14, %d14
# CHECK: encoding: [0x0f,0xee,0xf0,0xf0]
.code32
orn %d15, %d14, %d14

# CHECK-INST: orn %d15, %d14, %d15
# CHECK: encoding: [0x0f,0xfe,0xf0,0xf0]
.code32
orn %d15, %d14, %d15

# CHECK-INST: orn %d15, %d15, %d0
# CHECK: encoding: [0x0f,0x0f,0xf0,0xf0]
.code32
orn %d15, %d15, %d0

# CHECK-INST: orn %d15, %d15, %d1
# CHECK: encoding: [0x0f,0x1f,0xf0,0xf0]
.code32
orn %d15, %d15, %d1

# CHECK-INST: orn %d15, %d15, %d14
# CHECK: encoding: [0x0f,0xef,0xf0,0xf0]
.code32
orn %d15, %d15, %d14

# CHECK-INST: orn %d15, %d15, %d15
# CHECK: encoding: [0x0f,0xff,0xf0,0xf0]
.code32
orn %d15, %d15, %d15

# CHECK-INST: orn %d0, %d0, 271
# CHECK: encoding: [0x8f,0xf0,0xf0,0x01]
.code32
orn %d0, %d0, 271

# CHECK-INST: orn %d0, %d0, 496
# CHECK: encoding: [0x8f,0x00,0xff,0x01]
.code32
orn %d0, %d0, 496

# CHECK-INST: orn %d0, %d0, 511
# CHECK: encoding: [0x8f,0xf0,0xff,0x01]
.code32
orn %d0, %d0, 511

# CHECK-INST: orn %d0, %d1, 271
# CHECK: encoding: [0x8f,0xf1,0xf0,0x01]
.code32
orn %d0, %d1, 271

# CHECK-INST: orn %d0, %d1, 496
# CHECK: encoding: [0x8f,0x01,0xff,0x01]
.code32
orn %d0, %d1, 496

# CHECK-INST: orn %d0, %d1, 511
# CHECK: encoding: [0x8f,0xf1,0xff,0x01]
.code32
orn %d0, %d1, 511

# CHECK-INST: orn %d0, %d14, 271
# CHECK: encoding: [0x8f,0xfe,0xf0,0x01]
.code32
orn %d0, %d14, 271

# CHECK-INST: orn %d0, %d14, 496
# CHECK: encoding: [0x8f,0x0e,0xff,0x01]
.code32
orn %d0, %d14, 496

# CHECK-INST: orn %d0, %d14, 511
# CHECK: encoding: [0x8f,0xfe,0xff,0x01]
.code32
orn %d0, %d14, 511

# CHECK-INST: orn %d0, %d15, 271
# CHECK: encoding: [0x8f,0xff,0xf0,0x01]
.code32
orn %d0, %d15, 271

# CHECK-INST: orn %d0, %d15, 496
# CHECK: encoding: [0x8f,0x0f,0xff,0x01]
.code32
orn %d0, %d15, 496

# CHECK-INST: orn %d0, %d15, 511
# CHECK: encoding: [0x8f,0xff,0xff,0x01]
.code32
orn %d0, %d15, 511

# CHECK-INST: orn %d1, %d0, 271
# CHECK: encoding: [0x8f,0xf0,0xf0,0x11]
.code32
orn %d1, %d0, 271

# CHECK-INST: orn %d1, %d0, 496
# CHECK: encoding: [0x8f,0x00,0xff,0x11]
.code32
orn %d1, %d0, 496

# CHECK-INST: orn %d1, %d0, 511
# CHECK: encoding: [0x8f,0xf0,0xff,0x11]
.code32
orn %d1, %d0, 511

# CHECK-INST: orn %d1, %d1, 271
# CHECK: encoding: [0x8f,0xf1,0xf0,0x11]
.code32
orn %d1, %d1, 271

# CHECK-INST: orn %d1, %d1, 496
# CHECK: encoding: [0x8f,0x01,0xff,0x11]
.code32
orn %d1, %d1, 496

# CHECK-INST: orn %d1, %d1, 511
# CHECK: encoding: [0x8f,0xf1,0xff,0x11]
.code32
orn %d1, %d1, 511

# CHECK-INST: orn %d1, %d14, 271
# CHECK: encoding: [0x8f,0xfe,0xf0,0x11]
.code32
orn %d1, %d14, 271

# CHECK-INST: orn %d1, %d14, 496
# CHECK: encoding: [0x8f,0x0e,0xff,0x11]
.code32
orn %d1, %d14, 496

# CHECK-INST: orn %d1, %d14, 511
# CHECK: encoding: [0x8f,0xfe,0xff,0x11]
.code32
orn %d1, %d14, 511

# CHECK-INST: orn %d1, %d15, 271
# CHECK: encoding: [0x8f,0xff,0xf0,0x11]
.code32
orn %d1, %d15, 271

# CHECK-INST: orn %d1, %d15, 496
# CHECK: encoding: [0x8f,0x0f,0xff,0x11]
.code32
orn %d1, %d15, 496

# CHECK-INST: orn %d1, %d15, 511
# CHECK: encoding: [0x8f,0xff,0xff,0x11]
.code32
orn %d1, %d15, 511

# CHECK-INST: orn %d14, %d0, 271
# CHECK: encoding: [0x8f,0xf0,0xf0,0xe1]
.code32
orn %d14, %d0, 271

# CHECK-INST: orn %d14, %d0, 496
# CHECK: encoding: [0x8f,0x00,0xff,0xe1]
.code32
orn %d14, %d0, 496

# CHECK-INST: orn %d14, %d0, 511
# CHECK: encoding: [0x8f,0xf0,0xff,0xe1]
.code32
orn %d14, %d0, 511

# CHECK-INST: orn %d14, %d1, 271
# CHECK: encoding: [0x8f,0xf1,0xf0,0xe1]
.code32
orn %d14, %d1, 271

# CHECK-INST: orn %d14, %d1, 496
# CHECK: encoding: [0x8f,0x01,0xff,0xe1]
.code32
orn %d14, %d1, 496

# CHECK-INST: orn %d14, %d1, 511
# CHECK: encoding: [0x8f,0xf1,0xff,0xe1]
.code32
orn %d14, %d1, 511

# CHECK-INST: orn %d14, %d14, 271
# CHECK: encoding: [0x8f,0xfe,0xf0,0xe1]
.code32
orn %d14, %d14, 271

# CHECK-INST: orn %d14, %d14, 496
# CHECK: encoding: [0x8f,0x0e,0xff,0xe1]
.code32
orn %d14, %d14, 496

# CHECK-INST: orn %d14, %d14, 511
# CHECK: encoding: [0x8f,0xfe,0xff,0xe1]
.code32
orn %d14, %d14, 511

# CHECK-INST: orn %d14, %d15, 271
# CHECK: encoding: [0x8f,0xff,0xf0,0xe1]
.code32
orn %d14, %d15, 271

# CHECK-INST: orn %d14, %d15, 496
# CHECK: encoding: [0x8f,0x0f,0xff,0xe1]
.code32
orn %d14, %d15, 496

# CHECK-INST: orn %d14, %d15, 511
# CHECK: encoding: [0x8f,0xff,0xff,0xe1]
.code32
orn %d14, %d15, 511

# CHECK-INST: orn %d15, %d0, 271
# CHECK: encoding: [0x8f,0xf0,0xf0,0xf1]
.code32
orn %d15, %d0, 271

# CHECK-INST: orn %d15, %d0, 496
# CHECK: encoding: [0x8f,0x00,0xff,0xf1]
.code32
orn %d15, %d0, 496

# CHECK-INST: orn %d15, %d0, 511
# CHECK: encoding: [0x8f,0xf0,0xff,0xf1]
.code32
orn %d15, %d0, 511

# CHECK-INST: orn %d15, %d1, 271
# CHECK: encoding: [0x8f,0xf1,0xf0,0xf1]
.code32
orn %d15, %d1, 271

# CHECK-INST: orn %d15, %d1, 496
# CHECK: encoding: [0x8f,0x01,0xff,0xf1]
.code32
orn %d15, %d1, 496

# CHECK-INST: orn %d15, %d1, 511
# CHECK: encoding: [0x8f,0xf1,0xff,0xf1]
.code32
orn %d15, %d1, 511

# CHECK-INST: orn %d15, %d14, 271
# CHECK: encoding: [0x8f,0xfe,0xf0,0xf1]
.code32
orn %d15, %d14, 271

# CHECK-INST: orn %d15, %d14, 496
# CHECK: encoding: [0x8f,0x0e,0xff,0xf1]
.code32
orn %d15, %d14, 496

# CHECK-INST: orn %d15, %d14, 511
# CHECK: encoding: [0x8f,0xfe,0xff,0xf1]
.code32
orn %d15, %d14, 511

# CHECK-INST: orn %d15, %d15, 271
# CHECK: encoding: [0x8f,0xff,0xf0,0xf1]
.code32
orn %d15, %d15, 271

# CHECK-INST: orn %d15, %d15, 496
# CHECK: encoding: [0x8f,0x0f,0xff,0xf1]
.code32
orn %d15, %d15, 496

# CHECK-INST: orn %d15, %d15, 511
# CHECK: encoding: [0x8f,0xff,0xff,0xf1]
.code32
orn %d15, %d15, 511

# CHECK-INST: xnor %d0, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0xd0,0x00]
.code32
xnor %d0, %d0, %d0

# CHECK-INST: xnor %d0, %d0, %d1
# CHECK: encoding: [0x0f,0x10,0xd0,0x00]
.code32
xnor %d0, %d0, %d1

# CHECK-INST: xnor %d0, %d0, %d14
# CHECK: encoding: [0x0f,0xe0,0xd0,0x00]
.code32
xnor %d0, %d0, %d14

# CHECK-INST: xnor %d0, %d0, %d15
# CHECK: encoding: [0x0f,0xf0,0xd0,0x00]
.code32
xnor %d0, %d0, %d15

# CHECK-INST: xnor %d0, %d1, %d0
# CHECK: encoding: [0x0f,0x01,0xd0,0x00]
.code32
xnor %d0, %d1, %d0

# CHECK-INST: xnor %d0, %d1, %d1
# CHECK: encoding: [0x0f,0x11,0xd0,0x00]
.code32
xnor %d0, %d1, %d1

# CHECK-INST: xnor %d0, %d1, %d14
# CHECK: encoding: [0x0f,0xe1,0xd0,0x00]
.code32
xnor %d0, %d1, %d14

# CHECK-INST: xnor %d0, %d1, %d15
# CHECK: encoding: [0x0f,0xf1,0xd0,0x00]
.code32
xnor %d0, %d1, %d15

# CHECK-INST: xnor %d0, %d14, %d0
# CHECK: encoding: [0x0f,0x0e,0xd0,0x00]
.code32
xnor %d0, %d14, %d0

# CHECK-INST: xnor %d0, %d14, %d1
# CHECK: encoding: [0x0f,0x1e,0xd0,0x00]
.code32
xnor %d0, %d14, %d1

# CHECK-INST: xnor %d0, %d14, %d14
# CHECK: encoding: [0x0f,0xee,0xd0,0x00]
.code32
xnor %d0, %d14, %d14

# CHECK-INST: xnor %d0, %d14, %d15
# CHECK: encoding: [0x0f,0xfe,0xd0,0x00]
.code32
xnor %d0, %d14, %d15

# CHECK-INST: xnor %d0, %d15, %d0
# CHECK: encoding: [0x0f,0x0f,0xd0,0x00]
.code32
xnor %d0, %d15, %d0

# CHECK-INST: xnor %d0, %d15, %d1
# CHECK: encoding: [0x0f,0x1f,0xd0,0x00]
.code32
xnor %d0, %d15, %d1

# CHECK-INST: xnor %d0, %d15, %d14
# CHECK: encoding: [0x0f,0xef,0xd0,0x00]
.code32
xnor %d0, %d15, %d14

# CHECK-INST: xnor %d0, %d15, %d15
# CHECK: encoding: [0x0f,0xff,0xd0,0x00]
.code32
xnor %d0, %d15, %d15

# CHECK-INST: xnor %d1, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0xd0,0x10]
.code32
xnor %d1, %d0, %d0

# CHECK-INST: xnor %d1, %d0, %d1
# CHECK: encoding: [0x0f,0x10,0xd0,0x10]
.code32
xnor %d1, %d0, %d1

# CHECK-INST: xnor %d1, %d0, %d14
# CHECK: encoding: [0x0f,0xe0,0xd0,0x10]
.code32
xnor %d1, %d0, %d14

# CHECK-INST: xnor %d1, %d0, %d15
# CHECK: encoding: [0x0f,0xf0,0xd0,0x10]
.code32
xnor %d1, %d0, %d15

# CHECK-INST: xnor %d1, %d1, %d0
# CHECK: encoding: [0x0f,0x01,0xd0,0x10]
.code32
xnor %d1, %d1, %d0

# CHECK-INST: xnor %d1, %d1, %d1
# CHECK: encoding: [0x0f,0x11,0xd0,0x10]
.code32
xnor %d1, %d1, %d1

# CHECK-INST: xnor %d1, %d1, %d14
# CHECK: encoding: [0x0f,0xe1,0xd0,0x10]
.code32
xnor %d1, %d1, %d14

# CHECK-INST: xnor %d1, %d1, %d15
# CHECK: encoding: [0x0f,0xf1,0xd0,0x10]
.code32
xnor %d1, %d1, %d15

# CHECK-INST: xnor %d1, %d14, %d0
# CHECK: encoding: [0x0f,0x0e,0xd0,0x10]
.code32
xnor %d1, %d14, %d0

# CHECK-INST: xnor %d1, %d14, %d1
# CHECK: encoding: [0x0f,0x1e,0xd0,0x10]
.code32
xnor %d1, %d14, %d1

# CHECK-INST: xnor %d1, %d14, %d14
# CHECK: encoding: [0x0f,0xee,0xd0,0x10]
.code32
xnor %d1, %d14, %d14

# CHECK-INST: xnor %d1, %d14, %d15
# CHECK: encoding: [0x0f,0xfe,0xd0,0x10]
.code32
xnor %d1, %d14, %d15

# CHECK-INST: xnor %d1, %d15, %d0
# CHECK: encoding: [0x0f,0x0f,0xd0,0x10]
.code32
xnor %d1, %d15, %d0

# CHECK-INST: xnor %d1, %d15, %d1
# CHECK: encoding: [0x0f,0x1f,0xd0,0x10]
.code32
xnor %d1, %d15, %d1

# CHECK-INST: xnor %d1, %d15, %d14
# CHECK: encoding: [0x0f,0xef,0xd0,0x10]
.code32
xnor %d1, %d15, %d14

# CHECK-INST: xnor %d1, %d15, %d15
# CHECK: encoding: [0x0f,0xff,0xd0,0x10]
.code32
xnor %d1, %d15, %d15

# CHECK-INST: xnor %d14, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0xd0,0xe0]
.code32
xnor %d14, %d0, %d0

# CHECK-INST: xnor %d14, %d0, %d1
# CHECK: encoding: [0x0f,0x10,0xd0,0xe0]
.code32
xnor %d14, %d0, %d1

# CHECK-INST: xnor %d14, %d0, %d14
# CHECK: encoding: [0x0f,0xe0,0xd0,0xe0]
.code32
xnor %d14, %d0, %d14

# CHECK-INST: xnor %d14, %d0, %d15
# CHECK: encoding: [0x0f,0xf0,0xd0,0xe0]
.code32
xnor %d14, %d0, %d15

# CHECK-INST: xnor %d14, %d1, %d0
# CHECK: encoding: [0x0f,0x01,0xd0,0xe0]
.code32
xnor %d14, %d1, %d0

# CHECK-INST: xnor %d14, %d1, %d1
# CHECK: encoding: [0x0f,0x11,0xd0,0xe0]
.code32
xnor %d14, %d1, %d1

# CHECK-INST: xnor %d14, %d1, %d14
# CHECK: encoding: [0x0f,0xe1,0xd0,0xe0]
.code32
xnor %d14, %d1, %d14

# CHECK-INST: xnor %d14, %d1, %d15
# CHECK: encoding: [0x0f,0xf1,0xd0,0xe0]
.code32
xnor %d14, %d1, %d15

# CHECK-INST: xnor %d14, %d14, %d0
# CHECK: encoding: [0x0f,0x0e,0xd0,0xe0]
.code32
xnor %d14, %d14, %d0

# CHECK-INST: xnor %d14, %d14, %d1
# CHECK: encoding: [0x0f,0x1e,0xd0,0xe0]
.code32
xnor %d14, %d14, %d1

# CHECK-INST: xnor %d14, %d14, %d14
# CHECK: encoding: [0x0f,0xee,0xd0,0xe0]
.code32
xnor %d14, %d14, %d14

# CHECK-INST: xnor %d14, %d14, %d15
# CHECK: encoding: [0x0f,0xfe,0xd0,0xe0]
.code32
xnor %d14, %d14, %d15

# CHECK-INST: xnor %d14, %d15, %d0
# CHECK: encoding: [0x0f,0x0f,0xd0,0xe0]
.code32
xnor %d14, %d15, %d0

# CHECK-INST: xnor %d14, %d15, %d1
# CHECK: encoding: [0x0f,0x1f,0xd0,0xe0]
.code32
xnor %d14, %d15, %d1

# CHECK-INST: xnor %d14, %d15, %d14
# CHECK: encoding: [0x0f,0xef,0xd0,0xe0]
.code32
xnor %d14, %d15, %d14

# CHECK-INST: xnor %d14, %d15, %d15
# CHECK: encoding: [0x0f,0xff,0xd0,0xe0]
.code32
xnor %d14, %d15, %d15

# CHECK-INST: xnor %d15, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0xd0,0xf0]
.code32
xnor %d15, %d0, %d0

# CHECK-INST: xnor %d15, %d0, %d1
# CHECK: encoding: [0x0f,0x10,0xd0,0xf0]
.code32
xnor %d15, %d0, %d1

# CHECK-INST: xnor %d15, %d0, %d14
# CHECK: encoding: [0x0f,0xe0,0xd0,0xf0]
.code32
xnor %d15, %d0, %d14

# CHECK-INST: xnor %d15, %d0, %d15
# CHECK: encoding: [0x0f,0xf0,0xd0,0xf0]
.code32
xnor %d15, %d0, %d15

# CHECK-INST: xnor %d15, %d1, %d0
# CHECK: encoding: [0x0f,0x01,0xd0,0xf0]
.code32
xnor %d15, %d1, %d0

# CHECK-INST: xnor %d15, %d1, %d1
# CHECK: encoding: [0x0f,0x11,0xd0,0xf0]
.code32
xnor %d15, %d1, %d1

# CHECK-INST: xnor %d15, %d1, %d14
# CHECK: encoding: [0x0f,0xe1,0xd0,0xf0]
.code32
xnor %d15, %d1, %d14

# CHECK-INST: xnor %d15, %d1, %d15
# CHECK: encoding: [0x0f,0xf1,0xd0,0xf0]
.code32
xnor %d15, %d1, %d15

# CHECK-INST: xnor %d15, %d14, %d0
# CHECK: encoding: [0x0f,0x0e,0xd0,0xf0]
.code32
xnor %d15, %d14, %d0

# CHECK-INST: xnor %d15, %d14, %d1
# CHECK: encoding: [0x0f,0x1e,0xd0,0xf0]
.code32
xnor %d15, %d14, %d1

# CHECK-INST: xnor %d15, %d14, %d14
# CHECK: encoding: [0x0f,0xee,0xd0,0xf0]
.code32
xnor %d15, %d14, %d14

# CHECK-INST: xnor %d15, %d14, %d15
# CHECK: encoding: [0x0f,0xfe,0xd0,0xf0]
.code32
xnor %d15, %d14, %d15

# CHECK-INST: xnor %d15, %d15, %d0
# CHECK: encoding: [0x0f,0x0f,0xd0,0xf0]
.code32
xnor %d15, %d15, %d0

# CHECK-INST: xnor %d15, %d15, %d1
# CHECK: encoding: [0x0f,0x1f,0xd0,0xf0]
.code32
xnor %d15, %d15, %d1

# CHECK-INST: xnor %d15, %d15, %d14
# CHECK: encoding: [0x0f,0xef,0xd0,0xf0]
.code32
xnor %d15, %d15, %d14

# CHECK-INST: xnor %d15, %d15, %d15
# CHECK: encoding: [0x0f,0xff,0xd0,0xf0]
.code32
xnor %d15, %d15, %d15

# CHECK-INST: xnor %d0, %d0, 271
# CHECK: encoding: [0x8f,0xf0,0xb0,0x01]
.code32
xnor %d0, %d0, 271

# CHECK-INST: xnor %d0, %d0, 496
# CHECK: encoding: [0x8f,0x00,0xbf,0x01]
.code32
xnor %d0, %d0, 496

# CHECK-INST: xnor %d0, %d0, 511
# CHECK: encoding: [0x8f,0xf0,0xbf,0x01]
.code32
xnor %d0, %d0, 511

# CHECK-INST: xnor %d0, %d1, 271
# CHECK: encoding: [0x8f,0xf1,0xb0,0x01]
.code32
xnor %d0, %d1, 271

# CHECK-INST: xnor %d0, %d1, 496
# CHECK: encoding: [0x8f,0x01,0xbf,0x01]
.code32
xnor %d0, %d1, 496

# CHECK-INST: xnor %d0, %d1, 511
# CHECK: encoding: [0x8f,0xf1,0xbf,0x01]
.code32
xnor %d0, %d1, 511

# CHECK-INST: xnor %d0, %d14, 271
# CHECK: encoding: [0x8f,0xfe,0xb0,0x01]
.code32
xnor %d0, %d14, 271

# CHECK-INST: xnor %d0, %d14, 496
# CHECK: encoding: [0x8f,0x0e,0xbf,0x01]
.code32
xnor %d0, %d14, 496

# CHECK-INST: xnor %d0, %d14, 511
# CHECK: encoding: [0x8f,0xfe,0xbf,0x01]
.code32
xnor %d0, %d14, 511

# CHECK-INST: xnor %d0, %d15, 271
# CHECK: encoding: [0x8f,0xff,0xb0,0x01]
.code32
xnor %d0, %d15, 271

# CHECK-INST: xnor %d0, %d15, 496
# CHECK: encoding: [0x8f,0x0f,0xbf,0x01]
.code32
xnor %d0, %d15, 496

# CHECK-INST: xnor %d0, %d15, 511
# CHECK: encoding: [0x8f,0xff,0xbf,0x01]
.code32
xnor %d0, %d15, 511

# CHECK-INST: xnor %d1, %d0, 271
# CHECK: encoding: [0x8f,0xf0,0xb0,0x11]
.code32
xnor %d1, %d0, 271

# CHECK-INST: xnor %d1, %d0, 496
# CHECK: encoding: [0x8f,0x00,0xbf,0x11]
.code32
xnor %d1, %d0, 496

# CHECK-INST: xnor %d1, %d0, 511
# CHECK: encoding: [0x8f,0xf0,0xbf,0x11]
.code32
xnor %d1, %d0, 511

# CHECK-INST: xnor %d1, %d1, 271
# CHECK: encoding: [0x8f,0xf1,0xb0,0x11]
.code32
xnor %d1, %d1, 271

# CHECK-INST: xnor %d1, %d1, 496
# CHECK: encoding: [0x8f,0x01,0xbf,0x11]
.code32
xnor %d1, %d1, 496

# CHECK-INST: xnor %d1, %d1, 511
# CHECK: encoding: [0x8f,0xf1,0xbf,0x11]
.code32
xnor %d1, %d1, 511

# CHECK-INST: xnor %d1, %d14, 271
# CHECK: encoding: [0x8f,0xfe,0xb0,0x11]
.code32
xnor %d1, %d14, 271

# CHECK-INST: xnor %d1, %d14, 496
# CHECK: encoding: [0x8f,0x0e,0xbf,0x11]
.code32
xnor %d1, %d14, 496

# CHECK-INST: xnor %d1, %d14, 511
# CHECK: encoding: [0x8f,0xfe,0xbf,0x11]
.code32
xnor %d1, %d14, 511

# CHECK-INST: xnor %d1, %d15, 271
# CHECK: encoding: [0x8f,0xff,0xb0,0x11]
.code32
xnor %d1, %d15, 271

# CHECK-INST: xnor %d1, %d15, 496
# CHECK: encoding: [0x8f,0x0f,0xbf,0x11]
.code32
xnor %d1, %d15, 496

# CHECK-INST: xnor %d1, %d15, 511
# CHECK: encoding: [0x8f,0xff,0xbf,0x11]
.code32
xnor %d1, %d15, 511

# CHECK-INST: xnor %d14, %d0, 271
# CHECK: encoding: [0x8f,0xf0,0xb0,0xe1]
.code32
xnor %d14, %d0, 271

# CHECK-INST: xnor %d14, %d0, 496
# CHECK: encoding: [0x8f,0x00,0xbf,0xe1]
.code32
xnor %d14, %d0, 496

# CHECK-INST: xnor %d14, %d0, 511
# CHECK: encoding: [0x8f,0xf0,0xbf,0xe1]
.code32
xnor %d14, %d0, 511

# CHECK-INST: xnor %d14, %d1, 271
# CHECK: encoding: [0x8f,0xf1,0xb0,0xe1]
.code32
xnor %d14, %d1, 271

# CHECK-INST: xnor %d14, %d1, 496
# CHECK: encoding: [0x8f,0x01,0xbf,0xe1]
.code32
xnor %d14, %d1, 496

# CHECK-INST: xnor %d14, %d1, 511
# CHECK: encoding: [0x8f,0xf1,0xbf,0xe1]
.code32
xnor %d14, %d1, 511

# CHECK-INST: xnor %d14, %d14, 271
# CHECK: encoding: [0x8f,0xfe,0xb0,0xe1]
.code32
xnor %d14, %d14, 271

# CHECK-INST: xnor %d14, %d14, 496
# CHECK: encoding: [0x8f,0x0e,0xbf,0xe1]
.code32
xnor %d14, %d14, 496

# CHECK-INST: xnor %d14, %d14, 511
# CHECK: encoding: [0x8f,0xfe,0xbf,0xe1]
.code32
xnor %d14, %d14, 511

# CHECK-INST: xnor %d14, %d15, 271
# CHECK: encoding: [0x8f,0xff,0xb0,0xe1]
.code32
xnor %d14, %d15, 271

# CHECK-INST: xnor %d14, %d15, 496
# CHECK: encoding: [0x8f,0x0f,0xbf,0xe1]
.code32
xnor %d14, %d15, 496

# CHECK-INST: xnor %d14, %d15, 511
# CHECK: encoding: [0x8f,0xff,0xbf,0xe1]
.code32
xnor %d14, %d15, 511

# CHECK-INST: xnor %d15, %d0, 271
# CHECK: encoding: [0x8f,0xf0,0xb0,0xf1]
.code32
xnor %d15, %d0, 271

# CHECK-INST: xnor %d15, %d0, 496
# CHECK: encoding: [0x8f,0x00,0xbf,0xf1]
.code32
xnor %d15, %d0, 496

# CHECK-INST: xnor %d15, %d0, 511
# CHECK: encoding: [0x8f,0xf0,0xbf,0xf1]
.code32
xnor %d15, %d0, 511

# CHECK-INST: xnor %d15, %d1, 271
# CHECK: encoding: [0x8f,0xf1,0xb0,0xf1]
.code32
xnor %d15, %d1, 271

# CHECK-INST: xnor %d15, %d1, 496
# CHECK: encoding: [0x8f,0x01,0xbf,0xf1]
.code32
xnor %d15, %d1, 496

# CHECK-INST: xnor %d15, %d1, 511
# CHECK: encoding: [0x8f,0xf1,0xbf,0xf1]
.code32
xnor %d15, %d1, 511

# CHECK-INST: xnor %d15, %d14, 271
# CHECK: encoding: [0x8f,0xfe,0xb0,0xf1]
.code32
xnor %d15, %d14, 271

# CHECK-INST: xnor %d15, %d14, 496
# CHECK: encoding: [0x8f,0x0e,0xbf,0xf1]
.code32
xnor %d15, %d14, 496

# CHECK-INST: xnor %d15, %d14, 511
# CHECK: encoding: [0x8f,0xfe,0xbf,0xf1]
.code32
xnor %d15, %d14, 511

# CHECK-INST: xnor %d15, %d15, 271
# CHECK: encoding: [0x8f,0xff,0xb0,0xf1]
.code32
xnor %d15, %d15, 271

# CHECK-INST: xnor %d15, %d15, 496
# CHECK: encoding: [0x8f,0x0f,0xbf,0xf1]
.code32
xnor %d15, %d15, 496

# CHECK-INST: xnor %d15, %d15, 511
# CHECK: encoding: [0x8f,0xff,0xbf,0xf1]
.code32
xnor %d15, %d15, 511

# CHECK-INST: xor %d0, %d0
# CHECK: encoding: [0xc6,0x00]
.code16
xor %d0, %d0

# CHECK-INST: xor %d0, %d1
# CHECK: encoding: [0xc6,0x10]
.code16
xor %d0, %d1

# CHECK-INST: xor %d0, %d14
# CHECK: encoding: [0xc6,0xe0]
.code16
xor %d0, %d14

# CHECK-INST: xor %d0, %d15
# CHECK: encoding: [0xc6,0xf0]
.code16
xor %d0, %d15

# CHECK-INST: xor %d1, %d0
# CHECK: encoding: [0xc6,0x01]
.code16
xor %d1, %d0

# CHECK-INST: xor %d1, %d1
# CHECK: encoding: [0xc6,0x11]
.code16
xor %d1, %d1

# CHECK-INST: xor %d1, %d14
# CHECK: encoding: [0xc6,0xe1]
.code16
xor %d1, %d14

# CHECK-INST: xor %d1, %d15
# CHECK: encoding: [0xc6,0xf1]
.code16
xor %d1, %d15

# CHECK-INST: xor %d14, %d0
# CHECK: encoding: [0xc6,0x0e]
.code16
xor %d14, %d0

# CHECK-INST: xor %d14, %d1
# CHECK: encoding: [0xc6,0x1e]
.code16
xor %d14, %d1

# CHECK-INST: xor %d14, %d14
# CHECK: encoding: [0xc6,0xee]
.code16
xor %d14, %d14

# CHECK-INST: xor %d14, %d15
# CHECK: encoding: [0xc6,0xfe]
.code16
xor %d14, %d15

# CHECK-INST: xor %d15, %d0
# CHECK: encoding: [0xc6,0x0f]
.code16
xor %d15, %d0

# CHECK-INST: xor %d15, %d1
# CHECK: encoding: [0xc6,0x1f]
.code16
xor %d15, %d1

# CHECK-INST: xor %d15, %d14
# CHECK: encoding: [0xc6,0xef]
.code16
xor %d15, %d14

# CHECK-INST: xor %d15, %d15
# CHECK: encoding: [0xc6,0xff]
.code16
xor %d15, %d15

# CHECK-INST: xor %d0, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0xc0,0x00]
.code32
xor %d0, %d0, %d0

# CHECK-INST: xor %d0, %d0, %d1
# CHECK: encoding: [0x0f,0x10,0xc0,0x00]
.code32
xor %d0, %d0, %d1

# CHECK-INST: xor %d0, %d0, %d14
# CHECK: encoding: [0x0f,0xe0,0xc0,0x00]
.code32
xor %d0, %d0, %d14

# CHECK-INST: xor %d0, %d0, %d15
# CHECK: encoding: [0x0f,0xf0,0xc0,0x00]
.code32
xor %d0, %d0, %d15

# CHECK-INST: xor %d0, %d1, %d0
# CHECK: encoding: [0x0f,0x01,0xc0,0x00]
.code32
xor %d0, %d1, %d0

# CHECK-INST: xor %d0, %d1, %d1
# CHECK: encoding: [0x0f,0x11,0xc0,0x00]
.code32
xor %d0, %d1, %d1

# CHECK-INST: xor %d0, %d1, %d14
# CHECK: encoding: [0x0f,0xe1,0xc0,0x00]
.code32
xor %d0, %d1, %d14

# CHECK-INST: xor %d0, %d1, %d15
# CHECK: encoding: [0x0f,0xf1,0xc0,0x00]
.code32
xor %d0, %d1, %d15

# CHECK-INST: xor %d0, %d14, %d0
# CHECK: encoding: [0x0f,0x0e,0xc0,0x00]
.code32
xor %d0, %d14, %d0

# CHECK-INST: xor %d0, %d14, %d1
# CHECK: encoding: [0x0f,0x1e,0xc0,0x00]
.code32
xor %d0, %d14, %d1

# CHECK-INST: xor %d0, %d14, %d14
# CHECK: encoding: [0x0f,0xee,0xc0,0x00]
.code32
xor %d0, %d14, %d14

# CHECK-INST: xor %d0, %d14, %d15
# CHECK: encoding: [0x0f,0xfe,0xc0,0x00]
.code32
xor %d0, %d14, %d15

# CHECK-INST: xor %d0, %d15, %d0
# CHECK: encoding: [0x0f,0x0f,0xc0,0x00]
.code32
xor %d0, %d15, %d0

# CHECK-INST: xor %d0, %d15, %d1
# CHECK: encoding: [0x0f,0x1f,0xc0,0x00]
.code32
xor %d0, %d15, %d1

# CHECK-INST: xor %d0, %d15, %d14
# CHECK: encoding: [0x0f,0xef,0xc0,0x00]
.code32
xor %d0, %d15, %d14

# CHECK-INST: xor %d0, %d15, %d15
# CHECK: encoding: [0x0f,0xff,0xc0,0x00]
.code32
xor %d0, %d15, %d15

# CHECK-INST: xor %d1, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0xc0,0x10]
.code32
xor %d1, %d0, %d0

# CHECK-INST: xor %d1, %d0, %d1
# CHECK: encoding: [0x0f,0x10,0xc0,0x10]
.code32
xor %d1, %d0, %d1

# CHECK-INST: xor %d1, %d0, %d14
# CHECK: encoding: [0x0f,0xe0,0xc0,0x10]
.code32
xor %d1, %d0, %d14

# CHECK-INST: xor %d1, %d0, %d15
# CHECK: encoding: [0x0f,0xf0,0xc0,0x10]
.code32
xor %d1, %d0, %d15

# CHECK-INST: xor %d1, %d1, %d0
# CHECK: encoding: [0x0f,0x01,0xc0,0x10]
.code32
xor %d1, %d1, %d0

# CHECK-INST: xor %d1, %d1, %d1
# CHECK: encoding: [0x0f,0x11,0xc0,0x10]
.code32
xor %d1, %d1, %d1

# CHECK-INST: xor %d1, %d1, %d14
# CHECK: encoding: [0x0f,0xe1,0xc0,0x10]
.code32
xor %d1, %d1, %d14

# CHECK-INST: xor %d1, %d1, %d15
# CHECK: encoding: [0x0f,0xf1,0xc0,0x10]
.code32
xor %d1, %d1, %d15

# CHECK-INST: xor %d1, %d14, %d0
# CHECK: encoding: [0x0f,0x0e,0xc0,0x10]
.code32
xor %d1, %d14, %d0

# CHECK-INST: xor %d1, %d14, %d1
# CHECK: encoding: [0x0f,0x1e,0xc0,0x10]
.code32
xor %d1, %d14, %d1

# CHECK-INST: xor %d1, %d14, %d14
# CHECK: encoding: [0x0f,0xee,0xc0,0x10]
.code32
xor %d1, %d14, %d14

# CHECK-INST: xor %d1, %d14, %d15
# CHECK: encoding: [0x0f,0xfe,0xc0,0x10]
.code32
xor %d1, %d14, %d15

# CHECK-INST: xor %d1, %d15, %d0
# CHECK: encoding: [0x0f,0x0f,0xc0,0x10]
.code32
xor %d1, %d15, %d0

# CHECK-INST: xor %d1, %d15, %d1
# CHECK: encoding: [0x0f,0x1f,0xc0,0x10]
.code32
xor %d1, %d15, %d1

# CHECK-INST: xor %d1, %d15, %d14
# CHECK: encoding: [0x0f,0xef,0xc0,0x10]
.code32
xor %d1, %d15, %d14

# CHECK-INST: xor %d1, %d15, %d15
# CHECK: encoding: [0x0f,0xff,0xc0,0x10]
.code32
xor %d1, %d15, %d15

# CHECK-INST: xor %d14, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0xc0,0xe0]
.code32
xor %d14, %d0, %d0

# CHECK-INST: xor %d14, %d0, %d1
# CHECK: encoding: [0x0f,0x10,0xc0,0xe0]
.code32
xor %d14, %d0, %d1

# CHECK-INST: xor %d14, %d0, %d14
# CHECK: encoding: [0x0f,0xe0,0xc0,0xe0]
.code32
xor %d14, %d0, %d14

# CHECK-INST: xor %d14, %d0, %d15
# CHECK: encoding: [0x0f,0xf0,0xc0,0xe0]
.code32
xor %d14, %d0, %d15

# CHECK-INST: xor %d14, %d1, %d0
# CHECK: encoding: [0x0f,0x01,0xc0,0xe0]
.code32
xor %d14, %d1, %d0

# CHECK-INST: xor %d14, %d1, %d1
# CHECK: encoding: [0x0f,0x11,0xc0,0xe0]
.code32
xor %d14, %d1, %d1

# CHECK-INST: xor %d14, %d1, %d14
# CHECK: encoding: [0x0f,0xe1,0xc0,0xe0]
.code32
xor %d14, %d1, %d14

# CHECK-INST: xor %d14, %d1, %d15
# CHECK: encoding: [0x0f,0xf1,0xc0,0xe0]
.code32
xor %d14, %d1, %d15

# CHECK-INST: xor %d14, %d14, %d0
# CHECK: encoding: [0x0f,0x0e,0xc0,0xe0]
.code32
xor %d14, %d14, %d0

# CHECK-INST: xor %d14, %d14, %d1
# CHECK: encoding: [0x0f,0x1e,0xc0,0xe0]
.code32
xor %d14, %d14, %d1

# CHECK-INST: xor %d14, %d14, %d14
# CHECK: encoding: [0x0f,0xee,0xc0,0xe0]
.code32
xor %d14, %d14, %d14

# CHECK-INST: xor %d14, %d14, %d15
# CHECK: encoding: [0x0f,0xfe,0xc0,0xe0]
.code32
xor %d14, %d14, %d15

# CHECK-INST: xor %d14, %d15, %d0
# CHECK: encoding: [0x0f,0x0f,0xc0,0xe0]
.code32
xor %d14, %d15, %d0

# CHECK-INST: xor %d14, %d15, %d1
# CHECK: encoding: [0x0f,0x1f,0xc0,0xe0]
.code32
xor %d14, %d15, %d1

# CHECK-INST: xor %d14, %d15, %d14
# CHECK: encoding: [0x0f,0xef,0xc0,0xe0]
.code32
xor %d14, %d15, %d14

# CHECK-INST: xor %d14, %d15, %d15
# CHECK: encoding: [0x0f,0xff,0xc0,0xe0]
.code32
xor %d14, %d15, %d15

# CHECK-INST: xor %d15, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0xc0,0xf0]
.code32
xor %d15, %d0, %d0

# CHECK-INST: xor %d15, %d0, %d1
# CHECK: encoding: [0x0f,0x10,0xc0,0xf0]
.code32
xor %d15, %d0, %d1

# CHECK-INST: xor %d15, %d0, %d14
# CHECK: encoding: [0x0f,0xe0,0xc0,0xf0]
.code32
xor %d15, %d0, %d14

# CHECK-INST: xor %d15, %d0, %d15
# CHECK: encoding: [0x0f,0xf0,0xc0,0xf0]
.code32
xor %d15, %d0, %d15

# CHECK-INST: xor %d15, %d1, %d0
# CHECK: encoding: [0x0f,0x01,0xc0,0xf0]
.code32
xor %d15, %d1, %d0

# CHECK-INST: xor %d15, %d1, %d1
# CHECK: encoding: [0x0f,0x11,0xc0,0xf0]
.code32
xor %d15, %d1, %d1

# CHECK-INST: xor %d15, %d1, %d14
# CHECK: encoding: [0x0f,0xe1,0xc0,0xf0]
.code32
xor %d15, %d1, %d14

# CHECK-INST: xor %d15, %d1, %d15
# CHECK: encoding: [0x0f,0xf1,0xc0,0xf0]
.code32
xor %d15, %d1, %d15

# CHECK-INST: xor %d15, %d14, %d0
# CHECK: encoding: [0x0f,0x0e,0xc0,0xf0]
.code32
xor %d15, %d14, %d0

# CHECK-INST: xor %d15, %d14, %d1
# CHECK: encoding: [0x0f,0x1e,0xc0,0xf0]
.code32
xor %d15, %d14, %d1

# CHECK-INST: xor %d15, %d14, %d14
# CHECK: encoding: [0x0f,0xee,0xc0,0xf0]
.code32
xor %d15, %d14, %d14

# CHECK-INST: xor %d15, %d14, %d15
# CHECK: encoding: [0x0f,0xfe,0xc0,0xf0]
.code32
xor %d15, %d14, %d15

# CHECK-INST: xor %d15, %d15, %d0
# CHECK: encoding: [0x0f,0x0f,0xc0,0xf0]
.code32
xor %d15, %d15, %d0

# CHECK-INST: xor %d15, %d15, %d1
# CHECK: encoding: [0x0f,0x1f,0xc0,0xf0]
.code32
xor %d15, %d15, %d1

# CHECK-INST: xor %d15, %d15, %d14
# CHECK: encoding: [0x0f,0xef,0xc0,0xf0]
.code32
xor %d15, %d15, %d14

# CHECK-INST: xor %d15, %d15, %d15
# CHECK: encoding: [0x0f,0xff,0xc0,0xf0]
.code32
xor %d15, %d15, %d15

# CHECK-INST: xor %d0, %d0, 271
# CHECK: encoding: [0x8f,0xf0,0x90,0x01]
.code32
xor %d0, %d0, 271

# CHECK-INST: xor %d0, %d0, 496
# CHECK: encoding: [0x8f,0x00,0x9f,0x01]
.code32
xor %d0, %d0, 496

# CHECK-INST: xor %d0, %d0, 511
# CHECK: encoding: [0x8f,0xf0,0x9f,0x01]
.code32
xor %d0, %d0, 511

# CHECK-INST: xor %d0, %d1, 271
# CHECK: encoding: [0x8f,0xf1,0x90,0x01]
.code32
xor %d0, %d1, 271

# CHECK-INST: xor %d0, %d1, 496
# CHECK: encoding: [0x8f,0x01,0x9f,0x01]
.code32
xor %d0, %d1, 496

# CHECK-INST: xor %d0, %d1, 511
# CHECK: encoding: [0x8f,0xf1,0x9f,0x01]
.code32
xor %d0, %d1, 511

# CHECK-INST: xor %d0, %d14, 271
# CHECK: encoding: [0x8f,0xfe,0x90,0x01]
.code32
xor %d0, %d14, 271

# CHECK-INST: xor %d0, %d14, 496
# CHECK: encoding: [0x8f,0x0e,0x9f,0x01]
.code32
xor %d0, %d14, 496

# CHECK-INST: xor %d0, %d14, 511
# CHECK: encoding: [0x8f,0xfe,0x9f,0x01]
.code32
xor %d0, %d14, 511

# CHECK-INST: xor %d0, %d15, 271
# CHECK: encoding: [0x8f,0xff,0x90,0x01]
.code32
xor %d0, %d15, 271

# CHECK-INST: xor %d0, %d15, 496
# CHECK: encoding: [0x8f,0x0f,0x9f,0x01]
.code32
xor %d0, %d15, 496

# CHECK-INST: xor %d0, %d15, 511
# CHECK: encoding: [0x8f,0xff,0x9f,0x01]
.code32
xor %d0, %d15, 511

# CHECK-INST: xor %d1, %d0, 271
# CHECK: encoding: [0x8f,0xf0,0x90,0x11]
.code32
xor %d1, %d0, 271

# CHECK-INST: xor %d1, %d0, 496
# CHECK: encoding: [0x8f,0x00,0x9f,0x11]
.code32
xor %d1, %d0, 496

# CHECK-INST: xor %d1, %d0, 511
# CHECK: encoding: [0x8f,0xf0,0x9f,0x11]
.code32
xor %d1, %d0, 511

# CHECK-INST: xor %d1, %d1, 271
# CHECK: encoding: [0x8f,0xf1,0x90,0x11]
.code32
xor %d1, %d1, 271

# CHECK-INST: xor %d1, %d1, 496
# CHECK: encoding: [0x8f,0x01,0x9f,0x11]
.code32
xor %d1, %d1, 496

# CHECK-INST: xor %d1, %d1, 511
# CHECK: encoding: [0x8f,0xf1,0x9f,0x11]
.code32
xor %d1, %d1, 511

# CHECK-INST: xor %d1, %d14, 271
# CHECK: encoding: [0x8f,0xfe,0x90,0x11]
.code32
xor %d1, %d14, 271

# CHECK-INST: xor %d1, %d14, 496
# CHECK: encoding: [0x8f,0x0e,0x9f,0x11]
.code32
xor %d1, %d14, 496

# CHECK-INST: xor %d1, %d14, 511
# CHECK: encoding: [0x8f,0xfe,0x9f,0x11]
.code32
xor %d1, %d14, 511

# CHECK-INST: xor %d1, %d15, 271
# CHECK: encoding: [0x8f,0xff,0x90,0x11]
.code32
xor %d1, %d15, 271

# CHECK-INST: xor %d1, %d15, 496
# CHECK: encoding: [0x8f,0x0f,0x9f,0x11]
.code32
xor %d1, %d15, 496

# CHECK-INST: xor %d1, %d15, 511
# CHECK: encoding: [0x8f,0xff,0x9f,0x11]
.code32
xor %d1, %d15, 511

# CHECK-INST: xor %d14, %d0, 271
# CHECK: encoding: [0x8f,0xf0,0x90,0xe1]
.code32
xor %d14, %d0, 271

# CHECK-INST: xor %d14, %d0, 496
# CHECK: encoding: [0x8f,0x00,0x9f,0xe1]
.code32
xor %d14, %d0, 496

# CHECK-INST: xor %d14, %d0, 511
# CHECK: encoding: [0x8f,0xf0,0x9f,0xe1]
.code32
xor %d14, %d0, 511

# CHECK-INST: xor %d14, %d1, 271
# CHECK: encoding: [0x8f,0xf1,0x90,0xe1]
.code32
xor %d14, %d1, 271

# CHECK-INST: xor %d14, %d1, 496
# CHECK: encoding: [0x8f,0x01,0x9f,0xe1]
.code32
xor %d14, %d1, 496

# CHECK-INST: xor %d14, %d1, 511
# CHECK: encoding: [0x8f,0xf1,0x9f,0xe1]
.code32
xor %d14, %d1, 511

# CHECK-INST: xor %d14, %d14, 271
# CHECK: encoding: [0x8f,0xfe,0x90,0xe1]
.code32
xor %d14, %d14, 271

# CHECK-INST: xor %d14, %d14, 496
# CHECK: encoding: [0x8f,0x0e,0x9f,0xe1]
.code32
xor %d14, %d14, 496

# CHECK-INST: xor %d14, %d14, 511
# CHECK: encoding: [0x8f,0xfe,0x9f,0xe1]
.code32
xor %d14, %d14, 511

# CHECK-INST: xor %d14, %d15, 271
# CHECK: encoding: [0x8f,0xff,0x90,0xe1]
.code32
xor %d14, %d15, 271

# CHECK-INST: xor %d14, %d15, 496
# CHECK: encoding: [0x8f,0x0f,0x9f,0xe1]
.code32
xor %d14, %d15, 496

# CHECK-INST: xor %d14, %d15, 511
# CHECK: encoding: [0x8f,0xff,0x9f,0xe1]
.code32
xor %d14, %d15, 511

# CHECK-INST: xor %d15, %d0, 271
# CHECK: encoding: [0x8f,0xf0,0x90,0xf1]
.code32
xor %d15, %d0, 271

# CHECK-INST: xor %d15, %d0, 496
# CHECK: encoding: [0x8f,0x00,0x9f,0xf1]
.code32
xor %d15, %d0, 496

# CHECK-INST: xor %d15, %d0, 511
# CHECK: encoding: [0x8f,0xf0,0x9f,0xf1]
.code32
xor %d15, %d0, 511

# CHECK-INST: xor %d15, %d1, 271
# CHECK: encoding: [0x8f,0xf1,0x90,0xf1]
.code32
xor %d15, %d1, 271

# CHECK-INST: xor %d15, %d1, 496
# CHECK: encoding: [0x8f,0x01,0x9f,0xf1]
.code32
xor %d15, %d1, 496

# CHECK-INST: xor %d15, %d1, 511
# CHECK: encoding: [0x8f,0xf1,0x9f,0xf1]
.code32
xor %d15, %d1, 511

# CHECK-INST: xor %d15, %d14, 271
# CHECK: encoding: [0x8f,0xfe,0x90,0xf1]
.code32
xor %d15, %d14, 271

# CHECK-INST: xor %d15, %d14, 496
# CHECK: encoding: [0x8f,0x0e,0x9f,0xf1]
.code32
xor %d15, %d14, 496

# CHECK-INST: xor %d15, %d14, 511
# CHECK: encoding: [0x8f,0xfe,0x9f,0xf1]
.code32
xor %d15, %d14, 511

# CHECK-INST: xor %d15, %d15, 271
# CHECK: encoding: [0x8f,0xff,0x90,0xf1]
.code32
xor %d15, %d15, 271

# CHECK-INST: xor %d15, %d15, 496
# CHECK: encoding: [0x8f,0x0f,0x9f,0xf1]
.code32
xor %d15, %d15, 496

# CHECK-INST: xor %d15, %d15, 511
# CHECK: encoding: [0x8f,0xff,0x9f,0xf1]
.code32
xor %d15, %d15, 511
