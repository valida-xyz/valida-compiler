# RUN: llvm-mc %s -triple=tricore -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK,CHECK-INST %s
# RUN: llvm-mc -filetype=obj -triple=tricore < %s | llvm-objdump -d - \
# RUN:     | FileCheck -check-prefixes=CHECK-INST,CHECK-DUMP %s


# CHECK-INST: add.a %a0, %a0
# CHECK: encoding: [0x30,0x00]
.code16
add.a %a0, %a0

# CHECK-INST: add.a %a0, %a1
# CHECK: encoding: [0x30,0x10]
.code16
add.a %a0, %a1

# CHECK-INST: add.a %a0, %a14
# CHECK: encoding: [0x30,0xe0]
.code16
add.a %a0, %a14

# CHECK-INST: add.a %a0, %a15
# CHECK: encoding: [0x30,0xf0]
.code16
add.a %a0, %a15

# CHECK-INST: add.a %a1, %a0
# CHECK: encoding: [0x30,0x01]
.code16
add.a %a1, %a0

# CHECK-INST: add.a %a1, %a1
# CHECK: encoding: [0x30,0x11]
.code16
add.a %a1, %a1

# CHECK-INST: add.a %a1, %a14
# CHECK: encoding: [0x30,0xe1]
.code16
add.a %a1, %a14

# CHECK-INST: add.a %a1, %a15
# CHECK: encoding: [0x30,0xf1]
.code16
add.a %a1, %a15

# CHECK-INST: add.a %a14, %a0
# CHECK: encoding: [0x30,0x0e]
.code16
add.a %a14, %a0

# CHECK-INST: add.a %a14, %a1
# CHECK: encoding: [0x30,0x1e]
.code16
add.a %a14, %a1

# CHECK-INST: add.a %a14, %a14
# CHECK: encoding: [0x30,0xee]
.code16
add.a %a14, %a14

# CHECK-INST: add.a %a14, %a15
# CHECK: encoding: [0x30,0xfe]
.code16
add.a %a14, %a15

# CHECK-INST: add.a %a15, %a0
# CHECK: encoding: [0x30,0x0f]
.code16
add.a %a15, %a0

# CHECK-INST: add.a %a15, %a1
# CHECK: encoding: [0x30,0x1f]
.code16
add.a %a15, %a1

# CHECK-INST: add.a %a15, %a14
# CHECK: encoding: [0x30,0xef]
.code16
add.a %a15, %a14

# CHECK-INST: add.a %a15, %a15
# CHECK: encoding: [0x30,0xff]
.code16
add.a %a15, %a15

# CHECK-INST: add.a %a0, -8
# CHECK: encoding: [0xb0,0x80]
.code16
add.a %a0, -8

# CHECK-INST: add.a %a0, -1
# CHECK: encoding: [0xb0,0xf0]
.code16
add.a %a0, -1

# CHECK-INST: add.a %a0, 0
# CHECK: encoding: [0xb0,0x00]
.code16
add.a %a0, 0

# CHECK-INST: add.a %a0, 1
# CHECK: encoding: [0xb0,0x10]
.code16
add.a %a0, 1

# CHECK-INST: add.a %a0, 7
# CHECK: encoding: [0xb0,0x70]
.code16
add.a %a0, 7

# CHECK-INST: add.a %a1, -8
# CHECK: encoding: [0xb0,0x81]
.code16
add.a %a1, -8

# CHECK-INST: add.a %a1, -1
# CHECK: encoding: [0xb0,0xf1]
.code16
add.a %a1, -1

# CHECK-INST: add.a %a1, 0
# CHECK: encoding: [0xb0,0x01]
.code16
add.a %a1, 0

# CHECK-INST: add.a %a1, 1
# CHECK: encoding: [0xb0,0x11]
.code16
add.a %a1, 1

# CHECK-INST: add.a %a1, 7
# CHECK: encoding: [0xb0,0x71]
.code16
add.a %a1, 7

# CHECK-INST: add.a %a14, -8
# CHECK: encoding: [0xb0,0x8e]
.code16
add.a %a14, -8

# CHECK-INST: add.a %a14, -1
# CHECK: encoding: [0xb0,0xfe]
.code16
add.a %a14, -1

# CHECK-INST: add.a %a14, 0
# CHECK: encoding: [0xb0,0x0e]
.code16
add.a %a14, 0

# CHECK-INST: add.a %a14, 1
# CHECK: encoding: [0xb0,0x1e]
.code16
add.a %a14, 1

# CHECK-INST: add.a %a14, 7
# CHECK: encoding: [0xb0,0x7e]
.code16
add.a %a14, 7

# CHECK-INST: add.a %a15, -8
# CHECK: encoding: [0xb0,0x8f]
.code16
add.a %a15, -8

# CHECK-INST: add.a %a15, -1
# CHECK: encoding: [0xb0,0xff]
.code16
add.a %a15, -1

# CHECK-INST: add.a %a15, 0
# CHECK: encoding: [0xb0,0x0f]
.code16
add.a %a15, 0

# CHECK-INST: add.a %a15, 1
# CHECK: encoding: [0xb0,0x1f]
.code16
add.a %a15, 1

# CHECK-INST: add.a %a15, 7
# CHECK: encoding: [0xb0,0x7f]
.code16
add.a %a15, 7
# CHECK-INST: add.a %a0, %a0, %a0
# CHECK: encoding: [0x01,0x00,0x10,0x00]
.code32
add.a %a0, %a0, %a0

# CHECK-INST: add.a %a0, %a0, %a1
# CHECK: encoding: [0x01,0x10,0x10,0x00]
.code32
add.a %a0, %a0, %a1

# CHECK-INST: add.a %a0, %a0, %a14
# CHECK: encoding: [0x01,0xe0,0x10,0x00]
.code32
add.a %a0, %a0, %a14

# CHECK-INST: add.a %a0, %a0, %a15
# CHECK: encoding: [0x01,0xf0,0x10,0x00]
.code32
add.a %a0, %a0, %a15

# CHECK-INST: add.a %a0, %a1, %a0
# CHECK: encoding: [0x01,0x01,0x10,0x00]
.code32
add.a %a0, %a1, %a0

# CHECK-INST: add.a %a0, %a1, %a1
# CHECK: encoding: [0x01,0x11,0x10,0x00]
.code32
add.a %a0, %a1, %a1

# CHECK-INST: add.a %a0, %a1, %a14
# CHECK: encoding: [0x01,0xe1,0x10,0x00]
.code32
add.a %a0, %a1, %a14

# CHECK-INST: add.a %a0, %a1, %a15
# CHECK: encoding: [0x01,0xf1,0x10,0x00]
.code32
add.a %a0, %a1, %a15

# CHECK-INST: add.a %a0, %a14, %a0
# CHECK: encoding: [0x01,0x0e,0x10,0x00]
.code32
add.a %a0, %a14, %a0

# CHECK-INST: add.a %a0, %a14, %a1
# CHECK: encoding: [0x01,0x1e,0x10,0x00]
.code32
add.a %a0, %a14, %a1

# CHECK-INST: add.a %a0, %a14, %a14
# CHECK: encoding: [0x01,0xee,0x10,0x00]
.code32
add.a %a0, %a14, %a14

# CHECK-INST: add.a %a0, %a14, %a15
# CHECK: encoding: [0x01,0xfe,0x10,0x00]
.code32
add.a %a0, %a14, %a15

# CHECK-INST: add.a %a0, %a15, %a0
# CHECK: encoding: [0x01,0x0f,0x10,0x00]
.code32
add.a %a0, %a15, %a0

# CHECK-INST: add.a %a0, %a15, %a1
# CHECK: encoding: [0x01,0x1f,0x10,0x00]
.code32
add.a %a0, %a15, %a1

# CHECK-INST: add.a %a0, %a15, %a14
# CHECK: encoding: [0x01,0xef,0x10,0x00]
.code32
add.a %a0, %a15, %a14

# CHECK-INST: add.a %a0, %a15, %a15
# CHECK: encoding: [0x01,0xff,0x10,0x00]
.code32
add.a %a0, %a15, %a15

# CHECK-INST: add.a %a1, %a0, %a0
# CHECK: encoding: [0x01,0x00,0x10,0x10]
.code32
add.a %a1, %a0, %a0

# CHECK-INST: add.a %a1, %a0, %a1
# CHECK: encoding: [0x01,0x10,0x10,0x10]
.code32
add.a %a1, %a0, %a1

# CHECK-INST: add.a %a1, %a0, %a14
# CHECK: encoding: [0x01,0xe0,0x10,0x10]
.code32
add.a %a1, %a0, %a14

# CHECK-INST: add.a %a1, %a0, %a15
# CHECK: encoding: [0x01,0xf0,0x10,0x10]
.code32
add.a %a1, %a0, %a15

# CHECK-INST: add.a %a1, %a1, %a0
# CHECK: encoding: [0x01,0x01,0x10,0x10]
.code32
add.a %a1, %a1, %a0

# CHECK-INST: add.a %a1, %a1, %a1
# CHECK: encoding: [0x01,0x11,0x10,0x10]
.code32
add.a %a1, %a1, %a1

# CHECK-INST: add.a %a1, %a1, %a14
# CHECK: encoding: [0x01,0xe1,0x10,0x10]
.code32
add.a %a1, %a1, %a14

# CHECK-INST: add.a %a1, %a1, %a15
# CHECK: encoding: [0x01,0xf1,0x10,0x10]
.code32
add.a %a1, %a1, %a15

# CHECK-INST: add.a %a1, %a14, %a0
# CHECK: encoding: [0x01,0x0e,0x10,0x10]
.code32
add.a %a1, %a14, %a0

# CHECK-INST: add.a %a1, %a14, %a1
# CHECK: encoding: [0x01,0x1e,0x10,0x10]
.code32
add.a %a1, %a14, %a1

# CHECK-INST: add.a %a1, %a14, %a14
# CHECK: encoding: [0x01,0xee,0x10,0x10]
.code32
add.a %a1, %a14, %a14

# CHECK-INST: add.a %a1, %a14, %a15
# CHECK: encoding: [0x01,0xfe,0x10,0x10]
.code32
add.a %a1, %a14, %a15

# CHECK-INST: add.a %a1, %a15, %a0
# CHECK: encoding: [0x01,0x0f,0x10,0x10]
.code32
add.a %a1, %a15, %a0

# CHECK-INST: add.a %a1, %a15, %a1
# CHECK: encoding: [0x01,0x1f,0x10,0x10]
.code32
add.a %a1, %a15, %a1

# CHECK-INST: add.a %a1, %a15, %a14
# CHECK: encoding: [0x01,0xef,0x10,0x10]
.code32
add.a %a1, %a15, %a14

# CHECK-INST: add.a %a1, %a15, %a15
# CHECK: encoding: [0x01,0xff,0x10,0x10]
.code32
add.a %a1, %a15, %a15

# CHECK-INST: add.a %a14, %a0, %a0
# CHECK: encoding: [0x01,0x00,0x10,0xe0]
.code32
add.a %a14, %a0, %a0

# CHECK-INST: add.a %a14, %a0, %a1
# CHECK: encoding: [0x01,0x10,0x10,0xe0]
.code32
add.a %a14, %a0, %a1

# CHECK-INST: add.a %a14, %a0, %a14
# CHECK: encoding: [0x01,0xe0,0x10,0xe0]
.code32
add.a %a14, %a0, %a14

# CHECK-INST: add.a %a14, %a0, %a15
# CHECK: encoding: [0x01,0xf0,0x10,0xe0]
.code32
add.a %a14, %a0, %a15

# CHECK-INST: add.a %a14, %a1, %a0
# CHECK: encoding: [0x01,0x01,0x10,0xe0]
.code32
add.a %a14, %a1, %a0

# CHECK-INST: add.a %a14, %a1, %a1
# CHECK: encoding: [0x01,0x11,0x10,0xe0]
.code32
add.a %a14, %a1, %a1

# CHECK-INST: add.a %a14, %a1, %a14
# CHECK: encoding: [0x01,0xe1,0x10,0xe0]
.code32
add.a %a14, %a1, %a14

# CHECK-INST: add.a %a14, %a1, %a15
# CHECK: encoding: [0x01,0xf1,0x10,0xe0]
.code32
add.a %a14, %a1, %a15

# CHECK-INST: add.a %a14, %a14, %a0
# CHECK: encoding: [0x01,0x0e,0x10,0xe0]
.code32
add.a %a14, %a14, %a0

# CHECK-INST: add.a %a14, %a14, %a1
# CHECK: encoding: [0x01,0x1e,0x10,0xe0]
.code32
add.a %a14, %a14, %a1

# CHECK-INST: add.a %a14, %a14, %a14
# CHECK: encoding: [0x01,0xee,0x10,0xe0]
.code32
add.a %a14, %a14, %a14

# CHECK-INST: add.a %a14, %a14, %a15
# CHECK: encoding: [0x01,0xfe,0x10,0xe0]
.code32
add.a %a14, %a14, %a15

# CHECK-INST: add.a %a14, %a15, %a0
# CHECK: encoding: [0x01,0x0f,0x10,0xe0]
.code32
add.a %a14, %a15, %a0

# CHECK-INST: add.a %a14, %a15, %a1
# CHECK: encoding: [0x01,0x1f,0x10,0xe0]
.code32
add.a %a14, %a15, %a1

# CHECK-INST: add.a %a14, %a15, %a14
# CHECK: encoding: [0x01,0xef,0x10,0xe0]
.code32
add.a %a14, %a15, %a14

# CHECK-INST: add.a %a14, %a15, %a15
# CHECK: encoding: [0x01,0xff,0x10,0xe0]
.code32
add.a %a14, %a15, %a15

# CHECK-INST: add.a %a15, %a0, %a0
# CHECK: encoding: [0x01,0x00,0x10,0xf0]
.code32
add.a %a15, %a0, %a0

# CHECK-INST: add.a %a15, %a0, %a1
# CHECK: encoding: [0x01,0x10,0x10,0xf0]
.code32
add.a %a15, %a0, %a1

# CHECK-INST: add.a %a15, %a0, %a14
# CHECK: encoding: [0x01,0xe0,0x10,0xf0]
.code32
add.a %a15, %a0, %a14

# CHECK-INST: add.a %a15, %a0, %a15
# CHECK: encoding: [0x01,0xf0,0x10,0xf0]
.code32
add.a %a15, %a0, %a15

# CHECK-INST: add.a %a15, %a1, %a0
# CHECK: encoding: [0x01,0x01,0x10,0xf0]
.code32
add.a %a15, %a1, %a0

# CHECK-INST: add.a %a15, %a1, %a1
# CHECK: encoding: [0x01,0x11,0x10,0xf0]
.code32
add.a %a15, %a1, %a1

# CHECK-INST: add.a %a15, %a1, %a14
# CHECK: encoding: [0x01,0xe1,0x10,0xf0]
.code32
add.a %a15, %a1, %a14

# CHECK-INST: add.a %a15, %a1, %a15
# CHECK: encoding: [0x01,0xf1,0x10,0xf0]
.code32
add.a %a15, %a1, %a15

# CHECK-INST: add.a %a15, %a14, %a0
# CHECK: encoding: [0x01,0x0e,0x10,0xf0]
.code32
add.a %a15, %a14, %a0

# CHECK-INST: add.a %a15, %a14, %a1
# CHECK: encoding: [0x01,0x1e,0x10,0xf0]
.code32
add.a %a15, %a14, %a1

# CHECK-INST: add.a %a15, %a14, %a14
# CHECK: encoding: [0x01,0xee,0x10,0xf0]
.code32
add.a %a15, %a14, %a14

# CHECK-INST: add.a %a15, %a14, %a15
# CHECK: encoding: [0x01,0xfe,0x10,0xf0]
.code32
add.a %a15, %a14, %a15

# CHECK-INST: add.a %a15, %a15, %a0
# CHECK: encoding: [0x01,0x0f,0x10,0xf0]
.code32
add.a %a15, %a15, %a0

# CHECK-INST: add.a %a15, %a15, %a1
# CHECK: encoding: [0x01,0x1f,0x10,0xf0]
.code32
add.a %a15, %a15, %a1

# CHECK-INST: add.a %a15, %a15, %a14
# CHECK: encoding: [0x01,0xef,0x10,0xf0]
.code32
add.a %a15, %a15, %a14

