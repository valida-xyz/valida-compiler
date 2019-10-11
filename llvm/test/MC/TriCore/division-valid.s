# RUN: llvm-mc %s -triple=tricore -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK,CHECK-INST %s

# CHECK-INST: dvinit %e0, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0xa0,0x01]
dvinit %e0, %d0, %d0

# CHECK-INST: dvinit %e0, %d0, %d1
# CHECK: encoding: [0x4b,0x10,0xa0,0x01]
dvinit %e0, %d0, %d1

# CHECK-INST: dvinit %e0, %d0, %d14
# CHECK: encoding: [0x4b,0xe0,0xa0,0x01]
dvinit %e0, %d0, %d14

# CHECK-INST: dvinit %e0, %d0, %d15
# CHECK: encoding: [0x4b,0xf0,0xa0,0x01]
dvinit %e0, %d0, %d15

# CHECK-INST: dvinit %e0, %d1, %d0
# CHECK: encoding: [0x4b,0x01,0xa0,0x01]
dvinit %e0, %d1, %d0

# CHECK-INST: dvinit %e0, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0xa0,0x01]
dvinit %e0, %d1, %d1

# CHECK-INST: dvinit %e0, %d1, %d14
# CHECK: encoding: [0x4b,0xe1,0xa0,0x01]
dvinit %e0, %d1, %d14

# CHECK-INST: dvinit %e0, %d1, %d15
# CHECK: encoding: [0x4b,0xf1,0xa0,0x01]
dvinit %e0, %d1, %d15

# CHECK-INST: dvinit %e0, %d14, %d0
# CHECK: encoding: [0x4b,0x0e,0xa0,0x01]
dvinit %e0, %d14, %d0

# CHECK-INST: dvinit %e0, %d14, %d1
# CHECK: encoding: [0x4b,0x1e,0xa0,0x01]
dvinit %e0, %d14, %d1

# CHECK-INST: dvinit %e0, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0xa0,0x01]
dvinit %e0, %d14, %d14

# CHECK-INST: dvinit %e0, %d14, %d15
# CHECK: encoding: [0x4b,0xfe,0xa0,0x01]
dvinit %e0, %d14, %d15

# CHECK-INST: dvinit %e0, %d15, %d0
# CHECK: encoding: [0x4b,0x0f,0xa0,0x01]
dvinit %e0, %d15, %d0

# CHECK-INST: dvinit %e0, %d15, %d1
# CHECK: encoding: [0x4b,0x1f,0xa0,0x01]
dvinit %e0, %d15, %d1

# CHECK-INST: dvinit %e0, %d15, %d14
# CHECK: encoding: [0x4b,0xef,0xa0,0x01]
dvinit %e0, %d15, %d14

# CHECK-INST: dvinit %e0, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0xa0,0x01]
dvinit %e0, %d15, %d15

# CHECK-INST: dvinit %e6, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0xa0,0x61]
dvinit %e6, %d0, %d0

# CHECK-INST: dvinit %e6, %d0, %d1
# CHECK: encoding: [0x4b,0x10,0xa0,0x61]
dvinit %e6, %d0, %d1

# CHECK-INST: dvinit %e6, %d0, %d14
# CHECK: encoding: [0x4b,0xe0,0xa0,0x61]
dvinit %e6, %d0, %d14

# CHECK-INST: dvinit %e6, %d0, %d15
# CHECK: encoding: [0x4b,0xf0,0xa0,0x61]
dvinit %e6, %d0, %d15

# CHECK-INST: dvinit %e6, %d1, %d0
# CHECK: encoding: [0x4b,0x01,0xa0,0x61]
dvinit %e6, %d1, %d0

# CHECK-INST: dvinit %e6, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0xa0,0x61]
dvinit %e6, %d1, %d1

# CHECK-INST: dvinit %e6, %d1, %d14
# CHECK: encoding: [0x4b,0xe1,0xa0,0x61]
dvinit %e6, %d1, %d14

# CHECK-INST: dvinit %e6, %d1, %d15
# CHECK: encoding: [0x4b,0xf1,0xa0,0x61]
dvinit %e6, %d1, %d15

# CHECK-INST: dvinit %e6, %d14, %d0
# CHECK: encoding: [0x4b,0x0e,0xa0,0x61]
dvinit %e6, %d14, %d0

# CHECK-INST: dvinit %e6, %d14, %d1
# CHECK: encoding: [0x4b,0x1e,0xa0,0x61]
dvinit %e6, %d14, %d1

# CHECK-INST: dvinit %e6, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0xa0,0x61]
dvinit %e6, %d14, %d14

# CHECK-INST: dvinit %e6, %d14, %d15
# CHECK: encoding: [0x4b,0xfe,0xa0,0x61]
dvinit %e6, %d14, %d15

# CHECK-INST: dvinit %e6, %d15, %d0
# CHECK: encoding: [0x4b,0x0f,0xa0,0x61]
dvinit %e6, %d15, %d0

# CHECK-INST: dvinit %e6, %d15, %d1
# CHECK: encoding: [0x4b,0x1f,0xa0,0x61]
dvinit %e6, %d15, %d1

# CHECK-INST: dvinit %e6, %d15, %d14
# CHECK: encoding: [0x4b,0xef,0xa0,0x61]
dvinit %e6, %d15, %d14

# CHECK-INST: dvinit %e6, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0xa0,0x61]
dvinit %e6, %d15, %d15

# CHECK-INST: dvinit %e14, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0xa0,0xe1]
dvinit %e14, %d0, %d0

# CHECK-INST: dvinit %e14, %d0, %d1
# CHECK: encoding: [0x4b,0x10,0xa0,0xe1]
dvinit %e14, %d0, %d1

# CHECK-INST: dvinit %e14, %d0, %d14
# CHECK: encoding: [0x4b,0xe0,0xa0,0xe1]
dvinit %e14, %d0, %d14

# CHECK-INST: dvinit %e14, %d0, %d15
# CHECK: encoding: [0x4b,0xf0,0xa0,0xe1]
dvinit %e14, %d0, %d15

# CHECK-INST: dvinit %e14, %d1, %d0
# CHECK: encoding: [0x4b,0x01,0xa0,0xe1]
dvinit %e14, %d1, %d0

# CHECK-INST: dvinit %e14, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0xa0,0xe1]
dvinit %e14, %d1, %d1

# CHECK-INST: dvinit %e14, %d1, %d14
# CHECK: encoding: [0x4b,0xe1,0xa0,0xe1]
dvinit %e14, %d1, %d14

# CHECK-INST: dvinit %e14, %d1, %d15
# CHECK: encoding: [0x4b,0xf1,0xa0,0xe1]
dvinit %e14, %d1, %d15

# CHECK-INST: dvinit %e14, %d14, %d0
# CHECK: encoding: [0x4b,0x0e,0xa0,0xe1]
dvinit %e14, %d14, %d0

# CHECK-INST: dvinit %e14, %d14, %d1
# CHECK: encoding: [0x4b,0x1e,0xa0,0xe1]
dvinit %e14, %d14, %d1

# CHECK-INST: dvinit %e14, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0xa0,0xe1]
dvinit %e14, %d14, %d14

# CHECK-INST: dvinit %e14, %d14, %d15
# CHECK: encoding: [0x4b,0xfe,0xa0,0xe1]
dvinit %e14, %d14, %d15

# CHECK-INST: dvinit %e14, %d15, %d0
# CHECK: encoding: [0x4b,0x0f,0xa0,0xe1]
dvinit %e14, %d15, %d0

# CHECK-INST: dvinit %e14, %d15, %d1
# CHECK: encoding: [0x4b,0x1f,0xa0,0xe1]
dvinit %e14, %d15, %d1

# CHECK-INST: dvinit %e14, %d15, %d14
# CHECK: encoding: [0x4b,0xef,0xa0,0xe1]
dvinit %e14, %d15, %d14

# CHECK-INST: dvinit %e14, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0xa0,0xe1]
dvinit %e14, %d15, %d15

# CHECK-INST: dvinit.u %e0, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0xa0,0x00]
dvinit.u %e0, %d0, %d0

# CHECK-INST: dvinit.u %e0, %d0, %d1
# CHECK: encoding: [0x4b,0x10,0xa0,0x00]
dvinit.u %e0, %d0, %d1

# CHECK-INST: dvinit.u %e0, %d0, %d14
# CHECK: encoding: [0x4b,0xe0,0xa0,0x00]
dvinit.u %e0, %d0, %d14

# CHECK-INST: dvinit.u %e0, %d0, %d15
# CHECK: encoding: [0x4b,0xf0,0xa0,0x00]
dvinit.u %e0, %d0, %d15

# CHECK-INST: dvinit.u %e0, %d1, %d0
# CHECK: encoding: [0x4b,0x01,0xa0,0x00]
dvinit.u %e0, %d1, %d0

# CHECK-INST: dvinit.u %e0, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0xa0,0x00]
dvinit.u %e0, %d1, %d1

# CHECK-INST: dvinit.u %e0, %d1, %d14
# CHECK: encoding: [0x4b,0xe1,0xa0,0x00]
dvinit.u %e0, %d1, %d14

# CHECK-INST: dvinit.u %e0, %d1, %d15
# CHECK: encoding: [0x4b,0xf1,0xa0,0x00]
dvinit.u %e0, %d1, %d15

# CHECK-INST: dvinit.u %e0, %d14, %d0
# CHECK: encoding: [0x4b,0x0e,0xa0,0x00]
dvinit.u %e0, %d14, %d0

# CHECK-INST: dvinit.u %e0, %d14, %d1
# CHECK: encoding: [0x4b,0x1e,0xa0,0x00]
dvinit.u %e0, %d14, %d1

# CHECK-INST: dvinit.u %e0, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0xa0,0x00]
dvinit.u %e0, %d14, %d14

# CHECK-INST: dvinit.u %e0, %d14, %d15
# CHECK: encoding: [0x4b,0xfe,0xa0,0x00]
dvinit.u %e0, %d14, %d15

# CHECK-INST: dvinit.u %e0, %d15, %d0
# CHECK: encoding: [0x4b,0x0f,0xa0,0x00]
dvinit.u %e0, %d15, %d0

# CHECK-INST: dvinit.u %e0, %d15, %d1
# CHECK: encoding: [0x4b,0x1f,0xa0,0x00]
dvinit.u %e0, %d15, %d1

