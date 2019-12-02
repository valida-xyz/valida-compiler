# RUN: llvm-mc %s -triple=tricore -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK,CHECK-INST %s
# RUN: llvm-mc -filetype=obj -triple=tricore < %s \
# RUN:     | llvm-objdump -d - | FileCheck -check-prefix=CHECK-INST %s

# CHECK-INST: calli %a0
# CHECK: encoding: [0xdc,0x10]
.code16
calli %a0

# CHECK-INST: calli %a1
# CHECK: encoding: [0xdc,0x11]
.code16
calli %a1

# CHECK-INST: calli %a14
# CHECK: encoding: [0xdc,0x1e]
.code16
calli %a14

# CHECK-INST: calli %a15
# CHECK: encoding: [0xdc,0x1f]
.code16
calli %a15

# CHECK-INST: hvcall 255
# CHECK: encoding: [0xad,0xf0,0x4f,0x00]
.code32
hvcall 255

# CHECK-INST: rfh
# CHECK: encoding: [0x0d,0x00,0xc0,0x05]
.code32
rfh

# CHECK-INST: mtdcr 0, %e0
# CHECK: encoding: [0xcf,0x00,0x00,0x00]
.code32
mtdcr 0, %e0

# CHECK-INST: mtdcr 0, %e2
# CHECK: encoding: [0xcf,0x02,0x00,0x00]
.code32
mtdcr 0, %e2

# CHECK-INST: mtdcr 0, %e4
# CHECK: encoding: [0xcf,0x04,0x00,0x00]
.code32
mtdcr 0, %e4

# CHECK-INST: mtdcr 0, %e8
# CHECK: encoding: [0xcf,0x08,0x00,0x00]
.code32
mtdcr 0, %e8

# CHECK-INST: mtdcr 8, %e0
# CHECK: encoding: [0xcf,0x80,0x00,0x00]
.code32
mtdcr 8, %e0

# CHECK-INST: mtdcr 8, %e2
# CHECK: encoding: [0xcf,0x82,0x00,0x00]
.code32
mtdcr 8, %e2

# CHECK-INST: mtdcr 8, %e4
# CHECK: encoding: [0xcf,0x84,0x00,0x00]
.code32
mtdcr 8, %e4

# CHECK-INST: mtdcr 8, %e8
# CHECK: encoding: [0xcf,0x88,0x00,0x00]
.code32
mtdcr 8, %e8

# CHECK-INST: mtdcr 65528, %e0
# CHECK: encoding: [0xcf,0x80,0xff,0x0f]
.code32
mtdcr 65528, %e0

# CHECK-INST: mtdcr 65528, %e2
# CHECK: encoding: [0xcf,0x82,0xff,0x0f]
.code32
mtdcr 65528, %e2

# CHECK-INST: mtdcr 65528, %e4
# CHECK: encoding: [0xcf,0x84,0xff,0x0f]
.code32
mtdcr 65528, %e4

# CHECK-INST: mtdcr 65528, %e8
# CHECK: encoding: [0xcf,0x88,0xff,0x0f]
.code32
mtdcr 65528, %e8

# CHECK-INST: mtdcr 65528, %e0
# CHECK: encoding: [0xcf,0x80,0xff,0x0f]
.code32
mtdcr 65528, %e0

# CHECK-INST: mtdcr 65528, %e2
# CHECK: encoding: [0xcf,0x82,0xff,0x0f]
.code32
mtdcr 65528, %e2

# CHECK-INST: mtdcr 65528, %e4
# CHECK: encoding: [0xcf,0x84,0xff,0x0f]
.code32
mtdcr 65528, %e4

# CHECK-INST: mtdcr 65528, %e8
# CHECK: encoding: [0xcf,0x88,0xff,0x0f]
.code32
mtdcr 65528, %e8

# CHECK-INST: mfdcr %e0, 0
# CHECK: encoding: [0x4f,0x00,0x00,0x00]
.code32
mfdcr %e0, 0

# CHECK-INST: mfdcr %e0, 8
# CHECK: encoding: [0x4f,0x80,0x00,0x00]
.code32
mfdcr %e0, 8

# CHECK-INST: mfdcr %e0, 65528
# CHECK: encoding: [0x4f,0x80,0xff,0x0f]
.code32
mfdcr %e0, 65528

# CHECK-INST: mfdcr %e0, 65528
# CHECK: encoding: [0x4f,0x80,0xff,0x0f]
.code32
mfdcr %e0, 65528