# CHECK-INST: add.a %a15, %a15, %a15
# CHECK: encoding: [0x01,0xff,0x10,0xf0]
.code32
add.a %a15, %a15, %a15
# CHECK-INST: addih.a %a0, %a0, 0
# CHECK: encoding: [0x11,0x00,0x00,0x00]
.code32
addih.a %a0, %a0, 0

# CHECK-INST: addih.a %a0, %a0, 1
# CHECK: encoding: [0x11,0x10,0x00,0x00]
.code32
addih.a %a0, %a0, 1

# CHECK-INST: addih.a %a0, %a0, 32767
# CHECK: encoding: [0x11,0xf0,0xff,0x07]
.code32
addih.a %a0, %a0, 32767

# CHECK-INST: addih.a %a0, %a0, 32768
# CHECK: encoding: [0x11,0x00,0x00,0x08]
.code32
addih.a %a0, %a0, 32768

# CHECK-INST: addih.a %a0, %a0, 65534
# CHECK: encoding: [0x11,0xe0,0xff,0x0f]
.code32
addih.a %a0, %a0, 65534

# CHECK-INST: addih.a %a0, %a0, 65535
# CHECK: encoding: [0x11,0xf0,0xff,0x0f]
.code32
addih.a %a0, %a0, 65535

# CHECK-INST: addih.a %a0, %a1, 0
# CHECK: encoding: [0x11,0x01,0x00,0x00]
.code32
addih.a %a0, %a1, 0

# CHECK-INST: addih.a %a0, %a1, 1
# CHECK: encoding: [0x11,0x11,0x00,0x00]
.code32
addih.a %a0, %a1, 1

# CHECK-INST: addih.a %a0, %a1, 32767
# CHECK: encoding: [0x11,0xf1,0xff,0x07]
.code32
addih.a %a0, %a1, 32767

# CHECK-INST: addih.a %a0, %a1, 32768
# CHECK: encoding: [0x11,0x01,0x00,0x08]
.code32
addih.a %a0, %a1, 32768

# CHECK-INST: addih.a %a0, %a1, 65534
# CHECK: encoding: [0x11,0xe1,0xff,0x0f]
.code32
addih.a %a0, %a1, 65534

# CHECK-INST: addih.a %a0, %a1, 65535
# CHECK: encoding: [0x11,0xf1,0xff,0x0f]
.code32
addih.a %a0, %a1, 65535

# CHECK-INST: addih.a %a0, %a14, 0
# CHECK: encoding: [0x11,0x0e,0x00,0x00]
.code32
addih.a %a0, %a14, 0

# CHECK-INST: addih.a %a0, %a14, 1
# CHECK: encoding: [0x11,0x1e,0x00,0x00]
.code32
addih.a %a0, %a14, 1

# CHECK-INST: addih.a %a0, %a14, 32767
# CHECK: encoding: [0x11,0xfe,0xff,0x07]
.code32
addih.a %a0, %a14, 32767

# CHECK-INST: addih.a %a0, %a14, 32768
# CHECK: encoding: [0x11,0x0e,0x00,0x08]
.code32
addih.a %a0, %a14, 32768

# CHECK-INST: addih.a %a0, %a14, 65534
# CHECK: encoding: [0x11,0xee,0xff,0x0f]
.code32
addih.a %a0, %a14, 65534

# CHECK-INST: addih.a %a0, %a14, 65535
# CHECK: encoding: [0x11,0xfe,0xff,0x0f]
.code32
addih.a %a0, %a14, 65535

# CHECK-INST: addih.a %a0, %a15, 0
# CHECK: encoding: [0x11,0x0f,0x00,0x00]
.code32
addih.a %a0, %a15, 0

# CHECK-INST: addih.a %a0, %a15, 1
# CHECK: encoding: [0x11,0x1f,0x00,0x00]
.code32
addih.a %a0, %a15, 1

# CHECK-INST: addih.a %a0, %a15, 32767
# CHECK: encoding: [0x11,0xff,0xff,0x07]
.code32
addih.a %a0, %a15, 32767

# CHECK-INST: addih.a %a0, %a15, 32768
# CHECK: encoding: [0x11,0x0f,0x00,0x08]
.code32
addih.a %a0, %a15, 32768

# CHECK-INST: addih.a %a0, %a15, 65534
# CHECK: encoding: [0x11,0xef,0xff,0x0f]
.code32
addih.a %a0, %a15, 65534

# CHECK-INST: addih.a %a0, %a15, 65535
# CHECK: encoding: [0x11,0xff,0xff,0x0f]
.code32
addih.a %a0, %a15, 65535

# CHECK-INST: addih.a %a1, %a0, 0
# CHECK: encoding: [0x11,0x00,0x00,0x10]
.code32
addih.a %a1, %a0, 0

# CHECK-INST: addih.a %a1, %a0, 1
# CHECK: encoding: [0x11,0x10,0x00,0x10]
.code32
addih.a %a1, %a0, 1

# CHECK-INST: addih.a %a1, %a0, 32767
# CHECK: encoding: [0x11,0xf0,0xff,0x17]
.code32
addih.a %a1, %a0, 32767

# CHECK-INST: addih.a %a1, %a0, 32768
# CHECK: encoding: [0x11,0x00,0x00,0x18]
.code32
addih.a %a1, %a0, 32768

# CHECK-INST: addih.a %a1, %a0, 65534
# CHECK: encoding: [0x11,0xe0,0xff,0x1f]
.code32
addih.a %a1, %a0, 65534

# CHECK-INST: addih.a %a1, %a0, 65535
# CHECK: encoding: [0x11,0xf0,0xff,0x1f]
.code32
addih.a %a1, %a0, 65535

# CHECK-INST: addih.a %a1, %a1, 0
# CHECK: encoding: [0x11,0x01,0x00,0x10]
.code32
addih.a %a1, %a1, 0

# CHECK-INST: addih.a %a1, %a1, 1
# CHECK: encoding: [0x11,0x11,0x00,0x10]
.code32
addih.a %a1, %a1, 1

# CHECK-INST: addih.a %a1, %a1, 32767
# CHECK: encoding: [0x11,0xf1,0xff,0x17]
.code32
addih.a %a1, %a1, 32767

# CHECK-INST: addih.a %a1, %a1, 32768
# CHECK: encoding: [0x11,0x01,0x00,0x18]
.code32
addih.a %a1, %a1, 32768

# CHECK-INST: addih.a %a1, %a1, 65534
# CHECK: encoding: [0x11,0xe1,0xff,0x1f]
.code32
addih.a %a1, %a1, 65534

# CHECK-INST: addih.a %a1, %a1, 65535
# CHECK: encoding: [0x11,0xf1,0xff,0x1f]
.code32
addih.a %a1, %a1, 65535

# CHECK-INST: addih.a %a1, %a14, 0
# CHECK: encoding: [0x11,0x0e,0x00,0x10]
.code32
addih.a %a1, %a14, 0

# CHECK-INST: addih.a %a1, %a14, 1
# CHECK: encoding: [0x11,0x1e,0x00,0x10]
.code32
addih.a %a1, %a14, 1

# CHECK-INST: addih.a %a1, %a14, 32767
# CHECK: encoding: [0x11,0xfe,0xff,0x17]
.code32
addih.a %a1, %a14, 32767

# CHECK-INST: addih.a %a1, %a14, 32768
# CHECK: encoding: [0x11,0x0e,0x00,0x18]
.code32
addih.a %a1, %a14, 32768

# CHECK-INST: addih.a %a1, %a14, 65534
# CHECK: encoding: [0x11,0xee,0xff,0x1f]
.code32
addih.a %a1, %a14, 65534

# CHECK-INST: addih.a %a1, %a14, 65535
# CHECK: encoding: [0x11,0xfe,0xff,0x1f]
.code32
addih.a %a1, %a14, 65535

# CHECK-INST: addih.a %a1, %a15, 0
# CHECK: encoding: [0x11,0x0f,0x00,0x10]
.code32
addih.a %a1, %a15, 0

# CHECK-INST: addih.a %a1, %a15, 1
# CHECK: encoding: [0x11,0x1f,0x00,0x10]
.code32
addih.a %a1, %a15, 1

# CHECK-INST: addih.a %a1, %a15, 32767
# CHECK: encoding: [0x11,0xff,0xff,0x17]
.code32
addih.a %a1, %a15, 32767

# CHECK-INST: addih.a %a1, %a15, 32768
# CHECK: encoding: [0x11,0x0f,0x00,0x18]
.code32
addih.a %a1, %a15, 32768

# CHECK-INST: addih.a %a1, %a15, 65534
# CHECK: encoding: [0x11,0xef,0xff,0x1f]
.code32
addih.a %a1, %a15, 65534

# CHECK-INST: addih.a %a1, %a15, 65535
# CHECK: encoding: [0x11,0xff,0xff,0x1f]
.code32
addih.a %a1, %a15, 65535

# CHECK-INST: addih.a %a14, %a0, 0
# CHECK: encoding: [0x11,0x00,0x00,0xe0]
.code32
addih.a %a14, %a0, 0

# CHECK-INST: addih.a %a14, %a0, 1
# CHECK: encoding: [0x11,0x10,0x00,0xe0]
.code32
addih.a %a14, %a0, 1

# CHECK-INST: addih.a %a14, %a0, 32767
# CHECK: encoding: [0x11,0xf0,0xff,0xe7]
.code32
addih.a %a14, %a0, 32767

# CHECK-INST: addih.a %a14, %a0, 32768
# CHECK: encoding: [0x11,0x00,0x00,0xe8]
.code32
addih.a %a14, %a0, 32768

# CHECK-INST: addih.a %a14, %a0, 65534
# CHECK: encoding: [0x11,0xe0,0xff,0xef]
.code32
addih.a %a14, %a0, 65534

# CHECK-INST: addih.a %a14, %a0, 65535
# CHECK: encoding: [0x11,0xf0,0xff,0xef]
.code32
addih.a %a14, %a0, 65535

# CHECK-INST: addih.a %a14, %a1, 0
# CHECK: encoding: [0x11,0x01,0x00,0xe0]
.code32
addih.a %a14, %a1, 0

# CHECK-INST: addih.a %a14, %a1, 1
# CHECK: encoding: [0x11,0x11,0x00,0xe0]
.code32
addih.a %a14, %a1, 1

# CHECK-INST: addih.a %a14, %a1, 32767
# CHECK: encoding: [0x11,0xf1,0xff,0xe7]
.code32
addih.a %a14, %a1, 32767

# CHECK-INST: addih.a %a14, %a1, 32768
# CHECK: encoding: [0x11,0x01,0x00,0xe8]
.code32
addih.a %a14, %a1, 32768

# CHECK-INST: addih.a %a14, %a1, 65534
# CHECK: encoding: [0x11,0xe1,0xff,0xef]
.code32
addih.a %a14, %a1, 65534

# CHECK-INST: addih.a %a14, %a1, 65535
# CHECK: encoding: [0x11,0xf1,0xff,0xef]
.code32
addih.a %a14, %a1, 65535

# CHECK-INST: addih.a %a14, %a14, 0
# CHECK: encoding: [0x11,0x0e,0x00,0xe0]
.code32
addih.a %a14, %a14, 0

# CHECK-INST: addih.a %a14, %a14, 1
# CHECK: encoding: [0x11,0x1e,0x00,0xe0]
.code32
addih.a %a14, %a14, 1

# CHECK-INST: addih.a %a14, %a14, 32767
# CHECK: encoding: [0x11,0xfe,0xff,0xe7]
.code32
addih.a %a14, %a14, 32767

# CHECK-INST: addih.a %a14, %a14, 32768
# CHECK: encoding: [0x11,0x0e,0x00,0xe8]
.code32
addih.a %a14, %a14, 32768

# CHECK-INST: addih.a %a14, %a14, 65534
# CHECK: encoding: [0x11,0xee,0xff,0xef]
.code32
addih.a %a14, %a14, 65534

# CHECK-INST: addih.a %a14, %a14, 65535
# CHECK: encoding: [0x11,0xfe,0xff,0xef]
.code32
addih.a %a14, %a14, 65535

# CHECK-INST: addih.a %a14, %a15, 0
# CHECK: encoding: [0x11,0x0f,0x00,0xe0]
.code32
addih.a %a14, %a15, 0

# CHECK-INST: addih.a %a14, %a15, 1
# CHECK: encoding: [0x11,0x1f,0x00,0xe0]
.code32
addih.a %a14, %a15, 1

# CHECK-INST: addih.a %a14, %a15, 32767
# CHECK: encoding: [0x11,0xff,0xff,0xe7]
.code32
addih.a %a14, %a15, 32767

# CHECK-INST: addih.a %a14, %a15, 32768
# CHECK: encoding: [0x11,0x0f,0x00,0xe8]
.code32
addih.a %a14, %a15, 32768

# CHECK-INST: addih.a %a14, %a15, 65534
# CHECK: encoding: [0x11,0xef,0xff,0xef]
.code32
addih.a %a14, %a15, 65534

# CHECK-INST: addih.a %a14, %a15, 65535
# CHECK: encoding: [0x11,0xff,0xff,0xef]
.code32
addih.a %a14, %a15, 65535

# CHECK-INST: addih.a %a15, %a0, 0
# CHECK: encoding: [0x11,0x00,0x00,0xf0]
.code32
addih.a %a15, %a0, 0

# CHECK-INST: addih.a %a15, %a0, 1
# CHECK: encoding: [0x11,0x10,0x00,0xf0]
.code32
addih.a %a15, %a0, 1

# CHECK-INST: addih.a %a15, %a0, 32767
# CHECK: encoding: [0x11,0xf0,0xff,0xf7]
.code32
addih.a %a15, %a0, 32767

# CHECK-INST: addih.a %a15, %a0, 32768
# CHECK: encoding: [0x11,0x00,0x00,0xf8]
.code32
addih.a %a15, %a0, 32768

# CHECK-INST: addih.a %a15, %a0, 65534
# CHECK: encoding: [0x11,0xe0,0xff,0xff]
.code32
addih.a %a15, %a0, 65534

# CHECK-INST: addih.a %a15, %a0, 65535
# CHECK: encoding: [0x11,0xf0,0xff,0xff]
.code32
addih.a %a15, %a0, 65535

# CHECK-INST: addih.a %a15, %a1, 0
# CHECK: encoding: [0x11,0x01,0x00,0xf0]
.code32
addih.a %a15, %a1, 0

# CHECK-INST: addih.a %a15, %a1, 1
# CHECK: encoding: [0x11,0x11,0x00,0xf0]
.code32
addih.a %a15, %a1, 1

# CHECK-INST: addih.a %a15, %a1, 32767
# CHECK: encoding: [0x11,0xf1,0xff,0xf7]
.code32
addih.a %a15, %a1, 32767

# CHECK-INST: addih.a %a15, %a1, 32768
# CHECK: encoding: [0x11,0x01,0x00,0xf8]
.code32
addih.a %a15, %a1, 32768

# CHECK-INST: addih.a %a15, %a1, 65534
# CHECK: encoding: [0x11,0xe1,0xff,0xff]
.code32
addih.a %a15, %a1, 65534

# CHECK-INST: addih.a %a15, %a1, 65535
# CHECK: encoding: [0x11,0xf1,0xff,0xff]
.code32
addih.a %a15, %a1, 65535

# CHECK-INST: addih.a %a15, %a14, 0
# CHECK: encoding: [0x11,0x0e,0x00,0xf0]
.code32
addih.a %a15, %a14, 0

# CHECK-INST: addih.a %a15, %a14, 1
# CHECK: encoding: [0x11,0x1e,0x00,0xf0]
.code32
addih.a %a15, %a14, 1

# CHECK-INST: addih.a %a15, %a14, 32767
# CHECK: encoding: [0x11,0xfe,0xff,0xf7]
.code32
addih.a %a15, %a14, 32767

# CHECK-INST: addih.a %a15, %a14, 32768
# CHECK: encoding: [0x11,0x0e,0x00,0xf8]
.code32
addih.a %a15, %a14, 32768

# CHECK-INST: addih.a %a15, %a14, 65534
# CHECK: encoding: [0x11,0xee,0xff,0xff]
.code32
addih.a %a15, %a14, 65534