# CHECK-INST: dvinit.u %e0, %d15, %d14
# CHECK: encoding: [0x4b,0xef,0xa0,0x00]
dvinit.u %e0, %d15, %d14

# CHECK-INST: dvinit.u %e0, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0xa0,0x00]
dvinit.u %e0, %d15, %d15

# CHECK-INST: dvinit.u %e6, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0xa0,0x60]
dvinit.u %e6, %d0, %d0

# CHECK-INST: dvinit.u %e6, %d0, %d1
# CHECK: encoding: [0x4b,0x10,0xa0,0x60]
dvinit.u %e6, %d0, %d1

# CHECK-INST: dvinit.u %e6, %d0, %d14
# CHECK: encoding: [0x4b,0xe0,0xa0,0x60]
dvinit.u %e6, %d0, %d14

# CHECK-INST: dvinit.u %e6, %d0, %d15
# CHECK: encoding: [0x4b,0xf0,0xa0,0x60]
dvinit.u %e6, %d0, %d15

# CHECK-INST: dvinit.u %e6, %d1, %d0
# CHECK: encoding: [0x4b,0x01,0xa0,0x60]
dvinit.u %e6, %d1, %d0

# CHECK-INST: dvinit.u %e6, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0xa0,0x60]
dvinit.u %e6, %d1, %d1

# CHECK-INST: dvinit.u %e6, %d1, %d14
# CHECK: encoding: [0x4b,0xe1,0xa0,0x60]
dvinit.u %e6, %d1, %d14

# CHECK-INST: dvinit.u %e6, %d1, %d15
# CHECK: encoding: [0x4b,0xf1,0xa0,0x60]
dvinit.u %e6, %d1, %d15

# CHECK-INST: dvinit.u %e6, %d14, %d0
# CHECK: encoding: [0x4b,0x0e,0xa0,0x60]
dvinit.u %e6, %d14, %d0

# CHECK-INST: dvinit.u %e6, %d14, %d1
# CHECK: encoding: [0x4b,0x1e,0xa0,0x60]
dvinit.u %e6, %d14, %d1

# CHECK-INST: dvinit.u %e6, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0xa0,0x60]
dvinit.u %e6, %d14, %d14

# CHECK-INST: dvinit.u %e6, %d14, %d15
# CHECK: encoding: [0x4b,0xfe,0xa0,0x60]
dvinit.u %e6, %d14, %d15

# CHECK-INST: dvinit.u %e6, %d15, %d0
# CHECK: encoding: [0x4b,0x0f,0xa0,0x60]
dvinit.u %e6, %d15, %d0

# CHECK-INST: dvinit.u %e6, %d15, %d1
# CHECK: encoding: [0x4b,0x1f,0xa0,0x60]
dvinit.u %e6, %d15, %d1

# CHECK-INST: dvinit.u %e6, %d15, %d14
# CHECK: encoding: [0x4b,0xef,0xa0,0x60]
dvinit.u %e6, %d15, %d14

# CHECK-INST: dvinit.u %e6, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0xa0,0x60]
dvinit.u %e6, %d15, %d15

# CHECK-INST: dvinit.u %e14, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0xa0,0xe0]
dvinit.u %e14, %d0, %d0

# CHECK-INST: dvinit.u %e14, %d0, %d1
# CHECK: encoding: [0x4b,0x10,0xa0,0xe0]
dvinit.u %e14, %d0, %d1

# CHECK-INST: dvinit.u %e14, %d0, %d14
# CHECK: encoding: [0x4b,0xe0,0xa0,0xe0]
dvinit.u %e14, %d0, %d14

# CHECK-INST: dvinit.u %e14, %d0, %d15
# CHECK: encoding: [0x4b,0xf0,0xa0,0xe0]
dvinit.u %e14, %d0, %d15

# CHECK-INST: dvinit.u %e14, %d1, %d0
# CHECK: encoding: [0x4b,0x01,0xa0,0xe0]
dvinit.u %e14, %d1, %d0

# CHECK-INST: dvinit.u %e14, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0xa0,0xe0]
dvinit.u %e14, %d1, %d1

# CHECK-INST: dvinit.u %e14, %d1, %d14
# CHECK: encoding: [0x4b,0xe1,0xa0,0xe0]
dvinit.u %e14, %d1, %d14

# CHECK-INST: dvinit.u %e14, %d1, %d15
# CHECK: encoding: [0x4b,0xf1,0xa0,0xe0]
dvinit.u %e14, %d1, %d15

# CHECK-INST: dvinit.u %e14, %d14, %d0
# CHECK: encoding: [0x4b,0x0e,0xa0,0xe0]
dvinit.u %e14, %d14, %d0

# CHECK-INST: dvinit.u %e14, %d14, %d1
# CHECK: encoding: [0x4b,0x1e,0xa0,0xe0]
dvinit.u %e14, %d14, %d1

# CHECK-INST: dvinit.u %e14, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0xa0,0xe0]
dvinit.u %e14, %d14, %d14

# CHECK-INST: dvinit.u %e14, %d14, %d15
# CHECK: encoding: [0x4b,0xfe,0xa0,0xe0]
dvinit.u %e14, %d14, %d15

# CHECK-INST: dvinit.u %e14, %d15, %d0
# CHECK: encoding: [0x4b,0x0f,0xa0,0xe0]
dvinit.u %e14, %d15, %d0

# CHECK-INST: dvinit.u %e14, %d15, %d1
# CHECK: encoding: [0x4b,0x1f,0xa0,0xe0]
dvinit.u %e14, %d15, %d1

# CHECK-INST: dvinit.u %e14, %d15, %d14
# CHECK: encoding: [0x4b,0xef,0xa0,0xe0]
dvinit.u %e14, %d15, %d14

# CHECK-INST: dvinit.u %e14, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0xa0,0xe0]
dvinit.u %e14, %d15, %d15

# CHECK-INST: dvinit.b %e0, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0xa0,0x05]
dvinit.b %e0, %d0, %d0

# CHECK-INST: dvinit.b %e0, %d0, %d1
# CHECK: encoding: [0x4b,0x10,0xa0,0x05]
dvinit.b %e0, %d0, %d1

# CHECK-INST: dvinit.b %e0, %d0, %d14
# CHECK: encoding: [0x4b,0xe0,0xa0,0x05]
dvinit.b %e0, %d0, %d14

# CHECK-INST: dvinit.b %e0, %d0, %d15
# CHECK: encoding: [0x4b,0xf0,0xa0,0x05]
dvinit.b %e0, %d0, %d15

# CHECK-INST: dvinit.b %e0, %d1, %d0
# CHECK: encoding: [0x4b,0x01,0xa0,0x05]
dvinit.b %e0, %d1, %d0

# CHECK-INST: dvinit.b %e0, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0xa0,0x05]
dvinit.b %e0, %d1, %d1

# CHECK-INST: dvinit.b %e0, %d1, %d14
# CHECK: encoding: [0x4b,0xe1,0xa0,0x05]
dvinit.b %e0, %d1, %d14

# CHECK-INST: dvinit.b %e0, %d1, %d15
# CHECK: encoding: [0x4b,0xf1,0xa0,0x05]
dvinit.b %e0, %d1, %d15

# CHECK-INST: dvinit.b %e0, %d14, %d0
# CHECK: encoding: [0x4b,0x0e,0xa0,0x05]
dvinit.b %e0, %d14, %d0

# CHECK-INST: dvinit.b %e0, %d14, %d1
# CHECK: encoding: [0x4b,0x1e,0xa0,0x05]
dvinit.b %e0, %d14, %d1

# CHECK-INST: dvinit.b %e0, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0xa0,0x05]
dvinit.b %e0, %d14, %d14

# CHECK-INST: dvinit.b %e0, %d14, %d15
# CHECK: encoding: [0x4b,0xfe,0xa0,0x05]
dvinit.b %e0, %d14, %d15

# CHECK-INST: dvinit.b %e0, %d15, %d0
# CHECK: encoding: [0x4b,0x0f,0xa0,0x05]
dvinit.b %e0, %d15, %d0

# CHECK-INST: dvinit.b %e0, %d15, %d1
# CHECK: encoding: [0x4b,0x1f,0xa0,0x05]
dvinit.b %e0, %d15, %d1

# CHECK-INST: dvinit.b %e0, %d15, %d14
# CHECK: encoding: [0x4b,0xef,0xa0,0x05]
dvinit.b %e0, %d15, %d14

# CHECK-INST: dvinit.b %e0, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0xa0,0x05]
dvinit.b %e0, %d15, %d15

# CHECK-INST: dvinit.b %e6, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0xa0,0x65]
dvinit.b %e6, %d0, %d0

# CHECK-INST: dvinit.b %e6, %d0, %d1
# CHECK: encoding: [0x4b,0x10,0xa0,0x65]
dvinit.b %e6, %d0, %d1

# CHECK-INST: dvinit.b %e6, %d0, %d14
# CHECK: encoding: [0x4b,0xe0,0xa0,0x65]
dvinit.b %e6, %d0, %d14

# CHECK-INST: dvinit.b %e6, %d0, %d15
# CHECK: encoding: [0x4b,0xf0,0xa0,0x65]
dvinit.b %e6, %d0, %d15

# CHECK-INST: dvinit.b %e6, %d1, %d0
# CHECK: encoding: [0x4b,0x01,0xa0,0x65]
dvinit.b %e6, %d1, %d0

# CHECK-INST: dvinit.b %e6, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0xa0,0x65]
dvinit.b %e6, %d1, %d1

# CHECK-INST: dvinit.b %e6, %d1, %d14
# CHECK: encoding: [0x4b,0xe1,0xa0,0x65]
dvinit.b %e6, %d1, %d14

# CHECK-INST: dvinit.b %e6, %d1, %d15
# CHECK: encoding: [0x4b,0xf1,0xa0,0x65]
dvinit.b %e6, %d1, %d15

# CHECK-INST: dvinit.b %e6, %d14, %d0
# CHECK: encoding: [0x4b,0x0e,0xa0,0x65]
dvinit.b %e6, %d14, %d0

# CHECK-INST: dvinit.b %e6, %d14, %d1
# CHECK: encoding: [0x4b,0x1e,0xa0,0x65]
dvinit.b %e6, %d14, %d1

# CHECK-INST: dvinit.b %e6, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0xa0,0x65]
dvinit.b %e6, %d14, %d14

# CHECK-INST: dvinit.b %e6, %d14, %d15
# CHECK: encoding: [0x4b,0xfe,0xa0,0x65]
dvinit.b %e6, %d14, %d15

