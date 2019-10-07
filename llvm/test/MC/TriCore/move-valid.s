# RUN: llvm-mc %s -triple=tricore -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK,CHECK-INST %s


# CHECK-INST: mov %d0, -32768
# CHECK: encoding: [0x3b,0x00,0x00,0x08]
.code32
mov %d0, -32768

# CHECK-INST: mov %d0, -257
# CHECK: encoding: [0x3b,0xf0,0xef,0x0f]
.code32
mov %d0, -257

# CHECK-INST: mov %d0, 256
# CHECK: encoding: [0x3b,0x00,0x10,0x00]
.code32
mov %d0, 256

# CHECK-INST: mov %d0, 32767
# CHECK: encoding: [0x3b,0xf0,0xff,0x07]
.code32
mov %d0, 32767

# CHECK-INST: mov %d1, -32768
# CHECK: encoding: [0x3b,0x00,0x00,0x18]
.code32
mov %d1, -32768

# CHECK-INST: mov %d1, -257
# CHECK: encoding: [0x3b,0xf0,0xef,0x1f]
.code32
mov %d1, -257

# CHECK-INST: mov %d1, 256
# CHECK: encoding: [0x3b,0x00,0x10,0x10]
.code32
mov %d1, 256

# CHECK-INST: mov %d1, 32767
# CHECK: encoding: [0x3b,0xf0,0xff,0x17]
.code32
mov %d1, 32767

# CHECK-INST: mov %d14, -32768
# CHECK: encoding: [0x3b,0x00,0x00,0xe8]
.code32
mov %d14, -32768

# CHECK-INST: mov %d14, -257
# CHECK: encoding: [0x3b,0xf0,0xef,0xef]
.code32
mov %d14, -257

# CHECK-INST: mov %d14, 256
# CHECK: encoding: [0x3b,0x00,0x10,0xe0]
.code32
mov %d14, 256

# CHECK-INST: mov %d14, 32767
# CHECK: encoding: [0x3b,0xf0,0xff,0xe7]
.code32
mov %d14, 32767

# CHECK-INST: mov %d15, -32768
# CHECK: encoding: [0x3b,0x00,0x00,0xf8]
.code32
mov %d15, -32768

# CHECK-INST: mov %d15, -257
# CHECK: encoding: [0x3b,0xf0,0xef,0xff]
.code32
mov %d15, -257

# CHECK-INST: mov %d15, 256
# CHECK: encoding: [0x3b,0x00,0x10,0xf0]
.code32
mov %d15, 256

# CHECK-INST: mov %d15, 32767
# CHECK: encoding: [0x3b,0xf0,0xff,0xf7]
.code32
mov %d15, 32767

# CHECK-INST: mov %e0, -32768
# CHECK: encoding: [0xfb,0x00,0x00,0x08]
.code32
mov %e0, -32768

# CHECK-INST: mov %e0, -257
# CHECK: encoding: [0xfb,0xf0,0xef,0x0f]
.code32
mov %e0, -257

# CHECK-INST: mov %e0, 256
# CHECK: encoding: [0xfb,0x00,0x10,0x00]
.code32
mov %e0, 256

# CHECK-INST: mov %e0, 32767
# CHECK: encoding: [0xfb,0xf0,0xff,0x07]
.code32
mov %e0, 32767

# CHECK-INST: mov %e6, -32768
# CHECK: encoding: [0xfb,0x00,0x00,0x68]
.code32
mov %e6, -32768

# CHECK-INST: mov %e6, -257
# CHECK: encoding: [0xfb,0xf0,0xef,0x6f]
.code32
mov %e6, -257

# CHECK-INST: mov %e6, 256
# CHECK: encoding: [0xfb,0x00,0x10,0x60]
.code32
mov %e6, 256

# CHECK-INST: mov %e6, 32767
# CHECK: encoding: [0xfb,0xf0,0xff,0x67]
.code32
mov %e6, 32767

# CHECK-INST: mov %e14, -32768
# CHECK: encoding: [0xfb,0x00,0x00,0xe8]
.code32
mov %e14, -32768