# CHECK-INST: addih.a %a15, %a14, 65535
# CHECK: encoding: [0x11,0xfe,0xff,0xff]
.code32
addih.a %a15, %a14, 65535

# CHECK-INST: addih.a %a15, %a15, 0
# CHECK: encoding: [0x11,0x0f,0x00,0xf0]
.code32
addih.a %a15, %a15, 0

# CHECK-INST: addih.a %a15, %a15, 1
# CHECK: encoding: [0x11,0x1f,0x00,0xf0]
.code32
addih.a %a15, %a15, 1

# CHECK-INST: addih.a %a15, %a15, 32767
# CHECK: encoding: [0x11,0xff,0xff,0xf7]
.code32
addih.a %a15, %a15, 32767

# CHECK-INST: addih.a %a15, %a15, 32768
# CHECK: encoding: [0x11,0x0f,0x00,0xf8]
.code32
addih.a %a15, %a15, 32768

# CHECK-INST: addih.a %a15, %a15, 65534
# CHECK: encoding: [0x11,0xef,0xff,0xff]
.code32
addih.a %a15, %a15, 65534

# CHECK-INST: addih.a %a15, %a15, 65535
# CHECK: encoding: [0x11,0xff,0xff,0xff]
.code32
addih.a %a15, %a15, 65535

# CHECK-INST: addih.a %a15, %a15, 65028
# CHECK: encoding: [0x11,0x4f,0xe0,0xff]
.code32
addih.a %a15, %a15, $psw

# CHECK-INST: addsc.a %a0, %a0, %d15, 0
# CHECK: encoding: [0x10,0x00]
.code16
addsc.a %a0, %a0, %d15, 0

# CHECK-INST: addsc.a %a0, %a0, %d15, 1
# CHECK: encoding: [0x50,0x00]
.code16
addsc.a %a0, %a0, %d15, 1

# CHECK-INST: addsc.a %a0, %a0, %d15, 2
# CHECK: encoding: [0x90,0x00]
.code16
addsc.a %a0, %a0, %d15, 2

# CHECK-INST: addsc.a %a0, %a0, %d15, 3
# CHECK: encoding: [0xd0,0x00]
.code16
addsc.a %a0, %a0, %d15, 3

# CHECK-INST: addsc.a %a0, %a1, %d15, 0
# CHECK: encoding: [0x10,0x10]
.code16
addsc.a %a0, %a1, %d15, 0

# CHECK-INST: addsc.a %a0, %a1, %d15, 1
# CHECK: encoding: [0x50,0x10]
.code16
addsc.a %a0, %a1, %d15, 1

# CHECK-INST: addsc.a %a0, %a1, %d15, 2
# CHECK: encoding: [0x90,0x10]
.code16
addsc.a %a0, %a1, %d15, 2

# CHECK-INST: addsc.a %a0, %a1, %d15, 3
# CHECK: encoding: [0xd0,0x10]
.code16
addsc.a %a0, %a1, %d15, 3

# CHECK-INST: addsc.a %a0, %a14, %d15, 0
# CHECK: encoding: [0x10,0xe0]
.code16
addsc.a %a0, %a14, %d15, 0

# CHECK-INST: addsc.a %a0, %a14, %d15, 1
# CHECK: encoding: [0x50,0xe0]
.code16
addsc.a %a0, %a14, %d15, 1

# CHECK-INST: addsc.a %a0, %a14, %d15, 2
# CHECK: encoding: [0x90,0xe0]
.code16
addsc.a %a0, %a14, %d15, 2

# CHECK-INST: addsc.a %a0, %a14, %d15, 3
# CHECK: encoding: [0xd0,0xe0]
.code16
addsc.a %a0, %a14, %d15, 3

# CHECK-INST: addsc.a %a0, %a15, %d15, 0
# CHECK: encoding: [0x10,0xf0]
.code16
addsc.a %a0, %a15, %d15, 0

# CHECK-INST: addsc.a %a0, %a15, %d15, 1
# CHECK: encoding: [0x50,0xf0]
.code16
addsc.a %a0, %a15, %d15, 1

# CHECK-INST: addsc.a %a0, %a15, %d15, 2
# CHECK: encoding: [0x90,0xf0]
.code16
addsc.a %a0, %a15, %d15, 2

# CHECK-INST: addsc.a %a0, %a15, %d15, 3
# CHECK: encoding: [0xd0,0xf0]
.code16
addsc.a %a0, %a15, %d15, 3

# CHECK-INST: addsc.a %a1, %a0, %d15, 0
# CHECK: encoding: [0x10,0x01]
.code16
addsc.a %a1, %a0, %d15, 0

# CHECK-INST: addsc.a %a1, %a0, %d15, 1
# CHECK: encoding: [0x50,0x01]
.code16
addsc.a %a1, %a0, %d15, 1

# CHECK-INST: addsc.a %a1, %a0, %d15, 2
# CHECK: encoding: [0x90,0x01]
.code16
addsc.a %a1, %a0, %d15, 2

# CHECK-INST: addsc.a %a1, %a0, %d15, 3
# CHECK: encoding: [0xd0,0x01]
.code16
addsc.a %a1, %a0, %d15, 3

# CHECK-INST: addsc.a %a1, %a1, %d15, 0
# CHECK: encoding: [0x10,0x11]
.code16
addsc.a %a1, %a1, %d15, 0

# CHECK-INST: addsc.a %a1, %a1, %d15, 1
# CHECK: encoding: [0x50,0x11]
.code16
addsc.a %a1, %a1, %d15, 1

# CHECK-INST: addsc.a %a1, %a1, %d15, 2
# CHECK: encoding: [0x90,0x11]
.code16
addsc.a %a1, %a1, %d15, 2

# CHECK-INST: addsc.a %a1, %a1, %d15, 3
# CHECK: encoding: [0xd0,0x11]
.code16
addsc.a %a1, %a1, %d15, 3

# CHECK-INST: addsc.a %a1, %a14, %d15, 0
# CHECK: encoding: [0x10,0xe1]
.code16
addsc.a %a1, %a14, %d15, 0

# CHECK-INST: addsc.a %a1, %a14, %d15, 1
# CHECK: encoding: [0x50,0xe1]
.code16
addsc.a %a1, %a14, %d15, 1

# CHECK-INST: addsc.a %a1, %a14, %d15, 2
# CHECK: encoding: [0x90,0xe1]
.code16
addsc.a %a1, %a14, %d15, 2

# CHECK-INST: addsc.a %a1, %a14, %d15, 3
# CHECK: encoding: [0xd0,0xe1]
.code16
addsc.a %a1, %a14, %d15, 3

# CHECK-INST: addsc.a %a1, %a15, %d15, 0
# CHECK: encoding: [0x10,0xf1]
.code16
addsc.a %a1, %a15, %d15, 0

# CHECK-INST: addsc.a %a1, %a15, %d15, 1
# CHECK: encoding: [0x50,0xf1]
.code16
addsc.a %a1, %a15, %d15, 1

# CHECK-INST: addsc.a %a1, %a15, %d15, 2
# CHECK: encoding: [0x90,0xf1]
.code16
addsc.a %a1, %a15, %d15, 2

# CHECK-INST: addsc.a %a1, %a15, %d15, 3
# CHECK: encoding: [0xd0,0xf1]
.code16
addsc.a %a1, %a15, %d15, 3

# CHECK-INST: addsc.a %a14, %a0, %d15, 0
# CHECK: encoding: [0x10,0x0e]
.code16
addsc.a %a14, %a0, %d15, 0

# CHECK-INST: addsc.a %a14, %a0, %d15, 1
# CHECK: encoding: [0x50,0x0e]
.code16
addsc.a %a14, %a0, %d15, 1

# CHECK-INST: addsc.a %a14, %a0, %d15, 2
# CHECK: encoding: [0x90,0x0e]
.code16
addsc.a %a14, %a0, %d15, 2

# CHECK-INST: addsc.a %a14, %a0, %d15, 3
# CHECK: encoding: [0xd0,0x0e]
.code16
addsc.a %a14, %a0, %d15, 3

# CHECK-INST: addsc.a %a14, %a1, %d15, 0
# CHECK: encoding: [0x10,0x1e]
.code16
addsc.a %a14, %a1, %d15, 0

# CHECK-INST: addsc.a %a14, %a1, %d15, 1
# CHECK: encoding: [0x50,0x1e]
.code16
addsc.a %a14, %a1, %d15, 1

# CHECK-INST: addsc.a %a14, %a1, %d15, 2
# CHECK: encoding: [0x90,0x1e]
.code16
addsc.a %a14, %a1, %d15, 2

# CHECK-INST: addsc.a %a14, %a1, %d15, 3
# CHECK: encoding: [0xd0,0x1e]
.code16
addsc.a %a14, %a1, %d15, 3

# CHECK-INST: addsc.a %a14, %a14, %d15, 0
# CHECK: encoding: [0x10,0xee]
.code16
addsc.a %a14, %a14, %d15, 0

# CHECK-INST: addsc.a %a14, %a14, %d15, 1
# CHECK: encoding: [0x50,0xee]
.code16
addsc.a %a14, %a14, %d15, 1

# CHECK-INST: addsc.a %a14, %a14, %d15, 2
# CHECK: encoding: [0x90,0xee]
.code16
addsc.a %a14, %a14, %d15, 2

# CHECK-INST: addsc.a %a14, %a14, %d15, 3
# CHECK: encoding: [0xd0,0xee]
.code16
addsc.a %a14, %a14, %d15, 3

# CHECK-INST: addsc.a %a14, %a15, %d15, 0
# CHECK: encoding: [0x10,0xfe]
.code16
addsc.a %a14, %a15, %d15, 0

# CHECK-INST: addsc.a %a14, %a15, %d15, 1
# CHECK: encoding: [0x50,0xfe]
.code16
addsc.a %a14, %a15, %d15, 1

# CHECK-INST: addsc.a %a14, %a15, %d15, 2
# CHECK: encoding: [0x90,0xfe]
.code16
addsc.a %a14, %a15, %d15, 2

# CHECK-INST: addsc.a %a14, %a15, %d15, 3
# CHECK: encoding: [0xd0,0xfe]
.code16
addsc.a %a14, %a15, %d15, 3

# CHECK-INST: addsc.a %a15, %a0, %d15, 0
# CHECK: encoding: [0x10,0x0f]
.code16
addsc.a %a15, %a0, %d15, 0

# CHECK-INST: addsc.a %a15, %a0, %d15, 1
# CHECK: encoding: [0x50,0x0f]
.code16
addsc.a %a15, %a0, %d15, 1

# CHECK-INST: addsc.a %a15, %a0, %d15, 2
# CHECK: encoding: [0x90,0x0f]
.code16
addsc.a %a15, %a0, %d15, 2

# CHECK-INST: addsc.a %a15, %a0, %d15, 3
# CHECK: encoding: [0xd0,0x0f]
.code16
addsc.a %a15, %a0, %d15, 3

# CHECK-INST: addsc.a %a15, %a1, %d15, 0
# CHECK: encoding: [0x10,0x1f]
.code16
addsc.a %a15, %a1, %d15, 0

# CHECK-INST: addsc.a %a15, %a1, %d15, 1
# CHECK: encoding: [0x50,0x1f]
.code16
addsc.a %a15, %a1, %d15, 1

# CHECK-INST: addsc.a %a15, %a1, %d15, 2
# CHECK: encoding: [0x90,0x1f]
.code16
addsc.a %a15, %a1, %d15, 2

# CHECK-INST: addsc.a %a15, %a1, %d15, 3
# CHECK: encoding: [0xd0,0x1f]
.code16
addsc.a %a15, %a1, %d15, 3

# CHECK-INST: addsc.a %a15, %a14, %d15, 0
# CHECK: encoding: [0x10,0xef]
.code16
addsc.a %a15, %a14, %d15, 0

# CHECK-INST: addsc.a %a15, %a14, %d15, 1
# CHECK: encoding: [0x50,0xef]
.code16
addsc.a %a15, %a14, %d15, 1

# CHECK-INST: addsc.a %a15, %a14, %d15, 2
# CHECK: encoding: [0x90,0xef]
.code16
addsc.a %a15, %a14, %d15, 2

# CHECK-INST: addsc.a %a15, %a14, %d15, 3
# CHECK: encoding: [0xd0,0xef]
.code16
addsc.a %a15, %a14, %d15, 3

# CHECK-INST: addsc.a %a15, %a15, %d15, 0
# CHECK: encoding: [0x10,0xff]
.code16
addsc.a %a15, %a15, %d15, 0

# CHECK-INST: addsc.a %a15, %a15, %d15, 1
# CHECK: encoding: [0x50,0xff]
.code16
addsc.a %a15, %a15, %d15, 1

# CHECK-INST: addsc.a %a15, %a15, %d15, 2
# CHECK: encoding: [0x90,0xff]
.code16
addsc.a %a15, %a15, %d15, 2

# CHECK-INST: addsc.a %a15, %a15, %d15, 3
# CHECK: encoding: [0xd0,0xff]
.code16
addsc.a %a15, %a15, %d15, 3


# CHECK-INST: addsc.a %a0, %a0, %d0, 0
# CHECK: encoding: [0x01,0x00,0x00,0x06]
.code32
addsc.a %a0, %a0, %d0, 0

# CHECK-INST: addsc.a %a0, %a0, %d0, 1
# CHECK: encoding: [0x01,0x00,0x01,0x06]
.code32
addsc.a %a0, %a0, %d0, 1

# CHECK-INST: addsc.a %a0, %a0, %d0, 2
# CHECK: encoding: [0x01,0x00,0x02,0x06]
.code32
addsc.a %a0, %a0, %d0, 2

# CHECK-INST: addsc.a %a0, %a0, %d0, 3
# CHECK: encoding: [0x01,0x00,0x03,0x06]
.code32
addsc.a %a0, %a0, %d0, 3

# CHECK-INST: addsc.a %a0, %a0, %d1, 0
# CHECK: encoding: [0x01,0x01,0x00,0x06]
.code32
addsc.a %a0, %a0, %d1, 0

# CHECK-INST: addsc.a %a0, %a0, %d1, 1
# CHECK: encoding: [0x01,0x01,0x01,0x06]
.code32
addsc.a %a0, %a0, %d1, 1

# CHECK-INST: addsc.a %a0, %a0, %d1, 2
# CHECK: encoding: [0x01,0x01,0x02,0x06]
.code32
addsc.a %a0, %a0, %d1, 2

# CHECK-INST: addsc.a %a0, %a0, %d1, 3
# CHECK: encoding: [0x01,0x01,0x03,0x06]
.code32
addsc.a %a0, %a0, %d1, 3

# CHECK-INST: addsc.a %a0, %a0, %d14, 0
# CHECK: encoding: [0x01,0x0e,0x00,0x06]
.code32
addsc.a %a0, %a0, %d14, 0

# CHECK-INST: addsc.a %a0, %a0, %d14, 1
# CHECK: encoding: [0x01,0x0e,0x01,0x06]
.code32
addsc.a %a0, %a0, %d14, 1

# CHECK-INST: addsc.a %a0, %a0, %d14, 2
# CHECK: encoding: [0x01,0x0e,0x02,0x06]
.code32
addsc.a %a0, %a0, %d14, 2

# CHECK-INST: addsc.a %a0, %a0, %d14, 3
# CHECK: encoding: [0x01,0x0e,0x03,0x06]
.code32
addsc.a %a0, %a0, %d14, 3

# CHECK-INST: addsc.a %a0, %a1, %d0, 0
# CHECK: encoding: [0x01,0x10,0x00,0x06]
.code32
addsc.a %a0, %a1, %d0, 0

# CHECK-INST: addsc.a %a0, %a1, %d0, 1
# CHECK: encoding: [0x01,0x10,0x01,0x06]
.code32
addsc.a %a0, %a1, %d0, 1

# CHECK-INST: addsc.a %a0, %a1, %d0, 2
# CHECK: encoding: [0x01,0x10,0x02,0x06]
.code32
addsc.a %a0, %a1, %d0, 2

# CHECK-INST: addsc.a %a0, %a1, %d0, 3
# CHECK: encoding: [0x01,0x10,0x03,0x06]
.code32
addsc.a %a0, %a1, %d0, 3

