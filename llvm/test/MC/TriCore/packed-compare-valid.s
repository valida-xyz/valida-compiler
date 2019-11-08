# RUN: llvm-mc %s -triple=tricore -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK,CHECK-INST %s
# RUN: llvm-mc -filetype=obj -triple=tricore < %s \
# RUN:     | llvm-objdump -d - | FileCheck -check-prefix=CHECK-INST %s

# CHECK-INST: eq.b %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x00,0x05]
eq.b %d0, %d0, %d0

# CHECK-INST: eq.b %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x00,0x05]
eq.b %d0, %d0, %d1

# CHECK-INST: eq.b %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x00,0x05]
eq.b %d0, %d0, %d14

# CHECK-INST: eq.b %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x00,0x05]
eq.b %d0, %d0, %d15

# CHECK-INST: eq.b %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x00,0x05]
eq.b %d0, %d1, %d0

# CHECK-INST: eq.b %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x00,0x05]
eq.b %d0, %d1, %d1

# CHECK-INST: eq.b %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x00,0x05]
eq.b %d0, %d1, %d14

# CHECK-INST: eq.b %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x00,0x05]
eq.b %d0, %d1, %d15

# CHECK-INST: eq.b %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x00,0x05]
eq.b %d0, %d14, %d0

# CHECK-INST: eq.b %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x00,0x05]
eq.b %d0, %d14, %d1

# CHECK-INST: eq.b %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x00,0x05]
eq.b %d0, %d14, %d14

# CHECK-INST: eq.b %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x00,0x05]
eq.b %d0, %d14, %d15

# CHECK-INST: eq.b %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x00,0x05]
eq.b %d0, %d15, %d0

# CHECK-INST: eq.b %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x00,0x05]
eq.b %d0, %d15, %d1

# CHECK-INST: eq.b %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x00,0x05]
eq.b %d0, %d15, %d14

# CHECK-INST: eq.b %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x00,0x05]
eq.b %d0, %d15, %d15

# CHECK-INST: eq.b %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x00,0x15]
eq.b %d1, %d0, %d0

# CHECK-INST: eq.b %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x00,0x15]
eq.b %d1, %d0, %d1

# CHECK-INST: eq.b %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x00,0x15]
eq.b %d1, %d0, %d14

# CHECK-INST: eq.b %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x00,0x15]
eq.b %d1, %d0, %d15

# CHECK-INST: eq.b %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x00,0x15]
eq.b %d1, %d1, %d0

# CHECK-INST: eq.b %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x00,0x15]
eq.b %d1, %d1, %d1

# CHECK-INST: eq.b %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x00,0x15]
eq.b %d1, %d1, %d14

# CHECK-INST: eq.b %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x00,0x15]
eq.b %d1, %d1, %d15

# CHECK-INST: eq.b %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x00,0x15]
eq.b %d1, %d14, %d0

# CHECK-INST: eq.b %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x00,0x15]
eq.b %d1, %d14, %d1

# CHECK-INST: eq.b %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x00,0x15]
eq.b %d1, %d14, %d14

# CHECK-INST: eq.b %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x00,0x15]
eq.b %d1, %d14, %d15

# CHECK-INST: eq.b %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x00,0x15]
eq.b %d1, %d15, %d0

# CHECK-INST: eq.b %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x00,0x15]
eq.b %d1, %d15, %d1

# CHECK-INST: eq.b %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x00,0x15]
eq.b %d1, %d15, %d14

# CHECK-INST: eq.b %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x00,0x15]
eq.b %d1, %d15, %d15

# CHECK-INST: eq.b %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x00,0xe5]
eq.b %d14, %d0, %d0

# CHECK-INST: eq.b %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x00,0xe5]
eq.b %d14, %d0, %d1

# CHECK-INST: eq.b %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x00,0xe5]
eq.b %d14, %d0, %d14

# CHECK-INST: eq.b %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x00,0xe5]
eq.b %d14, %d0, %d15

# CHECK-INST: eq.b %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x00,0xe5]
eq.b %d14, %d1, %d0

# CHECK-INST: eq.b %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x00,0xe5]
eq.b %d14, %d1, %d1

# CHECK-INST: eq.b %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x00,0xe5]
eq.b %d14, %d1, %d14

# CHECK-INST: eq.b %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x00,0xe5]
eq.b %d14, %d1, %d15

# CHECK-INST: eq.b %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x00,0xe5]
eq.b %d14, %d14, %d0

# CHECK-INST: eq.b %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x00,0xe5]
eq.b %d14, %d14, %d1

# CHECK-INST: eq.b %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x00,0xe5]
eq.b %d14, %d14, %d14

# CHECK-INST: eq.b %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x00,0xe5]
eq.b %d14, %d14, %d15

# CHECK-INST: eq.b %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x00,0xe5]
eq.b %d14, %d15, %d0

# CHECK-INST: eq.b %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x00,0xe5]
eq.b %d14, %d15, %d1

# CHECK-INST: eq.b %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x00,0xe5]
eq.b %d14, %d15, %d14

# CHECK-INST: eq.b %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x00,0xe5]
eq.b %d14, %d15, %d15

# CHECK-INST: eq.b %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x00,0xf5]
eq.b %d15, %d0, %d0

# CHECK-INST: eq.b %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x00,0xf5]
eq.b %d15, %d0, %d1

# CHECK-INST: eq.b %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x00,0xf5]
eq.b %d15, %d0, %d14

# CHECK-INST: eq.b %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x00,0xf5]
eq.b %d15, %d0, %d15

# CHECK-INST: eq.b %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x00,0xf5]
eq.b %d15, %d1, %d0

# CHECK-INST: eq.b %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x00,0xf5]
eq.b %d15, %d1, %d1

# CHECK-INST: eq.b %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x00,0xf5]
eq.b %d15, %d1, %d14

# CHECK-INST: eq.b %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x00,0xf5]
eq.b %d15, %d1, %d15

# CHECK-INST: eq.b %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x00,0xf5]
eq.b %d15, %d14, %d0

# CHECK-INST: eq.b %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x00,0xf5]
eq.b %d15, %d14, %d1

# CHECK-INST: eq.b %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x00,0xf5]
eq.b %d15, %d14, %d14

# CHECK-INST: eq.b %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x00,0xf5]
eq.b %d15, %d14, %d15

# CHECK-INST: eq.b %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x00,0xf5]
eq.b %d15, %d15, %d0

# CHECK-INST: eq.b %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x00,0xf5]
eq.b %d15, %d15, %d1

# CHECK-INST: eq.b %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x00,0xf5]
eq.b %d15, %d15, %d14

# CHECK-INST: eq.b %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x00,0xf5]
eq.b %d15, %d15, %d15

# CHECK-INST: eq.h %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x00,0x07]
eq.h %d0, %d0, %d0

# CHECK-INST: eq.h %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x00,0x07]
eq.h %d0, %d0, %d1

# CHECK-INST: eq.h %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x00,0x07]
eq.h %d0, %d0, %d14

# CHECK-INST: eq.h %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x00,0x07]
eq.h %d0, %d0, %d15

# CHECK-INST: eq.h %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x00,0x07]
eq.h %d0, %d1, %d0

# CHECK-INST: eq.h %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x00,0x07]
eq.h %d0, %d1, %d1

