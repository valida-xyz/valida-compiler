# RUN: llvm-mc %s -triple=tricore -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK,CHECK-INST %s

# CHECK-INST: sh %d0, -8
# CHECK: encoding: [0x06,0x80]
.code16
sh %d0, -8

# CHECK-INST: sh %d0, -1
# CHECK: encoding: [0x06,0xf0]
.code16
sh %d0, -1

# CHECK-INST: sh %d0, 0
# CHECK: encoding: [0x06,0x00]
.code16
sh %d0, 0

# CHECK-INST: sh %d0, 1
# CHECK: encoding: [0x06,0x10]
.code16
sh %d0, 1

# CHECK-INST: sh %d0, 7
# CHECK: encoding: [0x06,0x70]
.code16
sh %d0, 7

# CHECK-INST: sh %d1, -8
# CHECK: encoding: [0x06,0x81]
.code16
sh %d1, -8

# CHECK-INST: sh %d1, -1
# CHECK: encoding: [0x06,0xf1]
.code16
sh %d1, -1

# CHECK-INST: sh %d1, 0
# CHECK: encoding: [0x06,0x01]
.code16
sh %d1, 0

# CHECK-INST: sh %d1, 1
# CHECK: encoding: [0x06,0x11]
.code16
sh %d1, 1

# CHECK-INST: sh %d1, 7
# CHECK: encoding: [0x06,0x71]
.code16
sh %d1, 7

# CHECK-INST: sh %d14, -8
# CHECK: encoding: [0x06,0x8e]
.code16
sh %d14, -8

# CHECK-INST: sh %d14, -1
# CHECK: encoding: [0x06,0xfe]
.code16
sh %d14, -1

# CHECK-INST: sh %d14, 0
# CHECK: encoding: [0x06,0x0e]
.code16
sh %d14, 0

# CHECK-INST: sh %d14, 1
# CHECK: encoding: [0x06,0x1e]
.code16
sh %d14, 1

# CHECK-INST: sh %d14, 7
# CHECK: encoding: [0x06,0x7e]
.code16
sh %d14, 7

# CHECK-INST: sh %d15, -8
# CHECK: encoding: [0x06,0x8f]
.code16
sh %d15, -8

# CHECK-INST: sh %d15, -1
# CHECK: encoding: [0x06,0xff]
.code16
sh %d15, -1

# CHECK-INST: sh %d15, 0
# CHECK: encoding: [0x06,0x0f]
.code16
sh %d15, 0

# CHECK-INST: sh %d15, 1
# CHECK: encoding: [0x06,0x1f]
.code16
sh %d15, 1

# CHECK-INST: sh %d15, 7
# CHECK: encoding: [0x06,0x7f]
.code16
sh %d15, 7


# CHECK-INST: sh %d0, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0x00,0x00]
.code32
sh %d0, %d0, %d0

# CHECK-INST: sh %d0, %d0, %d1
# CHECK: encoding: [0x0f,0x10,0x00,0x00]
.code32
sh %d0, %d0, %d1

# CHECK-INST: sh %d0, %d0, %d14
# CHECK: encoding: [0x0f,0xe0,0x00,0x00]
.code32
sh %d0, %d0, %d14

# CHECK-INST: sh %d0, %d0, %d15
# CHECK: encoding: [0x0f,0xf0,0x00,0x00]
.code32
sh %d0, %d0, %d15

# CHECK-INST: sh %d0, %d1, %d0
# CHECK: encoding: [0x0f,0x01,0x00,0x00]
.code32
sh %d0, %d1, %d0

# CHECK-INST: sh %d0, %d1, %d1
# CHECK: encoding: [0x0f,0x11,0x00,0x00]
.code32
sh %d0, %d1, %d1

# CHECK-INST: sh %d0, %d1, %d14
# CHECK: encoding: [0x0f,0xe1,0x00,0x00]
.code32
sh %d0, %d1, %d14

# CHECK-INST: sh %d0, %d1, %d15
# CHECK: encoding: [0x0f,0xf1,0x00,0x00]
.code32
sh %d0, %d1, %d15

# CHECK-INST: sh %d0, %d14, %d0
# CHECK: encoding: [0x0f,0x0e,0x00,0x00]
.code32
sh %d0, %d14, %d0

# CHECK-INST: sh %d0, %d14, %d1
# CHECK: encoding: [0x0f,0x1e,0x00,0x00]
.code32
sh %d0, %d14, %d1

# CHECK-INST: sh %d0, %d14, %d14
# CHECK: encoding: [0x0f,0xee,0x00,0x00]
.code32
sh %d0, %d14, %d14

# CHECK-INST: sh %d0, %d14, %d15
# CHECK: encoding: [0x0f,0xfe,0x00,0x00]
.code32
sh %d0, %d14, %d15

# CHECK-INST: sh %d0, %d15, %d0
# CHECK: encoding: [0x0f,0x0f,0x00,0x00]
.code32
sh %d0, %d15, %d0

# CHECK-INST: sh %d0, %d15, %d1
# CHECK: encoding: [0x0f,0x1f,0x00,0x00]
.code32
sh %d0, %d15, %d1

# CHECK-INST: sh %d0, %d15, %d14
# CHECK: encoding: [0x0f,0xef,0x00,0x00]
.code32
sh %d0, %d15, %d14

# CHECK-INST: sh %d0, %d15, %d15
# CHECK: encoding: [0x0f,0xff,0x00,0x00]
.code32
sh %d0, %d15, %d15

# CHECK-INST: sh %d1, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0x00,0x10]
.code32
sh %d1, %d0, %d0

# CHECK-INST: sh %d1, %d0, %d1
# CHECK: encoding: [0x0f,0x10,0x00,0x10]
.code32
sh %d1, %d0, %d1

# CHECK-INST: sh %d1, %d0, %d14
# CHECK: encoding: [0x0f,0xe0,0x00,0x10]
.code32
sh %d1, %d0, %d14

# CHECK-INST: sh %d1, %d0, %d15
# CHECK: encoding: [0x0f,0xf0,0x00,0x10]
.code32
sh %d1, %d0, %d15

# CHECK-INST: sh %d1, %d1, %d0
# CHECK: encoding: [0x0f,0x01,0x00,0x10]
.code32
sh %d1, %d1, %d0

# CHECK-INST: sh %d1, %d1, %d1
# CHECK: encoding: [0x0f,0x11,0x00,0x10]
.code32
sh %d1, %d1, %d1

# CHECK-INST: sh %d1, %d1, %d14
# CHECK: encoding: [0x0f,0xe1,0x00,0x10]
.code32
sh %d1, %d1, %d14

# CHECK-INST: sh %d1, %d1, %d15
# CHECK: encoding: [0x0f,0xf1,0x00,0x10]
.code32
sh %d1, %d1, %d15

# CHECK-INST: sh %d1, %d14, %d0
# CHECK: encoding: [0x0f,0x0e,0x00,0x10]
.code32
sh %d1, %d14, %d0

# CHECK-INST: sh %d1, %d14, %d1
# CHECK: encoding: [0x0f,0x1e,0x00,0x10]
.code32
sh %d1, %d14, %d1

# CHECK-INST: sh %d1, %d14, %d14
# CHECK: encoding: [0x0f,0xee,0x00,0x10]
.code32
sh %d1, %d14, %d14

# CHECK-INST: sh %d1, %d14, %d15
# CHECK: encoding: [0x0f,0xfe,0x00,0x10]
.code32
sh %d1, %d14, %d15

# CHECK-INST: sh %d1, %d15, %d0
# CHECK: encoding: [0x0f,0x0f,0x00,0x10]
.code32
sh %d1, %d15, %d0

# CHECK-INST: sh %d1, %d15, %d1
# CHECK: encoding: [0x0f,0x1f,0x00,0x10]
.code32
sh %d1, %d15, %d1

# CHECK-INST: sh %d1, %d15, %d14
# CHECK: encoding: [0x0f,0xef,0x00,0x10]
.code32
sh %d1, %d15, %d14

# CHECK-INST: sh %d1, %d15, %d15
# CHECK: encoding: [0x0f,0xff,0x00,0x10]
.code32
sh %d1, %d15, %d15

# CHECK-INST: sh %d14, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0x00,0xe0]
.code32
sh %d14, %d0, %d0

# CHECK-INST: sh %d14, %d0, %d1
# CHECK: encoding: [0x0f,0x10,0x00,0xe0]
.code32
sh %d14, %d0, %d1

# CHECK-INST: sh %d14, %d0, %d14
# CHECK: encoding: [0x0f,0xe0,0x00,0xe0]
.code32
sh %d14, %d0, %d14

# CHECK-INST: sh %d14, %d0, %d15
# CHECK: encoding: [0x0f,0xf0,0x00,0xe0]
.code32
sh %d14, %d0, %d15

# CHECK-INST: sh %d14, %d1, %d0
# CHECK: encoding: [0x0f,0x01,0x00,0xe0]
.code32
sh %d14, %d1, %d0

# CHECK-INST: sh %d14, %d1, %d1
# CHECK: encoding: [0x0f,0x11,0x00,0xe0]
.code32
sh %d14, %d1, %d1

# CHECK-INST: sh %d14, %d1, %d14
# CHECK: encoding: [0x0f,0xe1,0x00,0xe0]
.code32
sh %d14, %d1, %d14

# CHECK-INST: sh %d14, %d1, %d15
# CHECK: encoding: [0x0f,0xf1,0x00,0xe0]
.code32
sh %d14, %d1, %d15

# CHECK-INST: sh %d14, %d14, %d0
# CHECK: encoding: [0x0f,0x0e,0x00,0xe0]
.code32
sh %d14, %d14, %d0

# CHECK-INST: sh %d14, %d14, %d1
# CHECK: encoding: [0x0f,0x1e,0x00,0xe0]
.code32
sh %d14, %d14, %d1

# CHECK-INST: sh %d14, %d14, %d14
# CHECK: encoding: [0x0f,0xee,0x00,0xe0]
.code32
sh %d14, %d14, %d14

# CHECK-INST: sh %d14, %d14, %d15
# CHECK: encoding: [0x0f,0xfe,0x00,0xe0]
.code32
sh %d14, %d14, %d15

# CHECK-INST: sh %d14, %d15, %d0
# CHECK: encoding: [0x0f,0x0f,0x00,0xe0]
.code32
sh %d14, %d15, %d0

# CHECK-INST: sh %d14, %d15, %d1
# CHECK: encoding: [0x0f,0x1f,0x00,0xe0]
.code32
sh %d14, %d15, %d1

# CHECK-INST: sh %d14, %d15, %d14
# CHECK: encoding: [0x0f,0xef,0x00,0xe0]
.code32
sh %d14, %d15, %d14

# CHECK-INST: sh %d14, %d15, %d15
# CHECK: encoding: [0x0f,0xff,0x00,0xe0]
.code32
sh %d14, %d15, %d15

# CHECK-INST: sh %d15, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0x00,0xf0]
.code32
sh %d15, %d0, %d0

# CHECK-INST: sh %d15, %d0, %d1
# CHECK: encoding: [0x0f,0x10,0x00,0xf0]
.code32
sh %d15, %d0, %d1

# CHECK-INST: sh %d15, %d0, %d14
# CHECK: encoding: [0x0f,0xe0,0x00,0xf0]
.code32
sh %d15, %d0, %d14

# CHECK-INST: sh %d15, %d0, %d15
# CHECK: encoding: [0x0f,0xf0,0x00,0xf0]
.code32
sh %d15, %d0, %d15

# CHECK-INST: sh %d15, %d1, %d0
# CHECK: encoding: [0x0f,0x01,0x00,0xf0]
.code32
sh %d15, %d1, %d0

# CHECK-INST: sh %d15, %d1, %d1
# CHECK: encoding: [0x0f,0x11,0x00,0xf0]
.code32
sh %d15, %d1, %d1

# CHECK-INST: sh %d15, %d1, %d14
# CHECK: encoding: [0x0f,0xe1,0x00,0xf0]
.code32
sh %d15, %d1, %d14