# CHECK-INST: addsc.a %a0, %a1, %d1, 0
# CHECK: encoding: [0x01,0x11,0x00,0x06]
.code32
addsc.a %a0, %a1, %d1, 0

# CHECK-INST: addsc.a %a0, %a1, %d1, 1
# CHECK: encoding: [0x01,0x11,0x01,0x06]
.code32
addsc.a %a0, %a1, %d1, 1

# CHECK-INST: addsc.a %a0, %a1, %d1, 2
# CHECK: encoding: [0x01,0x11,0x02,0x06]
.code32
addsc.a %a0, %a1, %d1, 2

# CHECK-INST: addsc.a %a0, %a1, %d1, 3
# CHECK: encoding: [0x01,0x11,0x03,0x06]
.code32
addsc.a %a0, %a1, %d1, 3

# CHECK-INST: addsc.a %a0, %a1, %d14, 0
# CHECK: encoding: [0x01,0x1e,0x00,0x06]
.code32
addsc.a %a0, %a1, %d14, 0

# CHECK-INST: addsc.a %a0, %a1, %d14, 1
# CHECK: encoding: [0x01,0x1e,0x01,0x06]
.code32
addsc.a %a0, %a1, %d14, 1

# CHECK-INST: addsc.a %a0, %a1, %d14, 2
# CHECK: encoding: [0x01,0x1e,0x02,0x06]
.code32
addsc.a %a0, %a1, %d14, 2

# CHECK-INST: addsc.a %a0, %a1, %d14, 3
# CHECK: encoding: [0x01,0x1e,0x03,0x06]
.code32
addsc.a %a0, %a1, %d14, 3

# CHECK-INST: addsc.a %a0, %a14, %d0, 0
# CHECK: encoding: [0x01,0xe0,0x00,0x06]
.code32
addsc.a %a0, %a14, %d0, 0

# CHECK-INST: addsc.a %a0, %a14, %d0, 1
# CHECK: encoding: [0x01,0xe0,0x01,0x06]
.code32
addsc.a %a0, %a14, %d0, 1

# CHECK-INST: addsc.a %a0, %a14, %d0, 2
# CHECK: encoding: [0x01,0xe0,0x02,0x06]
.code32
addsc.a %a0, %a14, %d0, 2

# CHECK-INST: addsc.a %a0, %a14, %d0, 3
# CHECK: encoding: [0x01,0xe0,0x03,0x06]
.code32
addsc.a %a0, %a14, %d0, 3

# CHECK-INST: addsc.a %a0, %a14, %d1, 0
# CHECK: encoding: [0x01,0xe1,0x00,0x06]
.code32
addsc.a %a0, %a14, %d1, 0

# CHECK-INST: addsc.a %a0, %a14, %d1, 1
# CHECK: encoding: [0x01,0xe1,0x01,0x06]
.code32
addsc.a %a0, %a14, %d1, 1

# CHECK-INST: addsc.a %a0, %a14, %d1, 2
# CHECK: encoding: [0x01,0xe1,0x02,0x06]
.code32
addsc.a %a0, %a14, %d1, 2

# CHECK-INST: addsc.a %a0, %a14, %d1, 3
# CHECK: encoding: [0x01,0xe1,0x03,0x06]
.code32
addsc.a %a0, %a14, %d1, 3

# CHECK-INST: addsc.a %a0, %a14, %d14, 0
# CHECK: encoding: [0x01,0xee,0x00,0x06]
.code32
addsc.a %a0, %a14, %d14, 0

# CHECK-INST: addsc.a %a0, %a14, %d14, 1
# CHECK: encoding: [0x01,0xee,0x01,0x06]
.code32
addsc.a %a0, %a14, %d14, 1

# CHECK-INST: addsc.a %a0, %a14, %d14, 2
# CHECK: encoding: [0x01,0xee,0x02,0x06]
.code32
addsc.a %a0, %a14, %d14, 2

# CHECK-INST: addsc.a %a0, %a14, %d14, 3
# CHECK: encoding: [0x01,0xee,0x03,0x06]
.code32
addsc.a %a0, %a14, %d14, 3

# CHECK-INST: addsc.a %a0, %a15, %d0, 0
# CHECK: encoding: [0x01,0xf0,0x00,0x06]
.code32
addsc.a %a0, %a15, %d0, 0

# CHECK-INST: addsc.a %a0, %a15, %d0, 1
# CHECK: encoding: [0x01,0xf0,0x01,0x06]
.code32
addsc.a %a0, %a15, %d0, 1

# CHECK-INST: addsc.a %a0, %a15, %d0, 2
# CHECK: encoding: [0x01,0xf0,0x02,0x06]
.code32
addsc.a %a0, %a15, %d0, 2

# CHECK-INST: addsc.a %a0, %a15, %d0, 3
# CHECK: encoding: [0x01,0xf0,0x03,0x06]
.code32
addsc.a %a0, %a15, %d0, 3

# CHECK-INST: addsc.a %a0, %a15, %d1, 0
# CHECK: encoding: [0x01,0xf1,0x00,0x06]
.code32
addsc.a %a0, %a15, %d1, 0

# CHECK-INST: addsc.a %a0, %a15, %d1, 1
# CHECK: encoding: [0x01,0xf1,0x01,0x06]
.code32
addsc.a %a0, %a15, %d1, 1

# CHECK-INST: addsc.a %a0, %a15, %d1, 2
# CHECK: encoding: [0x01,0xf1,0x02,0x06]
.code32
addsc.a %a0, %a15, %d1, 2

# CHECK-INST: addsc.a %a0, %a15, %d1, 3
# CHECK: encoding: [0x01,0xf1,0x03,0x06]
.code32
addsc.a %a0, %a15, %d1, 3

# CHECK-INST: addsc.a %a0, %a15, %d14, 0
# CHECK: encoding: [0x01,0xfe,0x00,0x06]
.code32
addsc.a %a0, %a15, %d14, 0

# CHECK-INST: addsc.a %a0, %a15, %d14, 1
# CHECK: encoding: [0x01,0xfe,0x01,0x06]
.code32
addsc.a %a0, %a15, %d14, 1

# CHECK-INST: addsc.a %a0, %a15, %d14, 2
# CHECK: encoding: [0x01,0xfe,0x02,0x06]
.code32
addsc.a %a0, %a15, %d14, 2

# CHECK-INST: addsc.a %a0, %a15, %d14, 3
# CHECK: encoding: [0x01,0xfe,0x03,0x06]
.code32
addsc.a %a0, %a15, %d14, 3

# CHECK-INST: addsc.a %a1, %a0, %d0, 0
# CHECK: encoding: [0x01,0x00,0x00,0x16]
.code32
addsc.a %a1, %a0, %d0, 0

# CHECK-INST: addsc.a %a1, %a0, %d0, 1
# CHECK: encoding: [0x01,0x00,0x01,0x16]
.code32
addsc.a %a1, %a0, %d0, 1

# CHECK-INST: addsc.a %a1, %a0, %d0, 2
# CHECK: encoding: [0x01,0x00,0x02,0x16]
.code32
addsc.a %a1, %a0, %d0, 2

# CHECK-INST: addsc.a %a1, %a0, %d0, 3
# CHECK: encoding: [0x01,0x00,0x03,0x16]
.code32
addsc.a %a1, %a0, %d0, 3

# CHECK-INST: addsc.a %a1, %a0, %d1, 0
# CHECK: encoding: [0x01,0x01,0x00,0x16]
.code32
addsc.a %a1, %a0, %d1, 0

# CHECK-INST: addsc.a %a1, %a0, %d1, 1
# CHECK: encoding: [0x01,0x01,0x01,0x16]
.code32
addsc.a %a1, %a0, %d1, 1

# CHECK-INST: addsc.a %a1, %a0, %d1, 2
# CHECK: encoding: [0x01,0x01,0x02,0x16]
.code32
addsc.a %a1, %a0, %d1, 2

# CHECK-INST: addsc.a %a1, %a0, %d1, 3
# CHECK: encoding: [0x01,0x01,0x03,0x16]
.code32
addsc.a %a1, %a0, %d1, 3

# CHECK-INST: addsc.a %a1, %a0, %d14, 0
# CHECK: encoding: [0x01,0x0e,0x00,0x16]
.code32
addsc.a %a1, %a0, %d14, 0

# CHECK-INST: addsc.a %a1, %a0, %d14, 1
# CHECK: encoding: [0x01,0x0e,0x01,0x16]
.code32
addsc.a %a1, %a0, %d14, 1

# CHECK-INST: addsc.a %a1, %a0, %d14, 2
# CHECK: encoding: [0x01,0x0e,0x02,0x16]
.code32
addsc.a %a1, %a0, %d14, 2

# CHECK-INST: addsc.a %a1, %a0, %d14, 3
# CHECK: encoding: [0x01,0x0e,0x03,0x16]
.code32
addsc.a %a1, %a0, %d14, 3

# CHECK-INST: addsc.a %a1, %a1, %d0, 0
# CHECK: encoding: [0x01,0x10,0x00,0x16]
.code32
addsc.a %a1, %a1, %d0, 0

# CHECK-INST: addsc.a %a1, %a1, %d0, 1
# CHECK: encoding: [0x01,0x10,0x01,0x16]
.code32
addsc.a %a1, %a1, %d0, 1

# CHECK-INST: addsc.a %a1, %a1, %d0, 2
# CHECK: encoding: [0x01,0x10,0x02,0x16]
.code32
addsc.a %a1, %a1, %d0, 2

# CHECK-INST: addsc.a %a1, %a1, %d0, 3
# CHECK: encoding: [0x01,0x10,0x03,0x16]
.code32
addsc.a %a1, %a1, %d0, 3

# CHECK-INST: addsc.a %a1, %a1, %d1, 0
# CHECK: encoding: [0x01,0x11,0x00,0x16]
.code32
addsc.a %a1, %a1, %d1, 0

# CHECK-INST: addsc.a %a1, %a1, %d1, 1
# CHECK: encoding: [0x01,0x11,0x01,0x16]
.code32
addsc.a %a1, %a1, %d1, 1

# CHECK-INST: addsc.a %a1, %a1, %d1, 2
# CHECK: encoding: [0x01,0x11,0x02,0x16]
.code32
addsc.a %a1, %a1, %d1, 2

# CHECK-INST: addsc.a %a1, %a1, %d1, 3
# CHECK: encoding: [0x01,0x11,0x03,0x16]
.code32
addsc.a %a1, %a1, %d1, 3

# CHECK-INST: addsc.a %a1, %a1, %d14, 0
# CHECK: encoding: [0x01,0x1e,0x00,0x16]
.code32
addsc.a %a1, %a1, %d14, 0

# CHECK-INST: addsc.a %a1, %a1, %d14, 1
# CHECK: encoding: [0x01,0x1e,0x01,0x16]
.code32
addsc.a %a1, %a1, %d14, 1

# CHECK-INST: addsc.a %a1, %a1, %d14, 2
# CHECK: encoding: [0x01,0x1e,0x02,0x16]
.code32
addsc.a %a1, %a1, %d14, 2

# CHECK-INST: addsc.a %a1, %a1, %d14, 3
# CHECK: encoding: [0x01,0x1e,0x03,0x16]
.code32
addsc.a %a1, %a1, %d14, 3

# CHECK-INST: addsc.a %a1, %a14, %d0, 0
# CHECK: encoding: [0x01,0xe0,0x00,0x16]
.code32
addsc.a %a1, %a14, %d0, 0

# CHECK-INST: addsc.a %a1, %a14, %d0, 1
# CHECK: encoding: [0x01,0xe0,0x01,0x16]
.code32
addsc.a %a1, %a14, %d0, 1

# CHECK-INST: addsc.a %a1, %a14, %d0, 2
# CHECK: encoding: [0x01,0xe0,0x02,0x16]
.code32
addsc.a %a1, %a14, %d0, 2

# CHECK-INST: addsc.a %a1, %a14, %d0, 3
# CHECK: encoding: [0x01,0xe0,0x03,0x16]
.code32
addsc.a %a1, %a14, %d0, 3

# CHECK-INST: addsc.a %a1, %a14, %d1, 0
# CHECK: encoding: [0x01,0xe1,0x00,0x16]
.code32
addsc.a %a1, %a14, %d1, 0

# CHECK-INST: addsc.a %a1, %a14, %d1, 1
# CHECK: encoding: [0x01,0xe1,0x01,0x16]
.code32
addsc.a %a1, %a14, %d1, 1

# CHECK-INST: addsc.a %a1, %a14, %d1, 2
# CHECK: encoding: [0x01,0xe1,0x02,0x16]
.code32
addsc.a %a1, %a14, %d1, 2

# CHECK-INST: addsc.a %a1, %a14, %d1, 3
# CHECK: encoding: [0x01,0xe1,0x03,0x16]
.code32
addsc.a %a1, %a14, %d1, 3

# CHECK-INST: addsc.a %a1, %a14, %d14, 0
# CHECK: encoding: [0x01,0xee,0x00,0x16]
.code32
addsc.a %a1, %a14, %d14, 0

# CHECK-INST: addsc.a %a1, %a14, %d14, 1
# CHECK: encoding: [0x01,0xee,0x01,0x16]
.code32
addsc.a %a1, %a14, %d14, 1

# CHECK-INST: addsc.a %a1, %a14, %d14, 2
# CHECK: encoding: [0x01,0xee,0x02,0x16]
.code32
addsc.a %a1, %a14, %d14, 2

# CHECK-INST: addsc.a %a1, %a14, %d14, 3
# CHECK: encoding: [0x01,0xee,0x03,0x16]
.code32
addsc.a %a1, %a14, %d14, 3

# CHECK-INST: addsc.a %a1, %a15, %d0, 0
# CHECK: encoding: [0x01,0xf0,0x00,0x16]
.code32
addsc.a %a1, %a15, %d0, 0

# CHECK-INST: addsc.a %a1, %a15, %d0, 1
# CHECK: encoding: [0x01,0xf0,0x01,0x16]
.code32
addsc.a %a1, %a15, %d0, 1

# CHECK-INST: addsc.a %a1, %a15, %d0, 2
# CHECK: encoding: [0x01,0xf0,0x02,0x16]
.code32
addsc.a %a1, %a15, %d0, 2

# CHECK-INST: addsc.a %a1, %a15, %d0, 3
# CHECK: encoding: [0x01,0xf0,0x03,0x16]
.code32
addsc.a %a1, %a15, %d0, 3

# CHECK-INST: addsc.a %a1, %a15, %d1, 0
# CHECK: encoding: [0x01,0xf1,0x00,0x16]
.code32
addsc.a %a1, %a15, %d1, 0

# CHECK-INST: addsc.a %a1, %a15, %d1, 1
# CHECK: encoding: [0x01,0xf1,0x01,0x16]
.code32
addsc.a %a1, %a15, %d1, 1

# CHECK-INST: addsc.a %a1, %a15, %d1, 2
# CHECK: encoding: [0x01,0xf1,0x02,0x16]
.code32
addsc.a %a1, %a15, %d1, 2

# CHECK-INST: addsc.a %a1, %a15, %d1, 3
# CHECK: encoding: [0x01,0xf1,0x03,0x16]
.code32
addsc.a %a1, %a15, %d1, 3

# CHECK-INST: addsc.a %a1, %a15, %d14, 0
# CHECK: encoding: [0x01,0xfe,0x00,0x16]
.code32
addsc.a %a1, %a15, %d14, 0

# CHECK-INST: addsc.a %a1, %a15, %d14, 1
# CHECK: encoding: [0x01,0xfe,0x01,0x16]
.code32
addsc.a %a1, %a15, %d14, 1

# CHECK-INST: addsc.a %a1, %a15, %d14, 2
# CHECK: encoding: [0x01,0xfe,0x02,0x16]
.code32
addsc.a %a1, %a15, %d14, 2

# CHECK-INST: addsc.a %a1, %a15, %d14, 3
# CHECK: encoding: [0x01,0xfe,0x03,0x16]
.code32
addsc.a %a1, %a15, %d14, 3

# CHECK-INST: addsc.a %a14, %a0, %d0, 0
# CHECK: encoding: [0x01,0x00,0x00,0xe6]
.code32
addsc.a %a14, %a0, %d0, 0

