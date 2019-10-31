# RUN: llvm-mc %s -triple=tricore -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK,CHECK-INST %s

# RUN: llvm-mc %s -triple=tricore -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK,CHECK-INST %s

# CHECK-INST: ftohp %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x51,0x02]
ftohp %d0, %d0

# CHECK-INST: ftohp %d0, %d1
# CHECK: encoding: [0x4b,0x01,0x51,0x02]
ftohp %d0, %d1

# CHECK-INST: ftohp %d0, %d14
# CHECK: encoding: [0x4b,0x0e,0x51,0x02]
ftohp %d0, %d14

# CHECK-INST: ftohp %d0, %d15
# CHECK: encoding: [0x4b,0x0f,0x51,0x02]
ftohp %d0, %d15

# CHECK-INST: ftohp %d1, %d0
# CHECK: encoding: [0x4b,0x00,0x51,0x12]
ftohp %d1, %d0

# CHECK-INST: ftohp %d1, %d1
# CHECK: encoding: [0x4b,0x01,0x51,0x12]
ftohp %d1, %d1

# CHECK-INST: ftohp %d1, %d14
# CHECK: encoding: [0x4b,0x0e,0x51,0x12]
ftohp %d1, %d14

# CHECK-INST: ftohp %d1, %d15
# CHECK: encoding: [0x4b,0x0f,0x51,0x12]
ftohp %d1, %d15

# CHECK-INST: ftohp %d14, %d0
# CHECK: encoding: [0x4b,0x00,0x51,0xe2]
ftohp %d14, %d0

# CHECK-INST: ftohp %d14, %d1
# CHECK: encoding: [0x4b,0x01,0x51,0xe2]
ftohp %d14, %d1

# CHECK-INST: ftohp %d14, %d14
# CHECK: encoding: [0x4b,0x0e,0x51,0xe2]
ftohp %d14, %d14

# CHECK-INST: ftohp %d14, %d15
# CHECK: encoding: [0x4b,0x0f,0x51,0xe2]
ftohp %d14, %d15

# CHECK-INST: ftohp %d15, %d0
# CHECK: encoding: [0x4b,0x00,0x51,0xf2]
ftohp %d15, %d0

# CHECK-INST: ftohp %d15, %d1
# CHECK: encoding: [0x4b,0x01,0x51,0xf2]
ftohp %d15, %d1

# CHECK-INST: ftohp %d15, %d14
# CHECK: encoding: [0x4b,0x0e,0x51,0xf2]
ftohp %d15, %d14

# CHECK-INST: ftohp %d15, %d15
# CHECK: encoding: [0x4b,0x0f,0x51,0xf2]
ftohp %d15, %d15

# CHECK-INST: ftoi %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x01,0x01]
ftoi %d0, %d0

# CHECK-INST: ftoi %d0, %d1
# CHECK: encoding: [0x4b,0x01,0x01,0x01]
ftoi %d0, %d1

# CHECK-INST: ftoi %d0, %d14
# CHECK: encoding: [0x4b,0x0e,0x01,0x01]
ftoi %d0, %d14

# CHECK-INST: ftoi %d0, %d15
# CHECK: encoding: [0x4b,0x0f,0x01,0x01]
ftoi %d0, %d15

# CHECK-INST: ftoi %d1, %d0
# CHECK: encoding: [0x4b,0x00,0x01,0x11]
ftoi %d1, %d0

# CHECK-INST: ftoi %d1, %d1
# CHECK: encoding: [0x4b,0x01,0x01,0x11]
ftoi %d1, %d1

# CHECK-INST: ftoi %d1, %d14
# CHECK: encoding: [0x4b,0x0e,0x01,0x11]
ftoi %d1, %d14

# CHECK-INST: ftoi %d1, %d15
# CHECK: encoding: [0x4b,0x0f,0x01,0x11]
ftoi %d1, %d15

# CHECK-INST: ftoi %d14, %d0
# CHECK: encoding: [0x4b,0x00,0x01,0xe1]
ftoi %d14, %d0

# CHECK-INST: ftoi %d14, %d1
# CHECK: encoding: [0x4b,0x01,0x01,0xe1]
ftoi %d14, %d1

# CHECK-INST: ftoi %d14, %d14
# CHECK: encoding: [0x4b,0x0e,0x01,0xe1]
ftoi %d14, %d14

# CHECK-INST: ftoi %d14, %d15
# CHECK: encoding: [0x4b,0x0f,0x01,0xe1]
ftoi %d14, %d15

# CHECK-INST: ftoi %d15, %d0
# CHECK: encoding: [0x4b,0x00,0x01,0xf1]
ftoi %d15, %d0

# CHECK-INST: ftoi %d15, %d1
# CHECK: encoding: [0x4b,0x01,0x01,0xf1]
ftoi %d15, %d1

# CHECK-INST: ftoi %d15, %d14
# CHECK: encoding: [0x4b,0x0e,0x01,0xf1]
ftoi %d15, %d14

# CHECK-INST: ftoi %d15, %d15
# CHECK: encoding: [0x4b,0x0f,0x01,0xf1]
ftoi %d15, %d15

# CHECK-INST: ftoiz %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x31,0x01]
ftoiz %d0, %d0

# CHECK-INST: ftoiz %d0, %d1
# CHECK: encoding: [0x4b,0x01,0x31,0x01]
ftoiz %d0, %d1

# CHECK-INST: ftoiz %d0, %d14
# CHECK: encoding: [0x4b,0x0e,0x31,0x01]
ftoiz %d0, %d14

# CHECK-INST: ftoiz %d0, %d15
# CHECK: encoding: [0x4b,0x0f,0x31,0x01]
ftoiz %d0, %d15

# CHECK-INST: ftoiz %d1, %d0
# CHECK: encoding: [0x4b,0x00,0x31,0x11]
ftoiz %d1, %d0

# CHECK-INST: ftoiz %d1, %d1
# CHECK: encoding: [0x4b,0x01,0x31,0x11]
ftoiz %d1, %d1

# CHECK-INST: ftoiz %d1, %d14
# CHECK: encoding: [0x4b,0x0e,0x31,0x11]
ftoiz %d1, %d14

# CHECK-INST: ftoiz %d1, %d15
# CHECK: encoding: [0x4b,0x0f,0x31,0x11]
ftoiz %d1, %d15

# CHECK-INST: ftoiz %d14, %d0
# CHECK: encoding: [0x4b,0x00,0x31,0xe1]
ftoiz %d14, %d0

# CHECK-INST: ftoiz %d14, %d1
# CHECK: encoding: [0x4b,0x01,0x31,0xe1]
ftoiz %d14, %d1

# CHECK-INST: ftoiz %d14, %d14
# CHECK: encoding: [0x4b,0x0e,0x31,0xe1]
ftoiz %d14, %d14

# CHECK-INST: ftoiz %d14, %d15
# CHECK: encoding: [0x4b,0x0f,0x31,0xe1]
ftoiz %d14, %d15

# CHECK-INST: ftoiz %d15, %d0
# CHECK: encoding: [0x4b,0x00,0x31,0xf1]
ftoiz %d15, %d0

# CHECK-INST: ftoiz %d15, %d1
# CHECK: encoding: [0x4b,0x01,0x31,0xf1]
ftoiz %d15, %d1

# CHECK-INST: ftoiz %d15, %d14
# CHECK: encoding: [0x4b,0x0e,0x31,0xf1]
ftoiz %d15, %d14

# CHECK-INST: ftoiz %d15, %d15
# CHECK: encoding: [0x4b,0x0f,0x31,0xf1]
ftoiz %d15, %d15

