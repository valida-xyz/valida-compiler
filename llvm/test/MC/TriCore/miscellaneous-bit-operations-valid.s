# RUN: llvm-mc %s -triple=tricore -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK,CHECK-INST %s
# RUN: llvm-mc -filetype=obj -triple=tricore < %s | llvm-objdump -d - \
# RUN:     | FileCheck -check-prefixes=CHECK-INST %s


# CHECK-INST: bmerge %d0, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x10,0x00]
bmerge %d0, %d0, %d0

# CHECK-INST: bmerge %d0, %d0, %d1
# CHECK: encoding: [0x4b,0x10,0x10,0x00]
bmerge %d0, %d0, %d1

# CHECK-INST: bmerge %d0, %d0, %d14
# CHECK: encoding: [0x4b,0xe0,0x10,0x00]
bmerge %d0, %d0, %d14

# CHECK-INST: bmerge %d0, %d0, %d15
# CHECK: encoding: [0x4b,0xf0,0x10,0x00]
bmerge %d0, %d0, %d15

# CHECK-INST: bmerge %d0, %d1, %d0
# CHECK: encoding: [0x4b,0x01,0x10,0x00]
bmerge %d0, %d1, %d0

# CHECK-INST: bmerge %d0, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0x10,0x00]
bmerge %d0, %d1, %d1

# CHECK-INST: bmerge %d0, %d1, %d14
# CHECK: encoding: [0x4b,0xe1,0x10,0x00]
bmerge %d0, %d1, %d14

# CHECK-INST: bmerge %d0, %d1, %d15
# CHECK: encoding: [0x4b,0xf1,0x10,0x00]
bmerge %d0, %d1, %d15

# CHECK-INST: bmerge %d0, %d14, %d0
# CHECK: encoding: [0x4b,0x0e,0x10,0x00]
bmerge %d0, %d14, %d0

# CHECK-INST: bmerge %d0, %d14, %d1
# CHECK: encoding: [0x4b,0x1e,0x10,0x00]
bmerge %d0, %d14, %d1

# CHECK-INST: bmerge %d0, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0x10,0x00]
bmerge %d0, %d14, %d14

# CHECK-INST: bmerge %d0, %d14, %d15
# CHECK: encoding: [0x4b,0xfe,0x10,0x00]
bmerge %d0, %d14, %d15

# CHECK-INST: bmerge %d0, %d15, %d0
# CHECK: encoding: [0x4b,0x0f,0x10,0x00]
bmerge %d0, %d15, %d0

# CHECK-INST: bmerge %d0, %d15, %d1
# CHECK: encoding: [0x4b,0x1f,0x10,0x00]
bmerge %d0, %d15, %d1

# CHECK-INST: bmerge %d0, %d15, %d14
# CHECK: encoding: [0x4b,0xef,0x10,0x00]
bmerge %d0, %d15, %d14

# CHECK-INST: bmerge %d0, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0x10,0x00]
bmerge %d0, %d15, %d15

# CHECK-INST: bmerge %d1, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x10,0x10]
bmerge %d1, %d0, %d0

# CHECK-INST: bmerge %d1, %d0, %d1
# CHECK: encoding: [0x4b,0x10,0x10,0x10]
bmerge %d1, %d0, %d1

# CHECK-INST: bmerge %d1, %d0, %d14
# CHECK: encoding: [0x4b,0xe0,0x10,0x10]
bmerge %d1, %d0, %d14

# CHECK-INST: bmerge %d1, %d0, %d15
# CHECK: encoding: [0x4b,0xf0,0x10,0x10]
bmerge %d1, %d0, %d15

# CHECK-INST: bmerge %d1, %d1, %d0
# CHECK: encoding: [0x4b,0x01,0x10,0x10]
bmerge %d1, %d1, %d0

# CHECK-INST: bmerge %d1, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0x10,0x10]
bmerge %d1, %d1, %d1

# CHECK-INST: bmerge %d1, %d1, %d14
# CHECK: encoding: [0x4b,0xe1,0x10,0x10]
bmerge %d1, %d1, %d14

# CHECK-INST: bmerge %d1, %d1, %d15
# CHECK: encoding: [0x4b,0xf1,0x10,0x10]
bmerge %d1, %d1, %d15