# CHECK-INST: sh %d15, %d1, %d15
# CHECK: encoding: [0x0f,0xf1,0x00,0xf0]
.code32
sh %d15, %d1, %d15

# CHECK-INST: sh %d15, %d14, %d0
# CHECK: encoding: [0x0f,0x0e,0x00,0xf0]
.code32
sh %d15, %d14, %d0

# CHECK-INST: sh %d15, %d14, %d1
# CHECK: encoding: [0x0f,0x1e,0x00,0xf0]
.code32
sh %d15, %d14, %d1

# CHECK-INST: sh %d15, %d14, %d14
# CHECK: encoding: [0x0f,0xee,0x00,0xf0]
.code32
sh %d15, %d14, %d14

# CHECK-INST: sh %d15, %d14, %d15
# CHECK: encoding: [0x0f,0xfe,0x00,0xf0]
.code32
sh %d15, %d14, %d15

# CHECK-INST: sh %d15, %d15, %d0
# CHECK: encoding: [0x0f,0x0f,0x00,0xf0]
.code32
sh %d15, %d15, %d0

# CHECK-INST: sh %d15, %d15, %d1
# CHECK: encoding: [0x0f,0x1f,0x00,0xf0]
.code32
sh %d15, %d15, %d1

# CHECK-INST: sh %d15, %d15, %d14
# CHECK: encoding: [0x0f,0xef,0x00,0xf0]
.code32
sh %d15, %d15, %d14

# CHECK-INST: sh %d15, %d15, %d15
# CHECK: encoding: [0x0f,0xff,0x00,0xf0]
.code32
sh %d15, %d15, %d15


# CHECK-INST: sh %d0, %d0, -32
# CHECK: encoding: [0x8f,0x00,0x1e,0x00]
.code32
sh %d0, %d0, -32

# CHECK-INST: sh %d0, %d0, -31
# CHECK: encoding: [0x8f,0x10,0x1e,0x00]
.code32
sh %d0, %d0, -31

# CHECK-INST: sh %d0, %d0, -1
# CHECK: encoding: [0x8f,0xf0,0x1f,0x00]
.code32
sh %d0, %d0, -1

# CHECK-INST: sh %d0, %d0, 0
# CHECK: encoding: [0x8f,0x00,0x00,0x00]
.code32
sh %d0, %d0, 0

# CHECK-INST: sh %d0, %d0, 1
# CHECK: encoding: [0x8f,0x10,0x00,0x00]
.code32
sh %d0, %d0, 1

# CHECK-INST: sh %d0, %d0, 30
# CHECK: encoding: [0x8f,0xe0,0x01,0x00]
.code32
sh %d0, %d0, 30

# CHECK-INST: sh %d0, %d0, 31
# CHECK: encoding: [0x8f,0xf0,0x01,0x00]
.code32
sh %d0, %d0, 31

# CHECK-INST: sh %d0, %d1, -32
# CHECK: encoding: [0x8f,0x01,0x1e,0x00]
.code32
sh %d0, %d1, -32

# CHECK-INST: sh %d0, %d1, -31
# CHECK: encoding: [0x8f,0x11,0x1e,0x00]
.code32
sh %d0, %d1, -31

# CHECK-INST: sh %d0, %d1, -1
# CHECK: encoding: [0x8f,0xf1,0x1f,0x00]
.code32
sh %d0, %d1, -1

# CHECK-INST: sh %d0, %d1, 0
# CHECK: encoding: [0x8f,0x01,0x00,0x00]
.code32
sh %d0, %d1, 0

# CHECK-INST: sh %d0, %d1, 1
# CHECK: encoding: [0x8f,0x11,0x00,0x00]
.code32
sh %d0, %d1, 1

# CHECK-INST: sh %d0, %d1, 30
# CHECK: encoding: [0x8f,0xe1,0x01,0x00]
.code32
sh %d0, %d1, 30

# CHECK-INST: sh %d0, %d1, 31
# CHECK: encoding: [0x8f,0xf1,0x01,0x00]
.code32
sh %d0, %d1, 31

# CHECK-INST: sh %d0, %d14, -32
# CHECK: encoding: [0x8f,0x0e,0x1e,0x00]
.code32
sh %d0, %d14, -32

# CHECK-INST: sh %d0, %d14, -31
# CHECK: encoding: [0x8f,0x1e,0x1e,0x00]
.code32
sh %d0, %d14, -31

# CHECK-INST: sh %d0, %d14, -1
# CHECK: encoding: [0x8f,0xfe,0x1f,0x00]
.code32
sh %d0, %d14, -1

# CHECK-INST: sh %d0, %d14, 0
# CHECK: encoding: [0x8f,0x0e,0x00,0x00]
.code32
sh %d0, %d14, 0

# CHECK-INST: sh %d0, %d14, 1
# CHECK: encoding: [0x8f,0x1e,0x00,0x00]
.code32
sh %d0, %d14, 1

# CHECK-INST: sh %d0, %d14, 30
# CHECK: encoding: [0x8f,0xee,0x01,0x00]
.code32
sh %d0, %d14, 30

# CHECK-INST: sh %d0, %d14, 31
# CHECK: encoding: [0x8f,0xfe,0x01,0x00]
.code32
sh %d0, %d14, 31

# CHECK-INST: sh %d0, %d15, -32
# CHECK: encoding: [0x8f,0x0f,0x1e,0x00]
.code32
sh %d0, %d15, -32

# CHECK-INST: sh %d0, %d15, -31
# CHECK: encoding: [0x8f,0x1f,0x1e,0x00]
.code32
sh %d0, %d15, -31

# CHECK-INST: sh %d0, %d15, -1
# CHECK: encoding: [0x8f,0xff,0x1f,0x00]
.code32
sh %d0, %d15, -1

# CHECK-INST: sh %d0, %d15, 0
# CHECK: encoding: [0x8f,0x0f,0x00,0x00]
.code32
sh %d0, %d15, 0

# CHECK-INST: sh %d0, %d15, 1
# CHECK: encoding: [0x8f,0x1f,0x00,0x00]
.code32
sh %d0, %d15, 1

# CHECK-INST: sh %d0, %d15, 30
# CHECK: encoding: [0x8f,0xef,0x01,0x00]
.code32
sh %d0, %d15, 30

# CHECK-INST: sh %d0, %d15, 31
# CHECK: encoding: [0x8f,0xff,0x01,0x00]
.code32
sh %d0, %d15, 31

# CHECK-INST: sh %d1, %d0, -32
# CHECK: encoding: [0x8f,0x00,0x1e,0x10]
.code32
sh %d1, %d0, -32

# CHECK-INST: sh %d1, %d0, -31
# CHECK: encoding: [0x8f,0x10,0x1e,0x10]
.code32
sh %d1, %d0, -31

# CHECK-INST: sh %d1, %d0, -1
# CHECK: encoding: [0x8f,0xf0,0x1f,0x10]
.code32
sh %d1, %d0, -1

# CHECK-INST: sh %d1, %d0, 0
# CHECK: encoding: [0x8f,0x00,0x00,0x10]
.code32
sh %d1, %d0, 0

# CHECK-INST: sh %d1, %d0, 1
# CHECK: encoding: [0x8f,0x10,0x00,0x10]
.code32
sh %d1, %d0, 1

# CHECK-INST: sh %d1, %d0, 30
# CHECK: encoding: [0x8f,0xe0,0x01,0x10]
.code32
sh %d1, %d0, 30

# CHECK-INST: sh %d1, %d0, 31
# CHECK: encoding: [0x8f,0xf0,0x01,0x10]
.code32
sh %d1, %d0, 31

# CHECK-INST: sh %d1, %d1, -32
# CHECK: encoding: [0x8f,0x01,0x1e,0x10]
.code32
sh %d1, %d1, -32

# CHECK-INST: sh %d1, %d1, -31
# CHECK: encoding: [0x8f,0x11,0x1e,0x10]
.code32
sh %d1, %d1, -31

# CHECK-INST: sh %d1, %d1, -1
# CHECK: encoding: [0x8f,0xf1,0x1f,0x10]
.code32
sh %d1, %d1, -1

# CHECK-INST: sh %d1, %d1, 0
# CHECK: encoding: [0x8f,0x01,0x00,0x10]
.code32
sh %d1, %d1, 0

# CHECK-INST: sh %d1, %d1, 1
# CHECK: encoding: [0x8f,0x11,0x00,0x10]
.code32
sh %d1, %d1, 1

# CHECK-INST: sh %d1, %d1, 30
# CHECK: encoding: [0x8f,0xe1,0x01,0x10]
.code32
sh %d1, %d1, 30

# CHECK-INST: sh %d1, %d1, 31
# CHECK: encoding: [0x8f,0xf1,0x01,0x10]
.code32
sh %d1, %d1, 31

# CHECK-INST: sh %d1, %d14, -32
# CHECK: encoding: [0x8f,0x0e,0x1e,0x10]
.code32
sh %d1, %d14, -32

# CHECK-INST: sh %d1, %d14, -31
# CHECK: encoding: [0x8f,0x1e,0x1e,0x10]
.code32
sh %d1, %d14, -31

# CHECK-INST: sh %d1, %d14, -1
# CHECK: encoding: [0x8f,0xfe,0x1f,0x10]
.code32
sh %d1, %d14, -1

# CHECK-INST: sh %d1, %d14, 0
# CHECK: encoding: [0x8f,0x0e,0x00,0x10]
.code32
sh %d1, %d14, 0

# CHECK-INST: sh %d1, %d14, 1
# CHECK: encoding: [0x8f,0x1e,0x00,0x10]
.code32
sh %d1, %d14, 1

# CHECK-INST: sh %d1, %d14, 30
# CHECK: encoding: [0x8f,0xee,0x01,0x10]
.code32
sh %d1, %d14, 30

# CHECK-INST: sh %d1, %d14, 31
# CHECK: encoding: [0x8f,0xfe,0x01,0x10]
.code32
sh %d1, %d14, 31

# CHECK-INST: sh %d1, %d15, -32
# CHECK: encoding: [0x8f,0x0f,0x1e,0x10]
.code32
sh %d1, %d15, -32

# CHECK-INST: sh %d1, %d15, -31
# CHECK: encoding: [0x8f,0x1f,0x1e,0x10]
.code32
sh %d1, %d15, -31

# CHECK-INST: sh %d1, %d15, -1
# CHECK: encoding: [0x8f,0xff,0x1f,0x10]
.code32
sh %d1, %d15, -1

# CHECK-INST: sh %d1, %d15, 0
# CHECK: encoding: [0x8f,0x0f,0x00,0x10]
.code32
sh %d1, %d15, 0

# CHECK-INST: sh %d1, %d15, 1
# CHECK: encoding: [0x8f,0x1f,0x00,0x10]
.code32
sh %d1, %d15, 1

# CHECK-INST: sh %d1, %d15, 30
# CHECK: encoding: [0x8f,0xef,0x01,0x10]
.code32
sh %d1, %d15, 30

# CHECK-INST: sh %d1, %d15, 31
# CHECK: encoding: [0x8f,0xff,0x01,0x10]
.code32
sh %d1, %d15, 31

# CHECK-INST: sh %d14, %d0, -32
# CHECK: encoding: [0x8f,0x00,0x1e,0xe0]
.code32
sh %d14, %d0, -32

# CHECK-INST: sh %d14, %d0, -31
# CHECK: encoding: [0x8f,0x10,0x1e,0xe0]
.code32
sh %d14, %d0, -31

# CHECK-INST: sh %d14, %d0, -1
# CHECK: encoding: [0x8f,0xf0,0x1f,0xe0]
.code32
sh %d14, %d0, -1

# CHECK-INST: sh %d14, %d0, 0
# CHECK: encoding: [0x8f,0x00,0x00,0xe0]
.code32
sh %d14, %d0, 0

# CHECK-INST: sh %d14, %d0, 1
# CHECK: encoding: [0x8f,0x10,0x00,0xe0]
.code32
sh %d14, %d0, 1