# CHECK-INST: dvinit.b %e6, %d15, %d0
# CHECK: encoding: [0x4b,0x0f,0xa0,0x65]
dvinit.b %e6, %d15, %d0

# CHECK-INST: dvinit.b %e6, %d15, %d1
# CHECK: encoding: [0x4b,0x1f,0xa0,0x65]
dvinit.b %e6, %d15, %d1

# CHECK-INST: dvinit.b %e6, %d15, %d14
# CHECK: encoding: [0x4b,0xef,0xa0,0x65]
dvinit.b %e6, %d15, %d14

# CHECK-INST: dvinit.b %e6, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0xa0,0x65]
dvinit.b %e6, %d15, %d15

# CHECK-INST: dvinit.b %e14, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0xa0,0xe5]
dvinit.b %e14, %d0, %d0

# CHECK-INST: dvinit.b %e14, %d0, %d1
# CHECK: encoding: [0x4b,0x10,0xa0,0xe5]
dvinit.b %e14, %d0, %d1

# CHECK-INST: dvinit.b %e14, %d0, %d14
# CHECK: encoding: [0x4b,0xe0,0xa0,0xe5]
dvinit.b %e14, %d0, %d14

# CHECK-INST: dvinit.b %e14, %d0, %d15
# CHECK: encoding: [0x4b,0xf0,0xa0,0xe5]
dvinit.b %e14, %d0, %d15

# CHECK-INST: dvinit.b %e14, %d1, %d0
# CHECK: encoding: [0x4b,0x01,0xa0,0xe5]
dvinit.b %e14, %d1, %d0

# CHECK-INST: dvinit.b %e14, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0xa0,0xe5]
dvinit.b %e14, %d1, %d1

# CHECK-INST: dvinit.b %e14, %d1, %d14
# CHECK: encoding: [0x4b,0xe1,0xa0,0xe5]
dvinit.b %e14, %d1, %d14

# CHECK-INST: dvinit.b %e14, %d1, %d15
# CHECK: encoding: [0x4b,0xf1,0xa0,0xe5]
dvinit.b %e14, %d1, %d15

# CHECK-INST: dvinit.b %e14, %d14, %d0
# CHECK: encoding: [0x4b,0x0e,0xa0,0xe5]
dvinit.b %e14, %d14, %d0

# CHECK-INST: dvinit.b %e14, %d14, %d1
# CHECK: encoding: [0x4b,0x1e,0xa0,0xe5]
dvinit.b %e14, %d14, %d1

# CHECK-INST: dvinit.b %e14, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0xa0,0xe5]
dvinit.b %e14, %d14, %d14

# CHECK-INST: dvinit.b %e14, %d14, %d15
# CHECK: encoding: [0x4b,0xfe,0xa0,0xe5]
dvinit.b %e14, %d14, %d15

# CHECK-INST: dvinit.b %e14, %d15, %d0
# CHECK: encoding: [0x4b,0x0f,0xa0,0xe5]
dvinit.b %e14, %d15, %d0

# CHECK-INST: dvinit.b %e14, %d15, %d1
# CHECK: encoding: [0x4b,0x1f,0xa0,0xe5]
dvinit.b %e14, %d15, %d1

# CHECK-INST: dvinit.b %e14, %d15, %d14
# CHECK: encoding: [0x4b,0xef,0xa0,0xe5]
dvinit.b %e14, %d15, %d14

# CHECK-INST: dvinit.b %e14, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0xa0,0xe5]
dvinit.b %e14, %d15, %d15

# CHECK-INST: dvinit.bu %e0, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0xa0,0x04]
dvinit.bu %e0, %d0, %d0

# CHECK-INST: dvinit.bu %e0, %d0, %d1
# CHECK: encoding: [0x4b,0x10,0xa0,0x04]
dvinit.bu %e0, %d0, %d1

# CHECK-INST: dvinit.bu %e0, %d0, %d14
# CHECK: encoding: [0x4b,0xe0,0xa0,0x04]
dvinit.bu %e0, %d0, %d14

# CHECK-INST: dvinit.bu %e0, %d0, %d15
# CHECK: encoding: [0x4b,0xf0,0xa0,0x04]
dvinit.bu %e0, %d0, %d15

# CHECK-INST: dvinit.bu %e0, %d1, %d0
# CHECK: encoding: [0x4b,0x01,0xa0,0x04]
dvinit.bu %e0, %d1, %d0

# CHECK-INST: dvinit.bu %e0, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0xa0,0x04]
dvinit.bu %e0, %d1, %d1

# CHECK-INST: dvinit.bu %e0, %d1, %d14
# CHECK: encoding: [0x4b,0xe1,0xa0,0x04]
dvinit.bu %e0, %d1, %d14

# CHECK-INST: dvinit.bu %e0, %d1, %d15
# CHECK: encoding: [0x4b,0xf1,0xa0,0x04]
dvinit.bu %e0, %d1, %d15

# CHECK-INST: dvinit.bu %e0, %d14, %d0
# CHECK: encoding: [0x4b,0x0e,0xa0,0x04]
dvinit.bu %e0, %d14, %d0

# CHECK-INST: dvinit.bu %e0, %d14, %d1
# CHECK: encoding: [0x4b,0x1e,0xa0,0x04]
dvinit.bu %e0, %d14, %d1

# CHECK-INST: dvinit.bu %e0, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0xa0,0x04]
dvinit.bu %e0, %d14, %d14

# CHECK-INST: dvinit.bu %e0, %d14, %d15
# CHECK: encoding: [0x4b,0xfe,0xa0,0x04]
dvinit.bu %e0, %d14, %d15

# CHECK-INST: dvinit.bu %e0, %d15, %d0
# CHECK: encoding: [0x4b,0x0f,0xa0,0x04]
dvinit.bu %e0, %d15, %d0

# CHECK-INST: dvinit.bu %e0, %d15, %d1
# CHECK: encoding: [0x4b,0x1f,0xa0,0x04]
dvinit.bu %e0, %d15, %d1

# CHECK-INST: dvinit.bu %e0, %d15, %d14
# CHECK: encoding: [0x4b,0xef,0xa0,0x04]
dvinit.bu %e0, %d15, %d14

# CHECK-INST: dvinit.bu %e0, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0xa0,0x04]
dvinit.bu %e0, %d15, %d15

# CHECK-INST: dvinit.bu %e6, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0xa0,0x64]
dvinit.bu %e6, %d0, %d0

# CHECK-INST: dvinit.bu %e6, %d0, %d1
# CHECK: encoding: [0x4b,0x10,0xa0,0x64]
dvinit.bu %e6, %d0, %d1

# CHECK-INST: dvinit.bu %e6, %d0, %d14
# CHECK: encoding: [0x4b,0xe0,0xa0,0x64]
dvinit.bu %e6, %d0, %d14

# CHECK-INST: dvinit.bu %e6, %d0, %d15
# CHECK: encoding: [0x4b,0xf0,0xa0,0x64]
dvinit.bu %e6, %d0, %d15

# CHECK-INST: dvinit.bu %e6, %d1, %d0
# CHECK: encoding: [0x4b,0x01,0xa0,0x64]
dvinit.bu %e6, %d1, %d0

# CHECK-INST: dvinit.bu %e6, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0xa0,0x64]
dvinit.bu %e6, %d1, %d1

# CHECK-INST: dvinit.bu %e6, %d1, %d14
# CHECK: encoding: [0x4b,0xe1,0xa0,0x64]
dvinit.bu %e6, %d1, %d14

# CHECK-INST: dvinit.bu %e6, %d1, %d15
# CHECK: encoding: [0x4b,0xf1,0xa0,0x64]
dvinit.bu %e6, %d1, %d15

# CHECK-INST: dvinit.bu %e6, %d14, %d0
# CHECK: encoding: [0x4b,0x0e,0xa0,0x64]
dvinit.bu %e6, %d14, %d0

# CHECK-INST: dvinit.bu %e6, %d14, %d1
# CHECK: encoding: [0x4b,0x1e,0xa0,0x64]
dvinit.bu %e6, %d14, %d1

# CHECK-INST: dvinit.bu %e6, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0xa0,0x64]
dvinit.bu %e6, %d14, %d14

# CHECK-INST: dvinit.bu %e6, %d14, %d15
# CHECK: encoding: [0x4b,0xfe,0xa0,0x64]
dvinit.bu %e6, %d14, %d15

# CHECK-INST: dvinit.bu %e6, %d15, %d0
# CHECK: encoding: [0x4b,0x0f,0xa0,0x64]
dvinit.bu %e6, %d15, %d0

# CHECK-INST: dvinit.bu %e6, %d15, %d1
# CHECK: encoding: [0x4b,0x1f,0xa0,0x64]
dvinit.bu %e6, %d15, %d1

# CHECK-INST: dvinit.bu %e6, %d15, %d14
# CHECK: encoding: [0x4b,0xef,0xa0,0x64]
dvinit.bu %e6, %d15, %d14

# CHECK-INST: dvinit.bu %e6, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0xa0,0x64]
dvinit.bu %e6, %d15, %d15

# CHECK-INST: dvinit.bu %e14, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0xa0,0xe4]
dvinit.bu %e14, %d0, %d0

# CHECK-INST: dvinit.bu %e14, %d0, %d1
# CHECK: encoding: [0x4b,0x10,0xa0,0xe4]
dvinit.bu %e14, %d0, %d1

# CHECK-INST: dvinit.bu %e14, %d0, %d14
# CHECK: encoding: [0x4b,0xe0,0xa0,0xe4]
dvinit.bu %e14, %d0, %d14

# CHECK-INST: dvinit.bu %e14, %d0, %d15
# CHECK: encoding: [0x4b,0xf0,0xa0,0xe4]
dvinit.bu %e14, %d0, %d15

# CHECK-INST: dvinit.bu %e14, %d1, %d0
# CHECK: encoding: [0x4b,0x01,0xa0,0xe4]
dvinit.bu %e14, %d1, %d0

# CHECK-INST: dvinit.bu %e14, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0xa0,0xe4]
dvinit.bu %e14, %d1, %d1

# CHECK-INST: dvinit.bu %e14, %d1, %d14
# CHECK: encoding: [0x4b,0xe1,0xa0,0xe4]
dvinit.bu %e14, %d1, %d14