# CHECK-INST: mfdcr %e2, 0
# CHECK: encoding: [0x4f,0x00,0x00,0x20]
.code32
mfdcr %e2, 0

# CHECK-INST: mfdcr %e2, 8
# CHECK: encoding: [0x4f,0x80,0x00,0x20]
.code32
mfdcr %e2, 8

# CHECK-INST: mfdcr %e2, 65528
# CHECK: encoding: [0x4f,0x80,0xff,0x2f]
.code32
mfdcr %e2, 65528

# CHECK-INST: mfdcr %e2, 65528
# CHECK: encoding: [0x4f,0x80,0xff,0x2f]
.code32
mfdcr %e2, 65528

# CHECK-INST: mfdcr %e4, 0
# CHECK: encoding: [0x4f,0x00,0x00,0x40]
.code32
mfdcr %e4, 0

# CHECK-INST: mfdcr %e4, 8
# CHECK: encoding: [0x4f,0x80,0x00,0x40]
.code32
mfdcr %e4, 8

# CHECK-INST: mfdcr %e4, 65528
# CHECK: encoding: [0x4f,0x80,0xff,0x4f]
.code32
mfdcr %e4, 65528

# CHECK-INST: mfdcr %e4, 65528
# CHECK: encoding: [0x4f,0x80,0xff,0x4f]
.code32
mfdcr %e4, 65528

# CHECK-INST: mfdcr %e8, 0
# CHECK: encoding: [0x4f,0x00,0x00,0x80]
.code32
mfdcr %e8, 0

# CHECK-INST: mfdcr %e8, 8
# CHECK: encoding: [0x4f,0x80,0x00,0x80]
.code32
mfdcr %e8, 8

# CHECK-INST: mfdcr %e8, 65528
# CHECK: encoding: [0x4f,0x80,0xff,0x8f]
.code32
mfdcr %e8, 65528

# CHECK-INST: mfdcr %e8, 65528
# CHECK: encoding: [0x4f,0x80,0xff,0x8f]
.code32
mfdcr %e8, 65528

# CHECK-INST: mulp.b %e0, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0xb0,0x02]
.code32
mulp.b %e0, %d0, %d0

# CHECK-INST: mulp.b %e0, %d0, %d1
# CHECK: encoding: [0x4b,0x10,0xb0,0x02]
.code32
mulp.b %e0, %d0, %d1

# CHECK-INST: mulp.b %e0, %d0, %d14
# CHECK: encoding: [0x4b,0xe0,0xb0,0x02]
.code32
mulp.b %e0, %d0, %d14

# CHECK-INST: mulp.b %e0, %d0, %d15
# CHECK: encoding: [0x4b,0xf0,0xb0,0x02]
.code32
mulp.b %e0, %d0, %d15

# CHECK-INST: mulp.b %e0, %d1, %d0
# CHECK: encoding: [0x4b,0x01,0xb0,0x02]
.code32
mulp.b %e0, %d1, %d0

# CHECK-INST: mulp.b %e0, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0xb0,0x02]
.code32
mulp.b %e0, %d1, %d1

# CHECK-INST: mulp.b %e0, %d1, %d14
# CHECK: encoding: [0x4b,0xe1,0xb0,0x02]
.code32
mulp.b %e0, %d1, %d14

# CHECK-INST: mulp.b %e0, %d1, %d15
# CHECK: encoding: [0x4b,0xf1,0xb0,0x02]
.code32
mulp.b %e0, %d1, %d15

# CHECK-INST: mulp.b %e0, %d14, %d0
# CHECK: encoding: [0x4b,0x0e,0xb0,0x02]
.code32
mulp.b %e0, %d14, %d0

# CHECK-INST: mulp.b %e0, %d14, %d1
# CHECK: encoding: [0x4b,0x1e,0xb0,0x02]
.code32
mulp.b %e0, %d14, %d1

# CHECK-INST: mulp.b %e0, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0xb0,0x02]
.code32
mulp.b %e0, %d14, %d14

# CHECK-INST: mulp.b %e0, %d14, %d15
# CHECK: encoding: [0x4b,0xfe,0xb0,0x02]
.code32
mulp.b %e0, %d14, %d15

# CHECK-INST: mulp.b %e0, %d15, %d0
# CHECK: encoding: [0x4b,0x0f,0xb0,0x02]
.code32
mulp.b %e0, %d15, %d0

# CHECK-INST: mulp.b %e0, %d15, %d1
# CHECK: encoding: [0x4b,0x1f,0xb0,0x02]
.code32
mulp.b %e0, %d15, %d1