# CHECK-INST: sh %d14, %d0, 30
# CHECK: encoding: [0x8f,0xe0,0x01,0xe0]
.code32
sh %d14, %d0, 30

# CHECK-INST: sh %d14, %d0, 31
# CHECK: encoding: [0x8f,0xf0,0x01,0xe0]
.code32
sh %d14, %d0, 31

# CHECK-INST: sh %d14, %d1, -32
# CHECK: encoding: [0x8f,0x01,0x1e,0xe0]
.code32
sh %d14, %d1, -32

# CHECK-INST: sh %d14, %d1, -31
# CHECK: encoding: [0x8f,0x11,0x1e,0xe0]
.code32
sh %d14, %d1, -31

# CHECK-INST: sh %d14, %d1, -1
# CHECK: encoding: [0x8f,0xf1,0x1f,0xe0]
.code32
sh %d14, %d1, -1

# CHECK-INST: sh %d14, %d1, 0
# CHECK: encoding: [0x8f,0x01,0x00,0xe0]
.code32
sh %d14, %d1, 0

# CHECK-INST: sh %d14, %d1, 1
# CHECK: encoding: [0x8f,0x11,0x00,0xe0]
.code32
sh %d14, %d1, 1

# CHECK-INST: sh %d14, %d1, 30
# CHECK: encoding: [0x8f,0xe1,0x01,0xe0]
.code32
sh %d14, %d1, 30

# CHECK-INST: sh %d14, %d1, 31
# CHECK: encoding: [0x8f,0xf1,0x01,0xe0]
.code32
sh %d14, %d1, 31

# CHECK-INST: sh %d14, %d14, -32
# CHECK: encoding: [0x8f,0x0e,0x1e,0xe0]
.code32
sh %d14, %d14, -32

# CHECK-INST: sh %d14, %d14, -31
# CHECK: encoding: [0x8f,0x1e,0x1e,0xe0]
.code32
sh %d14, %d14, -31

# CHECK-INST: sh %d14, %d14, -1
# CHECK: encoding: [0x8f,0xfe,0x1f,0xe0]
.code32
sh %d14, %d14, -1

# CHECK-INST: sh %d14, %d14, 0
# CHECK: encoding: [0x8f,0x0e,0x00,0xe0]
.code32
sh %d14, %d14, 0

# CHECK-INST: sh %d14, %d14, 1
# CHECK: encoding: [0x8f,0x1e,0x00,0xe0]
.code32
sh %d14, %d14, 1

# CHECK-INST: sh %d14, %d14, 30
# CHECK: encoding: [0x8f,0xee,0x01,0xe0]
.code32
sh %d14, %d14, 30

# CHECK-INST: sh %d14, %d14, 31
# CHECK: encoding: [0x8f,0xfe,0x01,0xe0]
.code32
sh %d14, %d14, 31

# CHECK-INST: sh %d14, %d15, -32
# CHECK: encoding: [0x8f,0x0f,0x1e,0xe0]
.code32
sh %d14, %d15, -32

# CHECK-INST: sh %d14, %d15, -31
# CHECK: encoding: [0x8f,0x1f,0x1e,0xe0]
.code32
sh %d14, %d15, -31

# CHECK-INST: sh %d14, %d15, -1
# CHECK: encoding: [0x8f,0xff,0x1f,0xe0]
.code32
sh %d14, %d15, -1

# CHECK-INST: sh %d14, %d15, 0
# CHECK: encoding: [0x8f,0x0f,0x00,0xe0]
.code32
sh %d14, %d15, 0

# CHECK-INST: sh %d14, %d15, 1
# CHECK: encoding: [0x8f,0x1f,0x00,0xe0]
.code32
sh %d14, %d15, 1

# CHECK-INST: sh %d14, %d15, 30
# CHECK: encoding: [0x8f,0xef,0x01,0xe0]
.code32
sh %d14, %d15, 30

# CHECK-INST: sh %d14, %d15, 31
# CHECK: encoding: [0x8f,0xff,0x01,0xe0]
.code32
sh %d14, %d15, 31

# CHECK-INST: sh %d15, %d0, -32
# CHECK: encoding: [0x8f,0x00,0x1e,0xf0]
.code32
sh %d15, %d0, -32

# CHECK-INST: sh %d15, %d0, -31
# CHECK: encoding: [0x8f,0x10,0x1e,0xf0]
.code32
sh %d15, %d0, -31

# CHECK-INST: sh %d15, %d0, -1
# CHECK: encoding: [0x8f,0xf0,0x1f,0xf0]
.code32
sh %d15, %d0, -1

# CHECK-INST: sh %d15, %d0, 0
# CHECK: encoding: [0x8f,0x00,0x00,0xf0]
.code32
sh %d15, %d0, 0

# CHECK-INST: sh %d15, %d0, 1
# CHECK: encoding: [0x8f,0x10,0x00,0xf0]
.code32
sh %d15, %d0, 1

# CHECK-INST: sh %d15, %d0, 30
# CHECK: encoding: [0x8f,0xe0,0x01,0xf0]
.code32
sh %d15, %d0, 30

# CHECK-INST: sh %d15, %d0, 31
# CHECK: encoding: [0x8f,0xf0,0x01,0xf0]
.code32
sh %d15, %d0, 31

# CHECK-INST: sh %d15, %d1, -32
# CHECK: encoding: [0x8f,0x01,0x1e,0xf0]
.code32
sh %d15, %d1, -32

# CHECK-INST: sh %d15, %d1, -31
# CHECK: encoding: [0x8f,0x11,0x1e,0xf0]
.code32
sh %d15, %d1, -31

# CHECK-INST: sh %d15, %d1, -1
# CHECK: encoding: [0x8f,0xf1,0x1f,0xf0]
.code32
sh %d15, %d1, -1

# CHECK-INST: sh %d15, %d1, 0
# CHECK: encoding: [0x8f,0x01,0x00,0xf0]
.code32
sh %d15, %d1, 0

# CHECK-INST: sh %d15, %d1, 1
# CHECK: encoding: [0x8f,0x11,0x00,0xf0]
.code32
sh %d15, %d1, 1

# CHECK-INST: sh %d15, %d1, 30
# CHECK: encoding: [0x8f,0xe1,0x01,0xf0]
.code32
sh %d15, %d1, 30

# CHECK-INST: sh %d15, %d1, 31
# CHECK: encoding: [0x8f,0xf1,0x01,0xf0]
.code32
sh %d15, %d1, 31

# CHECK-INST: sh %d15, %d14, -32
# CHECK: encoding: [0x8f,0x0e,0x1e,0xf0]
.code32
sh %d15, %d14, -32

# CHECK-INST: sh %d15, %d14, -31
# CHECK: encoding: [0x8f,0x1e,0x1e,0xf0]
.code32
sh %d15, %d14, -31

# CHECK-INST: sh %d15, %d14, -1
# CHECK: encoding: [0x8f,0xfe,0x1f,0xf0]
.code32
sh %d15, %d14, -1

# CHECK-INST: sh %d15, %d14, 0
# CHECK: encoding: [0x8f,0x0e,0x00,0xf0]
.code32
sh %d15, %d14, 0

# CHECK-INST: sh %d15, %d14, 1
# CHECK: encoding: [0x8f,0x1e,0x00,0xf0]
.code32
sh %d15, %d14, 1

# CHECK-INST: sh %d15, %d14, 30
# CHECK: encoding: [0x8f,0xee,0x01,0xf0]
.code32
sh %d15, %d14, 30

# CHECK-INST: sh %d15, %d14, 31
# CHECK: encoding: [0x8f,0xfe,0x01,0xf0]
.code32
sh %d15, %d14, 31

# CHECK-INST: sh %d15, %d15, -32
# CHECK: encoding: [0x8f,0x0f,0x1e,0xf0]
.code32
sh %d15, %d15, -32

# CHECK-INST: sh %d15, %d15, -31
# CHECK: encoding: [0x8f,0x1f,0x1e,0xf0]
.code32
sh %d15, %d15, -31

# CHECK-INST: sh %d15, %d15, -1
# CHECK: encoding: [0x8f,0xff,0x1f,0xf0]
.code32
sh %d15, %d15, -1

# CHECK-INST: sh %d15, %d15, 0
# CHECK: encoding: [0x8f,0x0f,0x00,0xf0]
.code32
sh %d15, %d15, 0

# CHECK-INST: sh %d15, %d15, 1
# CHECK: encoding: [0x8f,0x1f,0x00,0xf0]
.code32
sh %d15, %d15, 1

# CHECK-INST: sh %d15, %d15, 30
# CHECK: encoding: [0x8f,0xef,0x01,0xf0]
.code32
sh %d15, %d15, 30

# CHECK-INST: sh %d15, %d15, 31
# CHECK: encoding: [0x8f,0xff,0x01,0xf0]
.code32
sh %d15, %d15, 31


# CHECK-INST: sha %d0, -8
# CHECK: encoding: [0x86,0x80]
.code16
sha %d0, -8

# CHECK-INST: sha %d0, -1
# CHECK: encoding: [0x86,0xf0]
.code16
sha %d0, -1

# CHECK-INST: sha %d0, 0
# CHECK: encoding: [0x86,0x00]
.code16
sha %d0, 0

# CHECK-INST: sha %d0, 1
# CHECK: encoding: [0x86,0x10]
.code16
sha %d0, 1

# CHECK-INST: sha %d0, 7
# CHECK: encoding: [0x86,0x70]
.code16
sha %d0, 7

# CHECK-INST: sha %d1, -8
# CHECK: encoding: [0x86,0x81]
.code16
sha %d1, -8

# CHECK-INST: sha %d1, -1
# CHECK: encoding: [0x86,0xf1]
.code16
sha %d1, -1

# CHECK-INST: sha %d1, 0
# CHECK: encoding: [0x86,0x01]
.code16
sha %d1, 0

# CHECK-INST: sha %d1, 1
# CHECK: encoding: [0x86,0x11]
.code16
sha %d1, 1

# CHECK-INST: sha %d1, 7
# CHECK: encoding: [0x86,0x71]
.code16
sha %d1, 7

# CHECK-INST: sha %d14, -8
# CHECK: encoding: [0x86,0x8e]
.code16
sha %d14, -8

# CHECK-INST: sha %d14, -1
# CHECK: encoding: [0x86,0xfe]
.code16
sha %d14, -1

# CHECK-INST: sha %d14, 0
# CHECK: encoding: [0x86,0x0e]
.code16
sha %d14, 0

# CHECK-INST: sha %d14, 1
# CHECK: encoding: [0x86,0x1e]
.code16
sha %d14, 1

# CHECK-INST: sha %d14, 7
# CHECK: encoding: [0x86,0x7e]
.code16
sha %d14, 7

# CHECK-INST: sha %d15, -8
# CHECK: encoding: [0x86,0x8f]
.code16
sha %d15, -8

# CHECK-INST: sha %d15, -1
# CHECK: encoding: [0x86,0xff]
.code16
sha %d15, -1

# CHECK-INST: sha %d15, 0
# CHECK: encoding: [0x86,0x0f]
.code16
sha %d15, 0

# CHECK-INST: sha %d15, 1
# CHECK: encoding: [0x86,0x1f]
.code16
sha %d15, 1

# CHECK-INST: sha %d15, 7
# CHECK: encoding: [0x86,0x7f]
.code16
sha %d15, 7
 
# CHECK-INST: sha %d0, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0x10,0x00]
.code32
sha %d0, %d0, %d0

# CHECK-INST: sha %d0, %d0, %d1
# CHECK: encoding: [0x0f,0x10,0x10,0x00]
.code32
sha %d0, %d0, %d1

# CHECK-INST: sha %d0, %d0, %d14
# CHECK: encoding: [0x0f,0xe0,0x10,0x00]
.code32
sha %d0, %d0, %d14

# CHECK-INST: sha %d0, %d0, %d15
# CHECK: encoding: [0x0f,0xf0,0x10,0x00]
.code32
sha %d0, %d0, %d15