# CHECK-INST: ftoq31 %d0, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x11,0x01]
ftoq31 %d0, %d0, %d0

# CHECK-INST: ftoq31 %d0, %d0, %d1
# CHECK: encoding: [0x4b,0x10,0x11,0x01]
ftoq31 %d0, %d0, %d1

# CHECK-INST: ftoq31 %d0, %d0, %d14
# CHECK: encoding: [0x4b,0xe0,0x11,0x01]
ftoq31 %d0, %d0, %d14

# CHECK-INST: ftoq31 %d0, %d0, %d15
# CHECK: encoding: [0x4b,0xf0,0x11,0x01]
ftoq31 %d0, %d0, %d15

# CHECK-INST: ftoq31 %d0, %d1, %d0
# CHECK: encoding: [0x4b,0x01,0x11,0x01]
ftoq31 %d0, %d1, %d0

# CHECK-INST: ftoq31 %d0, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0x11,0x01]
ftoq31 %d0, %d1, %d1

# CHECK-INST: ftoq31 %d0, %d1, %d14
# CHECK: encoding: [0x4b,0xe1,0x11,0x01]
ftoq31 %d0, %d1, %d14

# CHECK-INST: ftoq31 %d0, %d1, %d15
# CHECK: encoding: [0x4b,0xf1,0x11,0x01]
ftoq31 %d0, %d1, %d15

# CHECK-INST: ftoq31 %d0, %d14, %d0
# CHECK: encoding: [0x4b,0x0e,0x11,0x01]
ftoq31 %d0, %d14, %d0

# CHECK-INST: ftoq31 %d0, %d14, %d1
# CHECK: encoding: [0x4b,0x1e,0x11,0x01]
ftoq31 %d0, %d14, %d1

# CHECK-INST: ftoq31 %d0, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0x11,0x01]
ftoq31 %d0, %d14, %d14

# CHECK-INST: ftoq31 %d0, %d14, %d15
# CHECK: encoding: [0x4b,0xfe,0x11,0x01]
ftoq31 %d0, %d14, %d15

# CHECK-INST: ftoq31 %d0, %d15, %d0
# CHECK: encoding: [0x4b,0x0f,0x11,0x01]
ftoq31 %d0, %d15, %d0

# CHECK-INST: ftoq31 %d0, %d15, %d1
# CHECK: encoding: [0x4b,0x1f,0x11,0x01]
ftoq31 %d0, %d15, %d1

# CHECK-INST: ftoq31 %d0, %d15, %d14
# CHECK: encoding: [0x4b,0xef,0x11,0x01]
ftoq31 %d0, %d15, %d14

# CHECK-INST: ftoq31 %d0, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0x11,0x01]
ftoq31 %d0, %d15, %d15

# CHECK-INST: ftoq31 %d1, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x11,0x11]
ftoq31 %d1, %d0, %d0

# CHECK-INST: ftoq31 %d1, %d0, %d1
# CHECK: encoding: [0x4b,0x10,0x11,0x11]
ftoq31 %d1, %d0, %d1

# CHECK-INST: ftoq31 %d1, %d0, %d14
# CHECK: encoding: [0x4b,0xe0,0x11,0x11]
ftoq31 %d1, %d0, %d14

# CHECK-INST: ftoq31 %d1, %d0, %d15
# CHECK: encoding: [0x4b,0xf0,0x11,0x11]
ftoq31 %d1, %d0, %d15

# CHECK-INST: ftoq31 %d1, %d1, %d0
# CHECK: encoding: [0x4b,0x01,0x11,0x11]
ftoq31 %d1, %d1, %d0

# CHECK-INST: ftoq31 %d1, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0x11,0x11]
ftoq31 %d1, %d1, %d1

# CHECK-INST: ftoq31 %d1, %d1, %d14
# CHECK: encoding: [0x4b,0xe1,0x11,0x11]
ftoq31 %d1, %d1, %d14

# CHECK-INST: ftoq31 %d1, %d1, %d15
# CHECK: encoding: [0x4b,0xf1,0x11,0x11]
ftoq31 %d1, %d1, %d15

# CHECK-INST: ftoq31 %d1, %d14, %d0
# CHECK: encoding: [0x4b,0x0e,0x11,0x11]
ftoq31 %d1, %d14, %d0

# CHECK-INST: ftoq31 %d1, %d14, %d1
# CHECK: encoding: [0x4b,0x1e,0x11,0x11]
ftoq31 %d1, %d14, %d1

# CHECK-INST: ftoq31 %d1, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0x11,0x11]
ftoq31 %d1, %d14, %d14

# CHECK-INST: ftoq31 %d1, %d14, %d15
# CHECK: encoding: [0x4b,0xfe,0x11,0x11]
ftoq31 %d1, %d14, %d15

# CHECK-INST: ftoq31 %d1, %d15, %d0
# CHECK: encoding: [0x4b,0x0f,0x11,0x11]
ftoq31 %d1, %d15, %d0

# CHECK-INST: ftoq31 %d1, %d15, %d1
# CHECK: encoding: [0x4b,0x1f,0x11,0x11]
ftoq31 %d1, %d15, %d1

# CHECK-INST: ftoq31 %d1, %d15, %d14
# CHECK: encoding: [0x4b,0xef,0x11,0x11]
ftoq31 %d1, %d15, %d14

# CHECK-INST: ftoq31 %d1, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0x11,0x11]
ftoq31 %d1, %d15, %d15

# CHECK-INST: ftoq31 %d14, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x11,0xe1]
ftoq31 %d14, %d0, %d0

# CHECK-INST: ftoq31 %d14, %d0, %d1
# CHECK: encoding: [0x4b,0x10,0x11,0xe1]
ftoq31 %d14, %d0, %d1

# CHECK-INST: ftoq31 %d14, %d0, %d14
# CHECK: encoding: [0x4b,0xe0,0x11,0xe1]
ftoq31 %d14, %d0, %d14

# CHECK-INST: ftoq31 %d14, %d0, %d15
# CHECK: encoding: [0x4b,0xf0,0x11,0xe1]
ftoq31 %d14, %d0, %d15

# CHECK-INST: ftoq31 %d14, %d1, %d0
# CHECK: encoding: [0x4b,0x01,0x11,0xe1]
ftoq31 %d14, %d1, %d0

# CHECK-INST: ftoq31 %d14, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0x11,0xe1]
ftoq31 %d14, %d1, %d1

# CHECK-INST: ftoq31 %d14, %d1, %d14
# CHECK: encoding: [0x4b,0xe1,0x11,0xe1]
ftoq31 %d14, %d1, %d14

# CHECK-INST: ftoq31 %d14, %d1, %d15
# CHECK: encoding: [0x4b,0xf1,0x11,0xe1]
ftoq31 %d14, %d1, %d15

# CHECK-INST: ftoq31 %d14, %d14, %d0
# CHECK: encoding: [0x4b,0x0e,0x11,0xe1]
ftoq31 %d14, %d14, %d0

# CHECK-INST: ftoq31 %d14, %d14, %d1
# CHECK: encoding: [0x4b,0x1e,0x11,0xe1]
ftoq31 %d14, %d14, %d1

# CHECK-INST: ftoq31 %d14, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0x11,0xe1]
ftoq31 %d14, %d14, %d14

# CHECK-INST: ftoq31 %d14, %d14, %d15
# CHECK: encoding: [0x4b,0xfe,0x11,0xe1]
ftoq31 %d14, %d14, %d15

# CHECK-INST: ftoq31 %d14, %d15, %d0
# CHECK: encoding: [0x4b,0x0f,0x11,0xe1]
ftoq31 %d14, %d15, %d0