# CHECK-INST: eq.h %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x00,0x07]
eq.h %d0, %d1, %d14

# CHECK-INST: eq.h %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x00,0x07]
eq.h %d0, %d1, %d15

# CHECK-INST: eq.h %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x00,0x07]
eq.h %d0, %d14, %d0

# CHECK-INST: eq.h %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x00,0x07]
eq.h %d0, %d14, %d1

# CHECK-INST: eq.h %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x00,0x07]
eq.h %d0, %d14, %d14

# CHECK-INST: eq.h %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x00,0x07]
eq.h %d0, %d14, %d15

# CHECK-INST: eq.h %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x00,0x07]
eq.h %d0, %d15, %d0

# CHECK-INST: eq.h %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x00,0x07]
eq.h %d0, %d15, %d1

# CHECK-INST: eq.h %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x00,0x07]
eq.h %d0, %d15, %d14

# CHECK-INST: eq.h %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x00,0x07]
eq.h %d0, %d15, %d15

# CHECK-INST: eq.h %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x00,0x17]
eq.h %d1, %d0, %d0

# CHECK-INST: eq.h %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x00,0x17]
eq.h %d1, %d0, %d1

# CHECK-INST: eq.h %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x00,0x17]
eq.h %d1, %d0, %d14

# CHECK-INST: eq.h %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x00,0x17]
eq.h %d1, %d0, %d15

# CHECK-INST: eq.h %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x00,0x17]
eq.h %d1, %d1, %d0

# CHECK-INST: eq.h %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x00,0x17]
eq.h %d1, %d1, %d1

# CHECK-INST: eq.h %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x00,0x17]
eq.h %d1, %d1, %d14

# CHECK-INST: eq.h %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x00,0x17]
eq.h %d1, %d1, %d15

# CHECK-INST: eq.h %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x00,0x17]
eq.h %d1, %d14, %d0

# CHECK-INST: eq.h %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x00,0x17]
eq.h %d1, %d14, %d1

# CHECK-INST: eq.h %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x00,0x17]
eq.h %d1, %d14, %d14

# CHECK-INST: eq.h %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x00,0x17]
eq.h %d1, %d14, %d15

# CHECK-INST: eq.h %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x00,0x17]
eq.h %d1, %d15, %d0

# CHECK-INST: eq.h %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x00,0x17]
eq.h %d1, %d15, %d1

# CHECK-INST: eq.h %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x00,0x17]
eq.h %d1, %d15, %d14

# CHECK-INST: eq.h %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x00,0x17]
eq.h %d1, %d15, %d15

# CHECK-INST: eq.h %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x00,0xe7]
eq.h %d14, %d0, %d0

# CHECK-INST: eq.h %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x00,0xe7]
eq.h %d14, %d0, %d1

# CHECK-INST: eq.h %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x00,0xe7]
eq.h %d14, %d0, %d14

# CHECK-INST: eq.h %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x00,0xe7]
eq.h %d14, %d0, %d15

# CHECK-INST: eq.h %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x00,0xe7]
eq.h %d14, %d1, %d0

# CHECK-INST: eq.h %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x00,0xe7]
eq.h %d14, %d1, %d1

# CHECK-INST: eq.h %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x00,0xe7]
eq.h %d14, %d1, %d14

# CHECK-INST: eq.h %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x00,0xe7]
eq.h %d14, %d1, %d15

# CHECK-INST: eq.h %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x00,0xe7]
eq.h %d14, %d14, %d0

# CHECK-INST: eq.h %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x00,0xe7]
eq.h %d14, %d14, %d1

# CHECK-INST: eq.h %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x00,0xe7]
eq.h %d14, %d14, %d14

# CHECK-INST: eq.h %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x00,0xe7]
eq.h %d14, %d14, %d15

# CHECK-INST: eq.h %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x00,0xe7]
eq.h %d14, %d15, %d0

# CHECK-INST: eq.h %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x00,0xe7]
eq.h %d14, %d15, %d1

# CHECK-INST: eq.h %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x00,0xe7]
eq.h %d14, %d15, %d14

# CHECK-INST: eq.h %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x00,0xe7]
eq.h %d14, %d15, %d15

# CHECK-INST: eq.h %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x00,0xf7]
eq.h %d15, %d0, %d0

# CHECK-INST: eq.h %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x00,0xf7]
eq.h %d15, %d0, %d1

# CHECK-INST: eq.h %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x00,0xf7]
eq.h %d15, %d0, %d14

# CHECK-INST: eq.h %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x00,0xf7]
eq.h %d15, %d0, %d15

# CHECK-INST: eq.h %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x00,0xf7]
eq.h %d15, %d1, %d0

# CHECK-INST: eq.h %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x00,0xf7]
eq.h %d15, %d1, %d1

# CHECK-INST: eq.h %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x00,0xf7]
eq.h %d15, %d1, %d14

# CHECK-INST: eq.h %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x00,0xf7]
eq.h %d15, %d1, %d15

# CHECK-INST: eq.h %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x00,0xf7]
eq.h %d15, %d14, %d0

# CHECK-INST: eq.h %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x00,0xf7]
eq.h %d15, %d14, %d1

# CHECK-INST: eq.h %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x00,0xf7]
eq.h %d15, %d14, %d14

# CHECK-INST: eq.h %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x00,0xf7]
eq.h %d15, %d14, %d15

# CHECK-INST: eq.h %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x00,0xf7]
eq.h %d15, %d15, %d0

# CHECK-INST: eq.h %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x00,0xf7]
eq.h %d15, %d15, %d1

# CHECK-INST: eq.h %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x00,0xf7]
eq.h %d15, %d15, %d14

# CHECK-INST: eq.h %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x00,0xf7]
eq.h %d15, %d15, %d15

# CHECK-INST: eq.w %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x00,0x09]
eq.w %d0, %d0, %d0

# CHECK-INST: eq.w %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x00,0x09]
eq.w %d0, %d0, %d1

# CHECK-INST: eq.w %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x00,0x09]
eq.w %d0, %d0, %d14

# CHECK-INST: eq.w %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x00,0x09]
eq.w %d0, %d0, %d15

# CHECK-INST: eq.w %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x00,0x09]
eq.w %d0, %d1, %d0

# CHECK-INST: eq.w %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x00,0x09]
eq.w %d0, %d1, %d1

# CHECK-INST: eq.w %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x00,0x09]
eq.w %d0, %d1, %d14

# CHECK-INST: eq.w %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x00,0x09]
eq.w %d0, %d1, %d15

# CHECK-INST: eq.w %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x00,0x09]
eq.w %d0, %d14, %d0

# CHECK-INST: eq.w %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x00,0x09]
eq.w %d0, %d14, %d1

# CHECK-INST: eq.w %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x00,0x09]
eq.w %d0, %d14, %d14

# CHECK-INST: eq.w %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x00,0x09]
eq.w %d0, %d14, %d15

# CHECK-INST: eq.w %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x00,0x09]
eq.w %d0, %d15, %d0

# CHECK-INST: eq.w %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x00,0x09]
eq.w %d0, %d15, %d1

# CHECK-INST: eq.w %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x00,0x09]
eq.w %d0, %d15, %d14

# CHECK-INST: eq.w %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x00,0x09]
eq.w %d0, %d15, %d15