# CHECK-INST: addsc.a %a14, %a0, %d0, 1
# CHECK: encoding: [0x01,0x00,0x01,0xe6]
.code32
addsc.a %a14, %a0, %d0, 1

# CHECK-INST: addsc.a %a14, %a0, %d0, 2
# CHECK: encoding: [0x01,0x00,0x02,0xe6]
.code32
addsc.a %a14, %a0, %d0, 2

# CHECK-INST: addsc.a %a14, %a0, %d0, 3
# CHECK: encoding: [0x01,0x00,0x03,0xe6]
.code32
addsc.a %a14, %a0, %d0, 3

# CHECK-INST: addsc.a %a14, %a0, %d1, 0
# CHECK: encoding: [0x01,0x01,0x00,0xe6]
.code32
addsc.a %a14, %a0, %d1, 0

# CHECK-INST: addsc.a %a14, %a0, %d1, 1
# CHECK: encoding: [0x01,0x01,0x01,0xe6]
.code32
addsc.a %a14, %a0, %d1, 1

# CHECK-INST: addsc.a %a14, %a0, %d1, 2
# CHECK: encoding: [0x01,0x01,0x02,0xe6]
.code32
addsc.a %a14, %a0, %d1, 2

# CHECK-INST: addsc.a %a14, %a0, %d1, 3
# CHECK: encoding: [0x01,0x01,0x03,0xe6]
.code32
addsc.a %a14, %a0, %d1, 3

# CHECK-INST: addsc.a %a14, %a0, %d14, 0
# CHECK: encoding: [0x01,0x0e,0x00,0xe6]
.code32
addsc.a %a14, %a0, %d14, 0

# CHECK-INST: addsc.a %a14, %a0, %d14, 1
# CHECK: encoding: [0x01,0x0e,0x01,0xe6]
.code32
addsc.a %a14, %a0, %d14, 1

# CHECK-INST: addsc.a %a14, %a0, %d14, 2
# CHECK: encoding: [0x01,0x0e,0x02,0xe6]
.code32
addsc.a %a14, %a0, %d14, 2

# CHECK-INST: addsc.a %a14, %a0, %d14, 3
# CHECK: encoding: [0x01,0x0e,0x03,0xe6]
.code32
addsc.a %a14, %a0, %d14, 3

# CHECK-INST: addsc.a %a14, %a1, %d0, 0
# CHECK: encoding: [0x01,0x10,0x00,0xe6]
.code32
addsc.a %a14, %a1, %d0, 0

# CHECK-INST: addsc.a %a14, %a1, %d0, 1
# CHECK: encoding: [0x01,0x10,0x01,0xe6]
.code32
addsc.a %a14, %a1, %d0, 1

# CHECK-INST: addsc.a %a14, %a1, %d0, 2
# CHECK: encoding: [0x01,0x10,0x02,0xe6]
.code32
addsc.a %a14, %a1, %d0, 2

# CHECK-INST: addsc.a %a14, %a1, %d0, 3
# CHECK: encoding: [0x01,0x10,0x03,0xe6]
.code32
addsc.a %a14, %a1, %d0, 3

# CHECK-INST: addsc.a %a14, %a1, %d1, 0
# CHECK: encoding: [0x01,0x11,0x00,0xe6]
.code32
addsc.a %a14, %a1, %d1, 0

# CHECK-INST: addsc.a %a14, %a1, %d1, 1
# CHECK: encoding: [0x01,0x11,0x01,0xe6]
.code32
addsc.a %a14, %a1, %d1, 1

# CHECK-INST: addsc.a %a14, %a1, %d1, 2
# CHECK: encoding: [0x01,0x11,0x02,0xe6]
.code32
addsc.a %a14, %a1, %d1, 2

# CHECK-INST: addsc.a %a14, %a1, %d1, 3
# CHECK: encoding: [0x01,0x11,0x03,0xe6]
.code32
addsc.a %a14, %a1, %d1, 3

# CHECK-INST: addsc.a %a14, %a1, %d14, 0
# CHECK: encoding: [0x01,0x1e,0x00,0xe6]
.code32
addsc.a %a14, %a1, %d14, 0

# CHECK-INST: addsc.a %a14, %a1, %d14, 1
# CHECK: encoding: [0x01,0x1e,0x01,0xe6]
.code32
addsc.a %a14, %a1, %d14, 1

# CHECK-INST: addsc.a %a14, %a1, %d14, 2
# CHECK: encoding: [0x01,0x1e,0x02,0xe6]
.code32
addsc.a %a14, %a1, %d14, 2

# CHECK-INST: addsc.a %a14, %a1, %d14, 3
# CHECK: encoding: [0x01,0x1e,0x03,0xe6]
.code32
addsc.a %a14, %a1, %d14, 3

# CHECK-INST: addsc.a %a14, %a14, %d0, 0
# CHECK: encoding: [0x01,0xe0,0x00,0xe6]
.code32
addsc.a %a14, %a14, %d0, 0

# CHECK-INST: addsc.a %a14, %a14, %d0, 1
# CHECK: encoding: [0x01,0xe0,0x01,0xe6]
.code32
addsc.a %a14, %a14, %d0, 1

# CHECK-INST: addsc.a %a14, %a14, %d0, 2
# CHECK: encoding: [0x01,0xe0,0x02,0xe6]
.code32
addsc.a %a14, %a14, %d0, 2

# CHECK-INST: addsc.a %a14, %a14, %d0, 3
# CHECK: encoding: [0x01,0xe0,0x03,0xe6]
.code32
addsc.a %a14, %a14, %d0, 3

# CHECK-INST: addsc.a %a14, %a14, %d1, 0
# CHECK: encoding: [0x01,0xe1,0x00,0xe6]
.code32
addsc.a %a14, %a14, %d1, 0

# CHECK-INST: addsc.a %a14, %a14, %d1, 1
# CHECK: encoding: [0x01,0xe1,0x01,0xe6]
.code32
addsc.a %a14, %a14, %d1, 1

# CHECK-INST: addsc.a %a14, %a14, %d1, 2
# CHECK: encoding: [0x01,0xe1,0x02,0xe6]
.code32
addsc.a %a14, %a14, %d1, 2

# CHECK-INST: addsc.a %a14, %a14, %d1, 3
# CHECK: encoding: [0x01,0xe1,0x03,0xe6]
.code32
addsc.a %a14, %a14, %d1, 3

# CHECK-INST: addsc.a %a14, %a14, %d14, 0
# CHECK: encoding: [0x01,0xee,0x00,0xe6]
.code32
addsc.a %a14, %a14, %d14, 0

# CHECK-INST: addsc.a %a14, %a14, %d14, 1
# CHECK: encoding: [0x01,0xee,0x01,0xe6]
.code32
addsc.a %a14, %a14, %d14, 1

# CHECK-INST: addsc.a %a14, %a14, %d14, 2
# CHECK: encoding: [0x01,0xee,0x02,0xe6]
.code32
addsc.a %a14, %a14, %d14, 2

# CHECK-INST: addsc.a %a14, %a14, %d14, 3
# CHECK: encoding: [0x01,0xee,0x03,0xe6]
.code32
addsc.a %a14, %a14, %d14, 3

# CHECK-INST: addsc.a %a14, %a15, %d0, 0
# CHECK: encoding: [0x01,0xf0,0x00,0xe6]
.code32
addsc.a %a14, %a15, %d0, 0

# CHECK-INST: addsc.a %a14, %a15, %d0, 1
# CHECK: encoding: [0x01,0xf0,0x01,0xe6]
.code32
addsc.a %a14, %a15, %d0, 1

# CHECK-INST: addsc.a %a14, %a15, %d0, 2
# CHECK: encoding: [0x01,0xf0,0x02,0xe6]
.code32
addsc.a %a14, %a15, %d0, 2

# CHECK-INST: addsc.a %a14, %a15, %d0, 3
# CHECK: encoding: [0x01,0xf0,0x03,0xe6]
.code32
addsc.a %a14, %a15, %d0, 3

# CHECK-INST: addsc.a %a14, %a15, %d1, 0
# CHECK: encoding: [0x01,0xf1,0x00,0xe6]
.code32
addsc.a %a14, %a15, %d1, 0

# CHECK-INST: addsc.a %a14, %a15, %d1, 1
# CHECK: encoding: [0x01,0xf1,0x01,0xe6]
.code32
addsc.a %a14, %a15, %d1, 1

# CHECK-INST: addsc.a %a14, %a15, %d1, 2
# CHECK: encoding: [0x01,0xf1,0x02,0xe6]
.code32
addsc.a %a14, %a15, %d1, 2

# CHECK-INST: addsc.a %a14, %a15, %d1, 3
# CHECK: encoding: [0x01,0xf1,0x03,0xe6]
.code32
addsc.a %a14, %a15, %d1, 3

# CHECK-INST: addsc.a %a14, %a15, %d14, 0
# CHECK: encoding: [0x01,0xfe,0x00,0xe6]
.code32
addsc.a %a14, %a15, %d14, 0

# CHECK-INST: addsc.a %a14, %a15, %d14, 1
# CHECK: encoding: [0x01,0xfe,0x01,0xe6]
.code32
addsc.a %a14, %a15, %d14, 1

# CHECK-INST: addsc.a %a14, %a15, %d14, 2
# CHECK: encoding: [0x01,0xfe,0x02,0xe6]
.code32
addsc.a %a14, %a15, %d14, 2

# CHECK-INST: addsc.a %a14, %a15, %d14, 3
# CHECK: encoding: [0x01,0xfe,0x03,0xe6]
.code32
addsc.a %a14, %a15, %d14, 3

# CHECK-INST: addsc.a %a15, %a0, %d0, 0
# CHECK: encoding: [0x01,0x00,0x00,0xf6]
.code32
addsc.a %a15, %a0, %d0, 0

# CHECK-INST: addsc.a %a15, %a0, %d0, 1
# CHECK: encoding: [0x01,0x00,0x01,0xf6]
.code32
addsc.a %a15, %a0, %d0, 1

# CHECK-INST: addsc.a %a15, %a0, %d0, 2
# CHECK: encoding: [0x01,0x00,0x02,0xf6]
.code32
addsc.a %a15, %a0, %d0, 2

# CHECK-INST: addsc.a %a15, %a0, %d0, 3
# CHECK: encoding: [0x01,0x00,0x03,0xf6]
.code32
addsc.a %a15, %a0, %d0, 3

# CHECK-INST: addsc.a %a15, %a0, %d1, 0
# CHECK: encoding: [0x01,0x01,0x00,0xf6]
.code32
addsc.a %a15, %a0, %d1, 0

# CHECK-INST: addsc.a %a15, %a0, %d1, 1
# CHECK: encoding: [0x01,0x01,0x01,0xf6]
.code32
addsc.a %a15, %a0, %d1, 1

# CHECK-INST: addsc.a %a15, %a0, %d1, 2
# CHECK: encoding: [0x01,0x01,0x02,0xf6]
.code32
addsc.a %a15, %a0, %d1, 2

# CHECK-INST: addsc.a %a15, %a0, %d1, 3
# CHECK: encoding: [0x01,0x01,0x03,0xf6]
.code32
addsc.a %a15, %a0, %d1, 3

# CHECK-INST: addsc.a %a15, %a0, %d14, 0
# CHECK: encoding: [0x01,0x0e,0x00,0xf6]
.code32
addsc.a %a15, %a0, %d14, 0

# CHECK-INST: addsc.a %a15, %a0, %d14, 1
# CHECK: encoding: [0x01,0x0e,0x01,0xf6]
.code32
addsc.a %a15, %a0, %d14, 1

# CHECK-INST: addsc.a %a15, %a0, %d14, 2
# CHECK: encoding: [0x01,0x0e,0x02,0xf6]
.code32
addsc.a %a15, %a0, %d14, 2

# CHECK-INST: addsc.a %a15, %a0, %d14, 3
# CHECK: encoding: [0x01,0x0e,0x03,0xf6]
.code32
addsc.a %a15, %a0, %d14, 3

# CHECK-INST: addsc.a %a15, %a1, %d0, 0
# CHECK: encoding: [0x01,0x10,0x00,0xf6]
.code32
addsc.a %a15, %a1, %d0, 0

# CHECK-INST: addsc.a %a15, %a1, %d0, 1
# CHECK: encoding: [0x01,0x10,0x01,0xf6]
.code32
addsc.a %a15, %a1, %d0, 1

# CHECK-INST: addsc.a %a15, %a1, %d0, 2
# CHECK: encoding: [0x01,0x10,0x02,0xf6]
.code32
addsc.a %a15, %a1, %d0, 2

# CHECK-INST: addsc.a %a15, %a1, %d0, 3
# CHECK: encoding: [0x01,0x10,0x03,0xf6]
.code32
addsc.a %a15, %a1, %d0, 3

# CHECK-INST: addsc.a %a15, %a1, %d1, 0
# CHECK: encoding: [0x01,0x11,0x00,0xf6]
.code32
addsc.a %a15, %a1, %d1, 0

# CHECK-INST: addsc.a %a15, %a1, %d1, 1
# CHECK: encoding: [0x01,0x11,0x01,0xf6]
.code32
addsc.a %a15, %a1, %d1, 1

# CHECK-INST: addsc.a %a15, %a1, %d1, 2
# CHECK: encoding: [0x01,0x11,0x02,0xf6]
.code32
addsc.a %a15, %a1, %d1, 2

# CHECK-INST: addsc.a %a15, %a1, %d1, 3
# CHECK: encoding: [0x01,0x11,0x03,0xf6]
.code32
addsc.a %a15, %a1, %d1, 3

# CHECK-INST: addsc.a %a15, %a1, %d14, 0
# CHECK: encoding: [0x01,0x1e,0x00,0xf6]
.code32
addsc.a %a15, %a1, %d14, 0

# CHECK-INST: addsc.a %a15, %a1, %d14, 1
# CHECK: encoding: [0x01,0x1e,0x01,0xf6]
.code32
addsc.a %a15, %a1, %d14, 1

# CHECK-INST: addsc.a %a15, %a1, %d14, 2
# CHECK: encoding: [0x01,0x1e,0x02,0xf6]
.code32
addsc.a %a15, %a1, %d14, 2

# CHECK-INST: addsc.a %a15, %a1, %d14, 3
# CHECK: encoding: [0x01,0x1e,0x03,0xf6]
.code32
addsc.a %a15, %a1, %d14, 3

# CHECK-INST: addsc.a %a15, %a14, %d0, 0
# CHECK: encoding: [0x01,0xe0,0x00,0xf6]
.code32
addsc.a %a15, %a14, %d0, 0

# CHECK-INST: addsc.a %a15, %a14, %d0, 1
# CHECK: encoding: [0x01,0xe0,0x01,0xf6]
.code32
addsc.a %a15, %a14, %d0, 1

# CHECK-INST: addsc.a %a15, %a14, %d0, 2
# CHECK: encoding: [0x01,0xe0,0x02,0xf6]
.code32
addsc.a %a15, %a14, %d0, 2

# CHECK-INST: addsc.a %a15, %a14, %d0, 3
# CHECK: encoding: [0x01,0xe0,0x03,0xf6]
.code32
addsc.a %a15, %a14, %d0, 3

# CHECK-INST: addsc.a %a15, %a14, %d1, 0
# CHECK: encoding: [0x01,0xe1,0x00,0xf6]
.code32
addsc.a %a15, %a14, %d1, 0

# CHECK-INST: addsc.a %a15, %a14, %d1, 1
# CHECK: encoding: [0x01,0xe1,0x01,0xf6]
.code32
addsc.a %a15, %a14, %d1, 1

# CHECK-INST: addsc.a %a15, %a14, %d1, 2
# CHECK: encoding: [0x01,0xe1,0x02,0xf6]
.code32
addsc.a %a15, %a14, %d1, 2

# CHECK-INST: addsc.a %a15, %a14, %d1, 3
# CHECK: encoding: [0x01,0xe1,0x03,0xf6]
.code32
addsc.a %a15, %a14, %d1, 3

# CHECK-INST: addsc.a %a15, %a14, %d14, 0
# CHECK: encoding: [0x01,0xee,0x00,0xf6]
.code32
addsc.a %a15, %a14, %d14, 0