# CHECK-INST: ftoq31 %d14, %d15, %d1
# CHECK: encoding: [0x4b,0x1f,0x11,0xe1]
ftoq31 %d14, %d15, %d1

# CHECK-INST: ftoq31 %d14, %d15, %d14
# CHECK: encoding: [0x4b,0xef,0x11,0xe1]
ftoq31 %d14, %d15, %d14

# CHECK-INST: ftoq31 %d14, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0x11,0xe1]
ftoq31 %d14, %d15, %d15

# CHECK-INST: ftoq31 %d15, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x11,0xf1]
ftoq31 %d15, %d0, %d0

# CHECK-INST: ftoq31 %d15, %d0, %d1
# CHECK: encoding: [0x4b,0x10,0x11,0xf1]
ftoq31 %d15, %d0, %d1

# CHECK-INST: ftoq31 %d15, %d0, %d14
# CHECK: encoding: [0x4b,0xe0,0x11,0xf1]
ftoq31 %d15, %d0, %d14

# CHECK-INST: ftoq31 %d15, %d0, %d15
# CHECK: encoding: [0x4b,0xf0,0x11,0xf1]
ftoq31 %d15, %d0, %d15

# CHECK-INST: ftoq31 %d15, %d1, %d0
# CHECK: encoding: [0x4b,0x01,0x11,0xf1]
ftoq31 %d15, %d1, %d0

# CHECK-INST: ftoq31 %d15, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0x11,0xf1]
ftoq31 %d15, %d1, %d1

# CHECK-INST: ftoq31 %d15, %d1, %d14
# CHECK: encoding: [0x4b,0xe1,0x11,0xf1]
ftoq31 %d15, %d1, %d14

# CHECK-INST: ftoq31 %d15, %d1, %d15
# CHECK: encoding: [0x4b,0xf1,0x11,0xf1]
ftoq31 %d15, %d1, %d15

# CHECK-INST: ftoq31 %d15, %d14, %d0
# CHECK: encoding: [0x4b,0x0e,0x11,0xf1]
ftoq31 %d15, %d14, %d0

# CHECK-INST: ftoq31 %d15, %d14, %d1
# CHECK: encoding: [0x4b,0x1e,0x11,0xf1]
ftoq31 %d15, %d14, %d1

# CHECK-INST: ftoq31 %d15, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0x11,0xf1]
ftoq31 %d15, %d14, %d14

# CHECK-INST: ftoq31 %d15, %d14, %d15
# CHECK: encoding: [0x4b,0xfe,0x11,0xf1]
ftoq31 %d15, %d14, %d15

# CHECK-INST: ftoq31 %d15, %d15, %d0
# CHECK: encoding: [0x4b,0x0f,0x11,0xf1]
ftoq31 %d15, %d15, %d0

# CHECK-INST: ftoq31 %d15, %d15, %d1
# CHECK: encoding: [0x4b,0x1f,0x11,0xf1]
ftoq31 %d15, %d15, %d1

# CHECK-INST: ftoq31 %d15, %d15, %d14
# CHECK: encoding: [0x4b,0xef,0x11,0xf1]
ftoq31 %d15, %d15, %d14

# CHECK-INST: ftoq31 %d15, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0x11,0xf1]
ftoq31 %d15, %d15, %d15

# CHECK-INST: ftoq31z %d0, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x81,0x01]
ftoq31z %d0, %d0, %d0

# CHECK-INST: ftoq31z %d0, %d0, %d1
# CHECK: encoding: [0x4b,0x10,0x81,0x01]
ftoq31z %d0, %d0, %d1

# CHECK-INST: ftoq31z %d0, %d0, %d14
# CHECK: encoding: [0x4b,0xe0,0x81,0x01]
ftoq31z %d0, %d0, %d14

# CHECK-INST: ftoq31z %d0, %d0, %d15
# CHECK: encoding: [0x4b,0xf0,0x81,0x01]
ftoq31z %d0, %d0, %d15

# CHECK-INST: ftoq31z %d0, %d1, %d0
# CHECK: encoding: [0x4b,0x01,0x81,0x01]
ftoq31z %d0, %d1, %d0

# CHECK-INST: ftoq31z %d0, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0x81,0x01]
ftoq31z %d0, %d1, %d1

# CHECK-INST: ftoq31z %d0, %d1, %d14
# CHECK: encoding: [0x4b,0xe1,0x81,0x01]
ftoq31z %d0, %d1, %d14

# CHECK-INST: ftoq31z %d0, %d1, %d15
# CHECK: encoding: [0x4b,0xf1,0x81,0x01]
ftoq31z %d0, %d1, %d15

# CHECK-INST: ftoq31z %d0, %d14, %d0
# CHECK: encoding: [0x4b,0x0e,0x81,0x01]
ftoq31z %d0, %d14, %d0

# CHECK-INST: ftoq31z %d0, %d14, %d1
# CHECK: encoding: [0x4b,0x1e,0x81,0x01]
ftoq31z %d0, %d14, %d1

# CHECK-INST: ftoq31z %d0, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0x81,0x01]
ftoq31z %d0, %d14, %d14

# CHECK-INST: ftoq31z %d0, %d14, %d15
# CHECK: encoding: [0x4b,0xfe,0x81,0x01]
ftoq31z %d0, %d14, %d15

# CHECK-INST: ftoq31z %d0, %d15, %d0
# CHECK: encoding: [0x4b,0x0f,0x81,0x01]
ftoq31z %d0, %d15, %d0

# CHECK-INST: ftoq31z %d0, %d15, %d1
# CHECK: encoding: [0x4b,0x1f,0x81,0x01]
ftoq31z %d0, %d15, %d1

# CHECK-INST: ftoq31z %d0, %d15, %d14
# CHECK: encoding: [0x4b,0xef,0x81,0x01]
ftoq31z %d0, %d15, %d14

# CHECK-INST: ftoq31z %d0, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0x81,0x01]
ftoq31z %d0, %d15, %d15

# CHECK-INST: ftoq31z %d1, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x81,0x11]
ftoq31z %d1, %d0, %d0

# CHECK-INST: ftoq31z %d1, %d0, %d1
# CHECK: encoding: [0x4b,0x10,0x81,0x11]
ftoq31z %d1, %d0, %d1

# CHECK-INST: ftoq31z %d1, %d0, %d14
# CHECK: encoding: [0x4b,0xe0,0x81,0x11]
ftoq31z %d1, %d0, %d14

# CHECK-INST: ftoq31z %d1, %d0, %d15
# CHECK: encoding: [0x4b,0xf0,0x81,0x11]
ftoq31z %d1, %d0, %d15

# CHECK-INST: ftoq31z %d1, %d1, %d0
# CHECK: encoding: [0x4b,0x01,0x81,0x11]
ftoq31z %d1, %d1, %d0

# CHECK-INST: ftoq31z %d1, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0x81,0x11]
ftoq31z %d1, %d1, %d1

# CHECK-INST: ftoq31z %d1, %d1, %d14
# CHECK: encoding: [0x4b,0xe1,0x81,0x11]
ftoq31z %d1, %d1, %d14

# CHECK-INST: ftoq31z %d1, %d1, %d15
# CHECK: encoding: [0x4b,0xf1,0x81,0x11]
ftoq31z %d1, %d1, %d15

# CHECK-INST: ftoq31z %d1, %d14, %d0
# CHECK: encoding: [0x4b,0x0e,0x81,0x11]
ftoq31z %d1, %d14, %d0

# CHECK-INST: ftoq31z %d1, %d14, %d1
# CHECK: encoding: [0x4b,0x1e,0x81,0x11]
ftoq31z %d1, %d14, %d1