# CHECK-INST: dvinit.bu %e14, %d1, %d15
# CHECK: encoding: [0x4b,0xf1,0xa0,0xe4]
dvinit.bu %e14, %d1, %d15

# CHECK-INST: dvinit.bu %e14, %d14, %d0
# CHECK: encoding: [0x4b,0x0e,0xa0,0xe4]
dvinit.bu %e14, %d14, %d0

# CHECK-INST: dvinit.bu %e14, %d14, %d1
# CHECK: encoding: [0x4b,0x1e,0xa0,0xe4]
dvinit.bu %e14, %d14, %d1

# CHECK-INST: dvinit.bu %e14, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0xa0,0xe4]
dvinit.bu %e14, %d14, %d14

# CHECK-INST: dvinit.bu %e14, %d14, %d15
# CHECK: encoding: [0x4b,0xfe,0xa0,0xe4]
dvinit.bu %e14, %d14, %d15

# CHECK-INST: dvinit.bu %e14, %d15, %d0
# CHECK: encoding: [0x4b,0x0f,0xa0,0xe4]
dvinit.bu %e14, %d15, %d0

# CHECK-INST: dvinit.bu %e14, %d15, %d1
# CHECK: encoding: [0x4b,0x1f,0xa0,0xe4]
dvinit.bu %e14, %d15, %d1

# CHECK-INST: dvinit.bu %e14, %d15, %d14
# CHECK: encoding: [0x4b,0xef,0xa0,0xe4]
dvinit.bu %e14, %d15, %d14

# CHECK-INST: dvinit.bu %e14, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0xa0,0xe4]
dvinit.bu %e14, %d15, %d15

# CHECK-INST: dvinit.h %e0, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0xa0,0x03]
dvinit.h %e0, %d0, %d0

# CHECK-INST: dvinit.h %e0, %d0, %d1
# CHECK: encoding: [0x4b,0x10,0xa0,0x03]
dvinit.h %e0, %d0, %d1

# CHECK-INST: dvinit.h %e0, %d0, %d14
# CHECK: encoding: [0x4b,0xe0,0xa0,0x03]
dvinit.h %e0, %d0, %d14

# CHECK-INST: dvinit.h %e0, %d0, %d15
# CHECK: encoding: [0x4b,0xf0,0xa0,0x03]
dvinit.h %e0, %d0, %d15

# CHECK-INST: dvinit.h %e0, %d1, %d0
# CHECK: encoding: [0x4b,0x01,0xa0,0x03]
dvinit.h %e0, %d1, %d0

# CHECK-INST: dvinit.h %e0, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0xa0,0x03]
dvinit.h %e0, %d1, %d1

# CHECK-INST: dvinit.h %e0, %d1, %d14
# CHECK: encoding: [0x4b,0xe1,0xa0,0x03]
dvinit.h %e0, %d1, %d14

# CHECK-INST: dvinit.h %e0, %d1, %d15
# CHECK: encoding: [0x4b,0xf1,0xa0,0x03]
dvinit.h %e0, %d1, %d15

# CHECK-INST: dvinit.h %e0, %d14, %d0
# CHECK: encoding: [0x4b,0x0e,0xa0,0x03]
dvinit.h %e0, %d14, %d0

# CHECK-INST: dvinit.h %e0, %d14, %d1
# CHECK: encoding: [0x4b,0x1e,0xa0,0x03]
dvinit.h %e0, %d14, %d1

# CHECK-INST: dvinit.h %e0, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0xa0,0x03]
dvinit.h %e0, %d14, %d14

# CHECK-INST: dvinit.h %e0, %d14, %d15
# CHECK: encoding: [0x4b,0xfe,0xa0,0x03]
dvinit.h %e0, %d14, %d15

# CHECK-INST: dvinit.h %e0, %d15, %d0
# CHECK: encoding: [0x4b,0x0f,0xa0,0x03]
dvinit.h %e0, %d15, %d0

# CHECK-INST: dvinit.h %e0, %d15, %d1
# CHECK: encoding: [0x4b,0x1f,0xa0,0x03]
dvinit.h %e0, %d15, %d1

# CHECK-INST: dvinit.h %e0, %d15, %d14
# CHECK: encoding: [0x4b,0xef,0xa0,0x03]
dvinit.h %e0, %d15, %d14

# CHECK-INST: dvinit.h %e0, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0xa0,0x03]
dvinit.h %e0, %d15, %d15

# CHECK-INST: dvinit.h %e6, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0xa0,0x63]
dvinit.h %e6, %d0, %d0

# CHECK-INST: dvinit.h %e6, %d0, %d1
# CHECK: encoding: [0x4b,0x10,0xa0,0x63]
dvinit.h %e6, %d0, %d1

# CHECK-INST: dvinit.h %e6, %d0, %d14
# CHECK: encoding: [0x4b,0xe0,0xa0,0x63]
dvinit.h %e6, %d0, %d14

# CHECK-INST: dvinit.h %e6, %d0, %d15
# CHECK: encoding: [0x4b,0xf0,0xa0,0x63]
dvinit.h %e6, %d0, %d15

# CHECK-INST: dvinit.h %e6, %d1, %d0
# CHECK: encoding: [0x4b,0x01,0xa0,0x63]
dvinit.h %e6, %d1, %d0

# CHECK-INST: dvinit.h %e6, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0xa0,0x63]
dvinit.h %e6, %d1, %d1

# CHECK-INST: dvinit.h %e6, %d1, %d14
# CHECK: encoding: [0x4b,0xe1,0xa0,0x63]
dvinit.h %e6, %d1, %d14

# CHECK-INST: dvinit.h %e6, %d1, %d15
# CHECK: encoding: [0x4b,0xf1,0xa0,0x63]
dvinit.h %e6, %d1, %d15

# CHECK-INST: dvinit.h %e6, %d14, %d0
# CHECK: encoding: [0x4b,0x0e,0xa0,0x63]
dvinit.h %e6, %d14, %d0

# CHECK-INST: dvinit.h %e6, %d14, %d1
# CHECK: encoding: [0x4b,0x1e,0xa0,0x63]
dvinit.h %e6, %d14, %d1

# CHECK-INST: dvinit.h %e6, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0xa0,0x63]
dvinit.h %e6, %d14, %d14

# CHECK-INST: dvinit.h %e6, %d14, %d15
# CHECK: encoding: [0x4b,0xfe,0xa0,0x63]
dvinit.h %e6, %d14, %d15

# CHECK-INST: dvinit.h %e6, %d15, %d0
# CHECK: encoding: [0x4b,0x0f,0xa0,0x63]
dvinit.h %e6, %d15, %d0

# CHECK-INST: dvinit.h %e6, %d15, %d1
# CHECK: encoding: [0x4b,0x1f,0xa0,0x63]
dvinit.h %e6, %d15, %d1

# CHECK-INST: dvinit.h %e6, %d15, %d14
# CHECK: encoding: [0x4b,0xef,0xa0,0x63]
dvinit.h %e6, %d15, %d14

# CHECK-INST: dvinit.h %e6, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0xa0,0x63]
dvinit.h %e6, %d15, %d15

# CHECK-INST: dvinit.h %e14, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0xa0,0xe3]
dvinit.h %e14, %d0, %d0

# CHECK-INST: dvinit.h %e14, %d0, %d1
# CHECK: encoding: [0x4b,0x10,0xa0,0xe3]
dvinit.h %e14, %d0, %d1

# CHECK-INST: dvinit.h %e14, %d0, %d14
# CHECK: encoding: [0x4b,0xe0,0xa0,0xe3]
dvinit.h %e14, %d0, %d14

# CHECK-INST: dvinit.h %e14, %d0, %d15
# CHECK: encoding: [0x4b,0xf0,0xa0,0xe3]
dvinit.h %e14, %d0, %d15

# CHECK-INST: dvinit.h %e14, %d1, %d0
# CHECK: encoding: [0x4b,0x01,0xa0,0xe3]
dvinit.h %e14, %d1, %d0

# CHECK-INST: dvinit.h %e14, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0xa0,0xe3]
dvinit.h %e14, %d1, %d1

# CHECK-INST: dvinit.h %e14, %d1, %d14
# CHECK: encoding: [0x4b,0xe1,0xa0,0xe3]
dvinit.h %e14, %d1, %d14

# CHECK-INST: dvinit.h %e14, %d1, %d15
# CHECK: encoding: [0x4b,0xf1,0xa0,0xe3]
dvinit.h %e14, %d1, %d15

# CHECK-INST: dvinit.h %e14, %d14, %d0
# CHECK: encoding: [0x4b,0x0e,0xa0,0xe3]
dvinit.h %e14, %d14, %d0

# CHECK-INST: dvinit.h %e14, %d14, %d1
# CHECK: encoding: [0x4b,0x1e,0xa0,0xe3]
dvinit.h %e14, %d14, %d1

# CHECK-INST: dvinit.h %e14, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0xa0,0xe3]
dvinit.h %e14, %d14, %d14

# CHECK-INST: dvinit.h %e14, %d14, %d15
# CHECK: encoding: [0x4b,0xfe,0xa0,0xe3]
dvinit.h %e14, %d14, %d15

# CHECK-INST: dvinit.h %e14, %d15, %d0
# CHECK: encoding: [0x4b,0x0f,0xa0,0xe3]
dvinit.h %e14, %d15, %d0

# CHECK-INST: dvinit.h %e14, %d15, %d1
# CHECK: encoding: [0x4b,0x1f,0xa0,0xe3]
dvinit.h %e14, %d15, %d1

# CHECK-INST: dvinit.h %e14, %d15, %d14
# CHECK: encoding: [0x4b,0xef,0xa0,0xe3]
dvinit.h %e14, %d15, %d14

# CHECK-INST: dvinit.h %e14, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0xa0,0xe3]
dvinit.h %e14, %d15, %d15

# CHECK-INST: dvinit.hu %e0, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0xa0,0x02]
dvinit.hu %e0, %d0, %d0

# CHECK-INST: dvinit.hu %e0, %d0, %d1
# CHECK: encoding: [0x4b,0x10,0xa0,0x02]
dvinit.hu %e0, %d0, %d1

# CHECK-INST: dvinit.hu %e0, %d0, %d14
# CHECK: encoding: [0x4b,0xe0,0xa0,0x02]
dvinit.hu %e0, %d0, %d14

# CHECK-INST: dvinit.hu %e0, %d0, %d15
# CHECK: encoding: [0x4b,0xf0,0xa0,0x02]
dvinit.hu %e0, %d0, %d15