# CHECK-INST: mov %e14, -257
# CHECK: encoding: [0xfb,0xf0,0xef,0xef]
.code32
mov %e14, -257

# CHECK-INST: mov %e14, 256
# CHECK: encoding: [0xfb,0x00,0x10,0xe0]
.code32
mov %e14, 256

# CHECK-INST: mov %e14, 32767
# CHECK: encoding: [0xfb,0xf0,0xff,0xe7]
.code32
mov %e14, 32767

# CHECK-INST: mov %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xf0,0x01]
.code32
mov %d0, %d0

# CHECK-INST: mov %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xf0,0x01]
.code32
mov %d0, %d1

# CHECK-INST: mov %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xf0,0x01]
.code32
mov %d0, %d14

# CHECK-INST: mov %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xf0,0x01]
.code32
mov %d0, %d15

# CHECK-INST: mov %d1, %d0
# CHECK: encoding: [0x0b,0x00,0xf0,0x11]
.code32
mov %d1, %d0

# CHECK-INST: mov %d1, %d1
# CHECK: encoding: [0x0b,0x10,0xf0,0x11]
.code32
mov %d1, %d1

# CHECK-INST: mov %d1, %d14
# CHECK: encoding: [0x0b,0xe0,0xf0,0x11]
.code32
mov %d1, %d14

# CHECK-INST: mov %d1, %d15
# CHECK: encoding: [0x0b,0xf0,0xf0,0x11]
.code32
mov %d1, %d15

# CHECK-INST: mov %d14, %d0
# CHECK: encoding: [0x0b,0x00,0xf0,0xe1]
.code32
mov %d14, %d0

# CHECK-INST: mov %d14, %d1
# CHECK: encoding: [0x0b,0x10,0xf0,0xe1]
.code32
mov %d14, %d1

# CHECK-INST: mov %d14, %d14
# CHECK: encoding: [0x0b,0xe0,0xf0,0xe1]
.code32
mov %d14, %d14

# CHECK-INST: mov %d14, %d15
# CHECK: encoding: [0x0b,0xf0,0xf0,0xe1]
.code32
mov %d14, %d15

# CHECK-INST: mov %d15, %d0
# CHECK: encoding: [0x0b,0x00,0xf0,0xf1]
.code32
mov %d15, %d0

# CHECK-INST: mov %d15, %d1
# CHECK: encoding: [0x0b,0x10,0xf0,0xf1]
.code32
mov %d15, %d1

# CHECK-INST: mov %d15, %d14
# CHECK: encoding: [0x0b,0xe0,0xf0,0xf1]
.code32
mov %d15, %d14

# CHECK-INST: mov %d15, %d15
# CHECK: encoding: [0x0b,0xf0,0xf0,0xf1]
.code32
mov %d15, %d15

# CHECK-INST: mov %e0, %d0
# CHECK: encoding: [0x0b,0x00,0x00,0x08]
.code32
mov %e0, %d0

# CHECK-INST: mov %e0, %d1
# CHECK: encoding: [0x0b,0x10,0x00,0x08]
.code32
mov %e0, %d1

# CHECK-INST: mov %e0, %d14
# CHECK: encoding: [0x0b,0xe0,0x00,0x08]
.code32
mov %e0, %d14

# CHECK-INST: mov %e0, %d15
# CHECK: encoding: [0x0b,0xf0,0x00,0x08]
.code32
mov %e0, %d15

# CHECK-INST: mov %e6, %d0
# CHECK: encoding: [0x0b,0x00,0x00,0x68]
.code32
mov %e6, %d0

# CHECK-INST: mov %e6, %d1
# CHECK: encoding: [0x0b,0x10,0x00,0x68]
.code32
mov %e6, %d1

# CHECK-INST: mov %e6, %d14
# CHECK: encoding: [0x0b,0xe0,0x00,0x68]
.code32
mov %e6, %d14

# CHECK-INST: mov %e6, %d15
# CHECK: encoding: [0x0b,0xf0,0x00,0x68]
.code32
mov %e6, %d15

# CHECK-INST: mov %e14, %d0
# CHECK: encoding: [0x0b,0x00,0x00,0xe8]
.code32
mov %e14, %d0