# CHECK-INST: bmerge %d1, %d14, %d0
# CHECK: encoding: [0x4b,0x0e,0x10,0x10]
bmerge %d1, %d14, %d0

# CHECK-INST: bmerge %d1, %d14, %d1
# CHECK: encoding: [0x4b,0x1e,0x10,0x10]
bmerge %d1, %d14, %d1

# CHECK-INST: bmerge %d1, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0x10,0x10]
bmerge %d1, %d14, %d14

# CHECK-INST: bmerge %d1, %d14, %d15
# CHECK: encoding: [0x4b,0xfe,0x10,0x10]
bmerge %d1, %d14, %d15

# CHECK-INST: bmerge %d1, %d15, %d0
# CHECK: encoding: [0x4b,0x0f,0x10,0x10]
bmerge %d1, %d15, %d0

# CHECK-INST: bmerge %d1, %d15, %d1
# CHECK: encoding: [0x4b,0x1f,0x10,0x10]
bmerge %d1, %d15, %d1

# CHECK-INST: bmerge %d1, %d15, %d14
# CHECK: encoding: [0x4b,0xef,0x10,0x10]
bmerge %d1, %d15, %d14

# CHECK-INST: bmerge %d1, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0x10,0x10]
bmerge %d1, %d15, %d15

# CHECK-INST: bmerge %d14, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x10,0xe0]
bmerge %d14, %d0, %d0

# CHECK-INST: bmerge %d14, %d0, %d1
# CHECK: encoding: [0x4b,0x10,0x10,0xe0]
bmerge %d14, %d0, %d1

# CHECK-INST: bmerge %d14, %d0, %d14
# CHECK: encoding: [0x4b,0xe0,0x10,0xe0]
bmerge %d14, %d0, %d14

# CHECK-INST: bmerge %d14, %d0, %d15
# CHECK: encoding: [0x4b,0xf0,0x10,0xe0]
bmerge %d14, %d0, %d15

# CHECK-INST: bmerge %d14, %d1, %d0
# CHECK: encoding: [0x4b,0x01,0x10,0xe0]
bmerge %d14, %d1, %d0

# CHECK-INST: bmerge %d14, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0x10,0xe0]
bmerge %d14, %d1, %d1

# CHECK-INST: bmerge %d14, %d1, %d14
# CHECK: encoding: [0x4b,0xe1,0x10,0xe0]
bmerge %d14, %d1, %d14

# CHECK-INST: bmerge %d14, %d1, %d15
# CHECK: encoding: [0x4b,0xf1,0x10,0xe0]
bmerge %d14, %d1, %d15

# CHECK-INST: bmerge %d14, %d14, %d0
# CHECK: encoding: [0x4b,0x0e,0x10,0xe0]
bmerge %d14, %d14, %d0

# CHECK-INST: bmerge %d14, %d14, %d1
# CHECK: encoding: [0x4b,0x1e,0x10,0xe0]
bmerge %d14, %d14, %d1

# CHECK-INST: bmerge %d14, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0x10,0xe0]
bmerge %d14, %d14, %d14

# CHECK-INST: bmerge %d14, %d14, %d15
# CHECK: encoding: [0x4b,0xfe,0x10,0xe0]
bmerge %d14, %d14, %d15

# CHECK-INST: bmerge %d14, %d15, %d0
# CHECK: encoding: [0x4b,0x0f,0x10,0xe0]
bmerge %d14, %d15, %d0

# CHECK-INST: bmerge %d14, %d15, %d1
# CHECK: encoding: [0x4b,0x1f,0x10,0xe0]
bmerge %d14, %d15, %d1

# CHECK-INST: bmerge %d14, %d15, %d14
# CHECK: encoding: [0x4b,0xef,0x10,0xe0]
bmerge %d14, %d15, %d14

# CHECK-INST: bmerge %d14, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0x10,0xe0]
bmerge %d14, %d15, %d15

# CHECK-INST: bmerge %d15, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x10,0xf0]
bmerge %d15, %d0, %d0

# CHECK-INST: bmerge %d15, %d0, %d1
# CHECK: encoding: [0x4b,0x10,0x10,0xf0]
bmerge %d15, %d0, %d1