# CHECK-INST: eq.w %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x00,0x19]
eq.w %d1, %d0, %d0

# CHECK-INST: eq.w %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x00,0x19]
eq.w %d1, %d0, %d1

# CHECK-INST: eq.w %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x00,0x19]
eq.w %d1, %d0, %d14

# CHECK-INST: eq.w %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x00,0x19]
eq.w %d1, %d0, %d15

# CHECK-INST: eq.w %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x00,0x19]
eq.w %d1, %d1, %d0

# CHECK-INST: eq.w %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x00,0x19]
eq.w %d1, %d1, %d1

# CHECK-INST: eq.w %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x00,0x19]
eq.w %d1, %d1, %d14

# CHECK-INST: eq.w %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x00,0x19]
eq.w %d1, %d1, %d15

# CHECK-INST: eq.w %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x00,0x19]
eq.w %d1, %d14, %d0

# CHECK-INST: eq.w %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x00,0x19]
eq.w %d1, %d14, %d1

# CHECK-INST: eq.w %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x00,0x19]
eq.w %d1, %d14, %d14

# CHECK-INST: eq.w %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x00,0x19]
eq.w %d1, %d14, %d15

# CHECK-INST: eq.w %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x00,0x19]
eq.w %d1, %d15, %d0

# CHECK-INST: eq.w %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x00,0x19]
eq.w %d1, %d15, %d1

# CHECK-INST: eq.w %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x00,0x19]
eq.w %d1, %d15, %d14

# CHECK-INST: eq.w %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x00,0x19]
eq.w %d1, %d15, %d15

# CHECK-INST: eq.w %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x00,0xe9]
eq.w %d14, %d0, %d0

# CHECK-INST: eq.w %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x00,0xe9]
eq.w %d14, %d0, %d1

# CHECK-INST: eq.w %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x00,0xe9]
eq.w %d14, %d0, %d14

# CHECK-INST: eq.w %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x00,0xe9]
eq.w %d14, %d0, %d15

# CHECK-INST: eq.w %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x00,0xe9]
eq.w %d14, %d1, %d0

# CHECK-INST: eq.w %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x00,0xe9]
eq.w %d14, %d1, %d1

# CHECK-INST: eq.w %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x00,0xe9]
eq.w %d14, %d1, %d14

# CHECK-INST: eq.w %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x00,0xe9]
eq.w %d14, %d1, %d15

# CHECK-INST: eq.w %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x00,0xe9]
eq.w %d14, %d14, %d0

# CHECK-INST: eq.w %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x00,0xe9]
eq.w %d14, %d14, %d1

# CHECK-INST: eq.w %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x00,0xe9]
eq.w %d14, %d14, %d14

# CHECK-INST: eq.w %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x00,0xe9]
eq.w %d14, %d14, %d15

# CHECK-INST: eq.w %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x00,0xe9]
eq.w %d14, %d15, %d0

# CHECK-INST: eq.w %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x00,0xe9]
eq.w %d14, %d15, %d1

# CHECK-INST: eq.w %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x00,0xe9]
eq.w %d14, %d15, %d14

# CHECK-INST: eq.w %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x00,0xe9]
eq.w %d14, %d15, %d15

# CHECK-INST: eq.w %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x00,0xf9]
eq.w %d15, %d0, %d0

# CHECK-INST: eq.w %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x00,0xf9]
eq.w %d15, %d0, %d1

# CHECK-INST: eq.w %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x00,0xf9]
eq.w %d15, %d0, %d14

# CHECK-INST: eq.w %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x00,0xf9]
eq.w %d15, %d0, %d15

# CHECK-INST: eq.w %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x00,0xf9]
eq.w %d15, %d1, %d0

# CHECK-INST: eq.w %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x00,0xf9]
eq.w %d15, %d1, %d1

# CHECK-INST: eq.w %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x00,0xf9]
eq.w %d15, %d1, %d14

# CHECK-INST: eq.w %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x00,0xf9]
eq.w %d15, %d1, %d15

# CHECK-INST: eq.w %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x00,0xf9]
eq.w %d15, %d14, %d0

# CHECK-INST: eq.w %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x00,0xf9]
eq.w %d15, %d14, %d1

# CHECK-INST: eq.w %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x00,0xf9]
eq.w %d15, %d14, %d14

# CHECK-INST: eq.w %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x00,0xf9]
eq.w %d15, %d14, %d15

# CHECK-INST: eq.w %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x00,0xf9]
eq.w %d15, %d15, %d0

# CHECK-INST: eq.w %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x00,0xf9]
eq.w %d15, %d15, %d1

# CHECK-INST: eq.w %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x00,0xf9]
eq.w %d15, %d15, %d14

# CHECK-INST: eq.w %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x00,0xf9]
eq.w %d15, %d15, %d15

# CHECK-INST: lt.b %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x20,0x05]
lt.b %d0, %d0, %d0

# CHECK-INST: lt.b %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x20,0x05]
lt.b %d0, %d0, %d1

# CHECK-INST: lt.b %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x20,0x05]
lt.b %d0, %d0, %d14

# CHECK-INST: lt.b %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x20,0x05]
lt.b %d0, %d0, %d15

# CHECK-INST: lt.b %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x20,0x05]
lt.b %d0, %d1, %d0

# CHECK-INST: lt.b %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x20,0x05]
lt.b %d0, %d1, %d1

# CHECK-INST: lt.b %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x20,0x05]
lt.b %d0, %d1, %d14

# CHECK-INST: lt.b %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x20,0x05]
lt.b %d0, %d1, %d15

# CHECK-INST: lt.b %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x20,0x05]
lt.b %d0, %d14, %d0

# CHECK-INST: lt.b %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x20,0x05]
lt.b %d0, %d14, %d1

# CHECK-INST: lt.b %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x20,0x05]
lt.b %d0, %d14, %d14

# CHECK-INST: lt.b %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x20,0x05]
lt.b %d0, %d14, %d15

# CHECK-INST: lt.b %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x20,0x05]
lt.b %d0, %d15, %d0

# CHECK-INST: lt.b %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x20,0x05]
lt.b %d0, %d15, %d1

# CHECK-INST: lt.b %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x20,0x05]
lt.b %d0, %d15, %d14

# CHECK-INST: lt.b %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x20,0x05]
lt.b %d0, %d15, %d15

# CHECK-INST: lt.b %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x20,0x15]
lt.b %d1, %d0, %d0

# CHECK-INST: lt.b %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x20,0x15]
lt.b %d1, %d0, %d1

# CHECK-INST: lt.b %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x20,0x15]
lt.b %d1, %d0, %d14

# CHECK-INST: lt.b %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x20,0x15]
lt.b %d1, %d0, %d15

# CHECK-INST: lt.b %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x20,0x15]
lt.b %d1, %d1, %d0

# CHECK-INST: lt.b %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x20,0x15]
lt.b %d1, %d1, %d1

# CHECK-INST: lt.b %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x20,0x15]
lt.b %d1, %d1, %d14

# CHECK-INST: lt.b %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x20,0x15]
lt.b %d1, %d1, %d15

# CHECK-INST: lt.b %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x20,0x15]
lt.b %d1, %d14, %d0