# CHECK-INST: sha %d0, %d1, %d0
# CHECK: encoding: [0x0f,0x01,0x10,0x00]
.code32
sha %d0, %d1, %d0

# CHECK-INST: sha %d0, %d1, %d1
# CHECK: encoding: [0x0f,0x11,0x10,0x00]
.code32
sha %d0, %d1, %d1

# CHECK-INST: sha %d0, %d1, %d14
# CHECK: encoding: [0x0f,0xe1,0x10,0x00]
.code32
sha %d0, %d1, %d14

# CHECK-INST: sha %d0, %d1, %d15
# CHECK: encoding: [0x0f,0xf1,0x10,0x00]
.code32
sha %d0, %d1, %d15

# CHECK-INST: sha %d0, %d14, %d0
# CHECK: encoding: [0x0f,0x0e,0x10,0x00]
.code32
sha %d0, %d14, %d0

# CHECK-INST: sha %d0, %d14, %d1
# CHECK: encoding: [0x0f,0x1e,0x10,0x00]
.code32
sha %d0, %d14, %d1

# CHECK-INST: sha %d0, %d14, %d14
# CHECK: encoding: [0x0f,0xee,0x10,0x00]
.code32
sha %d0, %d14, %d14

# CHECK-INST: sha %d0, %d14, %d15
# CHECK: encoding: [0x0f,0xfe,0x10,0x00]
.code32
sha %d0, %d14, %d15

# CHECK-INST: sha %d0, %d15, %d0
# CHECK: encoding: [0x0f,0x0f,0x10,0x00]
.code32
sha %d0, %d15, %d0

# CHECK-INST: sha %d0, %d15, %d1
# CHECK: encoding: [0x0f,0x1f,0x10,0x00]
.code32
sha %d0, %d15, %d1

# CHECK-INST: sha %d0, %d15, %d14
# CHECK: encoding: [0x0f,0xef,0x10,0x00]
.code32
sha %d0, %d15, %d14

# CHECK-INST: sha %d0, %d15, %d15
# CHECK: encoding: [0x0f,0xff,0x10,0x00]
.code32
sha %d0, %d15, %d15

# CHECK-INST: sha %d1, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0x10,0x10]
.code32
sha %d1, %d0, %d0

# CHECK-INST: sha %d1, %d0, %d1
# CHECK: encoding: [0x0f,0x10,0x10,0x10]
.code32
sha %d1, %d0, %d1

# CHECK-INST: sha %d1, %d0, %d14
# CHECK: encoding: [0x0f,0xe0,0x10,0x10]
.code32
sha %d1, %d0, %d14

# CHECK-INST: sha %d1, %d0, %d15
# CHECK: encoding: [0x0f,0xf0,0x10,0x10]
.code32
sha %d1, %d0, %d15

# CHECK-INST: sha %d1, %d1, %d0
# CHECK: encoding: [0x0f,0x01,0x10,0x10]
.code32
sha %d1, %d1, %d0

# CHECK-INST: sha %d1, %d1, %d1
# CHECK: encoding: [0x0f,0x11,0x10,0x10]
.code32
sha %d1, %d1, %d1

# CHECK-INST: sha %d1, %d1, %d14
# CHECK: encoding: [0x0f,0xe1,0x10,0x10]
.code32
sha %d1, %d1, %d14

# CHECK-INST: sha %d1, %d1, %d15
# CHECK: encoding: [0x0f,0xf1,0x10,0x10]
.code32
sha %d1, %d1, %d15

# CHECK-INST: sha %d1, %d14, %d0
# CHECK: encoding: [0x0f,0x0e,0x10,0x10]
.code32
sha %d1, %d14, %d0

# CHECK-INST: sha %d1, %d14, %d1
# CHECK: encoding: [0x0f,0x1e,0x10,0x10]
.code32
sha %d1, %d14, %d1

# CHECK-INST: sha %d1, %d14, %d14
# CHECK: encoding: [0x0f,0xee,0x10,0x10]
.code32
sha %d1, %d14, %d14

# CHECK-INST: sha %d1, %d14, %d15
# CHECK: encoding: [0x0f,0xfe,0x10,0x10]
.code32
sha %d1, %d14, %d15

# CHECK-INST: sha %d1, %d15, %d0
# CHECK: encoding: [0x0f,0x0f,0x10,0x10]
.code32
sha %d1, %d15, %d0

# CHECK-INST: sha %d1, %d15, %d1
# CHECK: encoding: [0x0f,0x1f,0x10,0x10]
.code32
sha %d1, %d15, %d1

# CHECK-INST: sha %d1, %d15, %d14
# CHECK: encoding: [0x0f,0xef,0x10,0x10]
.code32
sha %d1, %d15, %d14

# CHECK-INST: sha %d1, %d15, %d15
# CHECK: encoding: [0x0f,0xff,0x10,0x10]
.code32
sha %d1, %d15, %d15

# CHECK-INST: sha %d14, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0x10,0xe0]
.code32
sha %d14, %d0, %d0

# CHECK-INST: sha %d14, %d0, %d1
# CHECK: encoding: [0x0f,0x10,0x10,0xe0]
.code32
sha %d14, %d0, %d1

# CHECK-INST: sha %d14, %d0, %d14
# CHECK: encoding: [0x0f,0xe0,0x10,0xe0]
.code32
sha %d14, %d0, %d14

# CHECK-INST: sha %d14, %d0, %d15
# CHECK: encoding: [0x0f,0xf0,0x10,0xe0]
.code32
sha %d14, %d0, %d15

# CHECK-INST: sha %d14, %d1, %d0
# CHECK: encoding: [0x0f,0x01,0x10,0xe0]
.code32
sha %d14, %d1, %d0

# CHECK-INST: sha %d14, %d1, %d1
# CHECK: encoding: [0x0f,0x11,0x10,0xe0]
.code32
sha %d14, %d1, %d1

# CHECK-INST: sha %d14, %d1, %d14
# CHECK: encoding: [0x0f,0xe1,0x10,0xe0]
.code32
sha %d14, %d1, %d14

# CHECK-INST: sha %d14, %d1, %d15
# CHECK: encoding: [0x0f,0xf1,0x10,0xe0]
.code32
sha %d14, %d1, %d15

# CHECK-INST: sha %d14, %d14, %d0
# CHECK: encoding: [0x0f,0x0e,0x10,0xe0]
.code32
sha %d14, %d14, %d0

# CHECK-INST: sha %d14, %d14, %d1
# CHECK: encoding: [0x0f,0x1e,0x10,0xe0]
.code32
sha %d14, %d14, %d1

# CHECK-INST: sha %d14, %d14, %d14
# CHECK: encoding: [0x0f,0xee,0x10,0xe0]
.code32
sha %d14, %d14, %d14

# CHECK-INST: sha %d14, %d14, %d15
# CHECK: encoding: [0x0f,0xfe,0x10,0xe0]
.code32
sha %d14, %d14, %d15

# CHECK-INST: sha %d14, %d15, %d0
# CHECK: encoding: [0x0f,0x0f,0x10,0xe0]
.code32
sha %d14, %d15, %d0

# CHECK-INST: sha %d14, %d15, %d1
# CHECK: encoding: [0x0f,0x1f,0x10,0xe0]
.code32
sha %d14, %d15, %d1

# CHECK-INST: sha %d14, %d15, %d14
# CHECK: encoding: [0x0f,0xef,0x10,0xe0]
.code32
sha %d14, %d15, %d14

# CHECK-INST: sha %d14, %d15, %d15
# CHECK: encoding: [0x0f,0xff,0x10,0xe0]
.code32
sha %d14, %d15, %d15

# CHECK-INST: sha %d15, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0x10,0xf0]
.code32
sha %d15, %d0, %d0

# CHECK-INST: sha %d15, %d0, %d1
# CHECK: encoding: [0x0f,0x10,0x10,0xf0]
.code32
sha %d15, %d0, %d1

# CHECK-INST: sha %d15, %d0, %d14
# CHECK: encoding: [0x0f,0xe0,0x10,0xf0]
.code32
sha %d15, %d0, %d14

# CHECK-INST: sha %d15, %d0, %d15
# CHECK: encoding: [0x0f,0xf0,0x10,0xf0]
.code32
sha %d15, %d0, %d15

# CHECK-INST: sha %d15, %d1, %d0
# CHECK: encoding: [0x0f,0x01,0x10,0xf0]
.code32
sha %d15, %d1, %d0

# CHECK-INST: sha %d15, %d1, %d1
# CHECK: encoding: [0x0f,0x11,0x10,0xf0]
.code32
sha %d15, %d1, %d1

# CHECK-INST: sha %d15, %d1, %d14
# CHECK: encoding: [0x0f,0xe1,0x10,0xf0]
.code32
sha %d15, %d1, %d14

# CHECK-INST: sha %d15, %d1, %d15
# CHECK: encoding: [0x0f,0xf1,0x10,0xf0]
.code32
sha %d15, %d1, %d15

# CHECK-INST: sha %d15, %d14, %d0
# CHECK: encoding: [0x0f,0x0e,0x10,0xf0]
.code32
sha %d15, %d14, %d0

# CHECK-INST: sha %d15, %d14, %d1
# CHECK: encoding: [0x0f,0x1e,0x10,0xf0]
.code32
sha %d15, %d14, %d1

# CHECK-INST: sha %d15, %d14, %d14
# CHECK: encoding: [0x0f,0xee,0x10,0xf0]
.code32
sha %d15, %d14, %d14

# CHECK-INST: sha %d15, %d14, %d15
# CHECK: encoding: [0x0f,0xfe,0x10,0xf0]
.code32
sha %d15, %d14, %d15

# CHECK-INST: sha %d15, %d15, %d0
# CHECK: encoding: [0x0f,0x0f,0x10,0xf0]
.code32
sha %d15, %d15, %d0

# CHECK-INST: sha %d15, %d15, %d1
# CHECK: encoding: [0x0f,0x1f,0x10,0xf0]
.code32
sha %d15, %d15, %d1

# CHECK-INST: sha %d15, %d15, %d14
# CHECK: encoding: [0x0f,0xef,0x10,0xf0]
.code32
sha %d15, %d15, %d14

# CHECK-INST: sha %d15, %d15, %d15
# CHECK: encoding: [0x0f,0xff,0x10,0xf0]
.code32
sha %d15, %d15, %d15
 
# CHECK-INST: sha %d0, %d0, -32
# CHECK: encoding: [0x8f,0x00,0x3e,0x00]
.code32
sha %d0, %d0, -32

# CHECK-INST: sha %d0, %d0, -31
# CHECK: encoding: [0x8f,0x10,0x3e,0x00]
.code32
sha %d0, %d0, -31

# CHECK-INST: sha %d0, %d0, -1
# CHECK: encoding: [0x8f,0xf0,0x3f,0x00]
.code32
sha %d0, %d0, -1

# CHECK-INST: sha %d0, %d0, 0
# CHECK: encoding: [0x8f,0x00,0x20,0x00]
.code32
sha %d0, %d0, 0

# CHECK-INST: sha %d0, %d0, 1
# CHECK: encoding: [0x8f,0x10,0x20,0x00]
.code32
sha %d0, %d0, 1

# CHECK-INST: sha %d0, %d0, 30
# CHECK: encoding: [0x8f,0xe0,0x21,0x00]
.code32
sha %d0, %d0, 30

# CHECK-INST: sha %d0, %d0, 31
# CHECK: encoding: [0x8f,0xf0,0x21,0x00]
.code32
sha %d0, %d0, 31

# CHECK-INST: sha %d0, %d1, -32
# CHECK: encoding: [0x8f,0x01,0x3e,0x00]
.code32
sha %d0, %d1, -32

# CHECK-INST: sha %d0, %d1, -31
# CHECK: encoding: [0x8f,0x11,0x3e,0x00]
.code32
sha %d0, %d1, -31

# CHECK-INST: sha %d0, %d1, -1
# CHECK: encoding: [0x8f,0xf1,0x3f,0x00]
.code32
sha %d0, %d1, -1