# CHECK-INST: bmerge %d15, %d0, %d14
# CHECK: encoding: [0x4b,0xe0,0x10,0xf0]
bmerge %d15, %d0, %d14

# CHECK-INST: bmerge %d15, %d0, %d15
# CHECK: encoding: [0x4b,0xf0,0x10,0xf0]
bmerge %d15, %d0, %d15

# CHECK-INST: bmerge %d15, %d1, %d0
# CHECK: encoding: [0x4b,0x01,0x10,0xf0]
bmerge %d15, %d1, %d0

# CHECK-INST: bmerge %d15, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0x10,0xf0]
bmerge %d15, %d1, %d1

# CHECK-INST: bmerge %d15, %d1, %d14
# CHECK: encoding: [0x4b,0xe1,0x10,0xf0]
bmerge %d15, %d1, %d14

# CHECK-INST: bmerge %d15, %d1, %d15
# CHECK: encoding: [0x4b,0xf1,0x10,0xf0]
bmerge %d15, %d1, %d15

# CHECK-INST: bmerge %d15, %d14, %d0
# CHECK: encoding: [0x4b,0x0e,0x10,0xf0]
bmerge %d15, %d14, %d0

# CHECK-INST: bmerge %d15, %d14, %d1
# CHECK: encoding: [0x4b,0x1e,0x10,0xf0]
bmerge %d15, %d14, %d1

# CHECK-INST: bmerge %d15, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0x10,0xf0]
bmerge %d15, %d14, %d14

# CHECK-INST: bmerge %d15, %d14, %d15
# CHECK: encoding: [0x4b,0xfe,0x10,0xf0]
bmerge %d15, %d14, %d15

# CHECK-INST: bmerge %d15, %d15, %d0
# CHECK: encoding: [0x4b,0x0f,0x10,0xf0]
bmerge %d15, %d15, %d0

# CHECK-INST: bmerge %d15, %d15, %d1
# CHECK: encoding: [0x4b,0x1f,0x10,0xf0]
bmerge %d15, %d15, %d1

# CHECK-INST: bmerge %d15, %d15, %d14
# CHECK: encoding: [0x4b,0xef,0x10,0xf0]
bmerge %d15, %d15, %d14

# CHECK-INST: bmerge %d15, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0x10,0xf0]
bmerge %d15, %d15, %d15

# CHECK-INST: bsplit %e0, %d0
# CHECK: encoding: [0x4b,0x00,0x90,0x00]
bsplit %e0, %d0

# CHECK-INST: bsplit %e0, %d1
# CHECK: encoding: [0x4b,0x01,0x90,0x00]
bsplit %e0, %d1

# CHECK-INST: bsplit %e0, %d14
# CHECK: encoding: [0x4b,0x0e,0x90,0x00]
bsplit %e0, %d14

# CHECK-INST: bsplit %e0, %d15
# CHECK: encoding: [0x4b,0x0f,0x90,0x00]
bsplit %e0, %d15

# CHECK-INST: bsplit %e6, %d0
# CHECK: encoding: [0x4b,0x00,0x90,0x60]
bsplit %e6, %d0

# CHECK-INST: bsplit %e6, %d1
# CHECK: encoding: [0x4b,0x01,0x90,0x60]
bsplit %e6, %d1

# CHECK-INST: bsplit %e6, %d14
# CHECK: encoding: [0x4b,0x0e,0x90,0x60]
bsplit %e6, %d14

# CHECK-INST: bsplit %e6, %d15
# CHECK: encoding: [0x4b,0x0f,0x90,0x60]
bsplit %e6, %d15

# CHECK-INST: bsplit %e14, %d0
# CHECK: encoding: [0x4b,0x00,0x90,0xe0]
bsplit %e14, %d0

# CHECK-INST: bsplit %e14, %d1
# CHECK: encoding: [0x4b,0x01,0x90,0xe0]
bsplit %e14, %d1

# CHECK-INST: bsplit %e14, %d14
# CHECK: encoding: [0x4b,0x0e,0x90,0xe0]
bsplit %e14, %d14

# CHECK-INST: bsplit %e14, %d15
# CHECK: encoding: [0x4b,0x0f,0x90,0xe0]
bsplit %e14, %d15