# CHECK-INST: ftoq31z %d1, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0x81,0x11]
ftoq31z %d1, %d14, %d14

# CHECK-INST: ftoq31z %d1, %d14, %d15
# CHECK: encoding: [0x4b,0xfe,0x81,0x11]
ftoq31z %d1, %d14, %d15

# CHECK-INST: ftoq31z %d1, %d15, %d0
# CHECK: encoding: [0x4b,0x0f,0x81,0x11]
ftoq31z %d1, %d15, %d0

# CHECK-INST: ftoq31z %d1, %d15, %d1
# CHECK: encoding: [0x4b,0x1f,0x81,0x11]
ftoq31z %d1, %d15, %d1

# CHECK-INST: ftoq31z %d1, %d15, %d14
# CHECK: encoding: [0x4b,0xef,0x81,0x11]
ftoq31z %d1, %d15, %d14

# CHECK-INST: ftoq31z %d1, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0x81,0x11]
ftoq31z %d1, %d15, %d15

# CHECK-INST: ftoq31z %d14, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x81,0xe1]
ftoq31z %d14, %d0, %d0

# CHECK-INST: ftoq31z %d14, %d0, %d1
# CHECK: encoding: [0x4b,0x10,0x81,0xe1]
ftoq31z %d14, %d0, %d1

# CHECK-INST: ftoq31z %d14, %d0, %d14
# CHECK: encoding: [0x4b,0xe0,0x81,0xe1]
ftoq31z %d14, %d0, %d14

# CHECK-INST: ftoq31z %d14, %d0, %d15
# CHECK: encoding: [0x4b,0xf0,0x81,0xe1]
ftoq31z %d14, %d0, %d15

# CHECK-INST: ftoq31z %d14, %d1, %d0
# CHECK: encoding: [0x4b,0x01,0x81,0xe1]
ftoq31z %d14, %d1, %d0

# CHECK-INST: ftoq31z %d14, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0x81,0xe1]
ftoq31z %d14, %d1, %d1

# CHECK-INST: ftoq31z %d14, %d1, %d14
# CHECK: encoding: [0x4b,0xe1,0x81,0xe1]
ftoq31z %d14, %d1, %d14

# CHECK-INST: ftoq31z %d14, %d1, %d15
# CHECK: encoding: [0x4b,0xf1,0x81,0xe1]
ftoq31z %d14, %d1, %d15

# CHECK-INST: ftoq31z %d14, %d14, %d0
# CHECK: encoding: [0x4b,0x0e,0x81,0xe1]
ftoq31z %d14, %d14, %d0

# CHECK-INST: ftoq31z %d14, %d14, %d1
# CHECK: encoding: [0x4b,0x1e,0x81,0xe1]
ftoq31z %d14, %d14, %d1

# CHECK-INST: ftoq31z %d14, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0x81,0xe1]
ftoq31z %d14, %d14, %d14

# CHECK-INST: ftoq31z %d14, %d14, %d15
# CHECK: encoding: [0x4b,0xfe,0x81,0xe1]
ftoq31z %d14, %d14, %d15

# CHECK-INST: ftoq31z %d14, %d15, %d0
# CHECK: encoding: [0x4b,0x0f,0x81,0xe1]
ftoq31z %d14, %d15, %d0

# CHECK-INST: ftoq31z %d14, %d15, %d1
# CHECK: encoding: [0x4b,0x1f,0x81,0xe1]
ftoq31z %d14, %d15, %d1

# CHECK-INST: ftoq31z %d14, %d15, %d14
# CHECK: encoding: [0x4b,0xef,0x81,0xe1]
ftoq31z %d14, %d15, %d14

# CHECK-INST: ftoq31z %d14, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0x81,0xe1]
ftoq31z %d14, %d15, %d15

# CHECK-INST: ftoq31z %d15, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x81,0xf1]
ftoq31z %d15, %d0, %d0

# CHECK-INST: ftoq31z %d15, %d0, %d1
# CHECK: encoding: [0x4b,0x10,0x81,0xf1]
ftoq31z %d15, %d0, %d1

# CHECK-INST: ftoq31z %d15, %d0, %d14
# CHECK: encoding: [0x4b,0xe0,0x81,0xf1]
ftoq31z %d15, %d0, %d14

# CHECK-INST: ftoq31z %d15, %d0, %d15
# CHECK: encoding: [0x4b,0xf0,0x81,0xf1]
ftoq31z %d15, %d0, %d15

# CHECK-INST: ftoq31z %d15, %d1, %d0
# CHECK: encoding: [0x4b,0x01,0x81,0xf1]
ftoq31z %d15, %d1, %d0

# CHECK-INST: ftoq31z %d15, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0x81,0xf1]
ftoq31z %d15, %d1, %d1

# CHECK-INST: ftoq31z %d15, %d1, %d14
# CHECK: encoding: [0x4b,0xe1,0x81,0xf1]
ftoq31z %d15, %d1, %d14

# CHECK-INST: ftoq31z %d15, %d1, %d15
# CHECK: encoding: [0x4b,0xf1,0x81,0xf1]
ftoq31z %d15, %d1, %d15

# CHECK-INST: ftoq31z %d15, %d14, %d0
# CHECK: encoding: [0x4b,0x0e,0x81,0xf1]
ftoq31z %d15, %d14, %d0

# CHECK-INST: ftoq31z %d15, %d14, %d1
# CHECK: encoding: [0x4b,0x1e,0x81,0xf1]
ftoq31z %d15, %d14, %d1

# CHECK-INST: ftoq31z %d15, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0x81,0xf1]
ftoq31z %d15, %d14, %d14

# CHECK-INST: ftoq31z %d15, %d14, %d15
# CHECK: encoding: [0x4b,0xfe,0x81,0xf1]
ftoq31z %d15, %d14, %d15

# CHECK-INST: ftoq31z %d15, %d15, %d0
# CHECK: encoding: [0x4b,0x0f,0x81,0xf1]
ftoq31z %d15, %d15, %d0

# CHECK-INST: ftoq31z %d15, %d15, %d1
# CHECK: encoding: [0x4b,0x1f,0x81,0xf1]
ftoq31z %d15, %d15, %d1

# CHECK-INST: ftoq31z %d15, %d15, %d14
# CHECK: encoding: [0x4b,0xef,0x81,0xf1]
ftoq31z %d15, %d15, %d14

# CHECK-INST: ftoq31z %d15, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0x81,0xf1]
ftoq31z %d15, %d15, %d15

# CHECK-INST: ftou %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x21,0x01]
ftou %d0, %d0

# CHECK-INST: ftou %d0, %d1
# CHECK: encoding: [0x4b,0x01,0x21,0x01]
ftou %d0, %d1

# CHECK-INST: ftou %d0, %d14
# CHECK: encoding: [0x4b,0x0e,0x21,0x01]
ftou %d0, %d14

# CHECK-INST: ftou %d0, %d15
# CHECK: encoding: [0x4b,0x0f,0x21,0x01]
ftou %d0, %d15

# CHECK-INST: ftou %d1, %d0
# CHECK: encoding: [0x4b,0x00,0x21,0x11]
ftou %d1, %d0

# CHECK-INST: ftou %d1, %d1
# CHECK: encoding: [0x4b,0x01,0x21,0x11]
ftou %d1, %d1

# CHECK-INST: ftou %d1, %d14
# CHECK: encoding: [0x4b,0x0e,0x21,0x11]
ftou %d1, %d14

# CHECK-INST: ftou %d1, %d15
# CHECK: encoding: [0x4b,0x0f,0x21,0x11]
ftou %d1, %d15

# CHECK-INST: ftou %d14, %d0
# CHECK: encoding: [0x4b,0x00,0x21,0xe1]
ftou %d14, %d0