# CHECK-INST: sha %d0, %d1, 0
# CHECK: encoding: [0x8f,0x01,0x20,0x00]
.code32
sha %d0, %d1, 0

# CHECK-INST: sha %d0, %d1, 1
# CHECK: encoding: [0x8f,0x11,0x20,0x00]
.code32
sha %d0, %d1, 1

# CHECK-INST: sha %d0, %d1, 30
# CHECK: encoding: [0x8f,0xe1,0x21,0x00]
.code32
sha %d0, %d1, 30

# CHECK-INST: sha %d0, %d1, 31
# CHECK: encoding: [0x8f,0xf1,0x21,0x00]
.code32
sha %d0, %d1, 31

# CHECK-INST: sha %d0, %d14, -32
# CHECK: encoding: [0x8f,0x0e,0x3e,0x00]
.code32
sha %d0, %d14, -32

# CHECK-INST: sha %d0, %d14, -31
# CHECK: encoding: [0x8f,0x1e,0x3e,0x00]
.code32
sha %d0, %d14, -31

# CHECK-INST: sha %d0, %d14, -1
# CHECK: encoding: [0x8f,0xfe,0x3f,0x00]
.code32
sha %d0, %d14, -1

# CHECK-INST: sha %d0, %d14, 0
# CHECK: encoding: [0x8f,0x0e,0x20,0x00]
.code32
sha %d0, %d14, 0

# CHECK-INST: sha %d0, %d14, 1
# CHECK: encoding: [0x8f,0x1e,0x20,0x00]
.code32
sha %d0, %d14, 1

# CHECK-INST: sha %d0, %d14, 30
# CHECK: encoding: [0x8f,0xee,0x21,0x00]
.code32
sha %d0, %d14, 30

# CHECK-INST: sha %d0, %d14, 31
# CHECK: encoding: [0x8f,0xfe,0x21,0x00]
.code32
sha %d0, %d14, 31

# CHECK-INST: sha %d0, %d15, -32
# CHECK: encoding: [0x8f,0x0f,0x3e,0x00]
.code32
sha %d0, %d15, -32

# CHECK-INST: sha %d0, %d15, -31
# CHECK: encoding: [0x8f,0x1f,0x3e,0x00]
.code32
sha %d0, %d15, -31

# CHECK-INST: sha %d0, %d15, -1
# CHECK: encoding: [0x8f,0xff,0x3f,0x00]
.code32
sha %d0, %d15, -1

# CHECK-INST: sha %d0, %d15, 0
# CHECK: encoding: [0x8f,0x0f,0x20,0x00]
.code32
sha %d0, %d15, 0

# CHECK-INST: sha %d0, %d15, 1
# CHECK: encoding: [0x8f,0x1f,0x20,0x00]
.code32
sha %d0, %d15, 1

# CHECK-INST: sha %d0, %d15, 30
# CHECK: encoding: [0x8f,0xef,0x21,0x00]
.code32
sha %d0, %d15, 30

# CHECK-INST: sha %d0, %d15, 31
# CHECK: encoding: [0x8f,0xff,0x21,0x00]
.code32
sha %d0, %d15, 31

# CHECK-INST: sha %d1, %d0, -32
# CHECK: encoding: [0x8f,0x00,0x3e,0x10]
.code32
sha %d1, %d0, -32

# CHECK-INST: sha %d1, %d0, -31
# CHECK: encoding: [0x8f,0x10,0x3e,0x10]
.code32
sha %d1, %d0, -31

# CHECK-INST: sha %d1, %d0, -1
# CHECK: encoding: [0x8f,0xf0,0x3f,0x10]
.code32
sha %d1, %d0, -1

# CHECK-INST: sha %d1, %d0, 0
# CHECK: encoding: [0x8f,0x00,0x20,0x10]
.code32
sha %d1, %d0, 0

# CHECK-INST: sha %d1, %d0, 1
# CHECK: encoding: [0x8f,0x10,0x20,0x10]
.code32
sha %d1, %d0, 1

# CHECK-INST: sha %d1, %d0, 30
# CHECK: encoding: [0x8f,0xe0,0x21,0x10]
.code32
sha %d1, %d0, 30

# CHECK-INST: sha %d1, %d0, 31
# CHECK: encoding: [0x8f,0xf0,0x21,0x10]
.code32
sha %d1, %d0, 31

# CHECK-INST: sha %d1, %d1, -32
# CHECK: encoding: [0x8f,0x01,0x3e,0x10]
.code32
sha %d1, %d1, -32

# CHECK-INST: sha %d1, %d1, -31
# CHECK: encoding: [0x8f,0x11,0x3e,0x10]
.code32
sha %d1, %d1, -31

# CHECK-INST: sha %d1, %d1, -1
# CHECK: encoding: [0x8f,0xf1,0x3f,0x10]
.code32
sha %d1, %d1, -1

# CHECK-INST: sha %d1, %d1, 0
# CHECK: encoding: [0x8f,0x01,0x20,0x10]
.code32
sha %d1, %d1, 0

# CHECK-INST: sha %d1, %d1, 1
# CHECK: encoding: [0x8f,0x11,0x20,0x10]
.code32
sha %d1, %d1, 1

# CHECK-INST: sha %d1, %d1, 30
# CHECK: encoding: [0x8f,0xe1,0x21,0x10]
.code32
sha %d1, %d1, 30

# CHECK-INST: sha %d1, %d1, 31
# CHECK: encoding: [0x8f,0xf1,0x21,0x10]
.code32
sha %d1, %d1, 31

# CHECK-INST: sha %d1, %d14, -32
# CHECK: encoding: [0x8f,0x0e,0x3e,0x10]
.code32
sha %d1, %d14, -32

# CHECK-INST: sha %d1, %d14, -31
# CHECK: encoding: [0x8f,0x1e,0x3e,0x10]
.code32
sha %d1, %d14, -31

# CHECK-INST: sha %d1, %d14, -1
# CHECK: encoding: [0x8f,0xfe,0x3f,0x10]
.code32
sha %d1, %d14, -1

# CHECK-INST: sha %d1, %d14, 0
# CHECK: encoding: [0x8f,0x0e,0x20,0x10]
.code32
sha %d1, %d14, 0

# CHECK-INST: sha %d1, %d14, 1
# CHECK: encoding: [0x8f,0x1e,0x20,0x10]
.code32
sha %d1, %d14, 1

# CHECK-INST: sha %d1, %d14, 30
# CHECK: encoding: [0x8f,0xee,0x21,0x10]
.code32
sha %d1, %d14, 30

# CHECK-INST: sha %d1, %d14, 31
# CHECK: encoding: [0x8f,0xfe,0x21,0x10]
.code32
sha %d1, %d14, 31

# CHECK-INST: sha %d1, %d15, -32
# CHECK: encoding: [0x8f,0x0f,0x3e,0x10]
.code32
sha %d1, %d15, -32

# CHECK-INST: sha %d1, %d15, -31
# CHECK: encoding: [0x8f,0x1f,0x3e,0x10]
.code32
sha %d1, %d15, -31

# CHECK-INST: sha %d1, %d15, -1
# CHECK: encoding: [0x8f,0xff,0x3f,0x10]
.code32
sha %d1, %d15, -1

# CHECK-INST: sha %d1, %d15, 0
# CHECK: encoding: [0x8f,0x0f,0x20,0x10]
.code32
sha %d1, %d15, 0

# CHECK-INST: sha %d1, %d15, 1
# CHECK: encoding: [0x8f,0x1f,0x20,0x10]
.code32
sha %d1, %d15, 1

# CHECK-INST: sha %d1, %d15, 30
# CHECK: encoding: [0x8f,0xef,0x21,0x10]
.code32
sha %d1, %d15, 30

# CHECK-INST: sha %d1, %d15, 31
# CHECK: encoding: [0x8f,0xff,0x21,0x10]
.code32
sha %d1, %d15, 31

# CHECK-INST: sha %d14, %d0, -32
# CHECK: encoding: [0x8f,0x00,0x3e,0xe0]
.code32
sha %d14, %d0, -32

# CHECK-INST: sha %d14, %d0, -31
# CHECK: encoding: [0x8f,0x10,0x3e,0xe0]
.code32
sha %d14, %d0, -31

# CHECK-INST: sha %d14, %d0, -1
# CHECK: encoding: [0x8f,0xf0,0x3f,0xe0]
.code32
sha %d14, %d0, -1

# CHECK-INST: sha %d14, %d0, 0
# CHECK: encoding: [0x8f,0x00,0x20,0xe0]
.code32
sha %d14, %d0, 0

# CHECK-INST: sha %d14, %d0, 1
# CHECK: encoding: [0x8f,0x10,0x20,0xe0]
.code32
sha %d14, %d0, 1

# CHECK-INST: sha %d14, %d0, 30
# CHECK: encoding: [0x8f,0xe0,0x21,0xe0]
.code32
sha %d14, %d0, 30

# CHECK-INST: sha %d14, %d0, 31
# CHECK: encoding: [0x8f,0xf0,0x21,0xe0]
.code32
sha %d14, %d0, 31

# CHECK-INST: sha %d14, %d1, -32
# CHECK: encoding: [0x8f,0x01,0x3e,0xe0]
.code32
sha %d14, %d1, -32

# CHECK-INST: sha %d14, %d1, -31
# CHECK: encoding: [0x8f,0x11,0x3e,0xe0]
.code32
sha %d14, %d1, -31

# CHECK-INST: sha %d14, %d1, -1
# CHECK: encoding: [0x8f,0xf1,0x3f,0xe0]
.code32
sha %d14, %d1, -1

# CHECK-INST: sha %d14, %d1, 0
# CHECK: encoding: [0x8f,0x01,0x20,0xe0]
.code32
sha %d14, %d1, 0

# CHECK-INST: sha %d14, %d1, 1
# CHECK: encoding: [0x8f,0x11,0x20,0xe0]
.code32
sha %d14, %d1, 1

# CHECK-INST: sha %d14, %d1, 30
# CHECK: encoding: [0x8f,0xe1,0x21,0xe0]
.code32
sha %d14, %d1, 30

# CHECK-INST: sha %d14, %d1, 31
# CHECK: encoding: [0x8f,0xf1,0x21,0xe0]
.code32
sha %d14, %d1, 31

# CHECK-INST: sha %d14, %d14, -32
# CHECK: encoding: [0x8f,0x0e,0x3e,0xe0]
.code32
sha %d14, %d14, -32

# CHECK-INST: sha %d14, %d14, -31
# CHECK: encoding: [0x8f,0x1e,0x3e,0xe0]
.code32
sha %d14, %d14, -31

# CHECK-INST: sha %d14, %d14, -1
# CHECK: encoding: [0x8f,0xfe,0x3f,0xe0]
.code32
sha %d14, %d14, -1

# CHECK-INST: sha %d14, %d14, 0
# CHECK: encoding: [0x8f,0x0e,0x20,0xe0]
.code32
sha %d14, %d14, 0

# CHECK-INST: sha %d14, %d14, 1
# CHECK: encoding: [0x8f,0x1e,0x20,0xe0]
.code32
sha %d14, %d14, 1

# CHECK-INST: sha %d14, %d14, 30
# CHECK: encoding: [0x8f,0xee,0x21,0xe0]
.code32
sha %d14, %d14, 30

# CHECK-INST: sha %d14, %d14, 31
# CHECK: encoding: [0x8f,0xfe,0x21,0xe0]
.code32
sha %d14, %d14, 31

# CHECK-INST: sha %d14, %d15, -32
# CHECK: encoding: [0x8f,0x0f,0x3e,0xe0]
.code32
sha %d14, %d15, -32

# CHECK-INST: sha %d14, %d15, -31
# CHECK: encoding: [0x8f,0x1f,0x3e,0xe0]
.code32
sha %d14, %d15, -31

# CHECK-INST: sha %d14, %d15, -1
# CHECK: encoding: [0x8f,0xff,0x3f,0xe0]
.code32
sha %d14, %d15, -1