# CHECK-INST: mulp.b %e0, %d15, %d14
# CHECK: encoding: [0x4b,0xef,0xb0,0x02]
.code32
mulp.b %e0, %d15, %d14

# CHECK-INST: mulp.b %e0, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0xb0,0x02]
.code32
mulp.b %e0, %d15, %d15

# CHECK-INST: mulp.b %e2, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0xb0,0x22]
.code32
mulp.b %e2, %d0, %d0

# CHECK-INST: mulp.b %e2, %d0, %d1
# CHECK: encoding: [0x4b,0x10,0xb0,0x22]
.code32
mulp.b %e2, %d0, %d1

# CHECK-INST: mulp.b %e2, %d0, %d14
# CHECK: encoding: [0x4b,0xe0,0xb0,0x22]
.code32
mulp.b %e2, %d0, %d14

# CHECK-INST: mulp.b %e2, %d0, %d15
# CHECK: encoding: [0x4b,0xf0,0xb0,0x22]
.code32
mulp.b %e2, %d0, %d15

# CHECK-INST: mulp.b %e2, %d1, %d0
# CHECK: encoding: [0x4b,0x01,0xb0,0x22]
.code32
mulp.b %e2, %d1, %d0

# CHECK-INST: mulp.b %e2, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0xb0,0x22]
.code32
mulp.b %e2, %d1, %d1

# CHECK-INST: mulp.b %e2, %d1, %d14
# CHECK: encoding: [0x4b,0xe1,0xb0,0x22]
.code32
mulp.b %e2, %d1, %d14

# CHECK-INST: mulp.b %e2, %d1, %d15
# CHECK: encoding: [0x4b,0xf1,0xb0,0x22]
.code32
mulp.b %e2, %d1, %d15

# CHECK-INST: mulp.b %e2, %d14, %d0
# CHECK: encoding: [0x4b,0x0e,0xb0,0x22]
.code32
mulp.b %e2, %d14, %d0

# CHECK-INST: mulp.b %e2, %d14, %d1
# CHECK: encoding: [0x4b,0x1e,0xb0,0x22]
.code32
mulp.b %e2, %d14, %d1

# CHECK-INST: mulp.b %e2, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0xb0,0x22]
.code32
mulp.b %e2, %d14, %d14

# CHECK-INST: mulp.b %e2, %d14, %d15
# CHECK: encoding: [0x4b,0xfe,0xb0,0x22]
.code32
mulp.b %e2, %d14, %d15

# CHECK-INST: mulp.b %e2, %d15, %d0
# CHECK: encoding: [0x4b,0x0f,0xb0,0x22]
.code32
mulp.b %e2, %d15, %d0

# CHECK-INST: mulp.b %e2, %d15, %d1
# CHECK: encoding: [0x4b,0x1f,0xb0,0x22]
.code32
mulp.b %e2, %d15, %d1

# CHECK-INST: mulp.b %e2, %d15, %d14
# CHECK: encoding: [0x4b,0xef,0xb0,0x22]
.code32
mulp.b %e2, %d15, %d14

# CHECK-INST: mulp.b %e2, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0xb0,0x22]
.code32
mulp.b %e2, %d15, %d15

# CHECK-INST: mulp.b %e12, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0xb0,0xc2]
.code32
mulp.b %e12, %d0, %d0

# CHECK-INST: mulp.b %e12, %d0, %d1
# CHECK: encoding: [0x4b,0x10,0xb0,0xc2]
.code32
mulp.b %e12, %d0, %d1

# CHECK-INST: mulp.b %e12, %d0, %d14
# CHECK: encoding: [0x4b,0xe0,0xb0,0xc2]
.code32
mulp.b %e12, %d0, %d14

# CHECK-INST: mulp.b %e12, %d0, %d15
# CHECK: encoding: [0x4b,0xf0,0xb0,0xc2]
.code32
mulp.b %e12, %d0, %d15

# CHECK-INST: mulp.b %e12, %d1, %d0
# CHECK: encoding: [0x4b,0x01,0xb0,0xc2]
.code32
mulp.b %e12, %d1, %d0

# CHECK-INST: mulp.b %e12, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0xb0,0xc2]
.code32
mulp.b %e12, %d1, %d1

# CHECK-INST: mulp.b %e12, %d1, %d14
# CHECK: encoding: [0x4b,0xe1,0xb0,0xc2]
.code32
mulp.b %e12, %d1, %d14