# CHECK-INST: ftou %d14, %d1
# CHECK: encoding: [0x4b,0x01,0x21,0xe1]
ftou %d14, %d1

# CHECK-INST: ftou %d14, %d14
# CHECK: encoding: [0x4b,0x0e,0x21,0xe1]
ftou %d14, %d14

# CHECK-INST: ftou %d14, %d15
# CHECK: encoding: [0x4b,0x0f,0x21,0xe1]
ftou %d14, %d15

# CHECK-INST: ftou %d15, %d0
# CHECK: encoding: [0x4b,0x00,0x21,0xf1]
ftou %d15, %d0

# CHECK-INST: ftou %d15, %d1
# CHECK: encoding: [0x4b,0x01,0x21,0xf1]
ftou %d15, %d1

# CHECK-INST: ftou %d15, %d14
# CHECK: encoding: [0x4b,0x0e,0x21,0xf1]
ftou %d15, %d14

# CHECK-INST: ftou %d15, %d15
# CHECK: encoding: [0x4b,0x0f,0x21,0xf1]
ftou %d15, %d15

# CHECK-INST: ftouz %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x71,0x01]
ftouz %d0, %d0

# CHECK-INST: ftouz %d0, %d1
# CHECK: encoding: [0x4b,0x01,0x71,0x01]
ftouz %d0, %d1

# CHECK-INST: ftouz %d0, %d14
# CHECK: encoding: [0x4b,0x0e,0x71,0x01]
ftouz %d0, %d14

# CHECK-INST: ftouz %d0, %d15
# CHECK: encoding: [0x4b,0x0f,0x71,0x01]
ftouz %d0, %d15

# CHECK-INST: ftouz %d1, %d0
# CHECK: encoding: [0x4b,0x00,0x71,0x11]
ftouz %d1, %d0

# CHECK-INST: ftouz %d1, %d1
# CHECK: encoding: [0x4b,0x01,0x71,0x11]
ftouz %d1, %d1

# CHECK-INST: ftouz %d1, %d14
# CHECK: encoding: [0x4b,0x0e,0x71,0x11]
ftouz %d1, %d14

# CHECK-INST: ftouz %d1, %d15
# CHECK: encoding: [0x4b,0x0f,0x71,0x11]
ftouz %d1, %d15

# CHECK-INST: ftouz %d14, %d0
# CHECK: encoding: [0x4b,0x00,0x71,0xe1]
ftouz %d14, %d0

# CHECK-INST: ftouz %d14, %d1
# CHECK: encoding: [0x4b,0x01,0x71,0xe1]
ftouz %d14, %d1

# CHECK-INST: ftouz %d14, %d14
# CHECK: encoding: [0x4b,0x0e,0x71,0xe1]
ftouz %d14, %d14

# CHECK-INST: ftouz %d14, %d15
# CHECK: encoding: [0x4b,0x0f,0x71,0xe1]
ftouz %d14, %d15

# CHECK-INST: ftouz %d15, %d0
# CHECK: encoding: [0x4b,0x00,0x71,0xf1]
ftouz %d15, %d0

# CHECK-INST: ftouz %d15, %d1
# CHECK: encoding: [0x4b,0x01,0x71,0xf1]
ftouz %d15, %d1

# CHECK-INST: ftouz %d15, %d14
# CHECK: encoding: [0x4b,0x0e,0x71,0xf1]
ftouz %d15, %d14

# CHECK-INST: ftouz %d15, %d15
# CHECK: encoding: [0x4b,0x0f,0x71,0xf1]
ftouz %d15, %d15

# CHECK-INST: hptof %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x41,0x02]
hptof %d0, %d0

# CHECK-INST: hptof %d0, %d1
# CHECK: encoding: [0x4b,0x01,0x41,0x02]
hptof %d0, %d1

# CHECK-INST: hptof %d0, %d14
# CHECK: encoding: [0x4b,0x0e,0x41,0x02]
hptof %d0, %d14

# CHECK-INST: hptof %d0, %d15
# CHECK: encoding: [0x4b,0x0f,0x41,0x02]
hptof %d0, %d15

# CHECK-INST: hptof %d1, %d0
# CHECK: encoding: [0x4b,0x00,0x41,0x12]
hptof %d1, %d0

# CHECK-INST: hptof %d1, %d1
# CHECK: encoding: [0x4b,0x01,0x41,0x12]
hptof %d1, %d1

# CHECK-INST: hptof %d1, %d14
# CHECK: encoding: [0x4b,0x0e,0x41,0x12]
hptof %d1, %d14

# CHECK-INST: hptof %d1, %d15
# CHECK: encoding: [0x4b,0x0f,0x41,0x12]
hptof %d1, %d15

# CHECK-INST: hptof %d14, %d0
# CHECK: encoding: [0x4b,0x00,0x41,0xe2]
hptof %d14, %d0

# CHECK-INST: hptof %d14, %d1
# CHECK: encoding: [0x4b,0x01,0x41,0xe2]
hptof %d14, %d1

# CHECK-INST: hptof %d14, %d14
# CHECK: encoding: [0x4b,0x0e,0x41,0xe2]
hptof %d14, %d14

# CHECK-INST: hptof %d14, %d15
# CHECK: encoding: [0x4b,0x0f,0x41,0xe2]
hptof %d14, %d15

# CHECK-INST: hptof %d15, %d0
# CHECK: encoding: [0x4b,0x00,0x41,0xf2]
hptof %d15, %d0

# CHECK-INST: hptof %d15, %d1
# CHECK: encoding: [0x4b,0x01,0x41,0xf2]
hptof %d15, %d1

# CHECK-INST: hptof %d15, %d14
# CHECK: encoding: [0x4b,0x0e,0x41,0xf2]
hptof %d15, %d14

# CHECK-INST: hptof %d15, %d15
# CHECK: encoding: [0x4b,0x0f,0x41,0xf2]
hptof %d15, %d15

# CHECK-INST: itof %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x41,0x01]
itof %d0, %d0

# CHECK-INST: itof %d0, %d1
# CHECK: encoding: [0x4b,0x01,0x41,0x01]
itof %d0, %d1

# CHECK-INST: itof %d0, %d14
# CHECK: encoding: [0x4b,0x0e,0x41,0x01]
itof %d0, %d14

# CHECK-INST: itof %d0, %d15
# CHECK: encoding: [0x4b,0x0f,0x41,0x01]
itof %d0, %d15

# CHECK-INST: itof %d1, %d0
# CHECK: encoding: [0x4b,0x00,0x41,0x11]
itof %d1, %d0

# CHECK-INST: itof %d1, %d1
# CHECK: encoding: [0x4b,0x01,0x41,0x11]
itof %d1, %d1

# CHECK-INST: itof %d1, %d14
# CHECK: encoding: [0x4b,0x0e,0x41,0x11]
itof %d1, %d14

# CHECK-INST: itof %d1, %d15
# CHECK: encoding: [0x4b,0x0f,0x41,0x11]
itof %d1, %d15

# CHECK-INST: itof %d14, %d0
# CHECK: encoding: [0x4b,0x00,0x41,0xe1]
itof %d14, %d0

# CHECK-INST: itof %d14, %d1
# CHECK: encoding: [0x4b,0x01,0x41,0xe1]
itof %d14, %d1

# CHECK-INST: itof %d14, %d14
# CHECK: encoding: [0x4b,0x0e,0x41,0xe1]
itof %d14, %d14

# CHECK-INST: itof %d14, %d15
# CHECK: encoding: [0x4b,0x0f,0x41,0xe1]
itof %d14, %d15