# CHECK-INST: sha %d14, %d15, 0
# CHECK: encoding: [0x8f,0x0f,0x20,0xe0]
.code32
sha %d14, %d15, 0

# CHECK-INST: sha %d14, %d15, 1
# CHECK: encoding: [0x8f,0x1f,0x20,0xe0]
.code32
sha %d14, %d15, 1

# CHECK-INST: sha %d14, %d15, 30
# CHECK: encoding: [0x8f,0xef,0x21,0xe0]
.code32
sha %d14, %d15, 30

# CHECK-INST: sha %d14, %d15, 31
# CHECK: encoding: [0x8f,0xff,0x21,0xe0]
.code32
sha %d14, %d15, 31

# CHECK-INST: sha %d15, %d0, -32
# CHECK: encoding: [0x8f,0x00,0x3e,0xf0]
.code32
sha %d15, %d0, -32

# CHECK-INST: sha %d15, %d0, -31
# CHECK: encoding: [0x8f,0x10,0x3e,0xf0]
.code32
sha %d15, %d0, -31

# CHECK-INST: sha %d15, %d0, -1
# CHECK: encoding: [0x8f,0xf0,0x3f,0xf0]
.code32
sha %d15, %d0, -1

# CHECK-INST: sha %d15, %d0, 0
# CHECK: encoding: [0x8f,0x00,0x20,0xf0]
.code32
sha %d15, %d0, 0

# CHECK-INST: sha %d15, %d0, 1
# CHECK: encoding: [0x8f,0x10,0x20,0xf0]
.code32
sha %d15, %d0, 1

# CHECK-INST: sha %d15, %d0, 30
# CHECK: encoding: [0x8f,0xe0,0x21,0xf0]
.code32
sha %d15, %d0, 30

# CHECK-INST: sha %d15, %d0, 31
# CHECK: encoding: [0x8f,0xf0,0x21,0xf0]
.code32
sha %d15, %d0, 31

# CHECK-INST: sha %d15, %d1, -32
# CHECK: encoding: [0x8f,0x01,0x3e,0xf0]
.code32
sha %d15, %d1, -32

# CHECK-INST: sha %d15, %d1, -31
# CHECK: encoding: [0x8f,0x11,0x3e,0xf0]
.code32
sha %d15, %d1, -31

# CHECK-INST: sha %d15, %d1, -1
# CHECK: encoding: [0x8f,0xf1,0x3f,0xf0]
.code32
sha %d15, %d1, -1

# CHECK-INST: sha %d15, %d1, 0
# CHECK: encoding: [0x8f,0x01,0x20,0xf0]
.code32
sha %d15, %d1, 0

# CHECK-INST: sha %d15, %d1, 1
# CHECK: encoding: [0x8f,0x11,0x20,0xf0]
.code32
sha %d15, %d1, 1

# CHECK-INST: sha %d15, %d1, 30
# CHECK: encoding: [0x8f,0xe1,0x21,0xf0]
.code32
sha %d15, %d1, 30

# CHECK-INST: sha %d15, %d1, 31
# CHECK: encoding: [0x8f,0xf1,0x21,0xf0]
.code32
sha %d15, %d1, 31

# CHECK-INST: sha %d15, %d14, -32
# CHECK: encoding: [0x8f,0x0e,0x3e,0xf0]
.code32
sha %d15, %d14, -32

# CHECK-INST: sha %d15, %d14, -31
# CHECK: encoding: [0x8f,0x1e,0x3e,0xf0]
.code32
sha %d15, %d14, -31

# CHECK-INST: sha %d15, %d14, -1
# CHECK: encoding: [0x8f,0xfe,0x3f,0xf0]
.code32
sha %d15, %d14, -1

# CHECK-INST: sha %d15, %d14, 0
# CHECK: encoding: [0x8f,0x0e,0x20,0xf0]
.code32
sha %d15, %d14, 0

# CHECK-INST: sha %d15, %d14, 1
# CHECK: encoding: [0x8f,0x1e,0x20,0xf0]
.code32
sha %d15, %d14, 1

# CHECK-INST: sha %d15, %d14, 30
# CHECK: encoding: [0x8f,0xee,0x21,0xf0]
.code32
sha %d15, %d14, 30

# CHECK-INST: sha %d15, %d14, 31
# CHECK: encoding: [0x8f,0xfe,0x21,0xf0]
.code32
sha %d15, %d14, 31

# CHECK-INST: sha %d15, %d15, -32
# CHECK: encoding: [0x8f,0x0f,0x3e,0xf0]
.code32
sha %d15, %d15, -32

# CHECK-INST: sha %d15, %d15, -31
# CHECK: encoding: [0x8f,0x1f,0x3e,0xf0]
.code32
sha %d15, %d15, -31

# CHECK-INST: sha %d15, %d15, -1
# CHECK: encoding: [0x8f,0xff,0x3f,0xf0]
.code32
sha %d15, %d15, -1

# CHECK-INST: sha %d15, %d15, 0
# CHECK: encoding: [0x8f,0x0f,0x20,0xf0]
.code32
sha %d15, %d15, 0

# CHECK-INST: sha %d15, %d15, 1
# CHECK: encoding: [0x8f,0x1f,0x20,0xf0]
.code32
sha %d15, %d15, 1

# CHECK-INST: sha %d15, %d15, 30
# CHECK: encoding: [0x8f,0xef,0x21,0xf0]
.code32
sha %d15, %d15, 30

# CHECK-INST: sha %d15, %d15, 31
# CHECK: encoding: [0x8f,0xff,0x21,0xf0]
.code32
sha %d15, %d15, 31


# CHECK-INST: shas %d0, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0x20,0x00]
.code32
shas %d0, %d0, %d0

# CHECK-INST: shas %d0, %d0, %d1
# CHECK: encoding: [0x0f,0x10,0x20,0x00]
.code32
shas %d0, %d0, %d1

# CHECK-INST: shas %d0, %d0, %d14
# CHECK: encoding: [0x0f,0xe0,0x20,0x00]
.code32
shas %d0, %d0, %d14

# CHECK-INST: shas %d0, %d0, %d15
# CHECK: encoding: [0x0f,0xf0,0x20,0x00]
.code32
shas %d0, %d0, %d15

# CHECK-INST: shas %d0, %d1, %d0
# CHECK: encoding: [0x0f,0x01,0x20,0x00]
.code32
shas %d0, %d1, %d0

# CHECK-INST: shas %d0, %d1, %d1
# CHECK: encoding: [0x0f,0x11,0x20,0x00]
.code32
shas %d0, %d1, %d1

# CHECK-INST: shas %d0, %d1, %d14
# CHECK: encoding: [0x0f,0xe1,0x20,0x00]
.code32
shas %d0, %d1, %d14

# CHECK-INST: shas %d0, %d1, %d15
# CHECK: encoding: [0x0f,0xf1,0x20,0x00]
.code32
shas %d0, %d1, %d15

# CHECK-INST: shas %d0, %d14, %d0
# CHECK: encoding: [0x0f,0x0e,0x20,0x00]
.code32
shas %d0, %d14, %d0

# CHECK-INST: shas %d0, %d14, %d1
# CHECK: encoding: [0x0f,0x1e,0x20,0x00]
.code32
shas %d0, %d14, %d1

# CHECK-INST: shas %d0, %d14, %d14
# CHECK: encoding: [0x0f,0xee,0x20,0x00]
.code32
shas %d0, %d14, %d14

# CHECK-INST: shas %d0, %d14, %d15
# CHECK: encoding: [0x0f,0xfe,0x20,0x00]
.code32
shas %d0, %d14, %d15

# CHECK-INST: shas %d0, %d15, %d0
# CHECK: encoding: [0x0f,0x0f,0x20,0x00]
.code32
shas %d0, %d15, %d0

# CHECK-INST: shas %d0, %d15, %d1
# CHECK: encoding: [0x0f,0x1f,0x20,0x00]
.code32
shas %d0, %d15, %d1

# CHECK-INST: shas %d0, %d15, %d14
# CHECK: encoding: [0x0f,0xef,0x20,0x00]
.code32
shas %d0, %d15, %d14

# CHECK-INST: shas %d0, %d15, %d15
# CHECK: encoding: [0x0f,0xff,0x20,0x00]
.code32
shas %d0, %d15, %d15

# CHECK-INST: shas %d1, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0x20,0x10]
.code32
shas %d1, %d0, %d0

# CHECK-INST: shas %d1, %d0, %d1
# CHECK: encoding: [0x0f,0x10,0x20,0x10]
.code32
shas %d1, %d0, %d1

# CHECK-INST: shas %d1, %d0, %d14
# CHECK: encoding: [0x0f,0xe0,0x20,0x10]
.code32
shas %d1, %d0, %d14

# CHECK-INST: shas %d1, %d0, %d15
# CHECK: encoding: [0x0f,0xf0,0x20,0x10]
.code32
shas %d1, %d0, %d15

# CHECK-INST: shas %d1, %d1, %d0
# CHECK: encoding: [0x0f,0x01,0x20,0x10]
.code32
shas %d1, %d1, %d0

# CHECK-INST: shas %d1, %d1, %d1
# CHECK: encoding: [0x0f,0x11,0x20,0x10]
.code32
shas %d1, %d1, %d1

# CHECK-INST: shas %d1, %d1, %d14
# CHECK: encoding: [0x0f,0xe1,0x20,0x10]
.code32
shas %d1, %d1, %d14

# CHECK-INST: shas %d1, %d1, %d15
# CHECK: encoding: [0x0f,0xf1,0x20,0x10]
.code32
shas %d1, %d1, %d15

# CHECK-INST: shas %d1, %d14, %d0
# CHECK: encoding: [0x0f,0x0e,0x20,0x10]
.code32
shas %d1, %d14, %d0

# CHECK-INST: shas %d1, %d14, %d1
# CHECK: encoding: [0x0f,0x1e,0x20,0x10]
.code32
shas %d1, %d14, %d1

# CHECK-INST: shas %d1, %d14, %d14
# CHECK: encoding: [0x0f,0xee,0x20,0x10]
.code32
shas %d1, %d14, %d14

# CHECK-INST: shas %d1, %d14, %d15
# CHECK: encoding: [0x0f,0xfe,0x20,0x10]
.code32
shas %d1, %d14, %d15

# CHECK-INST: shas %d1, %d15, %d0
# CHECK: encoding: [0x0f,0x0f,0x20,0x10]
.code32
shas %d1, %d15, %d0

# CHECK-INST: shas %d1, %d15, %d1
# CHECK: encoding: [0x0f,0x1f,0x20,0x10]
.code32
shas %d1, %d15, %d1

# CHECK-INST: shas %d1, %d15, %d14
# CHECK: encoding: [0x0f,0xef,0x20,0x10]
.code32
shas %d1, %d15, %d14

# CHECK-INST: shas %d1, %d15, %d15
# CHECK: encoding: [0x0f,0xff,0x20,0x10]
.code32
shas %d1, %d15, %d15

# CHECK-INST: shas %d14, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0x20,0xe0]
.code32
shas %d14, %d0, %d0

# CHECK-INST: shas %d14, %d0, %d1
# CHECK: encoding: [0x0f,0x10,0x20,0xe0]
.code32
shas %d14, %d0, %d1

# CHECK-INST: shas %d14, %d0, %d14
# CHECK: encoding: [0x0f,0xe0,0x20,0xe0]
.code32
shas %d14, %d0, %d14

# CHECK-INST: shas %d14, %d0, %d15
# CHECK: encoding: [0x0f,0xf0,0x20,0xe0]
.code32
shas %d14, %d0, %d15

# CHECK-INST: shas %d14, %d1, %d0
# CHECK: encoding: [0x0f,0x01,0x20,0xe0]
.code32
shas %d14, %d1, %d0

# CHECK-INST: shas %d14, %d1, %d1
# CHECK: encoding: [0x0f,0x11,0x20,0xe0]
.code32
shas %d14, %d1, %d1