# CHECK-INST: mov %e14, %d1
# CHECK: encoding: [0x0b,0x10,0x00,0xe8]
.code32
mov %e14, %d1

# CHECK-INST: mov %e14, %d14
# CHECK: encoding: [0x0b,0xe0,0x00,0xe8]
.code32
mov %e14, %d14

# CHECK-INST: mov %e14, %d15
# CHECK: encoding: [0x0b,0xf0,0x00,0xe8]
.code32
mov %e14, %d15

# CHECK-INST: mov %e0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x10,0x08]
.code32
mov %e0, %d0, %d0

# CHECK-INST: mov %e0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x10,0x08]
.code32
mov %e0, %d0, %d1

# CHECK-INST: mov %e0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x10,0x08]
.code32
mov %e0, %d0, %d14

# CHECK-INST: mov %e0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x10,0x08]
.code32
mov %e0, %d0, %d15

# CHECK-INST: mov %e0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x10,0x08]
.code32
mov %e0, %d1, %d0

# CHECK-INST: mov %e0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x10,0x08]
.code32
mov %e0, %d1, %d1

# CHECK-INST: mov %e0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x10,0x08]
.code32
mov %e0, %d1, %d14

# CHECK-INST: mov %e0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x10,0x08]
.code32
mov %e0, %d1, %d15

# CHECK-INST: mov %e0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x10,0x08]
.code32
mov %e0, %d14, %d0

# CHECK-INST: mov %e0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x10,0x08]
.code32
mov %e0, %d14, %d1

# CHECK-INST: mov %e0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x10,0x08]
.code32
mov %e0, %d14, %d14

# CHECK-INST: mov %e0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x10,0x08]
.code32
mov %e0, %d14, %d15

# CHECK-INST: mov %e0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x10,0x08]
.code32
mov %e0, %d15, %d0

# CHECK-INST: mov %e0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x10,0x08]
.code32
mov %e0, %d15, %d1

# CHECK-INST: mov %e0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x10,0x08]
.code32
mov %e0, %d15, %d14

# CHECK-INST: mov %e0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x10,0x08]
.code32
mov %e0, %d15, %d15

# CHECK-INST: mov %e6, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x10,0x68]
.code32
mov %e6, %d0, %d0

# CHECK-INST: mov %e6, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x10,0x68]
.code32
mov %e6, %d0, %d1

# CHECK-INST: mov %e6, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x10,0x68]
.code32
mov %e6, %d0, %d14

# CHECK-INST: mov %e6, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x10,0x68]
.code32
mov %e6, %d0, %d15

# CHECK-INST: mov %e6, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x10,0x68]
.code32
mov %e6, %d1, %d0

# CHECK-INST: mov %e6, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x10,0x68]
.code32
mov %e6, %d1, %d1

# CHECK-INST: mov %e6, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x10,0x68]
.code32
mov %e6, %d1, %d14

# CHECK-INST: mov %e6, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x10,0x68]
.code32
mov %e6, %d1, %d15

# CHECK-INST: mov %e6, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x10,0x68]
.code32
mov %e6, %d14, %d0

# CHECK-INST: mov %e6, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x10,0x68]
.code32
mov %e6, %d14, %d1

# CHECK-INST: mov %e6, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x10,0x68]
.code32
mov %e6, %d14, %d14

# CHECK-INST: mov %e6, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x10,0x68]
.code32
mov %e6, %d14, %d15

# CHECK-INST: mov %e6, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x10,0x68]
.code32
mov %e6, %d15, %d0

# CHECK-INST: mov %e6, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x10,0x68]
.code32
mov %e6, %d15, %d1

# CHECK-INST: mov %e6, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x10,0x68]
.code32
mov %e6, %d15, %d14

# CHECK-INST: mov %e6, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x10,0x68]
.code32
mov %e6, %d15, %d15

# CHECK-INST: mov %e14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x10,0xe8]
.code32
mov %e14, %d0, %d0

# CHECK-INST: mov %e14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x10,0xe8]
.code32
mov %e14, %d0, %d1

# CHECK-INST: mov %e14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x10,0xe8]
.code32
mov %e14, %d0, %d14