# CHECK-INST: itof %d15, %d0
# CHECK: encoding: [0x4b,0x00,0x41,0xf1]
itof %d15, %d0

# CHECK-INST: itof %d15, %d1
# CHECK: encoding: [0x4b,0x01,0x41,0xf1]
itof %d15, %d1

# CHECK-INST: itof %d15, %d14
# CHECK: encoding: [0x4b,0x0e,0x41,0xf1]
itof %d15, %d14

# CHECK-INST: itof %d15, %d15
# CHECK: encoding: [0x4b,0x0f,0x41,0xf1]
itof %d15, %d15

# CHECK-INST: pack %d0, %e0, %d0
# CHECK: encoding: [0x6b,0x00,0x00,0x00]
pack %d0, %e0, %d0

# CHECK-INST: pack %d0, %e0, %d1
# CHECK: encoding: [0x6b,0x01,0x00,0x00]
pack %d0, %e0, %d1

# CHECK-INST: pack %d0, %e0, %d14
# CHECK: encoding: [0x6b,0x0e,0x00,0x00]
pack %d0, %e0, %d14

# CHECK-INST: pack %d0, %e0, %d15
# CHECK: encoding: [0x6b,0x0f,0x00,0x00]
pack %d0, %e0, %d15

# CHECK-INST: pack %d0, %e6, %d0
# CHECK: encoding: [0x6b,0x00,0x00,0x06]
pack %d0, %e6, %d0

# CHECK-INST: pack %d0, %e6, %d1
# CHECK: encoding: [0x6b,0x01,0x00,0x06]
pack %d0, %e6, %d1

# CHECK-INST: pack %d0, %e6, %d14
# CHECK: encoding: [0x6b,0x0e,0x00,0x06]
pack %d0, %e6, %d14

# CHECK-INST: pack %d0, %e6, %d15
# CHECK: encoding: [0x6b,0x0f,0x00,0x06]
pack %d0, %e6, %d15

# CHECK-INST: pack %d0, %e14, %d0
# CHECK: encoding: [0x6b,0x00,0x00,0x0e]
pack %d0, %e14, %d0

# CHECK-INST: pack %d0, %e14, %d1
# CHECK: encoding: [0x6b,0x01,0x00,0x0e]
pack %d0, %e14, %d1

# CHECK-INST: pack %d0, %e14, %d14
# CHECK: encoding: [0x6b,0x0e,0x00,0x0e]
pack %d0, %e14, %d14

# CHECK-INST: pack %d0, %e14, %d15
# CHECK: encoding: [0x6b,0x0f,0x00,0x0e]
pack %d0, %e14, %d15

# CHECK-INST: pack %d1, %e0, %d0
# CHECK: encoding: [0x6b,0x00,0x00,0x10]
pack %d1, %e0, %d0

# CHECK-INST: pack %d1, %e0, %d1
# CHECK: encoding: [0x6b,0x01,0x00,0x10]
pack %d1, %e0, %d1

# CHECK-INST: pack %d1, %e0, %d14
# CHECK: encoding: [0x6b,0x0e,0x00,0x10]
pack %d1, %e0, %d14

# CHECK-INST: pack %d1, %e0, %d15
# CHECK: encoding: [0x6b,0x0f,0x00,0x10]
pack %d1, %e0, %d15

# CHECK-INST: pack %d1, %e6, %d0
# CHECK: encoding: [0x6b,0x00,0x00,0x16]
pack %d1, %e6, %d0

# CHECK-INST: pack %d1, %e6, %d1
# CHECK: encoding: [0x6b,0x01,0x00,0x16]
pack %d1, %e6, %d1

# CHECK-INST: pack %d1, %e6, %d14
# CHECK: encoding: [0x6b,0x0e,0x00,0x16]
pack %d1, %e6, %d14

# CHECK-INST: pack %d1, %e6, %d15
# CHECK: encoding: [0x6b,0x0f,0x00,0x16]
pack %d1, %e6, %d15

# CHECK-INST: pack %d1, %e14, %d0
# CHECK: encoding: [0x6b,0x00,0x00,0x1e]
pack %d1, %e14, %d0

# CHECK-INST: pack %d1, %e14, %d1
# CHECK: encoding: [0x6b,0x01,0x00,0x1e]
pack %d1, %e14, %d1

# CHECK-INST: pack %d1, %e14, %d14
# CHECK: encoding: [0x6b,0x0e,0x00,0x1e]
pack %d1, %e14, %d14

# CHECK-INST: pack %d1, %e14, %d15
# CHECK: encoding: [0x6b,0x0f,0x00,0x1e]
pack %d1, %e14, %d15

# CHECK-INST: pack %d14, %e0, %d0
# CHECK: encoding: [0x6b,0x00,0x00,0xe0]
pack %d14, %e0, %d0

# CHECK-INST: pack %d14, %e0, %d1
# CHECK: encoding: [0x6b,0x01,0x00,0xe0]
pack %d14, %e0, %d1

# CHECK-INST: pack %d14, %e0, %d14
# CHECK: encoding: [0x6b,0x0e,0x00,0xe0]
pack %d14, %e0, %d14

# CHECK-INST: pack %d14, %e0, %d15
# CHECK: encoding: [0x6b,0x0f,0x00,0xe0]
pack %d14, %e0, %d15

# CHECK-INST: pack %d14, %e6, %d0
# CHECK: encoding: [0x6b,0x00,0x00,0xe6]
pack %d14, %e6, %d0

# CHECK-INST: pack %d14, %e6, %d1
# CHECK: encoding: [0x6b,0x01,0x00,0xe6]
pack %d14, %e6, %d1

# CHECK-INST: pack %d14, %e6, %d14
# CHECK: encoding: [0x6b,0x0e,0x00,0xe6]
pack %d14, %e6, %d14

# CHECK-INST: pack %d14, %e6, %d15
# CHECK: encoding: [0x6b,0x0f,0x00,0xe6]
pack %d14, %e6, %d15

# CHECK-INST: pack %d14, %e14, %d0
# CHECK: encoding: [0x6b,0x00,0x00,0xee]
pack %d14, %e14, %d0

# CHECK-INST: pack %d14, %e14, %d1
# CHECK: encoding: [0x6b,0x01,0x00,0xee]
pack %d14, %e14, %d1

# CHECK-INST: pack %d14, %e14, %d14
# CHECK: encoding: [0x6b,0x0e,0x00,0xee]
pack %d14, %e14, %d14

# CHECK-INST: pack %d14, %e14, %d15
# CHECK: encoding: [0x6b,0x0f,0x00,0xee]
pack %d14, %e14, %d15

# CHECK-INST: pack %d15, %e0, %d0
# CHECK: encoding: [0x6b,0x00,0x00,0xf0]
pack %d15, %e0, %d0

# CHECK-INST: pack %d15, %e0, %d1
# CHECK: encoding: [0x6b,0x01,0x00,0xf0]
pack %d15, %e0, %d1

# CHECK-INST: pack %d15, %e0, %d14
# CHECK: encoding: [0x6b,0x0e,0x00,0xf0]
pack %d15, %e0, %d14

# CHECK-INST: pack %d15, %e0, %d15
# CHECK: encoding: [0x6b,0x0f,0x00,0xf0]
pack %d15, %e0, %d15

# CHECK-INST: pack %d15, %e6, %d0
# CHECK: encoding: [0x6b,0x00,0x00,0xf6]
pack %d15, %e6, %d0

# CHECK-INST: pack %d15, %e6, %d1
# CHECK: encoding: [0x6b,0x01,0x00,0xf6]
pack %d15, %e6, %d1