# CHECK-INST: shas %d14, %d1, %d14
# CHECK: encoding: [0x0f,0xe1,0x20,0xe0]
.code32
shas %d14, %d1, %d14

# CHECK-INST: shas %d14, %d1, %d15
# CHECK: encoding: [0x0f,0xf1,0x20,0xe0]
.code32
shas %d14, %d1, %d15

# CHECK-INST: shas %d14, %d14, %d0
# CHECK: encoding: [0x0f,0x0e,0x20,0xe0]
.code32
shas %d14, %d14, %d0

# CHECK-INST: shas %d14, %d14, %d1
# CHECK: encoding: [0x0f,0x1e,0x20,0xe0]
.code32
shas %d14, %d14, %d1

# CHECK-INST: shas %d14, %d14, %d14
# CHECK: encoding: [0x0f,0xee,0x20,0xe0]
.code32
shas %d14, %d14, %d14

# CHECK-INST: shas %d14, %d14, %d15
# CHECK: encoding: [0x0f,0xfe,0x20,0xe0]
.code32
shas %d14, %d14, %d15

# CHECK-INST: shas %d14, %d15, %d0
# CHECK: encoding: [0x0f,0x0f,0x20,0xe0]
.code32
shas %d14, %d15, %d0

# CHECK-INST: shas %d14, %d15, %d1
# CHECK: encoding: [0x0f,0x1f,0x20,0xe0]
.code32
shas %d14, %d15, %d1

# CHECK-INST: shas %d14, %d15, %d14
# CHECK: encoding: [0x0f,0xef,0x20,0xe0]
.code32
shas %d14, %d15, %d14

# CHECK-INST: shas %d14, %d15, %d15
# CHECK: encoding: [0x0f,0xff,0x20,0xe0]
.code32
shas %d14, %d15, %d15

# CHECK-INST: shas %d15, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0x20,0xf0]
.code32
shas %d15, %d0, %d0

# CHECK-INST: shas %d15, %d0, %d1
# CHECK: encoding: [0x0f,0x10,0x20,0xf0]
.code32
shas %d15, %d0, %d1

# CHECK-INST: shas %d15, %d0, %d14
# CHECK: encoding: [0x0f,0xe0,0x20,0xf0]
.code32
shas %d15, %d0, %d14

# CHECK-INST: shas %d15, %d0, %d15
# CHECK: encoding: [0x0f,0xf0,0x20,0xf0]
.code32
shas %d15, %d0, %d15

# CHECK-INST: shas %d15, %d1, %d0
# CHECK: encoding: [0x0f,0x01,0x20,0xf0]
.code32
shas %d15, %d1, %d0

# CHECK-INST: shas %d15, %d1, %d1
# CHECK: encoding: [0x0f,0x11,0x20,0xf0]
.code32
shas %d15, %d1, %d1

# CHECK-INST: shas %d15, %d1, %d14
# CHECK: encoding: [0x0f,0xe1,0x20,0xf0]
.code32
shas %d15, %d1, %d14

# CHECK-INST: shas %d15, %d1, %d15
# CHECK: encoding: [0x0f,0xf1,0x20,0xf0]
.code32
shas %d15, %d1, %d15

# CHECK-INST: shas %d15, %d14, %d0
# CHECK: encoding: [0x0f,0x0e,0x20,0xf0]
.code32
shas %d15, %d14, %d0

# CHECK-INST: shas %d15, %d14, %d1
# CHECK: encoding: [0x0f,0x1e,0x20,0xf0]
.code32
shas %d15, %d14, %d1

# CHECK-INST: shas %d15, %d14, %d14
# CHECK: encoding: [0x0f,0xee,0x20,0xf0]
.code32
shas %d15, %d14, %d14

# CHECK-INST: shas %d15, %d14, %d15
# CHECK: encoding: [0x0f,0xfe,0x20,0xf0]
.code32
shas %d15, %d14, %d15

# CHECK-INST: shas %d15, %d15, %d0
# CHECK: encoding: [0x0f,0x0f,0x20,0xf0]
.code32
shas %d15, %d15, %d0

# CHECK-INST: shas %d15, %d15, %d1
# CHECK: encoding: [0x0f,0x1f,0x20,0xf0]
.code32
shas %d15, %d15, %d1

# CHECK-INST: shas %d15, %d15, %d14
# CHECK: encoding: [0x0f,0xef,0x20,0xf0]
.code32
shas %d15, %d15, %d14

# CHECK-INST: shas %d15, %d15, %d15
# CHECK: encoding: [0x0f,0xff,0x20,0xf0]
.code32
shas %d15, %d15, %d15
 
# CHECK-INST: shas %d0, %d0, -32
# CHECK: encoding: [0x8f,0x00,0x5e,0x00]
.code32
shas %d0, %d0, -32

# CHECK-INST: shas %d0, %d0, -31
# CHECK: encoding: [0x8f,0x10,0x5e,0x00]
.code32
shas %d0, %d0, -31

# CHECK-INST: shas %d0, %d0, -1
# CHECK: encoding: [0x8f,0xf0,0x5f,0x00]
.code32
shas %d0, %d0, -1

# CHECK-INST: shas %d0, %d0, 0
# CHECK: encoding: [0x8f,0x00,0x40,0x00]
.code32
shas %d0, %d0, 0

# CHECK-INST: shas %d0, %d0, 1
# CHECK: encoding: [0x8f,0x10,0x40,0x00]
.code32
shas %d0, %d0, 1

# CHECK-INST: shas %d0, %d0, 30
# CHECK: encoding: [0x8f,0xe0,0x41,0x00]
.code32
shas %d0, %d0, 30

# CHECK-INST: shas %d0, %d0, 31
# CHECK: encoding: [0x8f,0xf0,0x41,0x00]
.code32
shas %d0, %d0, 31

# CHECK-INST: shas %d0, %d1, -32
# CHECK: encoding: [0x8f,0x01,0x5e,0x00]
.code32
shas %d0, %d1, -32

# CHECK-INST: shas %d0, %d1, -31
# CHECK: encoding: [0x8f,0x11,0x5e,0x00]
.code32
shas %d0, %d1, -31

# CHECK-INST: shas %d0, %d1, -1
# CHECK: encoding: [0x8f,0xf1,0x5f,0x00]
.code32
shas %d0, %d1, -1

# CHECK-INST: shas %d0, %d1, 0
# CHECK: encoding: [0x8f,0x01,0x40,0x00]
.code32
shas %d0, %d1, 0

# CHECK-INST: shas %d0, %d1, 1
# CHECK: encoding: [0x8f,0x11,0x40,0x00]
.code32
shas %d0, %d1, 1

# CHECK-INST: shas %d0, %d1, 30
# CHECK: encoding: [0x8f,0xe1,0x41,0x00]
.code32
shas %d0, %d1, 30

# CHECK-INST: shas %d0, %d1, 31
# CHECK: encoding: [0x8f,0xf1,0x41,0x00]
.code32
shas %d0, %d1, 31

# CHECK-INST: shas %d0, %d14, -32
# CHECK: encoding: [0x8f,0x0e,0x5e,0x00]
.code32
shas %d0, %d14, -32

# CHECK-INST: shas %d0, %d14, -31
# CHECK: encoding: [0x8f,0x1e,0x5e,0x00]
.code32
shas %d0, %d14, -31

# CHECK-INST: shas %d0, %d14, -1
# CHECK: encoding: [0x8f,0xfe,0x5f,0x00]
.code32
shas %d0, %d14, -1

# CHECK-INST: shas %d0, %d14, 0
# CHECK: encoding: [0x8f,0x0e,0x40,0x00]
.code32
shas %d0, %d14, 0

# CHECK-INST: shas %d0, %d14, 1
# CHECK: encoding: [0x8f,0x1e,0x40,0x00]
.code32
shas %d0, %d14, 1

# CHECK-INST: shas %d0, %d14, 30
# CHECK: encoding: [0x8f,0xee,0x41,0x00]
.code32
shas %d0, %d14, 30

# CHECK-INST: shas %d0, %d14, 31
# CHECK: encoding: [0x8f,0xfe,0x41,0x00]
.code32
shas %d0, %d14, 31

# CHECK-INST: shas %d0, %d15, -32
# CHECK: encoding: [0x8f,0x0f,0x5e,0x00]
.code32
shas %d0, %d15, -32

# CHECK-INST: shas %d0, %d15, -31
# CHECK: encoding: [0x8f,0x1f,0x5e,0x00]
.code32
shas %d0, %d15, -31

# CHECK-INST: shas %d0, %d15, -1
# CHECK: encoding: [0x8f,0xff,0x5f,0x00]
.code32
shas %d0, %d15, -1

# CHECK-INST: shas %d0, %d15, 0
# CHECK: encoding: [0x8f,0x0f,0x40,0x00]
.code32
shas %d0, %d15, 0

# CHECK-INST: shas %d0, %d15, 1
# CHECK: encoding: [0x8f,0x1f,0x40,0x00]
.code32
shas %d0, %d15, 1

# CHECK-INST: shas %d0, %d15, 30
# CHECK: encoding: [0x8f,0xef,0x41,0x00]
.code32
shas %d0, %d15, 30

# CHECK-INST: shas %d0, %d15, 31
# CHECK: encoding: [0x8f,0xff,0x41,0x00]
.code32
shas %d0, %d15, 31

# CHECK-INST: shas %d1, %d0, -32
# CHECK: encoding: [0x8f,0x00,0x5e,0x10]
.code32
shas %d1, %d0, -32

# CHECK-INST: shas %d1, %d0, -31
# CHECK: encoding: [0x8f,0x10,0x5e,0x10]
.code32
shas %d1, %d0, -31

# CHECK-INST: shas %d1, %d0, -1
# CHECK: encoding: [0x8f,0xf0,0x5f,0x10]
.code32
shas %d1, %d0, -1

# CHECK-INST: shas %d1, %d0, 0
# CHECK: encoding: [0x8f,0x00,0x40,0x10]
.code32
shas %d1, %d0, 0

# CHECK-INST: shas %d1, %d0, 1
# CHECK: encoding: [0x8f,0x10,0x40,0x10]
.code32
shas %d1, %d0, 1

# CHECK-INST: shas %d1, %d0, 30
# CHECK: encoding: [0x8f,0xe0,0x41,0x10]
.code32
shas %d1, %d0, 30

# CHECK-INST: shas %d1, %d0, 31
# CHECK: encoding: [0x8f,0xf0,0x41,0x10]
.code32
shas %d1, %d0, 31

# CHECK-INST: shas %d1, %d1, -32
# CHECK: encoding: [0x8f,0x01,0x5e,0x10]
.code32
shas %d1, %d1, -32

# CHECK-INST: shas %d1, %d1, -31
# CHECK: encoding: [0x8f,0x11,0x5e,0x10]
.code32
shas %d1, %d1, -31

# CHECK-INST: shas %d1, %d1, -1
# CHECK: encoding: [0x8f,0xf1,0x5f,0x10]
.code32
shas %d1, %d1, -1

# CHECK-INST: shas %d1, %d1, 0
# CHECK: encoding: [0x8f,0x01,0x40,0x10]
.code32
shas %d1, %d1, 0

# CHECK-INST: shas %d1, %d1, 1
# CHECK: encoding: [0x8f,0x11,0x40,0x10]
.code32
shas %d1, %d1, 1

# CHECK-INST: shas %d1, %d1, 30
# CHECK: encoding: [0x8f,0xe1,0x41,0x10]
.code32
shas %d1, %d1, 30

# CHECK-INST: shas %d1, %d1, 31
# CHECK: encoding: [0x8f,0xf1,0x41,0x10]
.code32
shas %d1, %d1, 31

# CHECK-INST: shas %d1, %d14, -32
# CHECK: encoding: [0x8f,0x0e,0x5e,0x10]
.code32
shas %d1, %d14, -32

# CHECK-INST: shas %d1, %d14, -31
# CHECK: encoding: [0x8f,0x1e,0x5e,0x10]
.code32
shas %d1, %d14, -31