# CHECK-INST: lt.b %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x20,0x15]
lt.b %d1, %d14, %d1

# CHECK-INST: lt.b %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x20,0x15]
lt.b %d1, %d14, %d14

# CHECK-INST: lt.b %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x20,0x15]
lt.b %d1, %d14, %d15

# CHECK-INST: lt.b %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x20,0x15]
lt.b %d1, %d15, %d0

# CHECK-INST: lt.b %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x20,0x15]
lt.b %d1, %d15, %d1

# CHECK-INST: lt.b %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x20,0x15]
lt.b %d1, %d15, %d14

# CHECK-INST: lt.b %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x20,0x15]
lt.b %d1, %d15, %d15

# CHECK-INST: lt.b %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x20,0xe5]
lt.b %d14, %d0, %d0

# CHECK-INST: lt.b %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x20,0xe5]
lt.b %d14, %d0, %d1

# CHECK-INST: lt.b %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x20,0xe5]
lt.b %d14, %d0, %d14

# CHECK-INST: lt.b %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x20,0xe5]
lt.b %d14, %d0, %d15

# CHECK-INST: lt.b %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x20,0xe5]
lt.b %d14, %d1, %d0

# CHECK-INST: lt.b %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x20,0xe5]
lt.b %d14, %d1, %d1

# CHECK-INST: lt.b %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x20,0xe5]
lt.b %d14, %d1, %d14

# CHECK-INST: lt.b %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x20,0xe5]
lt.b %d14, %d1, %d15

# CHECK-INST: lt.b %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x20,0xe5]
lt.b %d14, %d14, %d0

# CHECK-INST: lt.b %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x20,0xe5]
lt.b %d14, %d14, %d1

# CHECK-INST: lt.b %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x20,0xe5]
lt.b %d14, %d14, %d14

# CHECK-INST: lt.b %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x20,0xe5]
lt.b %d14, %d14, %d15

# CHECK-INST: lt.b %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x20,0xe5]
lt.b %d14, %d15, %d0

# CHECK-INST: lt.b %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x20,0xe5]
lt.b %d14, %d15, %d1

# CHECK-INST: lt.b %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x20,0xe5]
lt.b %d14, %d15, %d14

# CHECK-INST: lt.b %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x20,0xe5]
lt.b %d14, %d15, %d15

# CHECK-INST: lt.b %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x20,0xf5]
lt.b %d15, %d0, %d0

# CHECK-INST: lt.b %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x20,0xf5]
lt.b %d15, %d0, %d1

# CHECK-INST: lt.b %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x20,0xf5]
lt.b %d15, %d0, %d14

# CHECK-INST: lt.b %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x20,0xf5]
lt.b %d15, %d0, %d15

# CHECK-INST: lt.b %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x20,0xf5]
lt.b %d15, %d1, %d0

# CHECK-INST: lt.b %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x20,0xf5]
lt.b %d15, %d1, %d1

# CHECK-INST: lt.b %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x20,0xf5]
lt.b %d15, %d1, %d14

# CHECK-INST: lt.b %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x20,0xf5]
lt.b %d15, %d1, %d15

# CHECK-INST: lt.b %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x20,0xf5]
lt.b %d15, %d14, %d0

# CHECK-INST: lt.b %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x20,0xf5]
lt.b %d15, %d14, %d1

# CHECK-INST: lt.b %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x20,0xf5]
lt.b %d15, %d14, %d14

# CHECK-INST: lt.b %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x20,0xf5]
lt.b %d15, %d14, %d15

# CHECK-INST: lt.b %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x20,0xf5]
lt.b %d15, %d15, %d0

# CHECK-INST: lt.b %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x20,0xf5]
lt.b %d15, %d15, %d1

# CHECK-INST: lt.b %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x20,0xf5]
lt.b %d15, %d15, %d14

# CHECK-INST: lt.b %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x20,0xf5]
lt.b %d15, %d15, %d15

# CHECK-INST: lt.bu %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x30,0x05]
lt.bu %d0, %d0, %d0

# CHECK-INST: lt.bu %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x30,0x05]
lt.bu %d0, %d0, %d1

# CHECK-INST: lt.bu %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x30,0x05]
lt.bu %d0, %d0, %d14

# CHECK-INST: lt.bu %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x30,0x05]
lt.bu %d0, %d0, %d15

# CHECK-INST: lt.bu %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x30,0x05]
lt.bu %d0, %d1, %d0

# CHECK-INST: lt.bu %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x30,0x05]
lt.bu %d0, %d1, %d1

# CHECK-INST: lt.bu %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x30,0x05]
lt.bu %d0, %d1, %d14

# CHECK-INST: lt.bu %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x30,0x05]
lt.bu %d0, %d1, %d15

# CHECK-INST: lt.bu %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x30,0x05]
lt.bu %d0, %d14, %d0

# CHECK-INST: lt.bu %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x30,0x05]
lt.bu %d0, %d14, %d1

# CHECK-INST: lt.bu %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x30,0x05]
lt.bu %d0, %d14, %d14

# CHECK-INST: lt.bu %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x30,0x05]
lt.bu %d0, %d14, %d15

# CHECK-INST: lt.bu %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x30,0x05]
lt.bu %d0, %d15, %d0

# CHECK-INST: lt.bu %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x30,0x05]
lt.bu %d0, %d15, %d1

# CHECK-INST: lt.bu %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x30,0x05]
lt.bu %d0, %d15, %d14

# CHECK-INST: lt.bu %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x30,0x05]
lt.bu %d0, %d15, %d15

# CHECK-INST: lt.bu %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x30,0x15]
lt.bu %d1, %d0, %d0

# CHECK-INST: lt.bu %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x30,0x15]
lt.bu %d1, %d0, %d1

# CHECK-INST: lt.bu %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x30,0x15]
lt.bu %d1, %d0, %d14

# CHECK-INST: lt.bu %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x30,0x15]
lt.bu %d1, %d0, %d15

# CHECK-INST: lt.bu %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x30,0x15]
lt.bu %d1, %d1, %d0

# CHECK-INST: lt.bu %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x30,0x15]
lt.bu %d1, %d1, %d1

# CHECK-INST: lt.bu %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x30,0x15]
lt.bu %d1, %d1, %d14

# CHECK-INST: lt.bu %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x30,0x15]
lt.bu %d1, %d1, %d15

# CHECK-INST: lt.bu %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x30,0x15]
lt.bu %d1, %d14, %d0

# CHECK-INST: lt.bu %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x30,0x15]
lt.bu %d1, %d14, %d1

# CHECK-INST: lt.bu %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x30,0x15]
lt.bu %d1, %d14, %d14

# CHECK-INST: lt.bu %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x30,0x15]
lt.bu %d1, %d14, %d15

# CHECK-INST: lt.bu %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x30,0x15]
lt.bu %d1, %d15, %d0

# CHECK-INST: lt.bu %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x30,0x15]
lt.bu %d1, %d15, %d1

# CHECK-INST: lt.bu %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x30,0x15]
lt.bu %d1, %d15, %d14

# CHECK-INST: lt.bu %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x30,0x15]
lt.bu %d1, %d15, %d15

# CHECK-INST: lt.bu %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x30,0xe5]
lt.bu %d14, %d0, %d0

# CHECK-INST: lt.bu %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x30,0xe5]
lt.bu %d14, %d0, %d1