# CHECK-INST: pack %d15, %e6, %d14
# CHECK: encoding: [0x6b,0x0e,0x00,0xf6]
pack %d15, %e6, %d14

# CHECK-INST: pack %d15, %e6, %d15
# CHECK: encoding: [0x6b,0x0f,0x00,0xf6]
pack %d15, %e6, %d15

# CHECK-INST: pack %d15, %e14, %d0
# CHECK: encoding: [0x6b,0x00,0x00,0xfe]
pack %d15, %e14, %d0

# CHECK-INST: pack %d15, %e14, %d1
# CHECK: encoding: [0x6b,0x01,0x00,0xfe]
pack %d15, %e14, %d1

# CHECK-INST: pack %d15, %e14, %d14
# CHECK: encoding: [0x6b,0x0e,0x00,0xfe]
pack %d15, %e14, %d14

# CHECK-INST: pack %d15, %e14, %d15
# CHECK: encoding: [0x6b,0x0f,0x00,0xfe]
pack %d15, %e14, %d15

# CHECK-INST: q31tof %d0, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x51,0x01]
q31tof %d0, %d0, %d0

# CHECK-INST: q31tof %d0, %d0, %d1
# CHECK: encoding: [0x4b,0x10,0x51,0x01]
q31tof %d0, %d0, %d1

# CHECK-INST: q31tof %d0, %d0, %d14
# CHECK: encoding: [0x4b,0xe0,0x51,0x01]
q31tof %d0, %d0, %d14

# CHECK-INST: q31tof %d0, %d0, %d15
# CHECK: encoding: [0x4b,0xf0,0x51,0x01]
q31tof %d0, %d0, %d15

# CHECK-INST: q31tof %d0, %d1, %d0
# CHECK: encoding: [0x4b,0x01,0x51,0x01]
q31tof %d0, %d1, %d0

# CHECK-INST: q31tof %d0, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0x51,0x01]
q31tof %d0, %d1, %d1

# CHECK-INST: q31tof %d0, %d1, %d14
# CHECK: encoding: [0x4b,0xe1,0x51,0x01]
q31tof %d0, %d1, %d14

# CHECK-INST: q31tof %d0, %d1, %d15
# CHECK: encoding: [0x4b,0xf1,0x51,0x01]
q31tof %d0, %d1, %d15

# CHECK-INST: q31tof %d0, %d14, %d0
# CHECK: encoding: [0x4b,0x0e,0x51,0x01]
q31tof %d0, %d14, %d0

# CHECK-INST: q31tof %d0, %d14, %d1
# CHECK: encoding: [0x4b,0x1e,0x51,0x01]
q31tof %d0, %d14, %d1

# CHECK-INST: q31tof %d0, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0x51,0x01]
q31tof %d0, %d14, %d14

# CHECK-INST: q31tof %d0, %d14, %d15
# CHECK: encoding: [0x4b,0xfe,0x51,0x01]
q31tof %d0, %d14, %d15

# CHECK-INST: q31tof %d0, %d15, %d0
# CHECK: encoding: [0x4b,0x0f,0x51,0x01]
q31tof %d0, %d15, %d0

# CHECK-INST: q31tof %d0, %d15, %d1
# CHECK: encoding: [0x4b,0x1f,0x51,0x01]
q31tof %d0, %d15, %d1

# CHECK-INST: q31tof %d0, %d15, %d14
# CHECK: encoding: [0x4b,0xef,0x51,0x01]
q31tof %d0, %d15, %d14

# CHECK-INST: q31tof %d0, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0x51,0x01]
q31tof %d0, %d15, %d15

# CHECK-INST: q31tof %d1, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x51,0x11]
q31tof %d1, %d0, %d0

# CHECK-INST: q31tof %d1, %d0, %d1
# CHECK: encoding: [0x4b,0x10,0x51,0x11]
q31tof %d1, %d0, %d1

# CHECK-INST: q31tof %d1, %d0, %d14
# CHECK: encoding: [0x4b,0xe0,0x51,0x11]
q31tof %d1, %d0, %d14

# CHECK-INST: q31tof %d1, %d0, %d15
# CHECK: encoding: [0x4b,0xf0,0x51,0x11]
q31tof %d1, %d0, %d15

# CHECK-INST: q31tof %d1, %d1, %d0
# CHECK: encoding: [0x4b,0x01,0x51,0x11]
q31tof %d1, %d1, %d0

# CHECK-INST: q31tof %d1, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0x51,0x11]
q31tof %d1, %d1, %d1

# CHECK-INST: q31tof %d1, %d1, %d14
# CHECK: encoding: [0x4b,0xe1,0x51,0x11]
q31tof %d1, %d1, %d14

# CHECK-INST: q31tof %d1, %d1, %d15
# CHECK: encoding: [0x4b,0xf1,0x51,0x11]
q31tof %d1, %d1, %d15

# CHECK-INST: q31tof %d1, %d14, %d0
# CHECK: encoding: [0x4b,0x0e,0x51,0x11]
q31tof %d1, %d14, %d0

# CHECK-INST: q31tof %d1, %d14, %d1
# CHECK: encoding: [0x4b,0x1e,0x51,0x11]
q31tof %d1, %d14, %d1

# CHECK-INST: q31tof %d1, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0x51,0x11]
q31tof %d1, %d14, %d14

# CHECK-INST: q31tof %d1, %d14, %d15
# CHECK: encoding: [0x4b,0xfe,0x51,0x11]
q31tof %d1, %d14, %d15

# CHECK-INST: q31tof %d1, %d15, %d0
# CHECK: encoding: [0x4b,0x0f,0x51,0x11]
q31tof %d1, %d15, %d0

# CHECK-INST: q31tof %d1, %d15, %d1
# CHECK: encoding: [0x4b,0x1f,0x51,0x11]
q31tof %d1, %d15, %d1

# CHECK-INST: q31tof %d1, %d15, %d14
# CHECK: encoding: [0x4b,0xef,0x51,0x11]
q31tof %d1, %d15, %d14

# CHECK-INST: q31tof %d1, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0x51,0x11]
q31tof %d1, %d15, %d15

# CHECK-INST: q31tof %d14, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x51,0xe1]
q31tof %d14, %d0, %d0

# CHECK-INST: q31tof %d14, %d0, %d1
# CHECK: encoding: [0x4b,0x10,0x51,0xe1]
q31tof %d14, %d0, %d1

# CHECK-INST: q31tof %d14, %d0, %d14
# CHECK: encoding: [0x4b,0xe0,0x51,0xe1]
q31tof %d14, %d0, %d14

# CHECK-INST: q31tof %d14, %d0, %d15
# CHECK: encoding: [0x4b,0xf0,0x51,0xe1]
q31tof %d14, %d0, %d15

# CHECK-INST: q31tof %d14, %d1, %d0
# CHECK: encoding: [0x4b,0x01,0x51,0xe1]
q31tof %d14, %d1, %d0

# CHECK-INST: q31tof %d14, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0x51,0xe1]
q31tof %d14, %d1, %d1

# CHECK-INST: q31tof %d14, %d1, %d14
# CHECK: encoding: [0x4b,0xe1,0x51,0xe1]
q31tof %d14, %d1, %d14

# CHECK-INST: q31tof %d14, %d1, %d15
# CHECK: encoding: [0x4b,0xf1,0x51,0xe1]
q31tof %d14, %d1, %d15

# CHECK-INST: q31tof %d14, %d14, %d0
# CHECK: encoding: [0x4b,0x0e,0x51,0xe1]
q31tof %d14, %d14, %d0

# CHECK-INST: q31tof %d14, %d14, %d1
# CHECK: encoding: [0x4b,0x1e,0x51,0xe1]
q31tof %d14, %d14, %d1