# CHECK-INST: dvinit.hu %e0, %d1, %d0
# CHECK: encoding: [0x4b,0x01,0xa0,0x02]
dvinit.hu %e0, %d1, %d0

# CHECK-INST: dvinit.hu %e0, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0xa0,0x02]
dvinit.hu %e0, %d1, %d1

# CHECK-INST: dvinit.hu %e0, %d1, %d14
# CHECK: encoding: [0x4b,0xe1,0xa0,0x02]
dvinit.hu %e0, %d1, %d14

# CHECK-INST: dvinit.hu %e0, %d1, %d15
# CHECK: encoding: [0x4b,0xf1,0xa0,0x02]
dvinit.hu %e0, %d1, %d15

# CHECK-INST: dvinit.hu %e0, %d14, %d0
# CHECK: encoding: [0x4b,0x0e,0xa0,0x02]
dvinit.hu %e0, %d14, %d0

# CHECK-INST: dvinit.hu %e0, %d14, %d1
# CHECK: encoding: [0x4b,0x1e,0xa0,0x02]
dvinit.hu %e0, %d14, %d1

# CHECK-INST: dvinit.hu %e0, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0xa0,0x02]
dvinit.hu %e0, %d14, %d14

# CHECK-INST: dvinit.hu %e0, %d14, %d15
# CHECK: encoding: [0x4b,0xfe,0xa0,0x02]
dvinit.hu %e0, %d14, %d15

# CHECK-INST: dvinit.hu %e0, %d15, %d0
# CHECK: encoding: [0x4b,0x0f,0xa0,0x02]
dvinit.hu %e0, %d15, %d0

# CHECK-INST: dvinit.hu %e0, %d15, %d1
# CHECK: encoding: [0x4b,0x1f,0xa0,0x02]
dvinit.hu %e0, %d15, %d1

# CHECK-INST: dvinit.hu %e0, %d15, %d14
# CHECK: encoding: [0x4b,0xef,0xa0,0x02]
dvinit.hu %e0, %d15, %d14

# CHECK-INST: dvinit.hu %e0, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0xa0,0x02]
dvinit.hu %e0, %d15, %d15

# CHECK-INST: dvinit.hu %e6, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0xa0,0x62]
dvinit.hu %e6, %d0, %d0

# CHECK-INST: dvinit.hu %e6, %d0, %d1
# CHECK: encoding: [0x4b,0x10,0xa0,0x62]
dvinit.hu %e6, %d0, %d1

# CHECK-INST: dvinit.hu %e6, %d0, %d14
# CHECK: encoding: [0x4b,0xe0,0xa0,0x62]
dvinit.hu %e6, %d0, %d14

# CHECK-INST: dvinit.hu %e6, %d0, %d15
# CHECK: encoding: [0x4b,0xf0,0xa0,0x62]
dvinit.hu %e6, %d0, %d15

# CHECK-INST: dvinit.hu %e6, %d1, %d0
# CHECK: encoding: [0x4b,0x01,0xa0,0x62]
dvinit.hu %e6, %d1, %d0

# CHECK-INST: dvinit.hu %e6, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0xa0,0x62]
dvinit.hu %e6, %d1, %d1

# CHECK-INST: dvinit.hu %e6, %d1, %d14
# CHECK: encoding: [0x4b,0xe1,0xa0,0x62]
dvinit.hu %e6, %d1, %d14

# CHECK-INST: dvinit.hu %e6, %d1, %d15
# CHECK: encoding: [0x4b,0xf1,0xa0,0x62]
dvinit.hu %e6, %d1, %d15

# CHECK-INST: dvinit.hu %e6, %d14, %d0
# CHECK: encoding: [0x4b,0x0e,0xa0,0x62]
dvinit.hu %e6, %d14, %d0

# CHECK-INST: dvinit.hu %e6, %d14, %d1
# CHECK: encoding: [0x4b,0x1e,0xa0,0x62]
dvinit.hu %e6, %d14, %d1

# CHECK-INST: dvinit.hu %e6, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0xa0,0x62]
dvinit.hu %e6, %d14, %d14

# CHECK-INST: dvinit.hu %e6, %d14, %d15
# CHECK: encoding: [0x4b,0xfe,0xa0,0x62]
dvinit.hu %e6, %d14, %d15

# CHECK-INST: dvinit.hu %e6, %d15, %d0
# CHECK: encoding: [0x4b,0x0f,0xa0,0x62]
dvinit.hu %e6, %d15, %d0

# CHECK-INST: dvinit.hu %e6, %d15, %d1
# CHECK: encoding: [0x4b,0x1f,0xa0,0x62]
dvinit.hu %e6, %d15, %d1

# CHECK-INST: dvinit.hu %e6, %d15, %d14
# CHECK: encoding: [0x4b,0xef,0xa0,0x62]
dvinit.hu %e6, %d15, %d14

# CHECK-INST: dvinit.hu %e6, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0xa0,0x62]
dvinit.hu %e6, %d15, %d15

# CHECK-INST: dvinit.hu %e14, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0xa0,0xe2]
dvinit.hu %e14, %d0, %d0

# CHECK-INST: dvinit.hu %e14, %d0, %d1
# CHECK: encoding: [0x4b,0x10,0xa0,0xe2]
dvinit.hu %e14, %d0, %d1

# CHECK-INST: dvinit.hu %e14, %d0, %d14
# CHECK: encoding: [0x4b,0xe0,0xa0,0xe2]
dvinit.hu %e14, %d0, %d14

# CHECK-INST: dvinit.hu %e14, %d0, %d15
# CHECK: encoding: [0x4b,0xf0,0xa0,0xe2]
dvinit.hu %e14, %d0, %d15

# CHECK-INST: dvinit.hu %e14, %d1, %d0
# CHECK: encoding: [0x4b,0x01,0xa0,0xe2]
dvinit.hu %e14, %d1, %d0

# CHECK-INST: dvinit.hu %e14, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0xa0,0xe2]
dvinit.hu %e14, %d1, %d1

# CHECK-INST: dvinit.hu %e14, %d1, %d14
# CHECK: encoding: [0x4b,0xe1,0xa0,0xe2]
dvinit.hu %e14, %d1, %d14

# CHECK-INST: dvinit.hu %e14, %d1, %d15
# CHECK: encoding: [0x4b,0xf1,0xa0,0xe2]
dvinit.hu %e14, %d1, %d15

# CHECK-INST: dvinit.hu %e14, %d14, %d0
# CHECK: encoding: [0x4b,0x0e,0xa0,0xe2]
dvinit.hu %e14, %d14, %d0

# CHECK-INST: dvinit.hu %e14, %d14, %d1
# CHECK: encoding: [0x4b,0x1e,0xa0,0xe2]
dvinit.hu %e14, %d14, %d1

# CHECK-INST: dvinit.hu %e14, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0xa0,0xe2]
dvinit.hu %e14, %d14, %d14

# CHECK-INST: dvinit.hu %e14, %d14, %d15
# CHECK: encoding: [0x4b,0xfe,0xa0,0xe2]
dvinit.hu %e14, %d14, %d15

# CHECK-INST: dvinit.hu %e14, %d15, %d0
# CHECK: encoding: [0x4b,0x0f,0xa0,0xe2]
dvinit.hu %e14, %d15, %d0

# CHECK-INST: dvinit.hu %e14, %d15, %d1
# CHECK: encoding: [0x4b,0x1f,0xa0,0xe2]
dvinit.hu %e14, %d15, %d1

# CHECK-INST: dvinit.hu %e14, %d15, %d14
# CHECK: encoding: [0x4b,0xef,0xa0,0xe2]
dvinit.hu %e14, %d15, %d14

# CHECK-INST: dvinit.hu %e14, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0xa0,0xe2]
dvinit.hu %e14, %d15, %d15

# CHECK-INST: dvstep %e0, %e0, %d0
# CHECK: encoding: [0x6b,0x00,0xf0,0x00]
dvstep %e0, %e0, %d0

# CHECK-INST: dvstep %e0, %e0, %d1
# CHECK: encoding: [0x6b,0x10,0xf0,0x00]
dvstep %e0, %e0, %d1

# CHECK-INST: dvstep %e0, %e0, %d14
# CHECK: encoding: [0x6b,0xe0,0xf0,0x00]
dvstep %e0, %e0, %d14

# CHECK-INST: dvstep %e0, %e0, %d15
# CHECK: encoding: [0x6b,0xf0,0xf0,0x00]
dvstep %e0, %e0, %d15

# CHECK-INST: dvstep %e0, %e6, %d0
# CHECK: encoding: [0x6b,0x00,0xf0,0x06]
dvstep %e0, %e6, %d0

# CHECK-INST: dvstep %e0, %e6, %d1
# CHECK: encoding: [0x6b,0x10,0xf0,0x06]
dvstep %e0, %e6, %d1

# CHECK-INST: dvstep %e0, %e6, %d14
# CHECK: encoding: [0x6b,0xe0,0xf0,0x06]
dvstep %e0, %e6, %d14

# CHECK-INST: dvstep %e0, %e6, %d15
# CHECK: encoding: [0x6b,0xf0,0xf0,0x06]
dvstep %e0, %e6, %d15

# CHECK-INST: dvstep %e0, %e14, %d0
# CHECK: encoding: [0x6b,0x00,0xf0,0x0e]
dvstep %e0, %e14, %d0

# CHECK-INST: dvstep %e0, %e14, %d1
# CHECK: encoding: [0x6b,0x10,0xf0,0x0e]
dvstep %e0, %e14, %d1

# CHECK-INST: dvstep %e0, %e14, %d14
# CHECK: encoding: [0x6b,0xe0,0xf0,0x0e]
dvstep %e0, %e14, %d14

# CHECK-INST: dvstep %e0, %e14, %d15
# CHECK: encoding: [0x6b,0xf0,0xf0,0x0e]
dvstep %e0, %e14, %d15

# CHECK-INST: dvstep %e6, %e0, %d0
# CHECK: encoding: [0x6b,0x00,0xf0,0x60]
dvstep %e6, %e0, %d0

# CHECK-INST: dvstep %e6, %e0, %d1
# CHECK: encoding: [0x6b,0x10,0xf0,0x60]
dvstep %e6, %e0, %d1

# CHECK-INST: dvstep %e6, %e0, %d14
# CHECK: encoding: [0x6b,0xe0,0xf0,0x60]
dvstep %e6, %e0, %d14