# CHECK-INST: lt.bu %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x30,0xe5]
lt.bu %d14, %d0, %d14

# CHECK-INST: lt.bu %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x30,0xe5]
lt.bu %d14, %d0, %d15

# CHECK-INST: lt.bu %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x30,0xe5]
lt.bu %d14, %d1, %d0

# CHECK-INST: lt.bu %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x30,0xe5]
lt.bu %d14, %d1, %d1

# CHECK-INST: lt.bu %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x30,0xe5]
lt.bu %d14, %d1, %d14

# CHECK-INST: lt.bu %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x30,0xe5]
lt.bu %d14, %d1, %d15

# CHECK-INST: lt.bu %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x30,0xe5]
lt.bu %d14, %d14, %d0

# CHECK-INST: lt.bu %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x30,0xe5]
lt.bu %d14, %d14, %d1

# CHECK-INST: lt.bu %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x30,0xe5]
lt.bu %d14, %d14, %d14

# CHECK-INST: lt.bu %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x30,0xe5]
lt.bu %d14, %d14, %d15

# CHECK-INST: lt.bu %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x30,0xe5]
lt.bu %d14, %d15, %d0

# CHECK-INST: lt.bu %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x30,0xe5]
lt.bu %d14, %d15, %d1

# CHECK-INST: lt.bu %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x30,0xe5]
lt.bu %d14, %d15, %d14

# CHECK-INST: lt.bu %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x30,0xe5]
lt.bu %d14, %d15, %d15

# CHECK-INST: lt.bu %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x30,0xf5]
lt.bu %d15, %d0, %d0

# CHECK-INST: lt.bu %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x30,0xf5]
lt.bu %d15, %d0, %d1

# CHECK-INST: lt.bu %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x30,0xf5]
lt.bu %d15, %d0, %d14

# CHECK-INST: lt.bu %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x30,0xf5]
lt.bu %d15, %d0, %d15

# CHECK-INST: lt.bu %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x30,0xf5]
lt.bu %d15, %d1, %d0

# CHECK-INST: lt.bu %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x30,0xf5]
lt.bu %d15, %d1, %d1

# CHECK-INST: lt.bu %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x30,0xf5]
lt.bu %d15, %d1, %d14

# CHECK-INST: lt.bu %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x30,0xf5]
lt.bu %d15, %d1, %d15

# CHECK-INST: lt.bu %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x30,0xf5]
lt.bu %d15, %d14, %d0

# CHECK-INST: lt.bu %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x30,0xf5]
lt.bu %d15, %d14, %d1

# CHECK-INST: lt.bu %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x30,0xf5]
lt.bu %d15, %d14, %d14

# CHECK-INST: lt.bu %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x30,0xf5]
lt.bu %d15, %d14, %d15

# CHECK-INST: lt.bu %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x30,0xf5]
lt.bu %d15, %d15, %d0

# CHECK-INST: lt.bu %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x30,0xf5]
lt.bu %d15, %d15, %d1

# CHECK-INST: lt.bu %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x30,0xf5]
lt.bu %d15, %d15, %d14

# CHECK-INST: lt.bu %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x30,0xf5]
lt.bu %d15, %d15, %d15

# CHECK-INST: lt.h %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x20,0x07]
lt.h %d0, %d0, %d0

# CHECK-INST: lt.h %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x20,0x07]
lt.h %d0, %d0, %d1

# CHECK-INST: lt.h %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x20,0x07]
lt.h %d0, %d0, %d14

# CHECK-INST: lt.h %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x20,0x07]
lt.h %d0, %d0, %d15

# CHECK-INST: lt.h %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x20,0x07]
lt.h %d0, %d1, %d0

# CHECK-INST: lt.h %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x20,0x07]
lt.h %d0, %d1, %d1

# CHECK-INST: lt.h %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x20,0x07]
lt.h %d0, %d1, %d14

# CHECK-INST: lt.h %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x20,0x07]
lt.h %d0, %d1, %d15

# CHECK-INST: lt.h %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x20,0x07]
lt.h %d0, %d14, %d0

# CHECK-INST: lt.h %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x20,0x07]
lt.h %d0, %d14, %d1

# CHECK-INST: lt.h %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x20,0x07]
lt.h %d0, %d14, %d14

# CHECK-INST: lt.h %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x20,0x07]
lt.h %d0, %d14, %d15

# CHECK-INST: lt.h %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x20,0x07]
lt.h %d0, %d15, %d0

# CHECK-INST: lt.h %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x20,0x07]
lt.h %d0, %d15, %d1

# CHECK-INST: lt.h %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x20,0x07]
lt.h %d0, %d15, %d14

# CHECK-INST: lt.h %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x20,0x07]
lt.h %d0, %d15, %d15

# CHECK-INST: lt.h %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x20,0x17]
lt.h %d1, %d0, %d0

# CHECK-INST: lt.h %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x20,0x17]
lt.h %d1, %d0, %d1

# CHECK-INST: lt.h %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x20,0x17]
lt.h %d1, %d0, %d14

# CHECK-INST: lt.h %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x20,0x17]
lt.h %d1, %d0, %d15

# CHECK-INST: lt.h %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x20,0x17]
lt.h %d1, %d1, %d0

# CHECK-INST: lt.h %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x20,0x17]
lt.h %d1, %d1, %d1

# CHECK-INST: lt.h %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x20,0x17]
lt.h %d1, %d1, %d14

# CHECK-INST: lt.h %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x20,0x17]
lt.h %d1, %d1, %d15

# CHECK-INST: lt.h %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x20,0x17]
lt.h %d1, %d14, %d0

# CHECK-INST: lt.h %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x20,0x17]
lt.h %d1, %d14, %d1

# CHECK-INST: lt.h %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x20,0x17]
lt.h %d1, %d14, %d14

# CHECK-INST: lt.h %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x20,0x17]
lt.h %d1, %d14, %d15

# CHECK-INST: lt.h %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x20,0x17]
lt.h %d1, %d15, %d0

# CHECK-INST: lt.h %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x20,0x17]
lt.h %d1, %d15, %d1

# CHECK-INST: lt.h %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x20,0x17]
lt.h %d1, %d15, %d14

# CHECK-INST: lt.h %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x20,0x17]
lt.h %d1, %d15, %d15

# CHECK-INST: lt.h %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x20,0xe7]
lt.h %d14, %d0, %d0

# CHECK-INST: lt.h %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x20,0xe7]
lt.h %d14, %d0, %d1

# CHECK-INST: lt.h %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x20,0xe7]
lt.h %d14, %d0, %d14

# CHECK-INST: lt.h %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x20,0xe7]
lt.h %d14, %d0, %d15

# CHECK-INST: lt.h %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x20,0xe7]
lt.h %d14, %d1, %d0

# CHECK-INST: lt.h %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x20,0xe7]
lt.h %d14, %d1, %d1

# CHECK-INST: lt.h %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x20,0xe7]
lt.h %d14, %d1, %d14

# CHECK-INST: lt.h %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x20,0xe7]
lt.h %d14, %d1, %d15

# CHECK-INST: lt.h %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x20,0xe7]
lt.h %d14, %d14, %d0

# CHECK-INST: lt.h %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x20,0xe7]
lt.h %d14, %d14, %d1