# CHECK-INST: addsc.a %a15, %a14, %d14, 1
# CHECK: encoding: [0x01,0xee,0x01,0xf6]
.code32
addsc.a %a15, %a14, %d14, 1

# CHECK-INST: addsc.a %a15, %a14, %d14, 2
# CHECK: encoding: [0x01,0xee,0x02,0xf6]
.code32
addsc.a %a15, %a14, %d14, 2

# CHECK-INST: addsc.a %a15, %a14, %d14, 3
# CHECK: encoding: [0x01,0xee,0x03,0xf6]
.code32
addsc.a %a15, %a14, %d14, 3

# CHECK-INST: addsc.a %a15, %a15, %d0, 0
# CHECK: encoding: [0x01,0xf0,0x00,0xf6]
.code32
addsc.a %a15, %a15, %d0, 0

# CHECK-INST: addsc.a %a15, %a15, %d0, 1
# CHECK: encoding: [0x01,0xf0,0x01,0xf6]
.code32
addsc.a %a15, %a15, %d0, 1

# CHECK-INST: addsc.a %a15, %a15, %d0, 2
# CHECK: encoding: [0x01,0xf0,0x02,0xf6]
.code32
addsc.a %a15, %a15, %d0, 2

# CHECK-INST: addsc.a %a15, %a15, %d0, 3
# CHECK: encoding: [0x01,0xf0,0x03,0xf6]
.code32
addsc.a %a15, %a15, %d0, 3

# CHECK-INST: addsc.a %a15, %a15, %d1, 0
# CHECK: encoding: [0x01,0xf1,0x00,0xf6]
.code32
addsc.a %a15, %a15, %d1, 0

# CHECK-INST: addsc.a %a15, %a15, %d1, 1
# CHECK: encoding: [0x01,0xf1,0x01,0xf6]
.code32
addsc.a %a15, %a15, %d1, 1

# CHECK-INST: addsc.a %a15, %a15, %d1, 2
# CHECK: encoding: [0x01,0xf1,0x02,0xf6]
.code32
addsc.a %a15, %a15, %d1, 2

# CHECK-INST: addsc.a %a15, %a15, %d1, 3
# CHECK: encoding: [0x01,0xf1,0x03,0xf6]
.code32
addsc.a %a15, %a15, %d1, 3

# CHECK-INST: addsc.a %a15, %a15, %d14, 0
# CHECK: encoding: [0x01,0xfe,0x00,0xf6]
.code32
addsc.a %a15, %a15, %d14, 0

# CHECK-INST: addsc.a %a15, %a15, %d14, 1
# CHECK: encoding: [0x01,0xfe,0x01,0xf6]
.code32
addsc.a %a15, %a15, %d14, 1

# CHECK-INST: addsc.a %a15, %a15, %d14, 2
# CHECK: encoding: [0x01,0xfe,0x02,0xf6]
.code32
addsc.a %a15, %a15, %d14, 2

# CHECK-INST: addsc.a %a15, %a15, %d14, 3
# CHECK: encoding: [0x01,0xfe,0x03,0xf6]
.code32
addsc.a %a15, %a15, %d14, 3

# CHECK-INST: addsc.at %a0, %a0, %d0
# CHECK: encoding: [0x01,0x00,0x20,0x06]
.code32
addsc.at %a0, %a0, %d0

# CHECK-INST: addsc.at %a0, %a0, %d1
# CHECK: encoding: [0x01,0x01,0x20,0x06]
.code32
addsc.at %a0, %a0, %d1

# CHECK-INST: addsc.at %a0, %a0, %d14
# CHECK: encoding: [0x01,0x0e,0x20,0x06]
.code32
addsc.at %a0, %a0, %d14

# CHECK-INST: addsc.at %a0, %a0, %d15
# CHECK: encoding: [0x01,0x0f,0x20,0x06]
.code32
addsc.at %a0, %a0, %d15

# CHECK-INST: addsc.at %a0, %a1, %d0
# CHECK: encoding: [0x01,0x10,0x20,0x06]
.code32
addsc.at %a0, %a1, %d0

# CHECK-INST: addsc.at %a0, %a1, %d1
# CHECK: encoding: [0x01,0x11,0x20,0x06]
.code32
addsc.at %a0, %a1, %d1

# CHECK-INST: addsc.at %a0, %a1, %d14
# CHECK: encoding: [0x01,0x1e,0x20,0x06]
.code32
addsc.at %a0, %a1, %d14

# CHECK-INST: addsc.at %a0, %a1, %d15
# CHECK: encoding: [0x01,0x1f,0x20,0x06]
.code32
addsc.at %a0, %a1, %d15

# CHECK-INST: addsc.at %a0, %a14, %d0
# CHECK: encoding: [0x01,0xe0,0x20,0x06]
.code32
addsc.at %a0, %a14, %d0

# CHECK-INST: addsc.at %a0, %a14, %d1
# CHECK: encoding: [0x01,0xe1,0x20,0x06]
.code32
addsc.at %a0, %a14, %d1

# CHECK-INST: addsc.at %a0, %a14, %d14
# CHECK: encoding: [0x01,0xee,0x20,0x06]
.code32
addsc.at %a0, %a14, %d14

# CHECK-INST: addsc.at %a0, %a14, %d15
# CHECK: encoding: [0x01,0xef,0x20,0x06]
.code32
addsc.at %a0, %a14, %d15

# CHECK-INST: addsc.at %a0, %a15, %d0
# CHECK: encoding: [0x01,0xf0,0x20,0x06]
.code32
addsc.at %a0, %a15, %d0

# CHECK-INST: addsc.at %a0, %a15, %d1
# CHECK: encoding: [0x01,0xf1,0x20,0x06]
.code32
addsc.at %a0, %a15, %d1

# CHECK-INST: addsc.at %a0, %a15, %d14
# CHECK: encoding: [0x01,0xfe,0x20,0x06]
.code32
addsc.at %a0, %a15, %d14

# CHECK-INST: addsc.at %a0, %a15, %d15
# CHECK: encoding: [0x01,0xff,0x20,0x06]
.code32
addsc.at %a0, %a15, %d15

# CHECK-INST: addsc.at %a1, %a0, %d0
# CHECK: encoding: [0x01,0x00,0x20,0x16]
.code32
addsc.at %a1, %a0, %d0

# CHECK-INST: addsc.at %a1, %a0, %d1
# CHECK: encoding: [0x01,0x01,0x20,0x16]
.code32
addsc.at %a1, %a0, %d1

# CHECK-INST: addsc.at %a1, %a0, %d14
# CHECK: encoding: [0x01,0x0e,0x20,0x16]
.code32
addsc.at %a1, %a0, %d14

# CHECK-INST: addsc.at %a1, %a0, %d15
# CHECK: encoding: [0x01,0x0f,0x20,0x16]
.code32
addsc.at %a1, %a0, %d15

# CHECK-INST: addsc.at %a1, %a1, %d0
# CHECK: encoding: [0x01,0x10,0x20,0x16]
.code32
addsc.at %a1, %a1, %d0

# CHECK-INST: addsc.at %a1, %a1, %d1
# CHECK: encoding: [0x01,0x11,0x20,0x16]
.code32
addsc.at %a1, %a1, %d1

# CHECK-INST: addsc.at %a1, %a1, %d14
# CHECK: encoding: [0x01,0x1e,0x20,0x16]
.code32
addsc.at %a1, %a1, %d14

# CHECK-INST: addsc.at %a1, %a1, %d15
# CHECK: encoding: [0x01,0x1f,0x20,0x16]
.code32
addsc.at %a1, %a1, %d15

# CHECK-INST: addsc.at %a1, %a14, %d0
# CHECK: encoding: [0x01,0xe0,0x20,0x16]
.code32
addsc.at %a1, %a14, %d0

# CHECK-INST: addsc.at %a1, %a14, %d1
# CHECK: encoding: [0x01,0xe1,0x20,0x16]
.code32
addsc.at %a1, %a14, %d1

# CHECK-INST: addsc.at %a1, %a14, %d14
# CHECK: encoding: [0x01,0xee,0x20,0x16]
.code32
addsc.at %a1, %a14, %d14

# CHECK-INST: addsc.at %a1, %a14, %d15
# CHECK: encoding: [0x01,0xef,0x20,0x16]
.code32
addsc.at %a1, %a14, %d15

# CHECK-INST: addsc.at %a1, %a15, %d0
# CHECK: encoding: [0x01,0xf0,0x20,0x16]
.code32
addsc.at %a1, %a15, %d0

# CHECK-INST: addsc.at %a1, %a15, %d1
# CHECK: encoding: [0x01,0xf1,0x20,0x16]
.code32
addsc.at %a1, %a15, %d1

# CHECK-INST: addsc.at %a1, %a15, %d14
# CHECK: encoding: [0x01,0xfe,0x20,0x16]
.code32
addsc.at %a1, %a15, %d14

# CHECK-INST: addsc.at %a1, %a15, %d15
# CHECK: encoding: [0x01,0xff,0x20,0x16]
.code32
addsc.at %a1, %a15, %d15

# CHECK-INST: addsc.at %a14, %a0, %d0
# CHECK: encoding: [0x01,0x00,0x20,0xe6]
.code32
addsc.at %a14, %a0, %d0

# CHECK-INST: addsc.at %a14, %a0, %d1
# CHECK: encoding: [0x01,0x01,0x20,0xe6]
.code32
addsc.at %a14, %a0, %d1

# CHECK-INST: addsc.at %a14, %a0, %d14
# CHECK: encoding: [0x01,0x0e,0x20,0xe6]
.code32
addsc.at %a14, %a0, %d14

# CHECK-INST: addsc.at %a14, %a0, %d15
# CHECK: encoding: [0x01,0x0f,0x20,0xe6]
.code32
addsc.at %a14, %a0, %d15

# CHECK-INST: addsc.at %a14, %a1, %d0
# CHECK: encoding: [0x01,0x10,0x20,0xe6]
.code32
addsc.at %a14, %a1, %d0

# CHECK-INST: addsc.at %a14, %a1, %d1
# CHECK: encoding: [0x01,0x11,0x20,0xe6]
.code32
addsc.at %a14, %a1, %d1

# CHECK-INST: addsc.at %a14, %a1, %d14
# CHECK: encoding: [0x01,0x1e,0x20,0xe6]
.code32
addsc.at %a14, %a1, %d14

# CHECK-INST: addsc.at %a14, %a1, %d15
# CHECK: encoding: [0x01,0x1f,0x20,0xe6]
.code32
addsc.at %a14, %a1, %d15

# CHECK-INST: addsc.at %a14, %a14, %d0
# CHECK: encoding: [0x01,0xe0,0x20,0xe6]
.code32
addsc.at %a14, %a14, %d0

# CHECK-INST: addsc.at %a14, %a14, %d1
# CHECK: encoding: [0x01,0xe1,0x20,0xe6]
.code32
addsc.at %a14, %a14, %d1

# CHECK-INST: addsc.at %a14, %a14, %d14
# CHECK: encoding: [0x01,0xee,0x20,0xe6]
.code32
addsc.at %a14, %a14, %d14

# CHECK-INST: addsc.at %a14, %a14, %d15
# CHECK: encoding: [0x01,0xef,0x20,0xe6]
.code32
addsc.at %a14, %a14, %d15

# CHECK-INST: addsc.at %a14, %a15, %d0
# CHECK: encoding: [0x01,0xf0,0x20,0xe6]
.code32
addsc.at %a14, %a15, %d0

# CHECK-INST: addsc.at %a14, %a15, %d1
# CHECK: encoding: [0x01,0xf1,0x20,0xe6]
.code32
addsc.at %a14, %a15, %d1

# CHECK-INST: addsc.at %a14, %a15, %d14
# CHECK: encoding: [0x01,0xfe,0x20,0xe6]
.code32
addsc.at %a14, %a15, %d14

# CHECK-INST: addsc.at %a14, %a15, %d15
# CHECK: encoding: [0x01,0xff,0x20,0xe6]
.code32
addsc.at %a14, %a15, %d15

# CHECK-INST: addsc.at %a15, %a0, %d0
# CHECK: encoding: [0x01,0x00,0x20,0xf6]
.code32
addsc.at %a15, %a0, %d0

# CHECK-INST: addsc.at %a15, %a0, %d1
# CHECK: encoding: [0x01,0x01,0x20,0xf6]
.code32
addsc.at %a15, %a0, %d1

# CHECK-INST: addsc.at %a15, %a0, %d14
# CHECK: encoding: [0x01,0x0e,0x20,0xf6]
.code32
addsc.at %a15, %a0, %d14

# CHECK-INST: addsc.at %a15, %a0, %d15
# CHECK: encoding: [0x01,0x0f,0x20,0xf6]
.code32
addsc.at %a15, %a0, %d15

# CHECK-INST: addsc.at %a15, %a1, %d0
# CHECK: encoding: [0x01,0x10,0x20,0xf6]
.code32
addsc.at %a15, %a1, %d0

# CHECK-INST: addsc.at %a15, %a1, %d1
# CHECK: encoding: [0x01,0x11,0x20,0xf6]
.code32
addsc.at %a15, %a1, %d1

# CHECK-INST: addsc.at %a15, %a1, %d14
# CHECK: encoding: [0x01,0x1e,0x20,0xf6]
.code32
addsc.at %a15, %a1, %d14

# CHECK-INST: addsc.at %a15, %a1, %d15
# CHECK: encoding: [0x01,0x1f,0x20,0xf6]
.code32
addsc.at %a15, %a1, %d15

# CHECK-INST: addsc.at %a15, %a14, %d0
# CHECK: encoding: [0x01,0xe0,0x20,0xf6]
.code32
addsc.at %a15, %a14, %d0

# CHECK-INST: addsc.at %a15, %a14, %d1
# CHECK: encoding: [0x01,0xe1,0x20,0xf6]
.code32
addsc.at %a15, %a14, %d1

# CHECK-INST: addsc.at %a15, %a14, %d14
# CHECK: encoding: [0x01,0xee,0x20,0xf6]
.code32
addsc.at %a15, %a14, %d14

# CHECK-INST: addsc.at %a15, %a14, %d15
# CHECK: encoding: [0x01,0xef,0x20,0xf6]
.code32
addsc.at %a15, %a14, %d15

# CHECK-INST: addsc.at %a15, %a15, %d0
# CHECK: encoding: [0x01,0xf0,0x20,0xf6]
.code32
addsc.at %a15, %a15, %d0

# CHECK-INST: addsc.at %a15, %a15, %d1
# CHECK: encoding: [0x01,0xf1,0x20,0xf6]
.code32
addsc.at %a15, %a15, %d1

# CHECK-INST: addsc.at %a15, %a15, %d14
# CHECK: encoding: [0x01,0xfe,0x20,0xf6]
.code32
addsc.at %a15, %a15, %d14

# CHECK-INST: addsc.at %a15, %a15, %d15
# CHECK: encoding: [0x01,0xff,0x20,0xf6]
.code32
addsc.at %a15, %a15, %d15

# CHECK-INST: lea %a0, 0
# CHECK: encoding: [0xc5,0x00,0x00,0x00]
.code32
lea %a0, 0

# CHECK-INST: lea %a0, 1
# CHECK: encoding: [0xc5,0x00,0x01,0x00]
.code32
lea %a0, 1

# CHECK-INST: lea %a0, 2
# CHECK: encoding: [0xc5,0x00,0x02,0x00]
.code32
lea %a0, 2

# CHECK-INST: lea %a0, 4
# CHECK: encoding: [0xc5,0x00,0x04,0x00]
.code32
lea %a0, 4

# CHECK-INST: lea %a0, 8
# CHECK: encoding: [0xc5,0x00,0x08,0x00]
.code32
lea %a0, 8

# CHECK-INST: lea %a0, 16
# CHECK: encoding: [0xc5,0x00,0x10,0x00]
.code32
lea %a0, 16

# CHECK-INST: lea %a0, 32
# CHECK: encoding: [0xc5,0x00,0x20,0x00]
.code32
lea %a0, 32

# CHECK-INST: lea %a0, 64
# CHECK: encoding: [0xc5,0x00,0x00,0x10]
.code32
lea %a0, 64