# CHECK-INST: dvstep %e6, %e0, %d15
# CHECK: encoding: [0x6b,0xf0,0xf0,0x60]
dvstep %e6, %e0, %d15

# CHECK-INST: dvstep %e6, %e6, %d0
# CHECK: encoding: [0x6b,0x00,0xf0,0x66]
dvstep %e6, %e6, %d0

# CHECK-INST: dvstep %e6, %e6, %d1
# CHECK: encoding: [0x6b,0x10,0xf0,0x66]
dvstep %e6, %e6, %d1

# CHECK-INST: dvstep %e6, %e6, %d14
# CHECK: encoding: [0x6b,0xe0,0xf0,0x66]
dvstep %e6, %e6, %d14

# CHECK-INST: dvstep %e6, %e6, %d15
# CHECK: encoding: [0x6b,0xf0,0xf0,0x66]
dvstep %e6, %e6, %d15

# CHECK-INST: dvstep %e6, %e14, %d0
# CHECK: encoding: [0x6b,0x00,0xf0,0x6e]
dvstep %e6, %e14, %d0

# CHECK-INST: dvstep %e6, %e14, %d1
# CHECK: encoding: [0x6b,0x10,0xf0,0x6e]
dvstep %e6, %e14, %d1

# CHECK-INST: dvstep %e6, %e14, %d14
# CHECK: encoding: [0x6b,0xe0,0xf0,0x6e]
dvstep %e6, %e14, %d14

# CHECK-INST: dvstep %e6, %e14, %d15
# CHECK: encoding: [0x6b,0xf0,0xf0,0x6e]
dvstep %e6, %e14, %d15

# CHECK-INST: dvstep %e14, %e0, %d0
# CHECK: encoding: [0x6b,0x00,0xf0,0xe0]
dvstep %e14, %e0, %d0

# CHECK-INST: dvstep %e14, %e0, %d1
# CHECK: encoding: [0x6b,0x10,0xf0,0xe0]
dvstep %e14, %e0, %d1

# CHECK-INST: dvstep %e14, %e0, %d14
# CHECK: encoding: [0x6b,0xe0,0xf0,0xe0]
dvstep %e14, %e0, %d14

# CHECK-INST: dvstep %e14, %e0, %d15
# CHECK: encoding: [0x6b,0xf0,0xf0,0xe0]
dvstep %e14, %e0, %d15

# CHECK-INST: dvstep %e14, %e6, %d0
# CHECK: encoding: [0x6b,0x00,0xf0,0xe6]
dvstep %e14, %e6, %d0

# CHECK-INST: dvstep %e14, %e6, %d1
# CHECK: encoding: [0x6b,0x10,0xf0,0xe6]
dvstep %e14, %e6, %d1

# CHECK-INST: dvstep %e14, %e6, %d14
# CHECK: encoding: [0x6b,0xe0,0xf0,0xe6]
dvstep %e14, %e6, %d14

# CHECK-INST: dvstep %e14, %e6, %d15
# CHECK: encoding: [0x6b,0xf0,0xf0,0xe6]
dvstep %e14, %e6, %d15

# CHECK-INST: dvstep %e14, %e14, %d0
# CHECK: encoding: [0x6b,0x00,0xf0,0xee]
dvstep %e14, %e14, %d0

# CHECK-INST: dvstep %e14, %e14, %d1
# CHECK: encoding: [0x6b,0x10,0xf0,0xee]
dvstep %e14, %e14, %d1

# CHECK-INST: dvstep %e14, %e14, %d14
# CHECK: encoding: [0x6b,0xe0,0xf0,0xee]
dvstep %e14, %e14, %d14

# CHECK-INST: dvstep %e14, %e14, %d15
# CHECK: encoding: [0x6b,0xf0,0xf0,0xee]
dvstep %e14, %e14, %d15

# CHECK-INST: dvstep.u %e0, %e0, %d0
# CHECK: encoding: [0x6b,0x00,0xe0,0x00]
dvstep.u %e0, %e0, %d0

# CHECK-INST: dvstep.u %e0, %e0, %d1
# CHECK: encoding: [0x6b,0x10,0xe0,0x00]
dvstep.u %e0, %e0, %d1

# CHECK-INST: dvstep.u %e0, %e0, %d14
# CHECK: encoding: [0x6b,0xe0,0xe0,0x00]
dvstep.u %e0, %e0, %d14

# CHECK-INST: dvstep.u %e0, %e0, %d15
# CHECK: encoding: [0x6b,0xf0,0xe0,0x00]
dvstep.u %e0, %e0, %d15

# CHECK-INST: dvstep.u %e0, %e6, %d0
# CHECK: encoding: [0x6b,0x00,0xe0,0x06]
dvstep.u %e0, %e6, %d0

# CHECK-INST: dvstep.u %e0, %e6, %d1
# CHECK: encoding: [0x6b,0x10,0xe0,0x06]
dvstep.u %e0, %e6, %d1

# CHECK-INST: dvstep.u %e0, %e6, %d14
# CHECK: encoding: [0x6b,0xe0,0xe0,0x06]
dvstep.u %e0, %e6, %d14

# CHECK-INST: dvstep.u %e0, %e6, %d15
# CHECK: encoding: [0x6b,0xf0,0xe0,0x06]
dvstep.u %e0, %e6, %d15

# CHECK-INST: dvstep.u %e0, %e14, %d0
# CHECK: encoding: [0x6b,0x00,0xe0,0x0e]
dvstep.u %e0, %e14, %d0

# CHECK-INST: dvstep.u %e0, %e14, %d1
# CHECK: encoding: [0x6b,0x10,0xe0,0x0e]
dvstep.u %e0, %e14, %d1

# CHECK-INST: dvstep.u %e0, %e14, %d14
# CHECK: encoding: [0x6b,0xe0,0xe0,0x0e]
dvstep.u %e0, %e14, %d14

# CHECK-INST: dvstep.u %e0, %e14, %d15
# CHECK: encoding: [0x6b,0xf0,0xe0,0x0e]
dvstep.u %e0, %e14, %d15

# CHECK-INST: dvstep.u %e6, %e0, %d0
# CHECK: encoding: [0x6b,0x00,0xe0,0x60]
dvstep.u %e6, %e0, %d0

# CHECK-INST: dvstep.u %e6, %e0, %d1
# CHECK: encoding: [0x6b,0x10,0xe0,0x60]
dvstep.u %e6, %e0, %d1

# CHECK-INST: dvstep.u %e6, %e0, %d14
# CHECK: encoding: [0x6b,0xe0,0xe0,0x60]
dvstep.u %e6, %e0, %d14

# CHECK-INST: dvstep.u %e6, %e0, %d15
# CHECK: encoding: [0x6b,0xf0,0xe0,0x60]
dvstep.u %e6, %e0, %d15

# CHECK-INST: dvstep.u %e6, %e6, %d0
# CHECK: encoding: [0x6b,0x00,0xe0,0x66]
dvstep.u %e6, %e6, %d0

# CHECK-INST: dvstep.u %e6, %e6, %d1
# CHECK: encoding: [0x6b,0x10,0xe0,0x66]
dvstep.u %e6, %e6, %d1

# CHECK-INST: dvstep.u %e6, %e6, %d14
# CHECK: encoding: [0x6b,0xe0,0xe0,0x66]
dvstep.u %e6, %e6, %d14

# CHECK-INST: dvstep.u %e6, %e6, %d15
# CHECK: encoding: [0x6b,0xf0,0xe0,0x66]
dvstep.u %e6, %e6, %d15

# CHECK-INST: dvstep.u %e6, %e14, %d0
# CHECK: encoding: [0x6b,0x00,0xe0,0x6e]
dvstep.u %e6, %e14, %d0

# CHECK-INST: dvstep.u %e6, %e14, %d1
# CHECK: encoding: [0x6b,0x10,0xe0,0x6e]
dvstep.u %e6, %e14, %d1

# CHECK-INST: dvstep.u %e6, %e14, %d14
# CHECK: encoding: [0x6b,0xe0,0xe0,0x6e]
dvstep.u %e6, %e14, %d14

# CHECK-INST: dvstep.u %e6, %e14, %d15
# CHECK: encoding: [0x6b,0xf0,0xe0,0x6e]
dvstep.u %e6, %e14, %d15

# CHECK-INST: dvstep.u %e14, %e0, %d0
# CHECK: encoding: [0x6b,0x00,0xe0,0xe0]
dvstep.u %e14, %e0, %d0

# CHECK-INST: dvstep.u %e14, %e0, %d1
# CHECK: encoding: [0x6b,0x10,0xe0,0xe0]
dvstep.u %e14, %e0, %d1

# CHECK-INST: dvstep.u %e14, %e0, %d14
# CHECK: encoding: [0x6b,0xe0,0xe0,0xe0]
dvstep.u %e14, %e0, %d14

# CHECK-INST: dvstep.u %e14, %e0, %d15
# CHECK: encoding: [0x6b,0xf0,0xe0,0xe0]
dvstep.u %e14, %e0, %d15

# CHECK-INST: dvstep.u %e14, %e6, %d0
# CHECK: encoding: [0x6b,0x00,0xe0,0xe6]
dvstep.u %e14, %e6, %d0

# CHECK-INST: dvstep.u %e14, %e6, %d1
# CHECK: encoding: [0x6b,0x10,0xe0,0xe6]
dvstep.u %e14, %e6, %d1

# CHECK-INST: dvstep.u %e14, %e6, %d14
# CHECK: encoding: [0x6b,0xe0,0xe0,0xe6]
dvstep.u %e14, %e6, %d14

# CHECK-INST: dvstep.u %e14, %e6, %d15
# CHECK: encoding: [0x6b,0xf0,0xe0,0xe6]
dvstep.u %e14, %e6, %d15

# CHECK-INST: dvstep.u %e14, %e14, %d0
# CHECK: encoding: [0x6b,0x00,0xe0,0xee]
dvstep.u %e14, %e14, %d0

# CHECK-INST: dvstep.u %e14, %e14, %d1
# CHECK: encoding: [0x6b,0x10,0xe0,0xee]
dvstep.u %e14, %e14, %d1

# CHECK-INST: dvstep.u %e14, %e14, %d14
# CHECK: encoding: [0x6b,0xe0,0xe0,0xee]
dvstep.u %e14, %e14, %d14