# CHECK-INST: mov %e14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x10,0xe8]
.code32
mov %e14, %d0, %d15

# CHECK-INST: mov %e14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x10,0xe8]
.code32
mov %e14, %d1, %d0

# CHECK-INST: mov %e14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x10,0xe8]
.code32
mov %e14, %d1, %d1

# CHECK-INST: mov %e14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x10,0xe8]
.code32
mov %e14, %d1, %d14

# CHECK-INST: mov %e14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x10,0xe8]
.code32
mov %e14, %d1, %d15

# CHECK-INST: mov %e14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x10,0xe8]
.code32
mov %e14, %d14, %d0

# CHECK-INST: mov %e14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x10,0xe8]
.code32
mov %e14, %d14, %d1

# CHECK-INST: mov %e14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x10,0xe8]
.code32
mov %e14, %d14, %d14

# CHECK-INST: mov %e14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x10,0xe8]
.code32
mov %e14, %d14, %d15

# CHECK-INST: mov %e14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x10,0xe8]
.code32
mov %e14, %d15, %d0

# CHECK-INST: mov %e14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x10,0xe8]
.code32
mov %e14, %d15, %d1

# CHECK-INST: mov %e14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x10,0xe8]
.code32
mov %e14, %d15, %d14

# CHECK-INST: mov %e14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x10,0xe8]
.code32
mov %e14, %d15, %d15

# CHECK-INST: mov %d15, 16
# CHECK: encoding: [0xda,0x10]
.code16
mov %d15, 16

# CHECK-INST: mov %d15, 240
# CHECK: encoding: [0xda,0xf0]
.code16
mov %d15, 240

# CHECK-INST: mov %d15, 255
# CHECK: encoding: [0xda,0xff]
.code16
mov %d15, 255

# CHECK-INST: mov %d0, -8
# CHECK: encoding: [0x82,0x80]
.code16
mov %d0, -8

# CHECK-INST: mov %d0, 0
# CHECK: encoding: [0x82,0x00]
.code16
mov %d0, 0

# CHECK-INST: mov %d0, 7
# CHECK: encoding: [0x82,0x70]
.code16
mov %d0, 7

# CHECK-INST: mov %d1, -8
# CHECK: encoding: [0x82,0x81]
.code16
mov %d1, -8

# CHECK-INST: mov %d1, 0
# CHECK: encoding: [0x82,0x01]
.code16
mov %d1, 0

# CHECK-INST: mov %d1, 7
# CHECK: encoding: [0x82,0x71]
.code16
mov %d1, 7

# CHECK-INST: mov %d14, -8
# CHECK: encoding: [0x82,0x8e]
.code16
mov %d14, -8

# CHECK-INST: mov %d14, 0
# CHECK: encoding: [0x82,0x0e]
.code16
mov %d14, 0

# CHECK-INST: mov %d14, 7
# CHECK: encoding: [0x82,0x7e]
.code16
mov %d14, 7

# CHECK-INST: mov %d15, -8
# CHECK: encoding: [0x82,0x8f]
.code16
mov %d15, -8

# CHECK-INST: mov %d15, 0
# CHECK: encoding: [0xda,0x00]
.code16
mov %d15, 0

# CHECK-INST: mov %d15, 7
# CHECK: encoding: [0xda,0x07]
.code16
mov %d15, 7

# CHECK-INST: mov %e0, -8
# CHECK: encoding: [0xd2,0x80]
.code16
mov %e0, -8

# CHECK-INST: mov %e0, 0
# CHECK: encoding: [0xd2,0x00]
.code16
mov %e0, 0

# CHECK-INST: mov %e0, 7
# CHECK: encoding: [0xd2,0x70]
.code16
mov %e0, 7

# CHECK-INST: mov %e6, -8
# CHECK: encoding: [0xd2,0x86]
.code16
mov %e6, -8

# CHECK-INST: mov %e6, 0
# CHECK: encoding: [0xd2,0x06]
.code16
mov %e6, 0

# CHECK-INST: mov %e6, 7
# CHECK: encoding: [0xd2,0x76]
.code16
mov %e6, 7