# CHECK-INST: mulp.b %e12, %d1, %d15
# CHECK: encoding: [0x4b,0xf1,0xb0,0xc2]
.code32
mulp.b %e12, %d1, %d15

# CHECK-INST: mulp.b %e12, %d14, %d0
# CHECK: encoding: [0x4b,0x0e,0xb0,0xc2]
.code32
mulp.b %e12, %d14, %d0

# CHECK-INST: mulp.b %e12, %d14, %d1
# CHECK: encoding: [0x4b,0x1e,0xb0,0xc2]
.code32
mulp.b %e12, %d14, %d1

# CHECK-INST: mulp.b %e12, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0xb0,0xc2]
.code32
mulp.b %e12, %d14, %d14

# CHECK-INST: mulp.b %e12, %d14, %d15
# CHECK: encoding: [0x4b,0xfe,0xb0,0xc2]
.code32
mulp.b %e12, %d14, %d15

# CHECK-INST: mulp.b %e12, %d15, %d0
# CHECK: encoding: [0x4b,0x0f,0xb0,0xc2]
.code32
mulp.b %e12, %d15, %d0

# CHECK-INST: mulp.b %e12, %d15, %d1
# CHECK: encoding: [0x4b,0x1f,0xb0,0xc2]
.code32
mulp.b %e12, %d15, %d1

# CHECK-INST: mulp.b %e12, %d15, %d14
# CHECK: encoding: [0x4b,0xef,0xb0,0xc2]
.code32
mulp.b %e12, %d15, %d14

# CHECK-INST: mulp.b %e12, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0xb0,0xc2]
.code32
mulp.b %e12, %d15, %d15

# CHECK-INST: mulp.b %e14, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0xb0,0xe2]
.code32
mulp.b %e14, %d0, %d0

# CHECK-INST: mulp.b %e14, %d0, %d1
# CHECK: encoding: [0x4b,0x10,0xb0,0xe2]
.code32
mulp.b %e14, %d0, %d1

# CHECK-INST: mulp.b %e14, %d0, %d14
# CHECK: encoding: [0x4b,0xe0,0xb0,0xe2]
.code32
mulp.b %e14, %d0, %d14

# CHECK-INST: mulp.b %e14, %d0, %d15
# CHECK: encoding: [0x4b,0xf0,0xb0,0xe2]
.code32
mulp.b %e14, %d0, %d15

# CHECK-INST: mulp.b %e14, %d1, %d0
# CHECK: encoding: [0x4b,0x01,0xb0,0xe2]
.code32
mulp.b %e14, %d1, %d0

# CHECK-INST: mulp.b %e14, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0xb0,0xe2]
.code32
mulp.b %e14, %d1, %d1

# CHECK-INST: mulp.b %e14, %d1, %d14
# CHECK: encoding: [0x4b,0xe1,0xb0,0xe2]
.code32
mulp.b %e14, %d1, %d14

# CHECK-INST: mulp.b %e14, %d1, %d15
# CHECK: encoding: [0x4b,0xf1,0xb0,0xe2]
.code32
mulp.b %e14, %d1, %d15

# CHECK-INST: mulp.b %e14, %d14, %d0
# CHECK: encoding: [0x4b,0x0e,0xb0,0xe2]
.code32
mulp.b %e14, %d14, %d0

# CHECK-INST: mulp.b %e14, %d14, %d1
# CHECK: encoding: [0x4b,0x1e,0xb0,0xe2]
.code32
mulp.b %e14, %d14, %d1

# CHECK-INST: mulp.b %e14, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0xb0,0xe2]
.code32
mulp.b %e14, %d14, %d14

# CHECK-INST: mulp.b %e14, %d14, %d15
# CHECK: encoding: [0x4b,0xfe,0xb0,0xe2]
.code32
mulp.b %e14, %d14, %d15

# CHECK-INST: mulp.b %e14, %d15, %d0
# CHECK: encoding: [0x4b,0x0f,0xb0,0xe2]
.code32
mulp.b %e14, %d15, %d0

# CHECK-INST: mulp.b %e14, %d15, %d1
# CHECK: encoding: [0x4b,0x1f,0xb0,0xe2]
.code32
mulp.b %e14, %d15, %d1

# CHECK-INST: mulp.b %e14, %d15, %d14
# CHECK: encoding: [0x4b,0xef,0xb0,0xe2]
.code32
mulp.b %e14, %d15, %d14

# CHECK-INST: mulp.b %e14, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0xb0,0xe2]
.code32
mulp.b %e14, %d15, %d15