# CHECK-INST: lea %a0, 128
# CHECK: encoding: [0xc5,0x00,0x00,0x20]
.code32
lea %a0, 128

# CHECK-INST: lea %a0, 256
# CHECK: encoding: [0xc5,0x00,0x00,0x40]
.code32
lea %a0, 256

# CHECK-INST: lea %a0, 512
# CHECK: encoding: [0xc5,0x00,0x00,0x80]
.code32
lea %a0, 512

# CHECK-INST: lea %a0, 1024
# CHECK: encoding: [0xc5,0x00,0x40,0x00]
.code32
lea %a0, 1024

# CHECK-INST: lea %a0, 2048
# CHECK: encoding: [0xc5,0x00,0x80,0x00]
.code32
lea %a0, 2048

# CHECK-INST: lea %a0, 4096
# CHECK: encoding: [0xc5,0x00,0x00,0x01]
.code32
lea %a0, 4096

# CHECK-INST: lea %a0, 8192
# CHECK: encoding: [0xc5,0x00,0x00,0x02]
.code32
lea %a0, 8192

# CHECK-INST: lea %a0, 16383
# CHECK: encoding: [0xc5,0x00,0xff,0xf3]
.code32
lea %a0, 16383

# CHECK-INST: lea %a0, 268435456
# CHECK: encoding: [0xc5,0x10,0x00,0x00]
.code32
lea %a0, 268435456

# CHECK-INST: lea %a0, 536870912
# CHECK: encoding: [0xc5,0x20,0x00,0x00]
.code32
lea %a0, 536870912

# CHECK-INST: lea %a0, 1073741824
# CHECK: encoding: [0xc5,0x40,0x00,0x00]
.code32
lea %a0, 1073741824

# CHECK-INST: lea %a0, 2147483648
# CHECK: encoding: [0xc5,0x80,0x00,0x00]
.code32
lea %a0, 2147483648

# CHECK-INST: lea %a0, 4026548223
# CHECK: encoding: [0xc5,0xf0,0xff,0xf3]
.code32
lea %a0, 4026548223

# CHECK-INST: lea %a15, 0
# CHECK: encoding: [0xc5,0x0f,0x00,0x00]
.code32
lea %a15, 0

# CHECK-INST: lea %a0, [%a0], 64
# CHECK: encoding: [0xd9,0x00,0x00,0x10]
.code32
lea %a0, [%a0], 64

# CHECK-INST: lea %a0, [%a0], 128
# CHECK: encoding: [0xd9,0x00,0x00,0x20]
.code32
lea %a0, [%a0], 128

# CHECK-INST: lea %a0, [%a0], 256
# CHECK: encoding: [0xd9,0x00,0x00,0x40]
.code32
lea %a0, [%a0], 256

# CHECK-INST: lea %a0, [%a0], 512
# CHECK: encoding: [0xd9,0x00,0x00,0x80]
.code32
lea %a0, [%a0], 512

# CHECK-INST: lea %a0, [%a0], 1024
# CHECK: encoding: [0xd9,0x00,0x40,0x00]
.code32
lea %a0, [%a0], 1024

# CHECK-INST: lea %a0, [%a0], 2048
# CHECK: encoding: [0xd9,0x00,0x80,0x00]
.code32
lea %a0, [%a0], 2048

# CHECK-INST: lea %a0, [%a0], 4096
# CHECK: encoding: [0xd9,0x00,0x00,0x01]
.code32
lea %a0, [%a0], 4096

# CHECK-INST: lea %a0, [%a0], 8192
# CHECK: encoding: [0xd9,0x00,0x00,0x02]
.code32
lea %a0, [%a0], 8192

# CHECK-INST: lea %a0, [%a0], 16384
# CHECK: encoding: [0xd9,0x00,0x00,0x04]
.code32
lea %a0, [%a0], 16384

# CHECK-INST: lea %a0, [%a0], -1
# CHECK: encoding: [0xd9,0x00,0xff,0xff]
.code32
lea %a0, [%a0], -1

# CHECK-INST: lea %a15, [%a15], -1
# CHECK: encoding: [0xd9,0xff,0xff,0xff]
.code32
lea %a15, [%a15], -1
# CHECK-INST: lea %a0, [%a0], 0
# CHECK: encoding: [0xd9,0x00,0x00,0x00]
.code32
lea %a0, [%a0], 0

# CHECK-INST: lea %a0, [%a0], 1
# CHECK: encoding: [0xd9,0x00,0x01,0x00]
.code32
lea %a0, [%a0], 1

# CHECK-INST: lea %a0, [%a0], 2
# CHECK: encoding: [0xd9,0x00,0x02,0x00]
.code32
lea %a0, [%a0], 2

# CHECK-INST: lea %a0, [%a0], 4
# CHECK: encoding: [0xd9,0x00,0x04,0x00]
.code32
lea %a0, [%a0], 4

# CHECK-INST: lea %a0, [%a0], 8
# CHECK: encoding: [0xd9,0x00,0x08,0x00]
.code32
lea %a0, [%a0], 8

# CHECK-INST: lea %a0, [%a0], 16
# CHECK: encoding: [0xd9,0x00,0x10,0x00]
.code32
lea %a0, [%a0], 16

# CHECK-INST: lea %a0, [%a0], 32
# CHECK: encoding: [0xd9,0x00,0x20,0x00]
.code32
lea %a0, [%a0], 32

# CHECK-INST: lea %a0, [%a0], 64
# CHECK: encoding: [0xd9,0x00,0x00,0x10]
.code32
lea %a0, [%a0], 64

# CHECK-INST: lea %a0, [%a0], 128
# CHECK: encoding: [0xd9,0x00,0x00,0x20]
.code32
lea %a0, [%a0], 128


# CHECK-INST: lea %a0, [%a0], 256
# CHECK: encoding: [0xd9,0x00,0x00,0x40]
.code32
lea %a0, [%a0], 256

# CHECK-INST: lea %a0, [%a0], 512
# CHECK: encoding: [0xd9,0x00,0x00,0x80]
.code32
lea %a0, [%a0], 512

# CHECK-INST: lea %a0, [%a0], 1024
# CHECK: encoding: [0xd9,0x00,0x40,0x00]
.code32
lea %a0, [%a0], 1024

# CHECK-INST: lea %a0, [%a0], 2048
# CHECK: encoding: [0xd9,0x00,0x80,0x00]
.code32
lea %a0, [%a0], 2048

# CHECK-INST: lea %a0, [%a0], 4096
# CHECK: encoding: [0xd9,0x00,0x00,0x01]
.code32
lea %a0, [%a0], 4096

# CHECK-INST: lea %a0, [%a0], 8192
# CHECK: encoding: [0xd9,0x00,0x00,0x02]
.code32
lea %a0, [%a0], 8192

# CHECK-INST: lea %a0, [%a0], 16384
# CHECK: encoding: [0xd9,0x00,0x00,0x04]
.code32
lea %a0, [%a0], 16384

# CHECK-INST: lea %a0, [%a0], -1
# CHECK: encoding: [0xd9,0x00,0xff,0xff]
.code32
lea %a0, [%a0], -1

# CHECK-INST: lea %a15, [%a15], -1
# CHECK: encoding: [0xd9,0xff,0xff,0xff]
.code32
lea %a15, [%a15], -1

# CHECK-INST: lha %a0, 16384
# CHECK: encoding: [0xc5,0x00,0x01,0x04]
.code32
lha %a0, 16384

# CHECK-INST: lha %a0, 32768
# CHECK: encoding: [0xc5,0x00,0x02,0x04]
.code32
lha %a0, 32768

# CHECK-INST: lha %a0, 65536
# CHECK: encoding: [0xc5,0x00,0x04,0x04]
.code32
lha %a0, 65536

# CHECK-INST: lha %a0, 131072
# CHECK: encoding: [0xc5,0x00,0x08,0x04]
.code32
lha %a0, 131072

# CHECK-INST: lha %a0, 262144
# CHECK: encoding: [0xc5,0x00,0x10,0x04]
.code32
lha %a0, 262144

# CHECK-INST: lha %a0, 524288
# CHECK: encoding: [0xc5,0x00,0x20,0x04]
.code32
lha %a0, 524288

# CHECK-INST: lha %a0, 1048576
# CHECK: encoding: [0xc5,0x00,0x00,0x14]
.code32
lha %a0, 1048576

# CHECK-INST: lha %a0, 2097152
# CHECK: encoding: [0xc5,0x00,0x00,0x24]
.code32
lha %a0, 2097152

# CHECK-INST: lha %a0, 4194304
# CHECK: encoding: [0xc5,0x00,0x00,0x44]
.code32
lha %a0, 4194304

# CHECK-INST: lha %a0, 8388608
# CHECK: encoding: [0xc5,0x00,0x00,0x84]
.code32
lha %a0, 8388608

# CHECK-INST: lha %a0, 16777216
# CHECK: encoding: [0xc5,0x00,0x40,0x04]
.code32
lha %a0, 16777216

# CHECK-INST: lha %a0, 33554432
# CHECK: encoding: [0xc5,0x00,0x80,0x04]
.code32
lha %a0, 33554432

# CHECK-INST: lha %a0, 67108864
# CHECK: encoding: [0xc5,0x00,0x00,0x05]
.code32
lha %a0, 67108864

# CHECK-INST: lha %a0, 134217728
# CHECK: encoding: [0xc5,0x00,0x00,0x06]
.code32
lha %a0, 134217728

# CHECK-INST: lha %a0, 268435456
# CHECK: encoding: [0xc5,0x10,0x00,0x04]
.code32
lha %a0, 268435456

# CHECK-INST: lha %a0, 536870912
# CHECK: encoding: [0xc5,0x20,0x00,0x04]
.code32
lha %a0, 536870912

# CHECK-INST: lha %a0, 1073741824
# CHECK: encoding: [0xc5,0x40,0x00,0x04]
.code32
lha %a0, 1073741824

# CHECK-INST: lha %a0, 2147483648
# CHECK: encoding: [0xc5,0x80,0x00,0x04]
.code32
lha %a0, 2147483648

# CHECK-INST: lha %a0, 4294950912
# CHECK: encoding: [0xc5,0xf0,0xff,0xf7]
.code32
lha %a0, 4294950912

# CHECK-INST: lha %a1, 16384
# CHECK: encoding: [0xc5,0x01,0x01,0x04]
.code32
lha %a1, 16384

# CHECK-INST: lha %a1, 32768
# CHECK: encoding: [0xc5,0x01,0x02,0x04]
.code32
lha %a1, 32768

# CHECK-INST: lha %a1, 65536
# CHECK: encoding: [0xc5,0x01,0x04,0x04]
.code32
lha %a1, 65536

# CHECK-INST: lha %a1, 131072
# CHECK: encoding: [0xc5,0x01,0x08,0x04]
.code32
lha %a1, 131072

# CHECK-INST: lha %a1, 262144
# CHECK: encoding: [0xc5,0x01,0x10,0x04]
.code32
lha %a1, 262144

# CHECK-INST: lha %a1, 524288
# CHECK: encoding: [0xc5,0x01,0x20,0x04]
.code32
lha %a1, 524288

# CHECK-INST: lha %a1, 1048576
# CHECK: encoding: [0xc5,0x01,0x00,0x14]
.code32
lha %a1, 1048576

# CHECK-INST: lha %a1, 2097152
# CHECK: encoding: [0xc5,0x01,0x00,0x24]
.code32
lha %a1, 2097152

# CHECK-INST: lha %a1, 4194304
# CHECK: encoding: [0xc5,0x01,0x00,0x44]
.code32
lha %a1, 4194304

# CHECK-INST: lha %a1, 8388608
# CHECK: encoding: [0xc5,0x01,0x00,0x84]
.code32
lha %a1, 8388608

# CHECK-INST: lha %a1, 16777216
# CHECK: encoding: [0xc5,0x01,0x40,0x04]
.code32
lha %a1, 16777216

# CHECK-INST: lha %a1, 33554432
# CHECK: encoding: [0xc5,0x01,0x80,0x04]
.code32
lha %a1, 33554432

# CHECK-INST: lha %a1, 67108864
# CHECK: encoding: [0xc5,0x01,0x00,0x05]
.code32
lha %a1, 67108864

# CHECK-INST: lha %a1, 134217728
# CHECK: encoding: [0xc5,0x01,0x00,0x06]
.code32
lha %a1, 134217728

# CHECK-INST: lha %a1, 268435456
# CHECK: encoding: [0xc5,0x11,0x00,0x04]
.code32
lha %a1, 268435456

# CHECK-INST: lha %a1, 536870912
# CHECK: encoding: [0xc5,0x21,0x00,0x04]
.code32
lha %a1, 536870912

# CHECK-INST: lha %a1, 1073741824
# CHECK: encoding: [0xc5,0x41,0x00,0x04]
.code32
lha %a1, 1073741824

# CHECK-INST: lha %a1, 2147483648
# CHECK: encoding: [0xc5,0x81,0x00,0x04]
.code32
lha %a1, 2147483648

# CHECK-INST: lha %a1, 4294950912
# CHECK: encoding: [0xc5,0xf1,0xff,0xf7]
.code32
lha %a1, 4294950912

# CHECK-INST: lha %a14, 16384
# CHECK: encoding: [0xc5,0x0e,0x01,0x04]
.code32
lha %a14, 16384

# CHECK-INST: lha %a14, 32768
# CHECK: encoding: [0xc5,0x0e,0x02,0x04]
.code32
lha %a14, 32768

# CHECK-INST: lha %a14, 65536
# CHECK: encoding: [0xc5,0x0e,0x04,0x04]
.code32
lha %a14, 65536

# CHECK-INST: lha %a14, 131072
# CHECK: encoding: [0xc5,0x0e,0x08,0x04]
.code32
lha %a14, 131072

# CHECK-INST: lha %a14, 262144
# CHECK: encoding: [0xc5,0x0e,0x10,0x04]
.code32
lha %a14, 262144

# CHECK-INST: lha %a14, 524288
# CHECK: encoding: [0xc5,0x0e,0x20,0x04]
.code32
lha %a14, 524288

# CHECK-INST: lha %a14, 1048576
# CHECK: encoding: [0xc5,0x0e,0x00,0x14]
.code32
lha %a14, 1048576

# CHECK-INST: lha %a14, 2097152
# CHECK: encoding: [0xc5,0x0e,0x00,0x24]
.code32
lha %a14, 2097152

# CHECK-INST: lha %a14, 4194304
# CHECK: encoding: [0xc5,0x0e,0x00,0x44]
.code32
lha %a14, 4194304

# CHECK-INST: lha %a14, 8388608
# CHECK: encoding: [0xc5,0x0e,0x00,0x84]
.code32
lha %a14, 8388608

# CHECK-INST: lha %a14, 16777216
# CHECK: encoding: [0xc5,0x0e,0x40,0x04]
.code32
lha %a14, 16777216

# CHECK-INST: lha %a14, 33554432
# CHECK: encoding: [0xc5,0x0e,0x80,0x04]
.code32
lha %a14, 33554432

# CHECK-INST: lha %a14, 67108864
# CHECK: encoding: [0xc5,0x0e,0x00,0x05]
.code32
lha %a14, 67108864

# CHECK-INST: lha %a14, 134217728
# CHECK: encoding: [0xc5,0x0e,0x00,0x06]
.code32
lha %a14, 134217728

# CHECK-INST: lha %a14, 268435456
# CHECK: encoding: [0xc5,0x1e,0x00,0x04]
.code32
lha %a14, 268435456

# CHECK-INST: lha %a14, 536870912
# CHECK: encoding: [0xc5,0x2e,0x00,0x04]
.code32
lha %a14, 536870912

# CHECK-INST: lha %a14, 1073741824
# CHECK: encoding: [0xc5,0x4e,0x00,0x04]
.code32
lha %a14, 1073741824

# CHECK-INST: lha %a14, 2147483648
# CHECK: encoding: [0xc5,0x8e,0x00,0x04]
.code32
lha %a14, 2147483648

# CHECK-INST: lha %a14, 4294950912
# CHECK: encoding: [0xc5,0xfe,0xff,0xf7]
.code32
lha %a14, 4294950912

# CHECK-INST: lha %a15, 16384
# CHECK: encoding: [0xc5,0x0f,0x01,0x04]
.code32
lha %a15, 16384