# CHECK-INST: lt.h %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x20,0xe7]
lt.h %d14, %d14, %d14

# CHECK-INST: lt.h %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x20,0xe7]
lt.h %d14, %d14, %d15

# CHECK-INST: lt.h %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x20,0xe7]
lt.h %d14, %d15, %d0

# CHECK-INST: lt.h %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x20,0xe7]
lt.h %d14, %d15, %d1

# CHECK-INST: lt.h %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x20,0xe7]
lt.h %d14, %d15, %d14

# CHECK-INST: lt.h %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x20,0xe7]
lt.h %d14, %d15, %d15

# CHECK-INST: lt.h %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x20,0xf7]
lt.h %d15, %d0, %d0

# CHECK-INST: lt.h %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x20,0xf7]
lt.h %d15, %d0, %d1

# CHECK-INST: lt.h %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x20,0xf7]
lt.h %d15, %d0, %d14

# CHECK-INST: lt.h %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x20,0xf7]
lt.h %d15, %d0, %d15

# CHECK-INST: lt.h %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x20,0xf7]
lt.h %d15, %d1, %d0

# CHECK-INST: lt.h %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x20,0xf7]
lt.h %d15, %d1, %d1

# CHECK-INST: lt.h %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x20,0xf7]
lt.h %d15, %d1, %d14

# CHECK-INST: lt.h %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x20,0xf7]
lt.h %d15, %d1, %d15

# CHECK-INST: lt.h %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x20,0xf7]
lt.h %d15, %d14, %d0

# CHECK-INST: lt.h %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x20,0xf7]
lt.h %d15, %d14, %d1

# CHECK-INST: lt.h %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x20,0xf7]
lt.h %d15, %d14, %d14

# CHECK-INST: lt.h %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x20,0xf7]
lt.h %d15, %d14, %d15

# CHECK-INST: lt.h %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x20,0xf7]
lt.h %d15, %d15, %d0

# CHECK-INST: lt.h %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x20,0xf7]
lt.h %d15, %d15, %d1

# CHECK-INST: lt.h %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x20,0xf7]
lt.h %d15, %d15, %d14

# CHECK-INST: lt.h %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x20,0xf7]
lt.h %d15, %d15, %d15

# CHECK-INST: lt.hu %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x30,0x07]
lt.hu %d0, %d0, %d0

# CHECK-INST: lt.hu %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x30,0x07]
lt.hu %d0, %d0, %d1

# CHECK-INST: lt.hu %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x30,0x07]
lt.hu %d0, %d0, %d14

# CHECK-INST: lt.hu %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x30,0x07]
lt.hu %d0, %d0, %d15

# CHECK-INST: lt.hu %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x30,0x07]
lt.hu %d0, %d1, %d0

# CHECK-INST: lt.hu %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x30,0x07]
lt.hu %d0, %d1, %d1

# CHECK-INST: lt.hu %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x30,0x07]
lt.hu %d0, %d1, %d14

# CHECK-INST: lt.hu %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x30,0x07]
lt.hu %d0, %d1, %d15

# CHECK-INST: lt.hu %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x30,0x07]
lt.hu %d0, %d14, %d0

# CHECK-INST: lt.hu %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x30,0x07]
lt.hu %d0, %d14, %d1

# CHECK-INST: lt.hu %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x30,0x07]
lt.hu %d0, %d14, %d14

# CHECK-INST: lt.hu %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x30,0x07]
lt.hu %d0, %d14, %d15

# CHECK-INST: lt.hu %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x30,0x07]
lt.hu %d0, %d15, %d0

# CHECK-INST: lt.hu %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x30,0x07]
lt.hu %d0, %d15, %d1

# CHECK-INST: lt.hu %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x30,0x07]
lt.hu %d0, %d15, %d14

# CHECK-INST: lt.hu %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x30,0x07]
lt.hu %d0, %d15, %d15

# CHECK-INST: lt.hu %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x30,0x17]
lt.hu %d1, %d0, %d0

# CHECK-INST: lt.hu %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x30,0x17]
lt.hu %d1, %d0, %d1

# CHECK-INST: lt.hu %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x30,0x17]
lt.hu %d1, %d0, %d14

# CHECK-INST: lt.hu %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x30,0x17]
lt.hu %d1, %d0, %d15

# CHECK-INST: lt.hu %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x30,0x17]
lt.hu %d1, %d1, %d0

# CHECK-INST: lt.hu %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x30,0x17]
lt.hu %d1, %d1, %d1

# CHECK-INST: lt.hu %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x30,0x17]
lt.hu %d1, %d1, %d14

# CHECK-INST: lt.hu %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x30,0x17]
lt.hu %d1, %d1, %d15

# CHECK-INST: lt.hu %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x30,0x17]
lt.hu %d1, %d14, %d0

# CHECK-INST: lt.hu %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x30,0x17]
lt.hu %d1, %d14, %d1

# CHECK-INST: lt.hu %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x30,0x17]
lt.hu %d1, %d14, %d14

# CHECK-INST: lt.hu %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x30,0x17]
lt.hu %d1, %d14, %d15

# CHECK-INST: lt.hu %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x30,0x17]
lt.hu %d1, %d15, %d0

# CHECK-INST: lt.hu %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x30,0x17]
lt.hu %d1, %d15, %d1

# CHECK-INST: lt.hu %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x30,0x17]
lt.hu %d1, %d15, %d14

# CHECK-INST: lt.hu %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x30,0x17]
lt.hu %d1, %d15, %d15

# CHECK-INST: lt.hu %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x30,0xe7]
lt.hu %d14, %d0, %d0

# CHECK-INST: lt.hu %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x30,0xe7]
lt.hu %d14, %d0, %d1

# CHECK-INST: lt.hu %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x30,0xe7]
lt.hu %d14, %d0, %d14

# CHECK-INST: lt.hu %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x30,0xe7]
lt.hu %d14, %d0, %d15

# CHECK-INST: lt.hu %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x30,0xe7]
lt.hu %d14, %d1, %d0

# CHECK-INST: lt.hu %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x30,0xe7]
lt.hu %d14, %d1, %d1

# CHECK-INST: lt.hu %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x30,0xe7]
lt.hu %d14, %d1, %d14

# CHECK-INST: lt.hu %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x30,0xe7]
lt.hu %d14, %d1, %d15

# CHECK-INST: lt.hu %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x30,0xe7]
lt.hu %d14, %d14, %d0

# CHECK-INST: lt.hu %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x30,0xe7]
lt.hu %d14, %d14, %d1

# CHECK-INST: lt.hu %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x30,0xe7]
lt.hu %d14, %d14, %d14

# CHECK-INST: lt.hu %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x30,0xe7]
lt.hu %d14, %d14, %d15

# CHECK-INST: lt.hu %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x30,0xe7]
lt.hu %d14, %d15, %d0

# CHECK-INST: lt.hu %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x30,0xe7]
lt.hu %d14, %d15, %d1

# CHECK-INST: lt.hu %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x30,0xe7]
lt.hu %d14, %d15, %d14

# CHECK-INST: lt.hu %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x30,0xe7]
lt.hu %d14, %d15, %d15

# CHECK-INST: lt.hu %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x30,0xf7]
lt.hu %d15, %d0, %d0