# CHECK-INST: dvstep.u %e14, %e14, %d15
# CHECK: encoding: [0x6b,0xf0,0xe0,0xee]
dvstep.u %e14, %e14, %d15

# CHECK-INST: dvadj %e0, %e0, %d0
# CHECK: encoding: [0x6b,0x00,0xd0,0x00]
dvadj %e0, %e0, %d0

# CHECK-INST: dvadj %e0, %e0, %d1
# CHECK: encoding: [0x6b,0x10,0xd0,0x00]
dvadj %e0, %e0, %d1

# CHECK-INST: dvadj %e0, %e0, %d14
# CHECK: encoding: [0x6b,0xe0,0xd0,0x00]
dvadj %e0, %e0, %d14

# CHECK-INST: dvadj %e0, %e0, %d15
# CHECK: encoding: [0x6b,0xf0,0xd0,0x00]
dvadj %e0, %e0, %d15

# CHECK-INST: dvadj %e0, %e6, %d0
# CHECK: encoding: [0x6b,0x00,0xd0,0x06]
dvadj %e0, %e6, %d0

# CHECK-INST: dvadj %e0, %e6, %d1
# CHECK: encoding: [0x6b,0x10,0xd0,0x06]
dvadj %e0, %e6, %d1

# CHECK-INST: dvadj %e0, %e6, %d14
# CHECK: encoding: [0x6b,0xe0,0xd0,0x06]
dvadj %e0, %e6, %d14

# CHECK-INST: dvadj %e0, %e6, %d15
# CHECK: encoding: [0x6b,0xf0,0xd0,0x06]
dvadj %e0, %e6, %d15

# CHECK-INST: dvadj %e0, %e14, %d0
# CHECK: encoding: [0x6b,0x00,0xd0,0x0e]
dvadj %e0, %e14, %d0

# CHECK-INST: dvadj %e0, %e14, %d1
# CHECK: encoding: [0x6b,0x10,0xd0,0x0e]
dvadj %e0, %e14, %d1

# CHECK-INST: dvadj %e0, %e14, %d14
# CHECK: encoding: [0x6b,0xe0,0xd0,0x0e]
dvadj %e0, %e14, %d14

# CHECK-INST: dvadj %e0, %e14, %d15
# CHECK: encoding: [0x6b,0xf0,0xd0,0x0e]
dvadj %e0, %e14, %d15

# CHECK-INST: dvadj %e6, %e0, %d0
# CHECK: encoding: [0x6b,0x00,0xd0,0x60]
dvadj %e6, %e0, %d0

# CHECK-INST: dvadj %e6, %e0, %d1
# CHECK: encoding: [0x6b,0x10,0xd0,0x60]
dvadj %e6, %e0, %d1

# CHECK-INST: dvadj %e6, %e0, %d14
# CHECK: encoding: [0x6b,0xe0,0xd0,0x60]
dvadj %e6, %e0, %d14

# CHECK-INST: dvadj %e6, %e0, %d15
# CHECK: encoding: [0x6b,0xf0,0xd0,0x60]
dvadj %e6, %e0, %d15

# CHECK-INST: dvadj %e6, %e6, %d0
# CHECK: encoding: [0x6b,0x00,0xd0,0x66]
dvadj %e6, %e6, %d0

# CHECK-INST: dvadj %e6, %e6, %d1
# CHECK: encoding: [0x6b,0x10,0xd0,0x66]
dvadj %e6, %e6, %d1

# CHECK-INST: dvadj %e6, %e6, %d14
# CHECK: encoding: [0x6b,0xe0,0xd0,0x66]
dvadj %e6, %e6, %d14

# CHECK-INST: dvadj %e6, %e6, %d15
# CHECK: encoding: [0x6b,0xf0,0xd0,0x66]
dvadj %e6, %e6, %d15

# CHECK-INST: dvadj %e6, %e14, %d0
# CHECK: encoding: [0x6b,0x00,0xd0,0x6e]
dvadj %e6, %e14, %d0

# CHECK-INST: dvadj %e6, %e14, %d1
# CHECK: encoding: [0x6b,0x10,0xd0,0x6e]
dvadj %e6, %e14, %d1

# CHECK-INST: dvadj %e6, %e14, %d14
# CHECK: encoding: [0x6b,0xe0,0xd0,0x6e]
dvadj %e6, %e14, %d14

# CHECK-INST: dvadj %e6, %e14, %d15
# CHECK: encoding: [0x6b,0xf0,0xd0,0x6e]
dvadj %e6, %e14, %d15

# CHECK-INST: dvadj %e14, %e0, %d0
# CHECK: encoding: [0x6b,0x00,0xd0,0xe0]
dvadj %e14, %e0, %d0

# CHECK-INST: dvadj %e14, %e0, %d1
# CHECK: encoding: [0x6b,0x10,0xd0,0xe0]
dvadj %e14, %e0, %d1

# CHECK-INST: dvadj %e14, %e0, %d14
# CHECK: encoding: [0x6b,0xe0,0xd0,0xe0]
dvadj %e14, %e0, %d14

# CHECK-INST: dvadj %e14, %e0, %d15
# CHECK: encoding: [0x6b,0xf0,0xd0,0xe0]
dvadj %e14, %e0, %d15

# CHECK-INST: dvadj %e14, %e6, %d0
# CHECK: encoding: [0x6b,0x00,0xd0,0xe6]
dvadj %e14, %e6, %d0

# CHECK-INST: dvadj %e14, %e6, %d1
# CHECK: encoding: [0x6b,0x10,0xd0,0xe6]
dvadj %e14, %e6, %d1

# CHECK-INST: dvadj %e14, %e6, %d14
# CHECK: encoding: [0x6b,0xe0,0xd0,0xe6]
dvadj %e14, %e6, %d14

# CHECK-INST: dvadj %e14, %e6, %d15
# CHECK: encoding: [0x6b,0xf0,0xd0,0xe6]
dvadj %e14, %e6, %d15

# CHECK-INST: dvadj %e14, %e14, %d0
# CHECK: encoding: [0x6b,0x00,0xd0,0xee]
dvadj %e14, %e14, %d0

# CHECK-INST: dvadj %e14, %e14, %d1
# CHECK: encoding: [0x6b,0x10,0xd0,0xee]
dvadj %e14, %e14, %d1

# CHECK-INST: dvadj %e14, %e14, %d14
# CHECK: encoding: [0x6b,0xe0,0xd0,0xee]
dvadj %e14, %e14, %d14

# CHECK-INST: dvadj %e14, %e14, %d15
# CHECK: encoding: [0x6b,0xf0,0xd0,0xee]
dvadj %e14, %e14, %d15

# CHECK-INST: div %e0, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x01,0x02]
div %e0, %d0, %d0

# CHECK-INST: div %e0, %d0, %d1
# CHECK: encoding: [0x4b,0x10,0x01,0x02]
div %e0, %d0, %d1

# CHECK-INST: div %e0, %d0, %d14
# CHECK: encoding: [0x4b,0xe0,0x01,0x02]
div %e0, %d0, %d14

# CHECK-INST: div %e0, %d0, %d15
# CHECK: encoding: [0x4b,0xf0,0x01,0x02]
div %e0, %d0, %d15

# CHECK-INST: div %e0, %d1, %d0
# CHECK: encoding: [0x4b,0x01,0x01,0x02]
div %e0, %d1, %d0

# CHECK-INST: div %e0, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0x01,0x02]
div %e0, %d1, %d1

# CHECK-INST: div %e0, %d1, %d14
# CHECK: encoding: [0x4b,0xe1,0x01,0x02]
div %e0, %d1, %d14

# CHECK-INST: div %e0, %d1, %d15
# CHECK: encoding: [0x4b,0xf1,0x01,0x02]
div %e0, %d1, %d15

# CHECK-INST: div %e0, %d14, %d0
# CHECK: encoding: [0x4b,0x0e,0x01,0x02]
div %e0, %d14, %d0

# CHECK-INST: div %e0, %d14, %d1
# CHECK: encoding: [0x4b,0x1e,0x01,0x02]
div %e0, %d14, %d1

# CHECK-INST: div %e0, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0x01,0x02]
div %e0, %d14, %d14

# CHECK-INST: div %e0, %d14, %d15
# CHECK: encoding: [0x4b,0xfe,0x01,0x02]
div %e0, %d14, %d15

# CHECK-INST: div %e0, %d15, %d0
# CHECK: encoding: [0x4b,0x0f,0x01,0x02]
div %e0, %d15, %d0

# CHECK-INST: div %e0, %d15, %d1
# CHECK: encoding: [0x4b,0x1f,0x01,0x02]
div %e0, %d15, %d1

# CHECK-INST: div %e0, %d15, %d14
# CHECK: encoding: [0x4b,0xef,0x01,0x02]
div %e0, %d15, %d14

# CHECK-INST: div %e0, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0x01,0x02]
div %e0, %d15, %d15

# CHECK-INST: div %e6, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x01,0x62]
div %e6, %d0, %d0

# CHECK-INST: div %e6, %d0, %d1
# CHECK: encoding: [0x4b,0x10,0x01,0x62]
div %e6, %d0, %d1

# CHECK-INST: div %e6, %d0, %d14
# CHECK: encoding: [0x4b,0xe0,0x01,0x62]
div %e6, %d0, %d14

# CHECK-INST: div %e6, %d0, %d15
# CHECK: encoding: [0x4b,0xf0,0x01,0x62]
div %e6, %d0, %d15

# CHECK-INST: div %e6, %d1, %d0
# CHECK: encoding: [0x4b,0x01,0x01,0x62]
div %e6, %d1, %d0

# CHECK-INST: div %e6, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0x01,0x62]
div %e6, %d1, %d1

# CHECK-INST: div %e6, %d1, %d14
# CHECK: encoding: [0x4b,0xe1,0x01,0x62]
div %e6, %d1, %d14

# CHECK-INST: div %e6, %d1, %d15
# CHECK: encoding: [0x4b,0xf1,0x01,0x62]
div %e6, %d1, %d15

# CHECK-INST: div %e6, %d14, %d0
# CHECK: encoding: [0x4b,0x0e,0x01,0x62]
div %e6, %d14, %d0

# CHECK-INST: div %e6, %d14, %d1
# CHECK: encoding: [0x4b,0x1e,0x01,0x62]
div %e6, %d14, %d1

# CHECK-INST: div %e6, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0x01,0x62]
div %e6, %d14, %d14