# CHECK-INST: shas %d1, %d14, -1
# CHECK: encoding: [0x8f,0xfe,0x5f,0x10]
.code32
shas %d1, %d14, -1

# CHECK-INST: shas %d1, %d14, 0
# CHECK: encoding: [0x8f,0x0e,0x40,0x10]
.code32
shas %d1, %d14, 0

# CHECK-INST: shas %d1, %d14, 1
# CHECK: encoding: [0x8f,0x1e,0x40,0x10]
.code32
shas %d1, %d14, 1

# CHECK-INST: shas %d1, %d14, 30
# CHECK: encoding: [0x8f,0xee,0x41,0x10]
.code32
shas %d1, %d14, 30

# CHECK-INST: shas %d1, %d14, 31
# CHECK: encoding: [0x8f,0xfe,0x41,0x10]
.code32
shas %d1, %d14, 31

# CHECK-INST: shas %d1, %d15, -32
# CHECK: encoding: [0x8f,0x0f,0x5e,0x10]
.code32
shas %d1, %d15, -32

# CHECK-INST: shas %d1, %d15, -31
# CHECK: encoding: [0x8f,0x1f,0x5e,0x10]
.code32
shas %d1, %d15, -31

# CHECK-INST: shas %d1, %d15, -1
# CHECK: encoding: [0x8f,0xff,0x5f,0x10]
.code32
shas %d1, %d15, -1

# CHECK-INST: shas %d1, %d15, 0
# CHECK: encoding: [0x8f,0x0f,0x40,0x10]
.code32
shas %d1, %d15, 0

# CHECK-INST: shas %d1, %d15, 1
# CHECK: encoding: [0x8f,0x1f,0x40,0x10]
.code32
shas %d1, %d15, 1

# CHECK-INST: shas %d1, %d15, 30
# CHECK: encoding: [0x8f,0xef,0x41,0x10]
.code32
shas %d1, %d15, 30

# CHECK-INST: shas %d1, %d15, 31
# CHECK: encoding: [0x8f,0xff,0x41,0x10]
.code32
shas %d1, %d15, 31

# CHECK-INST: shas %d14, %d0, -32
# CHECK: encoding: [0x8f,0x00,0x5e,0xe0]
.code32
shas %d14, %d0, -32

# CHECK-INST: shas %d14, %d0, -31
# CHECK: encoding: [0x8f,0x10,0x5e,0xe0]
.code32
shas %d14, %d0, -31

# CHECK-INST: shas %d14, %d0, -1
# CHECK: encoding: [0x8f,0xf0,0x5f,0xe0]
.code32
shas %d14, %d0, -1

# CHECK-INST: shas %d14, %d0, 0
# CHECK: encoding: [0x8f,0x00,0x40,0xe0]
.code32
shas %d14, %d0, 0

# CHECK-INST: shas %d14, %d0, 1
# CHECK: encoding: [0x8f,0x10,0x40,0xe0]
.code32
shas %d14, %d0, 1

# CHECK-INST: shas %d14, %d0, 30
# CHECK: encoding: [0x8f,0xe0,0x41,0xe0]
.code32
shas %d14, %d0, 30

# CHECK-INST: shas %d14, %d0, 31
# CHECK: encoding: [0x8f,0xf0,0x41,0xe0]
.code32
shas %d14, %d0, 31

# CHECK-INST: shas %d14, %d1, -32
# CHECK: encoding: [0x8f,0x01,0x5e,0xe0]
.code32
shas %d14, %d1, -32

# CHECK-INST: shas %d14, %d1, -31
# CHECK: encoding: [0x8f,0x11,0x5e,0xe0]
.code32
shas %d14, %d1, -31

# CHECK-INST: shas %d14, %d1, -1
# CHECK: encoding: [0x8f,0xf1,0x5f,0xe0]
.code32
shas %d14, %d1, -1

# CHECK-INST: shas %d14, %d1, 0
# CHECK: encoding: [0x8f,0x01,0x40,0xe0]
.code32
shas %d14, %d1, 0

# CHECK-INST: shas %d14, %d1, 1
# CHECK: encoding: [0x8f,0x11,0x40,0xe0]
.code32
shas %d14, %d1, 1

# CHECK-INST: shas %d14, %d1, 30
# CHECK: encoding: [0x8f,0xe1,0x41,0xe0]
.code32
shas %d14, %d1, 30

# CHECK-INST: shas %d14, %d1, 31
# CHECK: encoding: [0x8f,0xf1,0x41,0xe0]
.code32
shas %d14, %d1, 31

# CHECK-INST: shas %d14, %d14, -32
# CHECK: encoding: [0x8f,0x0e,0x5e,0xe0]
.code32
shas %d14, %d14, -32

# CHECK-INST: shas %d14, %d14, -31
# CHECK: encoding: [0x8f,0x1e,0x5e,0xe0]
.code32
shas %d14, %d14, -31

# CHECK-INST: shas %d14, %d14, -1
# CHECK: encoding: [0x8f,0xfe,0x5f,0xe0]
.code32
shas %d14, %d14, -1

# CHECK-INST: shas %d14, %d14, 0
# CHECK: encoding: [0x8f,0x0e,0x40,0xe0]
.code32
shas %d14, %d14, 0

# CHECK-INST: shas %d14, %d14, 1
# CHECK: encoding: [0x8f,0x1e,0x40,0xe0]
.code32
shas %d14, %d14, 1

# CHECK-INST: shas %d14, %d14, 30
# CHECK: encoding: [0x8f,0xee,0x41,0xe0]
.code32
shas %d14, %d14, 30

# CHECK-INST: shas %d14, %d14, 31
# CHECK: encoding: [0x8f,0xfe,0x41,0xe0]
.code32
shas %d14, %d14, 31

# CHECK-INST: shas %d14, %d15, -32
# CHECK: encoding: [0x8f,0x0f,0x5e,0xe0]
.code32
shas %d14, %d15, -32

# CHECK-INST: shas %d14, %d15, -31
# CHECK: encoding: [0x8f,0x1f,0x5e,0xe0]
.code32
shas %d14, %d15, -31

# CHECK-INST: shas %d14, %d15, -1
# CHECK: encoding: [0x8f,0xff,0x5f,0xe0]
.code32
shas %d14, %d15, -1

# CHECK-INST: shas %d14, %d15, 0
# CHECK: encoding: [0x8f,0x0f,0x40,0xe0]
.code32
shas %d14, %d15, 0

# CHECK-INST: shas %d14, %d15, 1
# CHECK: encoding: [0x8f,0x1f,0x40,0xe0]
.code32
shas %d14, %d15, 1

# CHECK-INST: shas %d14, %d15, 30
# CHECK: encoding: [0x8f,0xef,0x41,0xe0]
.code32
shas %d14, %d15, 30

# CHECK-INST: shas %d14, %d15, 31
# CHECK: encoding: [0x8f,0xff,0x41,0xe0]
.code32
shas %d14, %d15, 31

# CHECK-INST: shas %d15, %d0, -32
# CHECK: encoding: [0x8f,0x00,0x5e,0xf0]
.code32
shas %d15, %d0, -32

# CHECK-INST: shas %d15, %d0, -31
# CHECK: encoding: [0x8f,0x10,0x5e,0xf0]
.code32
shas %d15, %d0, -31

# CHECK-INST: shas %d15, %d0, -1
# CHECK: encoding: [0x8f,0xf0,0x5f,0xf0]
.code32
shas %d15, %d0, -1

# CHECK-INST: shas %d15, %d0, 0
# CHECK: encoding: [0x8f,0x00,0x40,0xf0]
.code32
shas %d15, %d0, 0

# CHECK-INST: shas %d15, %d0, 1
# CHECK: encoding: [0x8f,0x10,0x40,0xf0]
.code32
shas %d15, %d0, 1

# CHECK-INST: shas %d15, %d0, 30
# CHECK: encoding: [0x8f,0xe0,0x41,0xf0]
.code32
shas %d15, %d0, 30

# CHECK-INST: shas %d15, %d0, 31
# CHECK: encoding: [0x8f,0xf0,0x41,0xf0]
.code32
shas %d15, %d0, 31

# CHECK-INST: shas %d15, %d1, -32
# CHECK: encoding: [0x8f,0x01,0x5e,0xf0]
.code32
shas %d15, %d1, -32

# CHECK-INST: shas %d15, %d1, -31
# CHECK: encoding: [0x8f,0x11,0x5e,0xf0]
.code32
shas %d15, %d1, -31

# CHECK-INST: shas %d15, %d1, -1
# CHECK: encoding: [0x8f,0xf1,0x5f,0xf0]
.code32
shas %d15, %d1, -1

# CHECK-INST: shas %d15, %d1, 0
# CHECK: encoding: [0x8f,0x01,0x40,0xf0]
.code32
shas %d15, %d1, 0

# CHECK-INST: shas %d15, %d1, 1
# CHECK: encoding: [0x8f,0x11,0x40,0xf0]
.code32
shas %d15, %d1, 1

# CHECK-INST: shas %d15, %d1, 30
# CHECK: encoding: [0x8f,0xe1,0x41,0xf0]
.code32
shas %d15, %d1, 30

# CHECK-INST: shas %d15, %d1, 31
# CHECK: encoding: [0x8f,0xf1,0x41,0xf0]
.code32
shas %d15, %d1, 31

# CHECK-INST: shas %d15, %d14, -32
# CHECK: encoding: [0x8f,0x0e,0x5e,0xf0]
.code32
shas %d15, %d14, -32

# CHECK-INST: shas %d15, %d14, -31
# CHECK: encoding: [0x8f,0x1e,0x5e,0xf0]
.code32
shas %d15, %d14, -31

# CHECK-INST: shas %d15, %d14, -1
# CHECK: encoding: [0x8f,0xfe,0x5f,0xf0]
.code32
shas %d15, %d14, -1

# CHECK-INST: shas %d15, %d14, 0
# CHECK: encoding: [0x8f,0x0e,0x40,0xf0]
.code32
shas %d15, %d14, 0

# CHECK-INST: shas %d15, %d14, 1
# CHECK: encoding: [0x8f,0x1e,0x40,0xf0]
.code32
shas %d15, %d14, 1

# CHECK-INST: shas %d15, %d14, 30
# CHECK: encoding: [0x8f,0xee,0x41,0xf0]
.code32
shas %d15, %d14, 30

# CHECK-INST: shas %d15, %d14, 31
# CHECK: encoding: [0x8f,0xfe,0x41,0xf0]
.code32
shas %d15, %d14, 31

# CHECK-INST: shas %d15, %d15, -32
# CHECK: encoding: [0x8f,0x0f,0x5e,0xf0]
.code32
shas %d15, %d15, -32

# CHECK-INST: shas %d15, %d15, -31
# CHECK: encoding: [0x8f,0x1f,0x5e,0xf0]
.code32
shas %d15, %d15, -31

# CHECK-INST: shas %d15, %d15, -1
# CHECK: encoding: [0x8f,0xff,0x5f,0xf0]
.code32
shas %d15, %d15, -1

# CHECK-INST: shas %d15, %d15, 0
# CHECK: encoding: [0x8f,0x0f,0x40,0xf0]
.code32
shas %d15, %d15, 0

# CHECK-INST: shas %d15, %d15, 1
# CHECK: encoding: [0x8f,0x1f,0x40,0xf0]
.code32
shas %d15, %d15, 1

# CHECK-INST: shas %d15, %d15, 30
# CHECK: encoding: [0x8f,0xef,0x41,0xf0]
.code32
shas %d15, %d15, 30

# CHECK-INST: shas %d15, %d15, 31
# CHECK: encoding: [0x8f,0xff,0x41,0xf0]
.code32
shas %d15, %d15, 31



### Test if 16 bit instructions are generated by default

# CHECK-INST: sh %d0, 0
# CHECK: encoding: [0x06,0x00]
sh %d0, 0

# CHECK-INST: sha %d0, 0
# CHECK: encoding: [0x86,0x00]
sha %d0, 0