# CHECK-INST: q31tof %d14, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0x51,0xe1]
q31tof %d14, %d14, %d14

# CHECK-INST: q31tof %d14, %d14, %d15
# CHECK: encoding: [0x4b,0xfe,0x51,0xe1]
q31tof %d14, %d14, %d15

# CHECK-INST: q31tof %d14, %d15, %d0
# CHECK: encoding: [0x4b,0x0f,0x51,0xe1]
q31tof %d14, %d15, %d0

# CHECK-INST: q31tof %d14, %d15, %d1
# CHECK: encoding: [0x4b,0x1f,0x51,0xe1]
q31tof %d14, %d15, %d1

# CHECK-INST: q31tof %d14, %d15, %d14
# CHECK: encoding: [0x4b,0xef,0x51,0xe1]
q31tof %d14, %d15, %d14

# CHECK-INST: q31tof %d14, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0x51,0xe1]
q31tof %d14, %d15, %d15

# CHECK-INST: q31tof %d15, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x51,0xf1]
q31tof %d15, %d0, %d0

# CHECK-INST: q31tof %d15, %d0, %d1
# CHECK: encoding: [0x4b,0x10,0x51,0xf1]
q31tof %d15, %d0, %d1

# CHECK-INST: q31tof %d15, %d0, %d14
# CHECK: encoding: [0x4b,0xe0,0x51,0xf1]
q31tof %d15, %d0, %d14

# CHECK-INST: q31tof %d15, %d0, %d15
# CHECK: encoding: [0x4b,0xf0,0x51,0xf1]
q31tof %d15, %d0, %d15

# CHECK-INST: q31tof %d15, %d1, %d0
# CHECK: encoding: [0x4b,0x01,0x51,0xf1]
q31tof %d15, %d1, %d0

# CHECK-INST: q31tof %d15, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0x51,0xf1]
q31tof %d15, %d1, %d1

# CHECK-INST: q31tof %d15, %d1, %d14
# CHECK: encoding: [0x4b,0xe1,0x51,0xf1]
q31tof %d15, %d1, %d14

# CHECK-INST: q31tof %d15, %d1, %d15
# CHECK: encoding: [0x4b,0xf1,0x51,0xf1]
q31tof %d15, %d1, %d15

# CHECK-INST: q31tof %d15, %d14, %d0
# CHECK: encoding: [0x4b,0x0e,0x51,0xf1]
q31tof %d15, %d14, %d0

# CHECK-INST: q31tof %d15, %d14, %d1
# CHECK: encoding: [0x4b,0x1e,0x51,0xf1]
q31tof %d15, %d14, %d1

# CHECK-INST: q31tof %d15, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0x51,0xf1]
q31tof %d15, %d14, %d14

# CHECK-INST: q31tof %d15, %d14, %d15
# CHECK: encoding: [0x4b,0xfe,0x51,0xf1]
q31tof %d15, %d14, %d15

# CHECK-INST: q31tof %d15, %d15, %d0
# CHECK: encoding: [0x4b,0x0f,0x51,0xf1]
q31tof %d15, %d15, %d0

# CHECK-INST: q31tof %d15, %d15, %d1
# CHECK: encoding: [0x4b,0x1f,0x51,0xf1]
q31tof %d15, %d15, %d1

# CHECK-INST: q31tof %d15, %d15, %d14
# CHECK: encoding: [0x4b,0xef,0x51,0xf1]
q31tof %d15, %d15, %d14

# CHECK-INST: q31tof %d15, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0x51,0xf1]
q31tof %d15, %d15, %d15

# CHECK-INST: unpack %e0, %d0
# CHECK: encoding: [0x4b,0x00,0x80,0x00]
unpack %e0, %d0

# CHECK-INST: unpack %e0, %d1
# CHECK: encoding: [0x4b,0x01,0x80,0x00]
unpack %e0, %d1

# CHECK-INST: unpack %e0, %d14
# CHECK: encoding: [0x4b,0x0e,0x80,0x00]
unpack %e0, %d14

# CHECK-INST: unpack %e0, %d15
# CHECK: encoding: [0x4b,0x0f,0x80,0x00]
unpack %e0, %d15

# CHECK-INST: unpack %e6, %d0
# CHECK: encoding: [0x4b,0x00,0x80,0x60]
unpack %e6, %d0

# CHECK-INST: unpack %e6, %d1
# CHECK: encoding: [0x4b,0x01,0x80,0x60]
unpack %e6, %d1

# CHECK-INST: unpack %e6, %d14
# CHECK: encoding: [0x4b,0x0e,0x80,0x60]
unpack %e6, %d14

# CHECK-INST: unpack %e6, %d15
# CHECK: encoding: [0x4b,0x0f,0x80,0x60]
unpack %e6, %d15

# CHECK-INST: unpack %e14, %d0
# CHECK: encoding: [0x4b,0x00,0x80,0xe0]
unpack %e14, %d0

# CHECK-INST: unpack %e14, %d1
# CHECK: encoding: [0x4b,0x01,0x80,0xe0]
unpack %e14, %d1

# CHECK-INST: unpack %e14, %d14
# CHECK: encoding: [0x4b,0x0e,0x80,0xe0]
unpack %e14, %d14

# CHECK-INST: unpack %e14, %d15
# CHECK: encoding: [0x4b,0x0f,0x80,0xe0]
unpack %e14, %d15

# CHECK-INST: utof %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x61,0x01]
utof %d0, %d0

# CHECK-INST: utof %d0, %d1
# CHECK: encoding: [0x4b,0x01,0x61,0x01]
utof %d0, %d1

# CHECK-INST: utof %d0, %d14
# CHECK: encoding: [0x4b,0x0e,0x61,0x01]
utof %d0, %d14

# CHECK-INST: utof %d0, %d15
# CHECK: encoding: [0x4b,0x0f,0x61,0x01]
utof %d0, %d15

# CHECK-INST: utof %d1, %d0
# CHECK: encoding: [0x4b,0x00,0x61,0x11]
utof %d1, %d0

# CHECK-INST: utof %d1, %d1
# CHECK: encoding: [0x4b,0x01,0x61,0x11]
utof %d1, %d1

# CHECK-INST: utof %d1, %d14
# CHECK: encoding: [0x4b,0x0e,0x61,0x11]
utof %d1, %d14

# CHECK-INST: utof %d1, %d15
# CHECK: encoding: [0x4b,0x0f,0x61,0x11]
utof %d1, %d15

# CHECK-INST: utof %d14, %d0
# CHECK: encoding: [0x4b,0x00,0x61,0xe1]
utof %d14, %d0

# CHECK-INST: utof %d14, %d1
# CHECK: encoding: [0x4b,0x01,0x61,0xe1]
utof %d14, %d1

# CHECK-INST: utof %d14, %d14
# CHECK: encoding: [0x4b,0x0e,0x61,0xe1]
utof %d14, %d14

# CHECK-INST: utof %d14, %d15
# CHECK: encoding: [0x4b,0x0f,0x61,0xe1]
utof %d14, %d15

# CHECK-INST: utof %d15, %d0
# CHECK: encoding: [0x4b,0x00,0x61,0xf1]
utof %d15, %d0

# CHECK-INST: utof %d15, %d1
# CHECK: encoding: [0x4b,0x01,0x61,0xf1]
utof %d15, %d1

# CHECK-INST: utof %d15, %d14
# CHECK: encoding: [0x4b,0x0e,0x61,0xf1]
utof %d15, %d14

# CHECK-INST: utof %d15, %d15
# CHECK: encoding: [0x4b,0x0f,0x61,0xf1]
utof %d15, %d15