# CHECK-INST: lt.hu %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x30,0xf7]
lt.hu %d15, %d0, %d1

# CHECK-INST: lt.hu %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x30,0xf7]
lt.hu %d15, %d0, %d14

# CHECK-INST: lt.hu %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x30,0xf7]
lt.hu %d15, %d0, %d15

# CHECK-INST: lt.hu %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x30,0xf7]
lt.hu %d15, %d1, %d0

# CHECK-INST: lt.hu %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x30,0xf7]
lt.hu %d15, %d1, %d1

# CHECK-INST: lt.hu %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x30,0xf7]
lt.hu %d15, %d1, %d14

# CHECK-INST: lt.hu %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x30,0xf7]
lt.hu %d15, %d1, %d15

# CHECK-INST: lt.hu %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x30,0xf7]
lt.hu %d15, %d14, %d0

# CHECK-INST: lt.hu %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x30,0xf7]
lt.hu %d15, %d14, %d1

# CHECK-INST: lt.hu %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x30,0xf7]
lt.hu %d15, %d14, %d14

# CHECK-INST: lt.hu %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x30,0xf7]
lt.hu %d15, %d14, %d15

# CHECK-INST: lt.hu %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x30,0xf7]
lt.hu %d15, %d15, %d0

# CHECK-INST: lt.hu %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x30,0xf7]
lt.hu %d15, %d15, %d1

# CHECK-INST: lt.hu %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x30,0xf7]
lt.hu %d15, %d15, %d14

# CHECK-INST: lt.hu %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x30,0xf7]
lt.hu %d15, %d15, %d15

# CHECK-INST: lt.w %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x20,0x09]
lt.w %d0, %d0, %d0

# CHECK-INST: lt.w %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x20,0x09]
lt.w %d0, %d0, %d1

# CHECK-INST: lt.w %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x20,0x09]
lt.w %d0, %d0, %d14

# CHECK-INST: lt.w %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x20,0x09]
lt.w %d0, %d0, %d15

# CHECK-INST: lt.w %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x20,0x09]
lt.w %d0, %d1, %d0

# CHECK-INST: lt.w %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x20,0x09]
lt.w %d0, %d1, %d1

# CHECK-INST: lt.w %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x20,0x09]
lt.w %d0, %d1, %d14

# CHECK-INST: lt.w %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x20,0x09]
lt.w %d0, %d1, %d15

# CHECK-INST: lt.w %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x20,0x09]
lt.w %d0, %d14, %d0

# CHECK-INST: lt.w %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x20,0x09]
lt.w %d0, %d14, %d1

# CHECK-INST: lt.w %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x20,0x09]
lt.w %d0, %d14, %d14

# CHECK-INST: lt.w %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x20,0x09]
lt.w %d0, %d14, %d15

# CHECK-INST: lt.w %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x20,0x09]
lt.w %d0, %d15, %d0

# CHECK-INST: lt.w %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x20,0x09]
lt.w %d0, %d15, %d1

# CHECK-INST: lt.w %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x20,0x09]
lt.w %d0, %d15, %d14

# CHECK-INST: lt.w %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x20,0x09]
lt.w %d0, %d15, %d15

# CHECK-INST: lt.w %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x20,0x19]
lt.w %d1, %d0, %d0

# CHECK-INST: lt.w %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x20,0x19]
lt.w %d1, %d0, %d1

# CHECK-INST: lt.w %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x20,0x19]
lt.w %d1, %d0, %d14

# CHECK-INST: lt.w %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x20,0x19]
lt.w %d1, %d0, %d15

# CHECK-INST: lt.w %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x20,0x19]
lt.w %d1, %d1, %d0

# CHECK-INST: lt.w %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x20,0x19]
lt.w %d1, %d1, %d1

# CHECK-INST: lt.w %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x20,0x19]
lt.w %d1, %d1, %d14

# CHECK-INST: lt.w %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x20,0x19]
lt.w %d1, %d1, %d15

# CHECK-INST: lt.w %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x20,0x19]
lt.w %d1, %d14, %d0

# CHECK-INST: lt.w %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x20,0x19]
lt.w %d1, %d14, %d1

# CHECK-INST: lt.w %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x20,0x19]
lt.w %d1, %d14, %d14

# CHECK-INST: lt.w %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x20,0x19]
lt.w %d1, %d14, %d15

# CHECK-INST: lt.w %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x20,0x19]
lt.w %d1, %d15, %d0

# CHECK-INST: lt.w %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x20,0x19]
lt.w %d1, %d15, %d1

# CHECK-INST: lt.w %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x20,0x19]
lt.w %d1, %d15, %d14

# CHECK-INST: lt.w %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x20,0x19]
lt.w %d1, %d15, %d15

# CHECK-INST: lt.w %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x20,0xe9]
lt.w %d14, %d0, %d0

# CHECK-INST: lt.w %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x20,0xe9]
lt.w %d14, %d0, %d1

# CHECK-INST: lt.w %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x20,0xe9]
lt.w %d14, %d0, %d14

# CHECK-INST: lt.w %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x20,0xe9]
lt.w %d14, %d0, %d15

# CHECK-INST: lt.w %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x20,0xe9]
lt.w %d14, %d1, %d0

# CHECK-INST: lt.w %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x20,0xe9]
lt.w %d14, %d1, %d1

# CHECK-INST: lt.w %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x20,0xe9]
lt.w %d14, %d1, %d14

# CHECK-INST: lt.w %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x20,0xe9]
lt.w %d14, %d1, %d15

# CHECK-INST: lt.w %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x20,0xe9]
lt.w %d14, %d14, %d0

# CHECK-INST: lt.w %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x20,0xe9]
lt.w %d14, %d14, %d1

# CHECK-INST: lt.w %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x20,0xe9]
lt.w %d14, %d14, %d14

# CHECK-INST: lt.w %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x20,0xe9]
lt.w %d14, %d14, %d15

# CHECK-INST: lt.w %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x20,0xe9]
lt.w %d14, %d15, %d0

# CHECK-INST: lt.w %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x20,0xe9]
lt.w %d14, %d15, %d1

# CHECK-INST: lt.w %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x20,0xe9]
lt.w %d14, %d15, %d14

# CHECK-INST: lt.w %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x20,0xe9]
lt.w %d14, %d15, %d15

# CHECK-INST: lt.w %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x20,0xf9]
lt.w %d15, %d0, %d0

# CHECK-INST: lt.w %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x20,0xf9]
lt.w %d15, %d0, %d1

# CHECK-INST: lt.w %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x20,0xf9]
lt.w %d15, %d0, %d14

# CHECK-INST: lt.w %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x20,0xf9]
lt.w %d15, %d0, %d15

# CHECK-INST: lt.w %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x20,0xf9]
lt.w %d15, %d1, %d0

# CHECK-INST: lt.w %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x20,0xf9]
lt.w %d15, %d1, %d1

# CHECK-INST: lt.w %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x20,0xf9]
lt.w %d15, %d1, %d14

# CHECK-INST: lt.w %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x20,0xf9]
lt.w %d15, %d1, %d15

# CHECK-INST: lt.w %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x20,0xf9]
lt.w %d15, %d14, %d0

# CHECK-INST: lt.w %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x20,0xf9]
lt.w %d15, %d14, %d1