# CHECK-INST: div %e6, %d14, %d15
# CHECK: encoding: [0x4b,0xfe,0x01,0x62]
div %e6, %d14, %d15

# CHECK-INST: div %e6, %d15, %d0
# CHECK: encoding: [0x4b,0x0f,0x01,0x62]
div %e6, %d15, %d0

# CHECK-INST: div %e6, %d15, %d1
# CHECK: encoding: [0x4b,0x1f,0x01,0x62]
div %e6, %d15, %d1

# CHECK-INST: div %e6, %d15, %d14
# CHECK: encoding: [0x4b,0xef,0x01,0x62]
div %e6, %d15, %d14

# CHECK-INST: div %e6, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0x01,0x62]
div %e6, %d15, %d15

# CHECK-INST: div %e14, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x01,0xe2]
div %e14, %d0, %d0

# CHECK-INST: div %e14, %d0, %d1
# CHECK: encoding: [0x4b,0x10,0x01,0xe2]
div %e14, %d0, %d1

# CHECK-INST: div %e14, %d0, %d14
# CHECK: encoding: [0x4b,0xe0,0x01,0xe2]
div %e14, %d0, %d14

# CHECK-INST: div %e14, %d0, %d15
# CHECK: encoding: [0x4b,0xf0,0x01,0xe2]
div %e14, %d0, %d15

# CHECK-INST: div %e14, %d1, %d0
# CHECK: encoding: [0x4b,0x01,0x01,0xe2]
div %e14, %d1, %d0

# CHECK-INST: div %e14, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0x01,0xe2]
div %e14, %d1, %d1

# CHECK-INST: div %e14, %d1, %d14
# CHECK: encoding: [0x4b,0xe1,0x01,0xe2]
div %e14, %d1, %d14

# CHECK-INST: div %e14, %d1, %d15
# CHECK: encoding: [0x4b,0xf1,0x01,0xe2]
div %e14, %d1, %d15

# CHECK-INST: div %e14, %d14, %d0
# CHECK: encoding: [0x4b,0x0e,0x01,0xe2]
div %e14, %d14, %d0

# CHECK-INST: div %e14, %d14, %d1
# CHECK: encoding: [0x4b,0x1e,0x01,0xe2]
div %e14, %d14, %d1

# CHECK-INST: div %e14, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0x01,0xe2]
div %e14, %d14, %d14

# CHECK-INST: div %e14, %d14, %d15
# CHECK: encoding: [0x4b,0xfe,0x01,0xe2]
div %e14, %d14, %d15

# CHECK-INST: div %e14, %d15, %d0
# CHECK: encoding: [0x4b,0x0f,0x01,0xe2]
div %e14, %d15, %d0

# CHECK-INST: div %e14, %d15, %d1
# CHECK: encoding: [0x4b,0x1f,0x01,0xe2]
div %e14, %d15, %d1

# CHECK-INST: div %e14, %d15, %d14
# CHECK: encoding: [0x4b,0xef,0x01,0xe2]
div %e14, %d15, %d14

# CHECK-INST: div %e14, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0x01,0xe2]
div %e14, %d15, %d15

# CHECK-INST: div.u %e0, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x11,0x02]
div.u %e0, %d0, %d0

# CHECK-INST: div.u %e0, %d0, %d1
# CHECK: encoding: [0x4b,0x10,0x11,0x02]
div.u %e0, %d0, %d1

# CHECK-INST: div.u %e0, %d0, %d14
# CHECK: encoding: [0x4b,0xe0,0x11,0x02]
div.u %e0, %d0, %d14

# CHECK-INST: div.u %e0, %d0, %d15
# CHECK: encoding: [0x4b,0xf0,0x11,0x02]
div.u %e0, %d0, %d15

# CHECK-INST: div.u %e0, %d1, %d0
# CHECK: encoding: [0x4b,0x01,0x11,0x02]
div.u %e0, %d1, %d0

# CHECK-INST: div.u %e0, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0x11,0x02]
div.u %e0, %d1, %d1

# CHECK-INST: div.u %e0, %d1, %d14
# CHECK: encoding: [0x4b,0xe1,0x11,0x02]
div.u %e0, %d1, %d14

# CHECK-INST: div.u %e0, %d1, %d15
# CHECK: encoding: [0x4b,0xf1,0x11,0x02]
div.u %e0, %d1, %d15

# CHECK-INST: div.u %e0, %d14, %d0
# CHECK: encoding: [0x4b,0x0e,0x11,0x02]
div.u %e0, %d14, %d0

# CHECK-INST: div.u %e0, %d14, %d1
# CHECK: encoding: [0x4b,0x1e,0x11,0x02]
div.u %e0, %d14, %d1

# CHECK-INST: div.u %e0, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0x11,0x02]
div.u %e0, %d14, %d14

# CHECK-INST: div.u %e0, %d14, %d15
# CHECK: encoding: [0x4b,0xfe,0x11,0x02]
div.u %e0, %d14, %d15

# CHECK-INST: div.u %e0, %d15, %d0
# CHECK: encoding: [0x4b,0x0f,0x11,0x02]
div.u %e0, %d15, %d0

# CHECK-INST: div.u %e0, %d15, %d1
# CHECK: encoding: [0x4b,0x1f,0x11,0x02]
div.u %e0, %d15, %d1

# CHECK-INST: div.u %e0, %d15, %d14
# CHECK: encoding: [0x4b,0xef,0x11,0x02]
div.u %e0, %d15, %d14

# CHECK-INST: div.u %e0, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0x11,0x02]
div.u %e0, %d15, %d15

# CHECK-INST: div.u %e6, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x11,0x62]
div.u %e6, %d0, %d0

# CHECK-INST: div.u %e6, %d0, %d1
# CHECK: encoding: [0x4b,0x10,0x11,0x62]
div.u %e6, %d0, %d1

# CHECK-INST: div.u %e6, %d0, %d14
# CHECK: encoding: [0x4b,0xe0,0x11,0x62]
div.u %e6, %d0, %d14

# CHECK-INST: div.u %e6, %d0, %d15
# CHECK: encoding: [0x4b,0xf0,0x11,0x62]
div.u %e6, %d0, %d15

# CHECK-INST: div.u %e6, %d1, %d0
# CHECK: encoding: [0x4b,0x01,0x11,0x62]
div.u %e6, %d1, %d0

# CHECK-INST: div.u %e6, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0x11,0x62]
div.u %e6, %d1, %d1

# CHECK-INST: div.u %e6, %d1, %d14
# CHECK: encoding: [0x4b,0xe1,0x11,0x62]
div.u %e6, %d1, %d14

# CHECK-INST: div.u %e6, %d1, %d15
# CHECK: encoding: [0x4b,0xf1,0x11,0x62]
div.u %e6, %d1, %d15

# CHECK-INST: div.u %e6, %d14, %d0
# CHECK: encoding: [0x4b,0x0e,0x11,0x62]
div.u %e6, %d14, %d0

# CHECK-INST: div.u %e6, %d14, %d1
# CHECK: encoding: [0x4b,0x1e,0x11,0x62]
div.u %e6, %d14, %d1

# CHECK-INST: div.u %e6, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0x11,0x62]
div.u %e6, %d14, %d14

# CHECK-INST: div.u %e6, %d14, %d15
# CHECK: encoding: [0x4b,0xfe,0x11,0x62]
div.u %e6, %d14, %d15

# CHECK-INST: div.u %e6, %d15, %d0
# CHECK: encoding: [0x4b,0x0f,0x11,0x62]
div.u %e6, %d15, %d0

# CHECK-INST: div.u %e6, %d15, %d1
# CHECK: encoding: [0x4b,0x1f,0x11,0x62]
div.u %e6, %d15, %d1

# CHECK-INST: div.u %e6, %d15, %d14
# CHECK: encoding: [0x4b,0xef,0x11,0x62]
div.u %e6, %d15, %d14

# CHECK-INST: div.u %e6, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0x11,0x62]
div.u %e6, %d15, %d15

# CHECK-INST: div.u %e14, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x11,0xe2]
div.u %e14, %d0, %d0

# CHECK-INST: div.u %e14, %d0, %d1
# CHECK: encoding: [0x4b,0x10,0x11,0xe2]
div.u %e14, %d0, %d1

# CHECK-INST: div.u %e14, %d0, %d14
# CHECK: encoding: [0x4b,0xe0,0x11,0xe2]
div.u %e14, %d0, %d14

# CHECK-INST: div.u %e14, %d0, %d15
# CHECK: encoding: [0x4b,0xf0,0x11,0xe2]
div.u %e14, %d0, %d15

# CHECK-INST: div.u %e14, %d1, %d0
# CHECK: encoding: [0x4b,0x01,0x11,0xe2]
div.u %e14, %d1, %d0

# CHECK-INST: div.u %e14, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0x11,0xe2]
div.u %e14, %d1, %d1

# CHECK-INST: div.u %e14, %d1, %d14
# CHECK: encoding: [0x4b,0xe1,0x11,0xe2]
div.u %e14, %d1, %d14

# CHECK-INST: div.u %e14, %d1, %d15
# CHECK: encoding: [0x4b,0xf1,0x11,0xe2]
div.u %e14, %d1, %d15

# CHECK-INST: div.u %e14, %d14, %d0
# CHECK: encoding: [0x4b,0x0e,0x11,0xe2]
div.u %e14, %d14, %d0

# CHECK-INST: div.u %e14, %d14, %d1
# CHECK: encoding: [0x4b,0x1e,0x11,0xe2]
div.u %e14, %d14, %d1

# CHECK-INST: div.u %e14, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0x11,0xe2]
div.u %e14, %d14, %d14

# CHECK-INST: div.u %e14, %d14, %d15
# CHECK: encoding: [0x4b,0xfe,0x11,0xe2]
div.u %e14, %d14, %d15

# CHECK-INST: div.u %e14, %d15, %d0
# CHECK: encoding: [0x4b,0x0f,0x11,0xe2]
div.u %e14, %d15, %d0

# CHECK-INST: div.u %e14, %d15, %d1
# CHECK: encoding: [0x4b,0x1f,0x11,0xe2]
div.u %e14, %d15, %d1

# CHECK-INST: div.u %e14, %d15, %d14
# CHECK: encoding: [0x4b,0xef,0x11,0xe2]
div.u %e14, %d15, %d14

# CHECK-INST: div.u %e14, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0x11,0xe2]
div.u %e14, %d15, %d15