# CHECK-INST: shuffle %d0, %d0, 271
# CHECK: encoding: [0x8f,0xf0,0xf0,0x00]
shuffle %d0, %d0, 271

# CHECK-INST: shuffle %d0, %d0, 496
# CHECK: encoding: [0x8f,0x00,0xff,0x00]
shuffle %d0, %d0, 496

# CHECK-INST: shuffle %d0, %d0, 511
# CHECK: encoding: [0x8f,0xf0,0xff,0x00]
shuffle %d0, %d0, 511

# CHECK-INST: shuffle %d0, %d1, 271
# CHECK: encoding: [0x8f,0xf1,0xf0,0x00]
shuffle %d0, %d1, 271

# CHECK-INST: shuffle %d0, %d1, 496
# CHECK: encoding: [0x8f,0x01,0xff,0x00]
shuffle %d0, %d1, 496

# CHECK-INST: shuffle %d0, %d1, 511
# CHECK: encoding: [0x8f,0xf1,0xff,0x00]
shuffle %d0, %d1, 511

# CHECK-INST: shuffle %d0, %d14, 271
# CHECK: encoding: [0x8f,0xfe,0xf0,0x00]
shuffle %d0, %d14, 271

# CHECK-INST: shuffle %d0, %d14, 496
# CHECK: encoding: [0x8f,0x0e,0xff,0x00]
shuffle %d0, %d14, 496

# CHECK-INST: shuffle %d0, %d14, 511
# CHECK: encoding: [0x8f,0xfe,0xff,0x00]
shuffle %d0, %d14, 511

# CHECK-INST: shuffle %d0, %d15, 271
# CHECK: encoding: [0x8f,0xff,0xf0,0x00]
shuffle %d0, %d15, 271

# CHECK-INST: shuffle %d0, %d15, 496
# CHECK: encoding: [0x8f,0x0f,0xff,0x00]
shuffle %d0, %d15, 496

# CHECK-INST: shuffle %d0, %d15, 511
# CHECK: encoding: [0x8f,0xff,0xff,0x00]
shuffle %d0, %d15, 511

# CHECK-INST: shuffle %d1, %d0, 271
# CHECK: encoding: [0x8f,0xf0,0xf0,0x10]
shuffle %d1, %d0, 271

# CHECK-INST: shuffle %d1, %d0, 496
# CHECK: encoding: [0x8f,0x00,0xff,0x10]
shuffle %d1, %d0, 496

# CHECK-INST: shuffle %d1, %d0, 511
# CHECK: encoding: [0x8f,0xf0,0xff,0x10]
shuffle %d1, %d0, 511

# CHECK-INST: shuffle %d1, %d1, 271
# CHECK: encoding: [0x8f,0xf1,0xf0,0x10]
shuffle %d1, %d1, 271

# CHECK-INST: shuffle %d1, %d1, 496
# CHECK: encoding: [0x8f,0x01,0xff,0x10]
shuffle %d1, %d1, 496

# CHECK-INST: shuffle %d1, %d1, 511
# CHECK: encoding: [0x8f,0xf1,0xff,0x10]
shuffle %d1, %d1, 511

# CHECK-INST: shuffle %d1, %d14, 271
# CHECK: encoding: [0x8f,0xfe,0xf0,0x10]
shuffle %d1, %d14, 271

# CHECK-INST: shuffle %d1, %d14, 496
# CHECK: encoding: [0x8f,0x0e,0xff,0x10]
shuffle %d1, %d14, 496

# CHECK-INST: shuffle %d1, %d14, 511
# CHECK: encoding: [0x8f,0xfe,0xff,0x10]
shuffle %d1, %d14, 511

# CHECK-INST: shuffle %d1, %d15, 271
# CHECK: encoding: [0x8f,0xff,0xf0,0x10]
shuffle %d1, %d15, 271

# CHECK-INST: shuffle %d1, %d15, 496
# CHECK: encoding: [0x8f,0x0f,0xff,0x10]
shuffle %d1, %d15, 496

# CHECK-INST: shuffle %d1, %d15, 511
# CHECK: encoding: [0x8f,0xff,0xff,0x10]
shuffle %d1, %d15, 511