# CHECK-INST: lt.w %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x20,0xf9]
lt.w %d15, %d14, %d14

# CHECK-INST: lt.w %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x20,0xf9]
lt.w %d15, %d14, %d15

# CHECK-INST: lt.w %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x20,0xf9]
lt.w %d15, %d15, %d0

# CHECK-INST: lt.w %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x20,0xf9]
lt.w %d15, %d15, %d1

# CHECK-INST: lt.w %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x20,0xf9]
lt.w %d15, %d15, %d14

# CHECK-INST: lt.w %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x20,0xf9]
lt.w %d15, %d15, %d15

# CHECK-INST: lt.wu %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x30,0x09]
lt.wu %d0, %d0, %d0

# CHECK-INST: lt.wu %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x30,0x09]
lt.wu %d0, %d0, %d1

# CHECK-INST: lt.wu %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x30,0x09]
lt.wu %d0, %d0, %d14

# CHECK-INST: lt.wu %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x30,0x09]
lt.wu %d0, %d0, %d15

# CHECK-INST: lt.wu %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x30,0x09]
lt.wu %d0, %d1, %d0

# CHECK-INST: lt.wu %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x30,0x09]
lt.wu %d0, %d1, %d1

# CHECK-INST: lt.wu %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x30,0x09]
lt.wu %d0, %d1, %d14

# CHECK-INST: lt.wu %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x30,0x09]
lt.wu %d0, %d1, %d15

# CHECK-INST: lt.wu %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x30,0x09]
lt.wu %d0, %d14, %d0

# CHECK-INST: lt.wu %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x30,0x09]
lt.wu %d0, %d14, %d1

# CHECK-INST: lt.wu %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x30,0x09]
lt.wu %d0, %d14, %d14

# CHECK-INST: lt.wu %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x30,0x09]
lt.wu %d0, %d14, %d15

# CHECK-INST: lt.wu %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x30,0x09]
lt.wu %d0, %d15, %d0

# CHECK-INST: lt.wu %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x30,0x09]
lt.wu %d0, %d15, %d1

# CHECK-INST: lt.wu %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x30,0x09]
lt.wu %d0, %d15, %d14

# CHECK-INST: lt.wu %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x30,0x09]
lt.wu %d0, %d15, %d15

# CHECK-INST: lt.wu %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x30,0x19]
lt.wu %d1, %d0, %d0

# CHECK-INST: lt.wu %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x30,0x19]
lt.wu %d1, %d0, %d1

# CHECK-INST: lt.wu %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x30,0x19]
lt.wu %d1, %d0, %d14

# CHECK-INST: lt.wu %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x30,0x19]
lt.wu %d1, %d0, %d15

# CHECK-INST: lt.wu %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x30,0x19]
lt.wu %d1, %d1, %d0

# CHECK-INST: lt.wu %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x30,0x19]
lt.wu %d1, %d1, %d1

# CHECK-INST: lt.wu %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x30,0x19]
lt.wu %d1, %d1, %d14

# CHECK-INST: lt.wu %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x30,0x19]
lt.wu %d1, %d1, %d15

# CHECK-INST: lt.wu %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x30,0x19]
lt.wu %d1, %d14, %d0

# CHECK-INST: lt.wu %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x30,0x19]
lt.wu %d1, %d14, %d1

# CHECK-INST: lt.wu %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x30,0x19]
lt.wu %d1, %d14, %d14

# CHECK-INST: lt.wu %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x30,0x19]
lt.wu %d1, %d14, %d15

# CHECK-INST: lt.wu %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x30,0x19]
lt.wu %d1, %d15, %d0

# CHECK-INST: lt.wu %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x30,0x19]
lt.wu %d1, %d15, %d1

# CHECK-INST: lt.wu %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x30,0x19]
lt.wu %d1, %d15, %d14

# CHECK-INST: lt.wu %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x30,0x19]
lt.wu %d1, %d15, %d15

# CHECK-INST: lt.wu %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x30,0xe9]
lt.wu %d14, %d0, %d0

# CHECK-INST: lt.wu %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x30,0xe9]
lt.wu %d14, %d0, %d1

# CHECK-INST: lt.wu %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x30,0xe9]
lt.wu %d14, %d0, %d14

# CHECK-INST: lt.wu %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x30,0xe9]
lt.wu %d14, %d0, %d15

# CHECK-INST: lt.wu %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x30,0xe9]
lt.wu %d14, %d1, %d0

# CHECK-INST: lt.wu %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x30,0xe9]
lt.wu %d14, %d1, %d1

# CHECK-INST: lt.wu %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x30,0xe9]
lt.wu %d14, %d1, %d14

# CHECK-INST: lt.wu %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x30,0xe9]
lt.wu %d14, %d1, %d15

# CHECK-INST: lt.wu %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x30,0xe9]
lt.wu %d14, %d14, %d0

# CHECK-INST: lt.wu %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x30,0xe9]
lt.wu %d14, %d14, %d1

# CHECK-INST: lt.wu %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x30,0xe9]
lt.wu %d14, %d14, %d14

# CHECK-INST: lt.wu %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x30,0xe9]
lt.wu %d14, %d14, %d15

# CHECK-INST: lt.wu %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x30,0xe9]
lt.wu %d14, %d15, %d0

# CHECK-INST: lt.wu %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x30,0xe9]
lt.wu %d14, %d15, %d1

# CHECK-INST: lt.wu %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x30,0xe9]
lt.wu %d14, %d15, %d14

# CHECK-INST: lt.wu %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x30,0xe9]
lt.wu %d14, %d15, %d15

# CHECK-INST: lt.wu %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x30,0xf9]
lt.wu %d15, %d0, %d0

# CHECK-INST: lt.wu %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x30,0xf9]
lt.wu %d15, %d0, %d1

# CHECK-INST: lt.wu %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x30,0xf9]
lt.wu %d15, %d0, %d14

# CHECK-INST: lt.wu %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x30,0xf9]
lt.wu %d15, %d0, %d15

# CHECK-INST: lt.wu %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x30,0xf9]
lt.wu %d15, %d1, %d0

# CHECK-INST: lt.wu %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x30,0xf9]
lt.wu %d15, %d1, %d1

# CHECK-INST: lt.wu %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x30,0xf9]
lt.wu %d15, %d1, %d14

# CHECK-INST: lt.wu %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x30,0xf9]
lt.wu %d15, %d1, %d15

# CHECK-INST: lt.wu %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x30,0xf9]
lt.wu %d15, %d14, %d0

# CHECK-INST: lt.wu %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x30,0xf9]
lt.wu %d15, %d14, %d1

# CHECK-INST: lt.wu %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x30,0xf9]
lt.wu %d15, %d14, %d14

# CHECK-INST: lt.wu %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x30,0xf9]
lt.wu %d15, %d14, %d15

# CHECK-INST: lt.wu %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x30,0xf9]
lt.wu %d15, %d15, %d0

# CHECK-INST: lt.wu %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x30,0xf9]
lt.wu %d15, %d15, %d1

# CHECK-INST: lt.wu %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x30,0xf9]
lt.wu %d15, %d15, %d14

# CHECK-INST: lt.wu %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x30,0xf9]
lt.wu %d15, %d15, %d15