# CHECK-INST: mov %e14, -8
# CHECK: encoding: [0xd2,0x8e]
.code16
mov %e14, -8

# CHECK-INST: mov %e14, 0
# CHECK: encoding: [0xd2,0x0e]
.code16
mov %e14, 0

# CHECK-INST: mov %e14, 7
# CHECK: encoding: [0xd2,0x7e]
.code16
mov %e14, 7

# CHECK-INST: mov %d0, %d0
# CHECK: encoding: [0x02,0x00]
.code16
mov %d0, %d0

# CHECK-INST: mov %d0, %d1
# CHECK: encoding: [0x02,0x10]
.code16
mov %d0, %d1

# CHECK-INST: mov %d0, %d14
# CHECK: encoding: [0x02,0xe0]
.code16
mov %d0, %d14

# CHECK-INST: mov %d0, %d15
# CHECK: encoding: [0x02,0xf0]
.code16
mov %d0, %d15

# CHECK-INST: mov %d1, %d0
# CHECK: encoding: [0x02,0x01]
.code16
mov %d1, %d0

# CHECK-INST: mov %d1, %d1
# CHECK: encoding: [0x02,0x11]
.code16
mov %d1, %d1

# CHECK-INST: mov %d1, %d14
# CHECK: encoding: [0x02,0xe1]
.code16
mov %d1, %d14

# CHECK-INST: mov %d1, %d15
# CHECK: encoding: [0x02,0xf1]
.code16
mov %d1, %d15

# CHECK-INST: mov %d14, %d0
# CHECK: encoding: [0x02,0x0e]
.code16
mov %d14, %d0

# CHECK-INST: mov %d14, %d1
# CHECK: encoding: [0x02,0x1e]
.code16
mov %d14, %d1

# CHECK-INST: mov %d14, %d14
# CHECK: encoding: [0x02,0xee]
.code16
mov %d14, %d14

# CHECK-INST: mov %d14, %d15
# CHECK: encoding: [0x02,0xfe]
.code16
mov %d14, %d15

# CHECK-INST: mov %d15, %d0
# CHECK: encoding: [0x02,0x0f]
.code16
mov %d15, %d0

# CHECK-INST: mov %d15, %d1
# CHECK: encoding: [0x02,0x1f]
.code16
mov %d15, %d1

# CHECK-INST: mov %d15, %d14
# CHECK: encoding: [0x02,0xef]
.code16
mov %d15, %d14

# CHECK-INST: mov %d15, %d15
# CHECK: encoding: [0x02,0xff]
.code16
mov %d15, %d15

# CHECK-INST: mov.u %d0, 512
# CHECK: encoding: [0xbb,0x00,0x20,0x00]
.code32
mov.u %d0, 512

# CHECK-INST: mov.u %d0, 33023
# CHECK: encoding: [0xbb,0xf0,0x0f,0x08]
.code32
mov.u %d0, 33023

# CHECK-INST: mov.u %d0, 65280
# CHECK: encoding: [0xbb,0x00,0xf0,0x0f]
.code32
mov.u %d0, 65280

# CHECK-INST: mov.u %d0, 65535
# CHECK: encoding: [0xbb,0xf0,0xff,0x0f]
.code32
mov.u %d0, 65535

# CHECK-INST: mov.u %d1, 512
# CHECK: encoding: [0xbb,0x00,0x20,0x10]
.code32
mov.u %d1, 512

# CHECK-INST: mov.u %d1, 33023
# CHECK: encoding: [0xbb,0xf0,0x0f,0x18]
.code32
mov.u %d1, 33023

# CHECK-INST: mov.u %d1, 65280
# CHECK: encoding: [0xbb,0x00,0xf0,0x1f]
.code32
mov.u %d1, 65280

# CHECK-INST: mov.u %d1, 65535
# CHECK: encoding: [0xbb,0xf0,0xff,0x1f]
.code32
mov.u %d1, 65535

# CHECK-INST: mov.u %d14, 512
# CHECK: encoding: [0xbb,0x00,0x20,0xe0]
.code32
mov.u %d14, 512

# CHECK-INST: mov.u %d14, 33023
# CHECK: encoding: [0xbb,0xf0,0x0f,0xe8]
.code32
mov.u %d14, 33023