# CHECK-INST: shuffle %d14, %d0, 271
# CHECK: encoding: [0x8f,0xf0,0xf0,0xe0]
shuffle %d14, %d0, 271

# CHECK-INST: shuffle %d14, %d0, 496
# CHECK: encoding: [0x8f,0x00,0xff,0xe0]
shuffle %d14, %d0, 496

# CHECK-INST: shuffle %d14, %d0, 511
# CHECK: encoding: [0x8f,0xf0,0xff,0xe0]
shuffle %d14, %d0, 511

# CHECK-INST: shuffle %d14, %d1, 271
# CHECK: encoding: [0x8f,0xf1,0xf0,0xe0]
shuffle %d14, %d1, 271

# CHECK-INST: shuffle %d14, %d1, 496
# CHECK: encoding: [0x8f,0x01,0xff,0xe0]
shuffle %d14, %d1, 496

# CHECK-INST: shuffle %d14, %d1, 511
# CHECK: encoding: [0x8f,0xf1,0xff,0xe0]
shuffle %d14, %d1, 511

# CHECK-INST: shuffle %d14, %d14, 271
# CHECK: encoding: [0x8f,0xfe,0xf0,0xe0]
shuffle %d14, %d14, 271

# CHECK-INST: shuffle %d14, %d14, 496
# CHECK: encoding: [0x8f,0x0e,0xff,0xe0]
shuffle %d14, %d14, 496

# CHECK-INST: shuffle %d14, %d14, 511
# CHECK: encoding: [0x8f,0xfe,0xff,0xe0]
shuffle %d14, %d14, 511

# CHECK-INST: shuffle %d14, %d15, 271
# CHECK: encoding: [0x8f,0xff,0xf0,0xe0]
shuffle %d14, %d15, 271

# CHECK-INST: shuffle %d14, %d15, 496
# CHECK: encoding: [0x8f,0x0f,0xff,0xe0]
shuffle %d14, %d15, 496

# CHECK-INST: shuffle %d14, %d15, 511
# CHECK: encoding: [0x8f,0xff,0xff,0xe0]
shuffle %d14, %d15, 511

# CHECK-INST: shuffle %d15, %d0, 271
# CHECK: encoding: [0x8f,0xf0,0xf0,0xf0]
shuffle %d15, %d0, 271

# CHECK-INST: shuffle %d15, %d0, 496
# CHECK: encoding: [0x8f,0x00,0xff,0xf0]
shuffle %d15, %d0, 496

# CHECK-INST: shuffle %d15, %d0, 511
# CHECK: encoding: [0x8f,0xf0,0xff,0xf0]
shuffle %d15, %d0, 511

# CHECK-INST: shuffle %d15, %d1, 271
# CHECK: encoding: [0x8f,0xf1,0xf0,0xf0]
shuffle %d15, %d1, 271

# CHECK-INST: shuffle %d15, %d1, 496
# CHECK: encoding: [0x8f,0x01,0xff,0xf0]
shuffle %d15, %d1, 496

# CHECK-INST: shuffle %d15, %d1, 511
# CHECK: encoding: [0x8f,0xf1,0xff,0xf0]
shuffle %d15, %d1, 511

# CHECK-INST: shuffle %d15, %d14, 271
# CHECK: encoding: [0x8f,0xfe,0xf0,0xf0]
shuffle %d15, %d14, 271

# CHECK-INST: shuffle %d15, %d14, 496
# CHECK: encoding: [0x8f,0x0e,0xff,0xf0]
shuffle %d15, %d14, 496

# CHECK-INST: shuffle %d15, %d14, 511
# CHECK: encoding: [0x8f,0xfe,0xff,0xf0]
shuffle %d15, %d14, 511

# CHECK-INST: shuffle %d15, %d15, 271
# CHECK: encoding: [0x8f,0xff,0xf0,0xf0]
shuffle %d15, %d15, 271

# CHECK-INST: shuffle %d15, %d15, 496
# CHECK: encoding: [0x8f,0x0f,0xff,0xf0]
shuffle %d15, %d15, 496

# CHECK-INST: shuffle %d15, %d15, 511
# CHECK: encoding: [0x8f,0xff,0xff,0xf0]
shuffle %d15, %d15, 511