# CHECK-INST: lha %a15, 32768
# CHECK: encoding: [0xc5,0x0f,0x02,0x04]
.code32
lha %a15, 32768

# CHECK-INST: lha %a15, 65536
# CHECK: encoding: [0xc5,0x0f,0x04,0x04]
.code32
lha %a15, 65536

# CHECK-INST: lha %a15, 131072
# CHECK: encoding: [0xc5,0x0f,0x08,0x04]
.code32
lha %a15, 131072

# CHECK-INST: lha %a15, 262144
# CHECK: encoding: [0xc5,0x0f,0x10,0x04]
.code32
lha %a15, 262144

# CHECK-INST: lha %a15, 524288
# CHECK: encoding: [0xc5,0x0f,0x20,0x04]
.code32
lha %a15, 524288

# CHECK-INST: lha %a15, 1048576
# CHECK: encoding: [0xc5,0x0f,0x00,0x14]
.code32
lha %a15, 1048576

# CHECK-INST: lha %a15, 2097152
# CHECK: encoding: [0xc5,0x0f,0x00,0x24]
.code32
lha %a15, 2097152

# CHECK-INST: lha %a15, 4194304
# CHECK: encoding: [0xc5,0x0f,0x00,0x44]
.code32
lha %a15, 4194304

# CHECK-INST: lha %a15, 8388608
# CHECK: encoding: [0xc5,0x0f,0x00,0x84]
.code32
lha %a15, 8388608

# CHECK-INST: lha %a15, 16777216
# CHECK: encoding: [0xc5,0x0f,0x40,0x04]
.code32
lha %a15, 16777216

# CHECK-INST: lha %a15, 33554432
# CHECK: encoding: [0xc5,0x0f,0x80,0x04]
.code32
lha %a15, 33554432

# CHECK-INST: lha %a15, 67108864
# CHECK: encoding: [0xc5,0x0f,0x00,0x05]
.code32
lha %a15, 67108864

# CHECK-INST: lha %a15, 134217728
# CHECK: encoding: [0xc5,0x0f,0x00,0x06]
.code32
lha %a15, 134217728

# CHECK-INST: lha %a15, 268435456
# CHECK: encoding: [0xc5,0x1f,0x00,0x04]
.code32
lha %a15, 268435456

# CHECK-INST: lha %a15, 536870912
# CHECK: encoding: [0xc5,0x2f,0x00,0x04]
.code32
lha %a15, 536870912

# CHECK-INST: lha %a15, 1073741824
# CHECK: encoding: [0xc5,0x4f,0x00,0x04]
.code32
lha %a15, 1073741824

# CHECK-INST: lha %a15, 2147483648
# CHECK: encoding: [0xc5,0x8f,0x00,0x04]
.code32
lha %a15, 2147483648

# CHECK-INST: lha %a15, 4294950912
# CHECK: encoding: [0xc5,0xff,0xff,0xf7]
.code32
lha %a15, 4294950912

# CHECK-INST: sub.a %a10, 0
# CHECK: encoding: [0x20,0x00]
.code16
sub.a %a10, 0

# CHECK-INST: sub.a %a10, 1
# CHECK: encoding: [0x20,0x01]
.code16
sub.a %a10, 1

# CHECK-INST: sub.a %a10, 16
# CHECK: encoding: [0x20,0x10]
.code16
sub.a %a10, 16

# CHECK-INST: sub.a %a10, 255
# CHECK: encoding: [0x20,0xff]
.code16
sub.a %a10, 255

# CHECK-INST: sub.a %a0, %a0, %a0
# CHECK: encoding: [0x01,0x00,0x20,0x00]
.code32
sub.a %a0, %a0, %a0

# CHECK-INST: sub.a %a0, %a0, %a1
# CHECK: encoding: [0x01,0x10,0x20,0x00]
.code32
sub.a %a0, %a0, %a1

# CHECK-INST: sub.a %a0, %a0, %a14
# CHECK: encoding: [0x01,0xe0,0x20,0x00]
.code32
sub.a %a0, %a0, %a14

# CHECK-INST: sub.a %a0, %a0, %a15
# CHECK: encoding: [0x01,0xf0,0x20,0x00]
.code32
sub.a %a0, %a0, %a15

# CHECK-INST: sub.a %a0, %a1, %a0
# CHECK: encoding: [0x01,0x01,0x20,0x00]
.code32
sub.a %a0, %a1, %a0

# CHECK-INST: sub.a %a0, %a1, %a1
# CHECK: encoding: [0x01,0x11,0x20,0x00]
.code32
sub.a %a0, %a1, %a1

# CHECK-INST: sub.a %a0, %a1, %a14
# CHECK: encoding: [0x01,0xe1,0x20,0x00]
.code32
sub.a %a0, %a1, %a14

# CHECK-INST: sub.a %a0, %a1, %a15
# CHECK: encoding: [0x01,0xf1,0x20,0x00]
.code32
sub.a %a0, %a1, %a15

# CHECK-INST: sub.a %a0, %a14, %a0
# CHECK: encoding: [0x01,0x0e,0x20,0x00]
.code32
sub.a %a0, %a14, %a0

# CHECK-INST: sub.a %a0, %a14, %a1
# CHECK: encoding: [0x01,0x1e,0x20,0x00]
.code32
sub.a %a0, %a14, %a1

# CHECK-INST: sub.a %a0, %a14, %a14
# CHECK: encoding: [0x01,0xee,0x20,0x00]
.code32
sub.a %a0, %a14, %a14

# CHECK-INST: sub.a %a0, %a14, %a15
# CHECK: encoding: [0x01,0xfe,0x20,0x00]
.code32
sub.a %a0, %a14, %a15

# CHECK-INST: sub.a %a0, %a15, %a0
# CHECK: encoding: [0x01,0x0f,0x20,0x00]
.code32
sub.a %a0, %a15, %a0

# CHECK-INST: sub.a %a0, %a15, %a1
# CHECK: encoding: [0x01,0x1f,0x20,0x00]
.code32
sub.a %a0, %a15, %a1

# CHECK-INST: sub.a %a0, %a15, %a14
# CHECK: encoding: [0x01,0xef,0x20,0x00]
.code32
sub.a %a0, %a15, %a14

# CHECK-INST: sub.a %a0, %a15, %a15
# CHECK: encoding: [0x01,0xff,0x20,0x00]
.code32
sub.a %a0, %a15, %a15

# CHECK-INST: sub.a %a1, %a0, %a0
# CHECK: encoding: [0x01,0x00,0x20,0x10]
.code32
sub.a %a1, %a0, %a0

# CHECK-INST: sub.a %a1, %a0, %a1
# CHECK: encoding: [0x01,0x10,0x20,0x10]
.code32
sub.a %a1, %a0, %a1

# CHECK-INST: sub.a %a1, %a0, %a14
# CHECK: encoding: [0x01,0xe0,0x20,0x10]
.code32
sub.a %a1, %a0, %a14

# CHECK-INST: sub.a %a1, %a0, %a15
# CHECK: encoding: [0x01,0xf0,0x20,0x10]
.code32
sub.a %a1, %a0, %a15

# CHECK-INST: sub.a %a1, %a1, %a0
# CHECK: encoding: [0x01,0x01,0x20,0x10]
.code32
sub.a %a1, %a1, %a0

# CHECK-INST: sub.a %a1, %a1, %a1
# CHECK: encoding: [0x01,0x11,0x20,0x10]
.code32
sub.a %a1, %a1, %a1

# CHECK-INST: sub.a %a1, %a1, %a14
# CHECK: encoding: [0x01,0xe1,0x20,0x10]
.code32
sub.a %a1, %a1, %a14

# CHECK-INST: sub.a %a1, %a1, %a15
# CHECK: encoding: [0x01,0xf1,0x20,0x10]
.code32
sub.a %a1, %a1, %a15

# CHECK-INST: sub.a %a1, %a14, %a0
# CHECK: encoding: [0x01,0x0e,0x20,0x10]
.code32
sub.a %a1, %a14, %a0

# CHECK-INST: sub.a %a1, %a14, %a1
# CHECK: encoding: [0x01,0x1e,0x20,0x10]
.code32
sub.a %a1, %a14, %a1

# CHECK-INST: sub.a %a1, %a14, %a14
# CHECK: encoding: [0x01,0xee,0x20,0x10]
.code32
sub.a %a1, %a14, %a14

# CHECK-INST: sub.a %a1, %a14, %a15
# CHECK: encoding: [0x01,0xfe,0x20,0x10]
.code32
sub.a %a1, %a14, %a15

# CHECK-INST: sub.a %a1, %a15, %a0
# CHECK: encoding: [0x01,0x0f,0x20,0x10]
.code32
sub.a %a1, %a15, %a0

# CHECK-INST: sub.a %a1, %a15, %a1
# CHECK: encoding: [0x01,0x1f,0x20,0x10]
.code32
sub.a %a1, %a15, %a1

# CHECK-INST: sub.a %a1, %a15, %a14
# CHECK: encoding: [0x01,0xef,0x20,0x10]
.code32
sub.a %a1, %a15, %a14

# CHECK-INST: sub.a %a1, %a15, %a15
# CHECK: encoding: [0x01,0xff,0x20,0x10]
.code32
sub.a %a1, %a15, %a15

# CHECK-INST: sub.a %a14, %a0, %a0
# CHECK: encoding: [0x01,0x00,0x20,0xe0]
.code32
sub.a %a14, %a0, %a0

# CHECK-INST: sub.a %a14, %a0, %a1
# CHECK: encoding: [0x01,0x10,0x20,0xe0]
.code32
sub.a %a14, %a0, %a1

# CHECK-INST: sub.a %a14, %a0, %a14
# CHECK: encoding: [0x01,0xe0,0x20,0xe0]
.code32
sub.a %a14, %a0, %a14

# CHECK-INST: sub.a %a14, %a0, %a15
# CHECK: encoding: [0x01,0xf0,0x20,0xe0]
.code32
sub.a %a14, %a0, %a15

# CHECK-INST: sub.a %a14, %a1, %a0
# CHECK: encoding: [0x01,0x01,0x20,0xe0]
.code32
sub.a %a14, %a1, %a0

# CHECK-INST: sub.a %a14, %a1, %a1
# CHECK: encoding: [0x01,0x11,0x20,0xe0]
.code32
sub.a %a14, %a1, %a1

# CHECK-INST: sub.a %a14, %a1, %a14
# CHECK: encoding: [0x01,0xe1,0x20,0xe0]
.code32
sub.a %a14, %a1, %a14

# CHECK-INST: sub.a %a14, %a1, %a15
# CHECK: encoding: [0x01,0xf1,0x20,0xe0]
.code32
sub.a %a14, %a1, %a15

# CHECK-INST: sub.a %a14, %a14, %a0
# CHECK: encoding: [0x01,0x0e,0x20,0xe0]
.code32
sub.a %a14, %a14, %a0

# CHECK-INST: sub.a %a14, %a14, %a1
# CHECK: encoding: [0x01,0x1e,0x20,0xe0]
.code32
sub.a %a14, %a14, %a1

# CHECK-INST: sub.a %a14, %a14, %a14
# CHECK: encoding: [0x01,0xee,0x20,0xe0]
.code32
sub.a %a14, %a14, %a14

# CHECK-INST: sub.a %a14, %a14, %a15
# CHECK: encoding: [0x01,0xfe,0x20,0xe0]
.code32
sub.a %a14, %a14, %a15

# CHECK-INST: sub.a %a14, %a15, %a0
# CHECK: encoding: [0x01,0x0f,0x20,0xe0]
.code32
sub.a %a14, %a15, %a0

# CHECK-INST: sub.a %a14, %a15, %a1
# CHECK: encoding: [0x01,0x1f,0x20,0xe0]
.code32
sub.a %a14, %a15, %a1

# CHECK-INST: sub.a %a14, %a15, %a14
# CHECK: encoding: [0x01,0xef,0x20,0xe0]
.code32
sub.a %a14, %a15, %a14

# CHECK-INST: sub.a %a14, %a15, %a15
# CHECK: encoding: [0x01,0xff,0x20,0xe0]
.code32
sub.a %a14, %a15, %a15

# CHECK-INST: sub.a %a15, %a0, %a0
# CHECK: encoding: [0x01,0x00,0x20,0xf0]
.code32
sub.a %a15, %a0, %a0

# CHECK-INST: sub.a %a15, %a0, %a1
# CHECK: encoding: [0x01,0x10,0x20,0xf0]
.code32
sub.a %a15, %a0, %a1

# CHECK-INST: sub.a %a15, %a0, %a14
# CHECK: encoding: [0x01,0xe0,0x20,0xf0]
.code32
sub.a %a15, %a0, %a14

# CHECK-INST: sub.a %a15, %a0, %a15
# CHECK: encoding: [0x01,0xf0,0x20,0xf0]
.code32
sub.a %a15, %a0, %a15

# CHECK-INST: sub.a %a15, %a1, %a0
# CHECK: encoding: [0x01,0x01,0x20,0xf0]
.code32
sub.a %a15, %a1, %a0

# CHECK-INST: sub.a %a15, %a1, %a1
# CHECK: encoding: [0x01,0x11,0x20,0xf0]
.code32
sub.a %a15, %a1, %a1

# CHECK-INST: sub.a %a15, %a1, %a14
# CHECK: encoding: [0x01,0xe1,0x20,0xf0]
.code32
sub.a %a15, %a1, %a14

# CHECK-INST: sub.a %a15, %a1, %a15
# CHECK: encoding: [0x01,0xf1,0x20,0xf0]
.code32
sub.a %a15, %a1, %a15

# CHECK-INST: sub.a %a15, %a14, %a0
# CHECK: encoding: [0x01,0x0e,0x20,0xf0]
.code32
sub.a %a15, %a14, %a0

# CHECK-INST: sub.a %a15, %a14, %a1
# CHECK: encoding: [0x01,0x1e,0x20,0xf0]
.code32
sub.a %a15, %a14, %a1

# CHECK-INST: sub.a %a15, %a14, %a14
# CHECK: encoding: [0x01,0xee,0x20,0xf0]
.code32
sub.a %a15, %a14, %a14

# CHECK-INST: sub.a %a15, %a14, %a15
# CHECK: encoding: [0x01,0xfe,0x20,0xf0]
.code32
sub.a %a15, %a14, %a15

# CHECK-INST: sub.a %a15, %a15, %a0
# CHECK: encoding: [0x01,0x0f,0x20,0xf0]
.code32
sub.a %a15, %a15, %a0

# CHECK-INST: sub.a %a15, %a15, %a1
# CHECK: encoding: [0x01,0x1f,0x20,0xf0]
.code32
sub.a %a15, %a15, %a1

# CHECK-INST: sub.a %a15, %a15, %a14
# CHECK: encoding: [0x01,0xef,0x20,0xf0]
.code32
sub.a %a15, %a15, %a14

# CHECK-INST: sub.a %a15, %a15, %a15
# CHECK: encoding: [0x01,0xff,0x20,0xf0]
.code32
sub.a %a15, %a15, %a15


### Test if 16 bit instructions are generated by default

# CHECK-INST: add.a %a0, %a0
# CHECK: encoding: [0x30,0x00]
add.a %a0, %a0

# CHECK-INST: add.a %a0, 0
# CHECK: encoding: [0xb0,0x00]
add.a %a0, 0

# CHECK-INST: addsc.a %a0, %a0, %d15, 0
# CHECK: encoding: [0x10,0x00]
.code16
addsc.a %a0, %a0, %d15, 0

# CHECK-INST: sub.a %a10, 0
# CHECK: encoding: [0x20,0x00]
sub.a %a10, 0


### Test [<reg>]offset parsing

# CHECK-INST: lea %a0, [%a0], 64
# CHECK: encoding: [0xd9,0x00,0x00,0x10]
.code32
lea %a0, [%a0]64


### disassembler tests for BO types for instructions which has BOL versions
### too, therefore their BO format never generated by the assembler


# CHECK-DUMP: lea %a0, [%a0], -512
.4byte 0x8a000049

# CHECK-DUMP: lea %a0, [%a0], 0
.4byte 0x0a000049

# CHECK-DUMP: lea %a0, [%a0], 511
.4byte 0x7a3f0049