# CHECK-INST: mov.u %d14, 65280
# CHECK: encoding: [0xbb,0x00,0xf0,0xef]
.code32
mov.u %d14, 65280

# CHECK-INST: mov.u %d14, 65535
# CHECK: encoding: [0xbb,0xf0,0xff,0xef]
.code32
mov.u %d14, 65535

# CHECK-INST: mov.u %d15, 512
# CHECK: encoding: [0xbb,0x00,0x20,0xf0]
.code32
mov.u %d15, 512

# CHECK-INST: mov.u %d15, 33023
# CHECK: encoding: [0xbb,0xf0,0x0f,0xf8]
.code32
mov.u %d15, 33023

# CHECK-INST: mov.u %d15, 65280
# CHECK: encoding: [0xbb,0x00,0xf0,0xff]
.code32
mov.u %d15, 65280

# CHECK-INST: mov.u %d15, 65535
# CHECK: encoding: [0xbb,0xf0,0xff,0xff]
.code32
mov.u %d15, 65535

# CHECK-INST: movh %d0, 512
# CHECK: encoding: [0x7b,0x00,0x20,0x00]
.code32
movh %d0, 512

# CHECK-INST: movh %d0, 33023
# CHECK: encoding: [0x7b,0xf0,0x0f,0x08]
.code32
movh %d0, 33023

# CHECK-INST: movh %d0, 65280
# CHECK: encoding: [0x7b,0x00,0xf0,0x0f]
.code32
movh %d0, 65280

# CHECK-INST: movh %d0, 65535
# CHECK: encoding: [0x7b,0xf0,0xff,0x0f]
.code32
movh %d0, 65535

# CHECK-INST: movh %d1, 512
# CHECK: encoding: [0x7b,0x00,0x20,0x10]
.code32
movh %d1, 512

# CHECK-INST: movh %d1, 33023
# CHECK: encoding: [0x7b,0xf0,0x0f,0x18]
.code32
movh %d1, 33023

# CHECK-INST: movh %d1, 65280
# CHECK: encoding: [0x7b,0x00,0xf0,0x1f]
.code32
movh %d1, 65280

# CHECK-INST: movh %d1, 65535
# CHECK: encoding: [0x7b,0xf0,0xff,0x1f]
.code32
movh %d1, 65535

# CHECK-INST: movh %d14, 512
# CHECK: encoding: [0x7b,0x00,0x20,0xe0]
.code32
movh %d14, 512

# CHECK-INST: movh %d14, 33023
# CHECK: encoding: [0x7b,0xf0,0x0f,0xe8]
.code32
movh %d14, 33023

# CHECK-INST: movh %d14, 65280
# CHECK: encoding: [0x7b,0x00,0xf0,0xef]
.code32
movh %d14, 65280

# CHECK-INST: movh %d14, 65535
# CHECK: encoding: [0x7b,0xf0,0xff,0xef]
.code32
movh %d14, 65535

# CHECK-INST: movh %d15, 512
# CHECK: encoding: [0x7b,0x00,0x20,0xf0]
.code32
movh %d15, 512

# CHECK-INST: movh %d15, 33023
# CHECK: encoding: [0x7b,0xf0,0x0f,0xf8]
.code32
movh %d15, 33023

# CHECK-INST: movh %d15, 65280
# CHECK: encoding: [0x7b,0x00,0xf0,0xff]
.code32
movh %d15, 65280

# CHECK-INST: movh %d15, 65535
# CHECK: encoding: [0x7b,0xf0,0xff,0xff]
.code32
movh %d15, 65535
 

### Test if 16 bit instructions are generated by default

# CHECK-INST: mov %d15, 0
# CHECK: encoding: [0xda,0x00]
mov %d15, 0

# CHECK-INST: mov %d0, 0
# CHECK: encoding: [0x82,0x00]
mov %d0, 0

# CHECK-INST: mov %e0, 0
# CHECK: encoding: [0xd2,0x00]
mov %e0, 0

# CHECK-INST: mov %d0, %d0
# CHECK: encoding: [0x02,0x00]
mov %d0, %d0