# RUN: llvm-mc %s -triple=tricore -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK,CHECK-INST %s
# RUN: llvm-mc -filetype=obj -triple=tricore < %s \
# RUN:     | llvm-objdump -d - | FileCheck -check-prefix=CHECK-INST %s

# CHECK-INST: abs.b %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xc0,0x05]
.code32
abs.b %d0, %d0

# CHECK-INST: abs.b %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xc0,0x05]
.code32
abs.b %d0, %d1

# CHECK-INST: abs.b %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xc0,0x05]
.code32
abs.b %d0, %d14

# CHECK-INST: abs.b %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xc0,0x05]
.code32
abs.b %d0, %d15

# CHECK-INST: abs.b %d1, %d0
# CHECK: encoding: [0x0b,0x00,0xc0,0x15]
.code32
abs.b %d1, %d0

# CHECK-INST: abs.b %d1, %d1
# CHECK: encoding: [0x0b,0x10,0xc0,0x15]
.code32
abs.b %d1, %d1

# CHECK-INST: abs.b %d1, %d14
# CHECK: encoding: [0x0b,0xe0,0xc0,0x15]
.code32
abs.b %d1, %d14

# CHECK-INST: abs.b %d1, %d15
# CHECK: encoding: [0x0b,0xf0,0xc0,0x15]
.code32
abs.b %d1, %d15

# CHECK-INST: abs.b %d14, %d0
# CHECK: encoding: [0x0b,0x00,0xc0,0xe5]
.code32
abs.b %d14, %d0

# CHECK-INST: abs.b %d14, %d1
# CHECK: encoding: [0x0b,0x10,0xc0,0xe5]
.code32
abs.b %d14, %d1

# CHECK-INST: abs.b %d14, %d14
# CHECK: encoding: [0x0b,0xe0,0xc0,0xe5]
.code32
abs.b %d14, %d14

# CHECK-INST: abs.b %d14, %d15
# CHECK: encoding: [0x0b,0xf0,0xc0,0xe5]
.code32
abs.b %d14, %d15

# CHECK-INST: abs.b %d15, %d0
# CHECK: encoding: [0x0b,0x00,0xc0,0xf5]
.code32
abs.b %d15, %d0

# CHECK-INST: abs.b %d15, %d1
# CHECK: encoding: [0x0b,0x10,0xc0,0xf5]
.code32
abs.b %d15, %d1

# CHECK-INST: abs.b %d15, %d14
# CHECK: encoding: [0x0b,0xe0,0xc0,0xf5]
.code32
abs.b %d15, %d14

# CHECK-INST: abs.b %d15, %d15
# CHECK: encoding: [0x0b,0xf0,0xc0,0xf5]
.code32
abs.b %d15, %d15

# CHECK-INST: abs.h %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xc0,0x07]
.code32
abs.h %d0, %d0

# CHECK-INST: abs.h %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xc0,0x07]
.code32
abs.h %d0, %d1

# CHECK-INST: abs.h %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xc0,0x07]
.code32
abs.h %d0, %d14

# CHECK-INST: abs.h %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xc0,0x07]
.code32
abs.h %d0, %d15

# CHECK-INST: abs.h %d1, %d0
# CHECK: encoding: [0x0b,0x00,0xc0,0x17]
.code32
abs.h %d1, %d0

# CHECK-INST: abs.h %d1, %d1
# CHECK: encoding: [0x0b,0x10,0xc0,0x17]
.code32
abs.h %d1, %d1

# CHECK-INST: abs.h %d1, %d14
# CHECK: encoding: [0x0b,0xe0,0xc0,0x17]
.code32
abs.h %d1, %d14

# CHECK-INST: abs.h %d1, %d15
# CHECK: encoding: [0x0b,0xf0,0xc0,0x17]
.code32
abs.h %d1, %d15

# CHECK-INST: abs.h %d14, %d0
# CHECK: encoding: [0x0b,0x00,0xc0,0xe7]
.code32
abs.h %d14, %d0

# CHECK-INST: abs.h %d14, %d1
# CHECK: encoding: [0x0b,0x10,0xc0,0xe7]
.code32
abs.h %d14, %d1

# CHECK-INST: abs.h %d14, %d14
# CHECK: encoding: [0x0b,0xe0,0xc0,0xe7]
.code32
abs.h %d14, %d14

# CHECK-INST: abs.h %d14, %d15
# CHECK: encoding: [0x0b,0xf0,0xc0,0xe7]
.code32
abs.h %d14, %d15

# CHECK-INST: abs.h %d15, %d0
# CHECK: encoding: [0x0b,0x00,0xc0,0xf7]
.code32
abs.h %d15, %d0

# CHECK-INST: abs.h %d15, %d1
# CHECK: encoding: [0x0b,0x10,0xc0,0xf7]
.code32
abs.h %d15, %d1

# CHECK-INST: abs.h %d15, %d14
# CHECK: encoding: [0x0b,0xe0,0xc0,0xf7]
.code32
abs.h %d15, %d14

# CHECK-INST: abs.h %d15, %d15
# CHECK: encoding: [0x0b,0xf0,0xc0,0xf7]
.code32
abs.h %d15, %d15

# CHECK-INST: absdif.b %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xe0,0x04]
.code32
absdif.b %d0, %d0, %d0

# CHECK-INST: absdif.b %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xe0,0x04]
.code32
absdif.b %d0, %d0, %d1

# CHECK-INST: absdif.b %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xe0,0x04]
.code32
absdif.b %d0, %d0, %d14

# CHECK-INST: absdif.b %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xe0,0x04]
.code32
absdif.b %d0, %d0, %d15

# CHECK-INST: absdif.b %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xe0,0x04]
.code32
absdif.b %d0, %d1, %d0

# CHECK-INST: absdif.b %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xe0,0x04]
.code32
absdif.b %d0, %d1, %d1

# CHECK-INST: absdif.b %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xe0,0x04]
.code32
absdif.b %d0, %d1, %d14

# CHECK-INST: absdif.b %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xe0,0x04]
.code32
absdif.b %d0, %d1, %d15

# CHECK-INST: absdif.b %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xe0,0x04]
.code32
absdif.b %d0, %d14, %d0

# CHECK-INST: absdif.b %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xe0,0x04]
.code32
absdif.b %d0, %d14, %d1

# CHECK-INST: absdif.b %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xe0,0x04]
.code32
absdif.b %d0, %d14, %d14

# CHECK-INST: absdif.b %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xe0,0x04]
.code32
absdif.b %d0, %d14, %d15

# CHECK-INST: absdif.b %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xe0,0x04]
.code32
absdif.b %d0, %d15, %d0

# CHECK-INST: absdif.b %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xe0,0x04]
.code32
absdif.b %d0, %d15, %d1

# CHECK-INST: absdif.b %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xe0,0x04]
.code32
absdif.b %d0, %d15, %d14

# CHECK-INST: absdif.b %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xe0,0x04]
.code32
absdif.b %d0, %d15, %d15

# CHECK-INST: absdif.b %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xe0,0x14]
.code32
absdif.b %d1, %d0, %d0

# CHECK-INST: absdif.b %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xe0,0x14]
.code32
absdif.b %d1, %d0, %d1

# CHECK-INST: absdif.b %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xe0,0x14]
.code32
absdif.b %d1, %d0, %d14

# CHECK-INST: absdif.b %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xe0,0x14]
.code32
absdif.b %d1, %d0, %d15

# CHECK-INST: absdif.b %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xe0,0x14]
.code32
absdif.b %d1, %d1, %d0

# CHECK-INST: absdif.b %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xe0,0x14]
.code32
absdif.b %d1, %d1, %d1

# CHECK-INST: absdif.b %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xe0,0x14]
.code32
absdif.b %d1, %d1, %d14

# CHECK-INST: absdif.b %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xe0,0x14]
.code32
absdif.b %d1, %d1, %d15

# CHECK-INST: absdif.b %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xe0,0x14]
.code32
absdif.b %d1, %d14, %d0

# CHECK-INST: absdif.b %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xe0,0x14]
.code32
absdif.b %d1, %d14, %d1

# CHECK-INST: absdif.b %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xe0,0x14]
.code32
absdif.b %d1, %d14, %d14

# CHECK-INST: absdif.b %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xe0,0x14]
.code32
absdif.b %d1, %d14, %d15

# CHECK-INST: absdif.b %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xe0,0x14]
.code32
absdif.b %d1, %d15, %d0

# CHECK-INST: absdif.b %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xe0,0x14]
.code32
absdif.b %d1, %d15, %d1

# CHECK-INST: absdif.b %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xe0,0x14]
.code32
absdif.b %d1, %d15, %d14

# CHECK-INST: absdif.b %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xe0,0x14]
.code32
absdif.b %d1, %d15, %d15

# CHECK-INST: absdif.b %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xe0,0xe4]
.code32
absdif.b %d14, %d0, %d0

# CHECK-INST: absdif.b %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xe0,0xe4]
.code32
absdif.b %d14, %d0, %d1

# CHECK-INST: absdif.b %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xe0,0xe4]
.code32
absdif.b %d14, %d0, %d14

# CHECK-INST: absdif.b %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xe0,0xe4]
.code32
absdif.b %d14, %d0, %d15

# CHECK-INST: absdif.b %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xe0,0xe4]
.code32
absdif.b %d14, %d1, %d0

# CHECK-INST: absdif.b %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xe0,0xe4]
.code32
absdif.b %d14, %d1, %d1

# CHECK-INST: absdif.b %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xe0,0xe4]
.code32
absdif.b %d14, %d1, %d14

# CHECK-INST: absdif.b %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xe0,0xe4]
.code32
absdif.b %d14, %d1, %d15

# CHECK-INST: absdif.b %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xe0,0xe4]
.code32
absdif.b %d14, %d14, %d0

# CHECK-INST: absdif.b %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xe0,0xe4]
.code32
absdif.b %d14, %d14, %d1

# CHECK-INST: absdif.b %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xe0,0xe4]
.code32
absdif.b %d14, %d14, %d14

# CHECK-INST: absdif.b %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xe0,0xe4]
.code32
absdif.b %d14, %d14, %d15

# CHECK-INST: absdif.b %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xe0,0xe4]
.code32
absdif.b %d14, %d15, %d0

# CHECK-INST: absdif.b %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xe0,0xe4]
.code32
absdif.b %d14, %d15, %d1

# CHECK-INST: absdif.b %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xe0,0xe4]
.code32
absdif.b %d14, %d15, %d14

# CHECK-INST: absdif.b %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xe0,0xe4]
.code32
absdif.b %d14, %d15, %d15

# CHECK-INST: absdif.b %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xe0,0xf4]
.code32
absdif.b %d15, %d0, %d0

# CHECK-INST: absdif.b %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xe0,0xf4]
.code32
absdif.b %d15, %d0, %d1

# CHECK-INST: absdif.b %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xe0,0xf4]
.code32
absdif.b %d15, %d0, %d14

# CHECK-INST: absdif.b %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xe0,0xf4]
.code32
absdif.b %d15, %d0, %d15

# CHECK-INST: absdif.b %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xe0,0xf4]
.code32
absdif.b %d15, %d1, %d0

# CHECK-INST: absdif.b %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xe0,0xf4]
.code32
absdif.b %d15, %d1, %d1

# CHECK-INST: absdif.b %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xe0,0xf4]
.code32
absdif.b %d15, %d1, %d14

# CHECK-INST: absdif.b %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xe0,0xf4]
.code32
absdif.b %d15, %d1, %d15

# CHECK-INST: absdif.b %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xe0,0xf4]
.code32
absdif.b %d15, %d14, %d0

# CHECK-INST: absdif.b %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xe0,0xf4]
.code32
absdif.b %d15, %d14, %d1

# CHECK-INST: absdif.b %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xe0,0xf4]
.code32
absdif.b %d15, %d14, %d14

# CHECK-INST: absdif.b %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xe0,0xf4]
.code32
absdif.b %d15, %d14, %d15

# CHECK-INST: absdif.b %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xe0,0xf4]
.code32
absdif.b %d15, %d15, %d0

# CHECK-INST: absdif.b %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xe0,0xf4]
.code32
absdif.b %d15, %d15, %d1

# CHECK-INST: absdif.b %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xe0,0xf4]
.code32
absdif.b %d15, %d15, %d14

# CHECK-INST: absdif.b %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xe0,0xf4]
.code32
absdif.b %d15, %d15, %d15

# CHECK-INST: absdif.h %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xe0,0x06]
.code32
absdif.h %d0, %d0, %d0

# CHECK-INST: absdif.h %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xe0,0x06]
.code32
absdif.h %d0, %d0, %d1

# CHECK-INST: absdif.h %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xe0,0x06]
.code32
absdif.h %d0, %d0, %d14

# CHECK-INST: absdif.h %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xe0,0x06]
.code32
absdif.h %d0, %d0, %d15

# CHECK-INST: absdif.h %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xe0,0x06]
.code32
absdif.h %d0, %d1, %d0

# CHECK-INST: absdif.h %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xe0,0x06]
.code32
absdif.h %d0, %d1, %d1

# CHECK-INST: absdif.h %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xe0,0x06]
.code32
absdif.h %d0, %d1, %d14

# CHECK-INST: absdif.h %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xe0,0x06]
.code32
absdif.h %d0, %d1, %d15

# CHECK-INST: absdif.h %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xe0,0x06]
.code32
absdif.h %d0, %d14, %d0

# CHECK-INST: absdif.h %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xe0,0x06]
.code32
absdif.h %d0, %d14, %d1

# CHECK-INST: absdif.h %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xe0,0x06]
.code32
absdif.h %d0, %d14, %d14

# CHECK-INST: absdif.h %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xe0,0x06]
.code32
absdif.h %d0, %d14, %d15

# CHECK-INST: absdif.h %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xe0,0x06]
.code32
absdif.h %d0, %d15, %d0

# CHECK-INST: absdif.h %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xe0,0x06]
.code32
absdif.h %d0, %d15, %d1

# CHECK-INST: absdif.h %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xe0,0x06]
.code32
absdif.h %d0, %d15, %d14

# CHECK-INST: absdif.h %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xe0,0x06]
.code32
absdif.h %d0, %d15, %d15

# CHECK-INST: absdif.h %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xe0,0x16]
.code32
absdif.h %d1, %d0, %d0

# CHECK-INST: absdif.h %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xe0,0x16]
.code32
absdif.h %d1, %d0, %d1

# CHECK-INST: absdif.h %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xe0,0x16]
.code32
absdif.h %d1, %d0, %d14

# CHECK-INST: absdif.h %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xe0,0x16]
.code32
absdif.h %d1, %d0, %d15

# CHECK-INST: absdif.h %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xe0,0x16]
.code32
absdif.h %d1, %d1, %d0

# CHECK-INST: absdif.h %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xe0,0x16]
.code32
absdif.h %d1, %d1, %d1

# CHECK-INST: absdif.h %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xe0,0x16]
.code32
absdif.h %d1, %d1, %d14

# CHECK-INST: absdif.h %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xe0,0x16]
.code32
absdif.h %d1, %d1, %d15

# CHECK-INST: absdif.h %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xe0,0x16]
.code32
absdif.h %d1, %d14, %d0

# CHECK-INST: absdif.h %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xe0,0x16]
.code32
absdif.h %d1, %d14, %d1

# CHECK-INST: absdif.h %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xe0,0x16]
.code32
absdif.h %d1, %d14, %d14

# CHECK-INST: absdif.h %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xe0,0x16]
.code32
absdif.h %d1, %d14, %d15

# CHECK-INST: absdif.h %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xe0,0x16]
.code32
absdif.h %d1, %d15, %d0

# CHECK-INST: absdif.h %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xe0,0x16]
.code32
absdif.h %d1, %d15, %d1

# CHECK-INST: absdif.h %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xe0,0x16]
.code32
absdif.h %d1, %d15, %d14

# CHECK-INST: absdif.h %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xe0,0x16]
.code32
absdif.h %d1, %d15, %d15

# CHECK-INST: absdif.h %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xe0,0xe6]
.code32
absdif.h %d14, %d0, %d0

# CHECK-INST: absdif.h %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xe0,0xe6]
.code32
absdif.h %d14, %d0, %d1

# CHECK-INST: absdif.h %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xe0,0xe6]
.code32
absdif.h %d14, %d0, %d14

# CHECK-INST: absdif.h %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xe0,0xe6]
.code32
absdif.h %d14, %d0, %d15

# CHECK-INST: absdif.h %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xe0,0xe6]
.code32
absdif.h %d14, %d1, %d0

# CHECK-INST: absdif.h %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xe0,0xe6]
.code32
absdif.h %d14, %d1, %d1

# CHECK-INST: absdif.h %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xe0,0xe6]
.code32
absdif.h %d14, %d1, %d14

# CHECK-INST: absdif.h %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xe0,0xe6]
.code32
absdif.h %d14, %d1, %d15

# CHECK-INST: absdif.h %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xe0,0xe6]
.code32
absdif.h %d14, %d14, %d0

# CHECK-INST: absdif.h %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xe0,0xe6]
.code32
absdif.h %d14, %d14, %d1

# CHECK-INST: absdif.h %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xe0,0xe6]
.code32
absdif.h %d14, %d14, %d14

# CHECK-INST: absdif.h %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xe0,0xe6]
.code32
absdif.h %d14, %d14, %d15

# CHECK-INST: absdif.h %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xe0,0xe6]
.code32
absdif.h %d14, %d15, %d0

# CHECK-INST: absdif.h %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xe0,0xe6]
.code32
absdif.h %d14, %d15, %d1

# CHECK-INST: absdif.h %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xe0,0xe6]
.code32
absdif.h %d14, %d15, %d14

# CHECK-INST: absdif.h %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xe0,0xe6]
.code32
absdif.h %d14, %d15, %d15

# CHECK-INST: absdif.h %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xe0,0xf6]
.code32
absdif.h %d15, %d0, %d0

# CHECK-INST: absdif.h %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xe0,0xf6]
.code32
absdif.h %d15, %d0, %d1

# CHECK-INST: absdif.h %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xe0,0xf6]
.code32
absdif.h %d15, %d0, %d14

# CHECK-INST: absdif.h %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xe0,0xf6]
.code32
absdif.h %d15, %d0, %d15

# CHECK-INST: absdif.h %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xe0,0xf6]
.code32
absdif.h %d15, %d1, %d0

# CHECK-INST: absdif.h %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xe0,0xf6]
.code32
absdif.h %d15, %d1, %d1

# CHECK-INST: absdif.h %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xe0,0xf6]
.code32
absdif.h %d15, %d1, %d14

# CHECK-INST: absdif.h %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xe0,0xf6]
.code32
absdif.h %d15, %d1, %d15

# CHECK-INST: absdif.h %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xe0,0xf6]
.code32
absdif.h %d15, %d14, %d0

# CHECK-INST: absdif.h %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xe0,0xf6]
.code32
absdif.h %d15, %d14, %d1

# CHECK-INST: absdif.h %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xe0,0xf6]
.code32
absdif.h %d15, %d14, %d14

# CHECK-INST: absdif.h %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xe0,0xf6]
.code32
absdif.h %d15, %d14, %d15

# CHECK-INST: absdif.h %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xe0,0xf6]
.code32
absdif.h %d15, %d15, %d0

# CHECK-INST: absdif.h %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xe0,0xf6]
.code32
absdif.h %d15, %d15, %d1

# CHECK-INST: absdif.h %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xe0,0xf6]
.code32
absdif.h %d15, %d15, %d14

# CHECK-INST: absdif.h %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xe0,0xf6]
.code32
absdif.h %d15, %d15, %d15

# CHECK-INST: absdifs.h %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xf0,0x06]
.code32
absdifs.h %d0, %d0, %d0

# CHECK-INST: absdifs.h %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xf0,0x06]
.code32
absdifs.h %d0, %d0, %d1

# CHECK-INST: absdifs.h %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xf0,0x06]
.code32
absdifs.h %d0, %d0, %d14

# CHECK-INST: absdifs.h %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xf0,0x06]
.code32
absdifs.h %d0, %d0, %d15

# CHECK-INST: absdifs.h %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xf0,0x06]
.code32
absdifs.h %d0, %d1, %d0

# CHECK-INST: absdifs.h %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xf0,0x06]
.code32
absdifs.h %d0, %d1, %d1

# CHECK-INST: absdifs.h %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xf0,0x06]
.code32
absdifs.h %d0, %d1, %d14

# CHECK-INST: absdifs.h %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xf0,0x06]
.code32
absdifs.h %d0, %d1, %d15

# CHECK-INST: absdifs.h %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xf0,0x06]
.code32
absdifs.h %d0, %d14, %d0

# CHECK-INST: absdifs.h %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xf0,0x06]
.code32
absdifs.h %d0, %d14, %d1

# CHECK-INST: absdifs.h %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xf0,0x06]
.code32
absdifs.h %d0, %d14, %d14

# CHECK-INST: absdifs.h %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xf0,0x06]
.code32
absdifs.h %d0, %d14, %d15

# CHECK-INST: absdifs.h %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xf0,0x06]
.code32
absdifs.h %d0, %d15, %d0

# CHECK-INST: absdifs.h %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xf0,0x06]
.code32
absdifs.h %d0, %d15, %d1

# CHECK-INST: absdifs.h %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xf0,0x06]
.code32
absdifs.h %d0, %d15, %d14

# CHECK-INST: absdifs.h %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xf0,0x06]
.code32
absdifs.h %d0, %d15, %d15

# CHECK-INST: absdifs.h %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xf0,0x16]
.code32
absdifs.h %d1, %d0, %d0

# CHECK-INST: absdifs.h %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xf0,0x16]
.code32
absdifs.h %d1, %d0, %d1

# CHECK-INST: absdifs.h %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xf0,0x16]
.code32
absdifs.h %d1, %d0, %d14

# CHECK-INST: absdifs.h %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xf0,0x16]
.code32
absdifs.h %d1, %d0, %d15

# CHECK-INST: absdifs.h %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xf0,0x16]
.code32
absdifs.h %d1, %d1, %d0

# CHECK-INST: absdifs.h %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xf0,0x16]
.code32
absdifs.h %d1, %d1, %d1

# CHECK-INST: absdifs.h %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xf0,0x16]
.code32
absdifs.h %d1, %d1, %d14

# CHECK-INST: absdifs.h %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xf0,0x16]
.code32
absdifs.h %d1, %d1, %d15

# CHECK-INST: absdifs.h %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xf0,0x16]
.code32
absdifs.h %d1, %d14, %d0

# CHECK-INST: absdifs.h %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xf0,0x16]
.code32
absdifs.h %d1, %d14, %d1

# CHECK-INST: absdifs.h %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xf0,0x16]
.code32
absdifs.h %d1, %d14, %d14

# CHECK-INST: absdifs.h %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xf0,0x16]
.code32
absdifs.h %d1, %d14, %d15

# CHECK-INST: absdifs.h %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xf0,0x16]
.code32
absdifs.h %d1, %d15, %d0

# CHECK-INST: absdifs.h %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xf0,0x16]
.code32
absdifs.h %d1, %d15, %d1

# CHECK-INST: absdifs.h %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xf0,0x16]
.code32
absdifs.h %d1, %d15, %d14

# CHECK-INST: absdifs.h %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xf0,0x16]
.code32
absdifs.h %d1, %d15, %d15

# CHECK-INST: absdifs.h %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xf0,0xe6]
.code32
absdifs.h %d14, %d0, %d0

# CHECK-INST: absdifs.h %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xf0,0xe6]
.code32
absdifs.h %d14, %d0, %d1

# CHECK-INST: absdifs.h %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xf0,0xe6]
.code32
absdifs.h %d14, %d0, %d14

# CHECK-INST: absdifs.h %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xf0,0xe6]
.code32
absdifs.h %d14, %d0, %d15

# CHECK-INST: absdifs.h %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xf0,0xe6]
.code32
absdifs.h %d14, %d1, %d0

# CHECK-INST: absdifs.h %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xf0,0xe6]
.code32
absdifs.h %d14, %d1, %d1

# CHECK-INST: absdifs.h %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xf0,0xe6]
.code32
absdifs.h %d14, %d1, %d14

# CHECK-INST: absdifs.h %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xf0,0xe6]
.code32
absdifs.h %d14, %d1, %d15

# CHECK-INST: absdifs.h %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xf0,0xe6]
.code32
absdifs.h %d14, %d14, %d0

# CHECK-INST: absdifs.h %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xf0,0xe6]
.code32
absdifs.h %d14, %d14, %d1

# CHECK-INST: absdifs.h %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xf0,0xe6]
.code32
absdifs.h %d14, %d14, %d14

# CHECK-INST: absdifs.h %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xf0,0xe6]
.code32
absdifs.h %d14, %d14, %d15

# CHECK-INST: absdifs.h %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xf0,0xe6]
.code32
absdifs.h %d14, %d15, %d0

# CHECK-INST: absdifs.h %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xf0,0xe6]
.code32
absdifs.h %d14, %d15, %d1

# CHECK-INST: absdifs.h %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xf0,0xe6]
.code32
absdifs.h %d14, %d15, %d14

# CHECK-INST: absdifs.h %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xf0,0xe6]
.code32
absdifs.h %d14, %d15, %d15

# CHECK-INST: absdifs.h %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xf0,0xf6]
.code32
absdifs.h %d15, %d0, %d0

# CHECK-INST: absdifs.h %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xf0,0xf6]
.code32
absdifs.h %d15, %d0, %d1

# CHECK-INST: absdifs.h %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xf0,0xf6]
.code32
absdifs.h %d15, %d0, %d14

# CHECK-INST: absdifs.h %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xf0,0xf6]
.code32
absdifs.h %d15, %d0, %d15

# CHECK-INST: absdifs.h %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xf0,0xf6]
.code32
absdifs.h %d15, %d1, %d0

# CHECK-INST: absdifs.h %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xf0,0xf6]
.code32
absdifs.h %d15, %d1, %d1

# CHECK-INST: absdifs.h %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xf0,0xf6]
.code32
absdifs.h %d15, %d1, %d14

# CHECK-INST: absdifs.h %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xf0,0xf6]
.code32
absdifs.h %d15, %d1, %d15

# CHECK-INST: absdifs.h %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xf0,0xf6]
.code32
absdifs.h %d15, %d14, %d0

# CHECK-INST: absdifs.h %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xf0,0xf6]
.code32
absdifs.h %d15, %d14, %d1

# CHECK-INST: absdifs.h %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xf0,0xf6]
.code32
absdifs.h %d15, %d14, %d14

# CHECK-INST: absdifs.h %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xf0,0xf6]
.code32
absdifs.h %d15, %d14, %d15

# CHECK-INST: absdifs.h %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xf0,0xf6]
.code32
absdifs.h %d15, %d15, %d0

# CHECK-INST: absdifs.h %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xf0,0xf6]
.code32
absdifs.h %d15, %d15, %d1

# CHECK-INST: absdifs.h %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xf0,0xf6]
.code32
absdifs.h %d15, %d15, %d14

# CHECK-INST: absdifs.h %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xf0,0xf6]
.code32
absdifs.h %d15, %d15, %d15

# CHECK-INST: abss.h %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xd0,0x07]
.code32
abss.h %d0, %d0

# CHECK-INST: abss.h %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xd0,0x07]
.code32
abss.h %d0, %d1

# CHECK-INST: abss.h %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xd0,0x07]
.code32
abss.h %d0, %d14

# CHECK-INST: abss.h %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xd0,0x07]
.code32
abss.h %d0, %d15

# CHECK-INST: abss.h %d1, %d0
# CHECK: encoding: [0x0b,0x00,0xd0,0x17]
.code32
abss.h %d1, %d0

# CHECK-INST: abss.h %d1, %d1
# CHECK: encoding: [0x0b,0x10,0xd0,0x17]
.code32
abss.h %d1, %d1

# CHECK-INST: abss.h %d1, %d14
# CHECK: encoding: [0x0b,0xe0,0xd0,0x17]
.code32
abss.h %d1, %d14

# CHECK-INST: abss.h %d1, %d15
# CHECK: encoding: [0x0b,0xf0,0xd0,0x17]
.code32
abss.h %d1, %d15

# CHECK-INST: abss.h %d14, %d0
# CHECK: encoding: [0x0b,0x00,0xd0,0xe7]
.code32
abss.h %d14, %d0

# CHECK-INST: abss.h %d14, %d1
# CHECK: encoding: [0x0b,0x10,0xd0,0xe7]
.code32
abss.h %d14, %d1

# CHECK-INST: abss.h %d14, %d14
# CHECK: encoding: [0x0b,0xe0,0xd0,0xe7]
.code32
abss.h %d14, %d14

# CHECK-INST: abss.h %d14, %d15
# CHECK: encoding: [0x0b,0xf0,0xd0,0xe7]
.code32
abss.h %d14, %d15

# CHECK-INST: abss.h %d15, %d0
# CHECK: encoding: [0x0b,0x00,0xd0,0xf7]
.code32
abss.h %d15, %d0

# CHECK-INST: abss.h %d15, %d1
# CHECK: encoding: [0x0b,0x10,0xd0,0xf7]
.code32
abss.h %d15, %d1

# CHECK-INST: abss.h %d15, %d14
# CHECK: encoding: [0x0b,0xe0,0xd0,0xf7]
.code32
abss.h %d15, %d14

# CHECK-INST: abss.h %d15, %d15
# CHECK: encoding: [0x0b,0xf0,0xd0,0xf7]
.code32
abss.h %d15, %d15

# CHECK-INST: add.b %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x00,0x04]
.code32
add.b %d0, %d0, %d0

# CHECK-INST: add.b %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x00,0x04]
.code32
add.b %d0, %d0, %d1

# CHECK-INST: add.b %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x00,0x04]
.code32
add.b %d0, %d0, %d14

# CHECK-INST: add.b %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x00,0x04]
.code32
add.b %d0, %d0, %d15

# CHECK-INST: add.b %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x00,0x04]
.code32
add.b %d0, %d1, %d0

# CHECK-INST: add.b %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x00,0x04]
.code32
add.b %d0, %d1, %d1

# CHECK-INST: add.b %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x00,0x04]
.code32
add.b %d0, %d1, %d14

# CHECK-INST: add.b %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x00,0x04]
.code32
add.b %d0, %d1, %d15

# CHECK-INST: add.b %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x00,0x04]
.code32
add.b %d0, %d14, %d0

# CHECK-INST: add.b %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x00,0x04]
.code32
add.b %d0, %d14, %d1

# CHECK-INST: add.b %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x00,0x04]
.code32
add.b %d0, %d14, %d14

# CHECK-INST: add.b %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x00,0x04]
.code32
add.b %d0, %d14, %d15

# CHECK-INST: add.b %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x00,0x04]
.code32
add.b %d0, %d15, %d0

# CHECK-INST: add.b %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x00,0x04]
.code32
add.b %d0, %d15, %d1

# CHECK-INST: add.b %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x00,0x04]
.code32
add.b %d0, %d15, %d14

# CHECK-INST: add.b %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x00,0x04]
.code32
add.b %d0, %d15, %d15

# CHECK-INST: add.b %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x00,0x14]
.code32
add.b %d1, %d0, %d0

# CHECK-INST: add.b %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x00,0x14]
.code32
add.b %d1, %d0, %d1

# CHECK-INST: add.b %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x00,0x14]
.code32
add.b %d1, %d0, %d14

# CHECK-INST: add.b %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x00,0x14]
.code32
add.b %d1, %d0, %d15

# CHECK-INST: add.b %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x00,0x14]
.code32
add.b %d1, %d1, %d0

# CHECK-INST: add.b %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x00,0x14]
.code32
add.b %d1, %d1, %d1

# CHECK-INST: add.b %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x00,0x14]
.code32
add.b %d1, %d1, %d14

# CHECK-INST: add.b %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x00,0x14]
.code32
add.b %d1, %d1, %d15

# CHECK-INST: add.b %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x00,0x14]
.code32
add.b %d1, %d14, %d0

# CHECK-INST: add.b %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x00,0x14]
.code32
add.b %d1, %d14, %d1

# CHECK-INST: add.b %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x00,0x14]
.code32
add.b %d1, %d14, %d14

# CHECK-INST: add.b %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x00,0x14]
.code32
add.b %d1, %d14, %d15

# CHECK-INST: add.b %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x00,0x14]
.code32
add.b %d1, %d15, %d0

# CHECK-INST: add.b %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x00,0x14]
.code32
add.b %d1, %d15, %d1

# CHECK-INST: add.b %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x00,0x14]
.code32
add.b %d1, %d15, %d14

# CHECK-INST: add.b %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x00,0x14]
.code32
add.b %d1, %d15, %d15

# CHECK-INST: add.b %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x00,0xe4]
.code32
add.b %d14, %d0, %d0

# CHECK-INST: add.b %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x00,0xe4]
.code32
add.b %d14, %d0, %d1

# CHECK-INST: add.b %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x00,0xe4]
.code32
add.b %d14, %d0, %d14

# CHECK-INST: add.b %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x00,0xe4]
.code32
add.b %d14, %d0, %d15

# CHECK-INST: add.b %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x00,0xe4]
.code32
add.b %d14, %d1, %d0

# CHECK-INST: add.b %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x00,0xe4]
.code32
add.b %d14, %d1, %d1

# CHECK-INST: add.b %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x00,0xe4]
.code32
add.b %d14, %d1, %d14

# CHECK-INST: add.b %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x00,0xe4]
.code32
add.b %d14, %d1, %d15

# CHECK-INST: add.b %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x00,0xe4]
.code32
add.b %d14, %d14, %d0

# CHECK-INST: add.b %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x00,0xe4]
.code32
add.b %d14, %d14, %d1

# CHECK-INST: add.b %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x00,0xe4]
.code32
add.b %d14, %d14, %d14

# CHECK-INST: add.b %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x00,0xe4]
.code32
add.b %d14, %d14, %d15

# CHECK-INST: add.b %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x00,0xe4]
.code32
add.b %d14, %d15, %d0

# CHECK-INST: add.b %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x00,0xe4]
.code32
add.b %d14, %d15, %d1

# CHECK-INST: add.b %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x00,0xe4]
.code32
add.b %d14, %d15, %d14

# CHECK-INST: add.b %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x00,0xe4]
.code32
add.b %d14, %d15, %d15

# CHECK-INST: add.b %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x00,0xf4]
.code32
add.b %d15, %d0, %d0

# CHECK-INST: add.b %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x00,0xf4]
.code32
add.b %d15, %d0, %d1

# CHECK-INST: add.b %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x00,0xf4]
.code32
add.b %d15, %d0, %d14

# CHECK-INST: add.b %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x00,0xf4]
.code32
add.b %d15, %d0, %d15

# CHECK-INST: add.b %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x00,0xf4]
.code32
add.b %d15, %d1, %d0

# CHECK-INST: add.b %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x00,0xf4]
.code32
add.b %d15, %d1, %d1

# CHECK-INST: add.b %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x00,0xf4]
.code32
add.b %d15, %d1, %d14

# CHECK-INST: add.b %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x00,0xf4]
.code32
add.b %d15, %d1, %d15

# CHECK-INST: add.b %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x00,0xf4]
.code32
add.b %d15, %d14, %d0

# CHECK-INST: add.b %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x00,0xf4]
.code32
add.b %d15, %d14, %d1

# CHECK-INST: add.b %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x00,0xf4]
.code32
add.b %d15, %d14, %d14

# CHECK-INST: add.b %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x00,0xf4]
.code32
add.b %d15, %d14, %d15

# CHECK-INST: add.b %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x00,0xf4]
.code32
add.b %d15, %d15, %d0

# CHECK-INST: add.b %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x00,0xf4]
.code32
add.b %d15, %d15, %d1

# CHECK-INST: add.b %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x00,0xf4]
.code32
add.b %d15, %d15, %d14

# CHECK-INST: add.b %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x00,0xf4]
.code32
add.b %d15, %d15, %d15

# CHECK-INST: add.h %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x00,0x06]
.code32
add.h %d0, %d0, %d0

# CHECK-INST: add.h %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x00,0x06]
.code32
add.h %d0, %d0, %d1

# CHECK-INST: add.h %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x00,0x06]
.code32
add.h %d0, %d0, %d14

# CHECK-INST: add.h %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x00,0x06]
.code32
add.h %d0, %d0, %d15

# CHECK-INST: add.h %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x00,0x06]
.code32
add.h %d0, %d1, %d0

# CHECK-INST: add.h %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x00,0x06]
.code32
add.h %d0, %d1, %d1

# CHECK-INST: add.h %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x00,0x06]
.code32
add.h %d0, %d1, %d14

# CHECK-INST: add.h %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x00,0x06]
.code32
add.h %d0, %d1, %d15

# CHECK-INST: add.h %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x00,0x06]
.code32
add.h %d0, %d14, %d0

# CHECK-INST: add.h %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x00,0x06]
.code32
add.h %d0, %d14, %d1

# CHECK-INST: add.h %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x00,0x06]
.code32
add.h %d0, %d14, %d14

# CHECK-INST: add.h %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x00,0x06]
.code32
add.h %d0, %d14, %d15

# CHECK-INST: add.h %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x00,0x06]
.code32
add.h %d0, %d15, %d0

# CHECK-INST: add.h %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x00,0x06]
.code32
add.h %d0, %d15, %d1

# CHECK-INST: add.h %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x00,0x06]
.code32
add.h %d0, %d15, %d14

# CHECK-INST: add.h %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x00,0x06]
.code32
add.h %d0, %d15, %d15

# CHECK-INST: add.h %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x00,0x16]
.code32
add.h %d1, %d0, %d0

# CHECK-INST: add.h %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x00,0x16]
.code32
add.h %d1, %d0, %d1

# CHECK-INST: add.h %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x00,0x16]
.code32
add.h %d1, %d0, %d14

# CHECK-INST: add.h %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x00,0x16]
.code32
add.h %d1, %d0, %d15

# CHECK-INST: add.h %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x00,0x16]
.code32
add.h %d1, %d1, %d0

# CHECK-INST: add.h %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x00,0x16]
.code32
add.h %d1, %d1, %d1

# CHECK-INST: add.h %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x00,0x16]
.code32
add.h %d1, %d1, %d14

# CHECK-INST: add.h %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x00,0x16]
.code32
add.h %d1, %d1, %d15

# CHECK-INST: add.h %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x00,0x16]
.code32
add.h %d1, %d14, %d0

# CHECK-INST: add.h %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x00,0x16]
.code32
add.h %d1, %d14, %d1

# CHECK-INST: add.h %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x00,0x16]
.code32
add.h %d1, %d14, %d14

# CHECK-INST: add.h %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x00,0x16]
.code32
add.h %d1, %d14, %d15

# CHECK-INST: add.h %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x00,0x16]
.code32
add.h %d1, %d15, %d0

# CHECK-INST: add.h %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x00,0x16]
.code32
add.h %d1, %d15, %d1

# CHECK-INST: add.h %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x00,0x16]
.code32
add.h %d1, %d15, %d14

# CHECK-INST: add.h %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x00,0x16]
.code32
add.h %d1, %d15, %d15

# CHECK-INST: add.h %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x00,0xe6]
.code32
add.h %d14, %d0, %d0

# CHECK-INST: add.h %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x00,0xe6]
.code32
add.h %d14, %d0, %d1

# CHECK-INST: add.h %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x00,0xe6]
.code32
add.h %d14, %d0, %d14

# CHECK-INST: add.h %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x00,0xe6]
.code32
add.h %d14, %d0, %d15

# CHECK-INST: add.h %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x00,0xe6]
.code32
add.h %d14, %d1, %d0

# CHECK-INST: add.h %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x00,0xe6]
.code32
add.h %d14, %d1, %d1

# CHECK-INST: add.h %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x00,0xe6]
.code32
add.h %d14, %d1, %d14

# CHECK-INST: add.h %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x00,0xe6]
.code32
add.h %d14, %d1, %d15

# CHECK-INST: add.h %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x00,0xe6]
.code32
add.h %d14, %d14, %d0

# CHECK-INST: add.h %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x00,0xe6]
.code32
add.h %d14, %d14, %d1

# CHECK-INST: add.h %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x00,0xe6]
.code32
add.h %d14, %d14, %d14

# CHECK-INST: add.h %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x00,0xe6]
.code32
add.h %d14, %d14, %d15

# CHECK-INST: add.h %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x00,0xe6]
.code32
add.h %d14, %d15, %d0

# CHECK-INST: add.h %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x00,0xe6]
.code32
add.h %d14, %d15, %d1

# CHECK-INST: add.h %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x00,0xe6]
.code32
add.h %d14, %d15, %d14

# CHECK-INST: add.h %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x00,0xe6]
.code32
add.h %d14, %d15, %d15

# CHECK-INST: add.h %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x00,0xf6]
.code32
add.h %d15, %d0, %d0

# CHECK-INST: add.h %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x00,0xf6]
.code32
add.h %d15, %d0, %d1

# CHECK-INST: add.h %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x00,0xf6]
.code32
add.h %d15, %d0, %d14

# CHECK-INST: add.h %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x00,0xf6]
.code32
add.h %d15, %d0, %d15

# CHECK-INST: add.h %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x00,0xf6]
.code32
add.h %d15, %d1, %d0

# CHECK-INST: add.h %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x00,0xf6]
.code32
add.h %d15, %d1, %d1

# CHECK-INST: add.h %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x00,0xf6]
.code32
add.h %d15, %d1, %d14

# CHECK-INST: add.h %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x00,0xf6]
.code32
add.h %d15, %d1, %d15

# CHECK-INST: add.h %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x00,0xf6]
.code32
add.h %d15, %d14, %d0

# CHECK-INST: add.h %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x00,0xf6]
.code32
add.h %d15, %d14, %d1

# CHECK-INST: add.h %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x00,0xf6]
.code32
add.h %d15, %d14, %d14

# CHECK-INST: add.h %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x00,0xf6]
.code32
add.h %d15, %d14, %d15

# CHECK-INST: add.h %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x00,0xf6]
.code32
add.h %d15, %d15, %d0

# CHECK-INST: add.h %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x00,0xf6]
.code32
add.h %d15, %d15, %d1

# CHECK-INST: add.h %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x00,0xf6]
.code32
add.h %d15, %d15, %d14

# CHECK-INST: add.h %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x00,0xf6]
.code32
add.h %d15, %d15, %d15

# CHECK-INST: adds.h %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x20,0x06]
.code32
adds.h %d0, %d0, %d0

# CHECK-INST: adds.h %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x20,0x06]
.code32
adds.h %d0, %d0, %d1

# CHECK-INST: adds.h %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x20,0x06]
.code32
adds.h %d0, %d0, %d14

# CHECK-INST: adds.h %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x20,0x06]
.code32
adds.h %d0, %d0, %d15

# CHECK-INST: adds.h %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x20,0x06]
.code32
adds.h %d0, %d1, %d0

# CHECK-INST: adds.h %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x20,0x06]
.code32
adds.h %d0, %d1, %d1

# CHECK-INST: adds.h %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x20,0x06]
.code32
adds.h %d0, %d1, %d14

# CHECK-INST: adds.h %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x20,0x06]
.code32
adds.h %d0, %d1, %d15

# CHECK-INST: adds.h %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x20,0x06]
.code32
adds.h %d0, %d14, %d0

# CHECK-INST: adds.h %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x20,0x06]
.code32
adds.h %d0, %d14, %d1

# CHECK-INST: adds.h %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x20,0x06]
.code32
adds.h %d0, %d14, %d14

# CHECK-INST: adds.h %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x20,0x06]
.code32
adds.h %d0, %d14, %d15

# CHECK-INST: adds.h %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x20,0x06]
.code32
adds.h %d0, %d15, %d0

# CHECK-INST: adds.h %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x20,0x06]
.code32
adds.h %d0, %d15, %d1

# CHECK-INST: adds.h %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x20,0x06]
.code32
adds.h %d0, %d15, %d14

# CHECK-INST: adds.h %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x20,0x06]
.code32
adds.h %d0, %d15, %d15

# CHECK-INST: adds.h %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x20,0x16]
.code32
adds.h %d1, %d0, %d0

# CHECK-INST: adds.h %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x20,0x16]
.code32
adds.h %d1, %d0, %d1

# CHECK-INST: adds.h %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x20,0x16]
.code32
adds.h %d1, %d0, %d14

# CHECK-INST: adds.h %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x20,0x16]
.code32
adds.h %d1, %d0, %d15

# CHECK-INST: adds.h %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x20,0x16]
.code32
adds.h %d1, %d1, %d0

# CHECK-INST: adds.h %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x20,0x16]
.code32
adds.h %d1, %d1, %d1

# CHECK-INST: adds.h %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x20,0x16]
.code32
adds.h %d1, %d1, %d14

# CHECK-INST: adds.h %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x20,0x16]
.code32
adds.h %d1, %d1, %d15

# CHECK-INST: adds.h %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x20,0x16]
.code32
adds.h %d1, %d14, %d0

# CHECK-INST: adds.h %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x20,0x16]
.code32
adds.h %d1, %d14, %d1

# CHECK-INST: adds.h %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x20,0x16]
.code32
adds.h %d1, %d14, %d14

# CHECK-INST: adds.h %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x20,0x16]
.code32
adds.h %d1, %d14, %d15

# CHECK-INST: adds.h %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x20,0x16]
.code32
adds.h %d1, %d15, %d0

# CHECK-INST: adds.h %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x20,0x16]
.code32
adds.h %d1, %d15, %d1

# CHECK-INST: adds.h %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x20,0x16]
.code32
adds.h %d1, %d15, %d14

# CHECK-INST: adds.h %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x20,0x16]
.code32
adds.h %d1, %d15, %d15

# CHECK-INST: adds.h %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x20,0xe6]
.code32
adds.h %d14, %d0, %d0

# CHECK-INST: adds.h %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x20,0xe6]
.code32
adds.h %d14, %d0, %d1

# CHECK-INST: adds.h %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x20,0xe6]
.code32
adds.h %d14, %d0, %d14

# CHECK-INST: adds.h %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x20,0xe6]
.code32
adds.h %d14, %d0, %d15

# CHECK-INST: adds.h %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x20,0xe6]
.code32
adds.h %d14, %d1, %d0

# CHECK-INST: adds.h %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x20,0xe6]
.code32
adds.h %d14, %d1, %d1

# CHECK-INST: adds.h %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x20,0xe6]
.code32
adds.h %d14, %d1, %d14

# CHECK-INST: adds.h %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x20,0xe6]
.code32
adds.h %d14, %d1, %d15

# CHECK-INST: adds.h %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x20,0xe6]
.code32
adds.h %d14, %d14, %d0

# CHECK-INST: adds.h %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x20,0xe6]
.code32
adds.h %d14, %d14, %d1

# CHECK-INST: adds.h %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x20,0xe6]
.code32
adds.h %d14, %d14, %d14

# CHECK-INST: adds.h %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x20,0xe6]
.code32
adds.h %d14, %d14, %d15

# CHECK-INST: adds.h %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x20,0xe6]
.code32
adds.h %d14, %d15, %d0

# CHECK-INST: adds.h %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x20,0xe6]
.code32
adds.h %d14, %d15, %d1

# CHECK-INST: adds.h %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x20,0xe6]
.code32
adds.h %d14, %d15, %d14

# CHECK-INST: adds.h %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x20,0xe6]
.code32
adds.h %d14, %d15, %d15

# CHECK-INST: adds.h %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x20,0xf6]
.code32
adds.h %d15, %d0, %d0

# CHECK-INST: adds.h %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x20,0xf6]
.code32
adds.h %d15, %d0, %d1

# CHECK-INST: adds.h %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x20,0xf6]
.code32
adds.h %d15, %d0, %d14

# CHECK-INST: adds.h %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x20,0xf6]
.code32
adds.h %d15, %d0, %d15

# CHECK-INST: adds.h %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x20,0xf6]
.code32
adds.h %d15, %d1, %d0

# CHECK-INST: adds.h %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x20,0xf6]
.code32
adds.h %d15, %d1, %d1

# CHECK-INST: adds.h %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x20,0xf6]
.code32
adds.h %d15, %d1, %d14

# CHECK-INST: adds.h %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x20,0xf6]
.code32
adds.h %d15, %d1, %d15

# CHECK-INST: adds.h %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x20,0xf6]
.code32
adds.h %d15, %d14, %d0

# CHECK-INST: adds.h %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x20,0xf6]
.code32
adds.h %d15, %d14, %d1

# CHECK-INST: adds.h %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x20,0xf6]
.code32
adds.h %d15, %d14, %d14

# CHECK-INST: adds.h %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x20,0xf6]
.code32
adds.h %d15, %d14, %d15

# CHECK-INST: adds.h %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x20,0xf6]
.code32
adds.h %d15, %d15, %d0

# CHECK-INST: adds.h %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x20,0xf6]
.code32
adds.h %d15, %d15, %d1

# CHECK-INST: adds.h %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x20,0xf6]
.code32
adds.h %d15, %d15, %d14

# CHECK-INST: adds.h %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x20,0xf6]
.code32
adds.h %d15, %d15, %d15

# CHECK-INST: adds.hu %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x30,0x06]
.code32
adds.hu %d0, %d0, %d0

# CHECK-INST: adds.hu %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x30,0x06]
.code32
adds.hu %d0, %d0, %d1

# CHECK-INST: adds.hu %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x30,0x06]
.code32
adds.hu %d0, %d0, %d14

# CHECK-INST: adds.hu %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x30,0x06]
.code32
adds.hu %d0, %d0, %d15

# CHECK-INST: adds.hu %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x30,0x06]
.code32
adds.hu %d0, %d1, %d0

# CHECK-INST: adds.hu %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x30,0x06]
.code32
adds.hu %d0, %d1, %d1

# CHECK-INST: adds.hu %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x30,0x06]
.code32
adds.hu %d0, %d1, %d14

# CHECK-INST: adds.hu %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x30,0x06]
.code32
adds.hu %d0, %d1, %d15

# CHECK-INST: adds.hu %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x30,0x06]
.code32
adds.hu %d0, %d14, %d0

# CHECK-INST: adds.hu %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x30,0x06]
.code32
adds.hu %d0, %d14, %d1

# CHECK-INST: adds.hu %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x30,0x06]
.code32
adds.hu %d0, %d14, %d14

# CHECK-INST: adds.hu %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x30,0x06]
.code32
adds.hu %d0, %d14, %d15

# CHECK-INST: adds.hu %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x30,0x06]
.code32
adds.hu %d0, %d15, %d0

# CHECK-INST: adds.hu %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x30,0x06]
.code32
adds.hu %d0, %d15, %d1

# CHECK-INST: adds.hu %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x30,0x06]
.code32
adds.hu %d0, %d15, %d14

# CHECK-INST: adds.hu %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x30,0x06]
.code32
adds.hu %d0, %d15, %d15

# CHECK-INST: adds.hu %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x30,0x16]
.code32
adds.hu %d1, %d0, %d0

# CHECK-INST: adds.hu %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x30,0x16]
.code32
adds.hu %d1, %d0, %d1

# CHECK-INST: adds.hu %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x30,0x16]
.code32
adds.hu %d1, %d0, %d14

# CHECK-INST: adds.hu %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x30,0x16]
.code32
adds.hu %d1, %d0, %d15

# CHECK-INST: adds.hu %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x30,0x16]
.code32
adds.hu %d1, %d1, %d0

# CHECK-INST: adds.hu %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x30,0x16]
.code32
adds.hu %d1, %d1, %d1

# CHECK-INST: adds.hu %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x30,0x16]
.code32
adds.hu %d1, %d1, %d14

# CHECK-INST: adds.hu %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x30,0x16]
.code32
adds.hu %d1, %d1, %d15

# CHECK-INST: adds.hu %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x30,0x16]
.code32
adds.hu %d1, %d14, %d0

# CHECK-INST: adds.hu %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x30,0x16]
.code32
adds.hu %d1, %d14, %d1

# CHECK-INST: adds.hu %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x30,0x16]
.code32
adds.hu %d1, %d14, %d14

# CHECK-INST: adds.hu %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x30,0x16]
.code32
adds.hu %d1, %d14, %d15

# CHECK-INST: adds.hu %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x30,0x16]
.code32
adds.hu %d1, %d15, %d0

# CHECK-INST: adds.hu %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x30,0x16]
.code32
adds.hu %d1, %d15, %d1

# CHECK-INST: adds.hu %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x30,0x16]
.code32
adds.hu %d1, %d15, %d14

# CHECK-INST: adds.hu %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x30,0x16]
.code32
adds.hu %d1, %d15, %d15

# CHECK-INST: adds.hu %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x30,0xe6]
.code32
adds.hu %d14, %d0, %d0

# CHECK-INST: adds.hu %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x30,0xe6]
.code32
adds.hu %d14, %d0, %d1

# CHECK-INST: adds.hu %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x30,0xe6]
.code32
adds.hu %d14, %d0, %d14

# CHECK-INST: adds.hu %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x30,0xe6]
.code32
adds.hu %d14, %d0, %d15

# CHECK-INST: adds.hu %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x30,0xe6]
.code32
adds.hu %d14, %d1, %d0

# CHECK-INST: adds.hu %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x30,0xe6]
.code32
adds.hu %d14, %d1, %d1

# CHECK-INST: adds.hu %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x30,0xe6]
.code32
adds.hu %d14, %d1, %d14

# CHECK-INST: adds.hu %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x30,0xe6]
.code32
adds.hu %d14, %d1, %d15

# CHECK-INST: adds.hu %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x30,0xe6]
.code32
adds.hu %d14, %d14, %d0

# CHECK-INST: adds.hu %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x30,0xe6]
.code32
adds.hu %d14, %d14, %d1

# CHECK-INST: adds.hu %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x30,0xe6]
.code32
adds.hu %d14, %d14, %d14

# CHECK-INST: adds.hu %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x30,0xe6]
.code32
adds.hu %d14, %d14, %d15

# CHECK-INST: adds.hu %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x30,0xe6]
.code32
adds.hu %d14, %d15, %d0

# CHECK-INST: adds.hu %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x30,0xe6]
.code32
adds.hu %d14, %d15, %d1

# CHECK-INST: adds.hu %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x30,0xe6]
.code32
adds.hu %d14, %d15, %d14

# CHECK-INST: adds.hu %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x30,0xe6]
.code32
adds.hu %d14, %d15, %d15

# CHECK-INST: adds.hu %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x30,0xf6]
.code32
adds.hu %d15, %d0, %d0

# CHECK-INST: adds.hu %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x30,0xf6]
.code32
adds.hu %d15, %d0, %d1

# CHECK-INST: adds.hu %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x30,0xf6]
.code32
adds.hu %d15, %d0, %d14

# CHECK-INST: adds.hu %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x30,0xf6]
.code32
adds.hu %d15, %d0, %d15

# CHECK-INST: adds.hu %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x30,0xf6]
.code32
adds.hu %d15, %d1, %d0

# CHECK-INST: adds.hu %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x30,0xf6]
.code32
adds.hu %d15, %d1, %d1

# CHECK-INST: adds.hu %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x30,0xf6]
.code32
adds.hu %d15, %d1, %d14

# CHECK-INST: adds.hu %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x30,0xf6]
.code32
adds.hu %d15, %d1, %d15

# CHECK-INST: adds.hu %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x30,0xf6]
.code32
adds.hu %d15, %d14, %d0

# CHECK-INST: adds.hu %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x30,0xf6]
.code32
adds.hu %d15, %d14, %d1

# CHECK-INST: adds.hu %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x30,0xf6]
.code32
adds.hu %d15, %d14, %d14

# CHECK-INST: adds.hu %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x30,0xf6]
.code32
adds.hu %d15, %d14, %d15

# CHECK-INST: adds.hu %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x30,0xf6]
.code32
adds.hu %d15, %d15, %d0

# CHECK-INST: adds.hu %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x30,0xf6]
.code32
adds.hu %d15, %d15, %d1

# CHECK-INST: adds.hu %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x30,0xf6]
.code32
adds.hu %d15, %d15, %d14

# CHECK-INST: adds.hu %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x30,0xf6]
.code32
adds.hu %d15, %d15, %d15

# CHECK-INST: clo.h %d0, %d0
# CHECK: encoding: [0x0f,0x00,0xd0,0x07]
.code32
clo.h %d0, %d0

# CHECK-INST: clo.h %d0, %d1
# CHECK: encoding: [0x0f,0x01,0xd0,0x07]
.code32
clo.h %d0, %d1

# CHECK-INST: clo.h %d0, %d14
# CHECK: encoding: [0x0f,0x0e,0xd0,0x07]
.code32
clo.h %d0, %d14

# CHECK-INST: clo.h %d0, %d15
# CHECK: encoding: [0x0f,0x0f,0xd0,0x07]
.code32
clo.h %d0, %d15

# CHECK-INST: clo.h %d1, %d0
# CHECK: encoding: [0x0f,0x00,0xd0,0x17]
.code32
clo.h %d1, %d0

# CHECK-INST: clo.h %d1, %d1
# CHECK: encoding: [0x0f,0x01,0xd0,0x17]
.code32
clo.h %d1, %d1

# CHECK-INST: clo.h %d1, %d14
# CHECK: encoding: [0x0f,0x0e,0xd0,0x17]
.code32
clo.h %d1, %d14

# CHECK-INST: clo.h %d1, %d15
# CHECK: encoding: [0x0f,0x0f,0xd0,0x17]
.code32
clo.h %d1, %d15

# CHECK-INST: clo.h %d14, %d0
# CHECK: encoding: [0x0f,0x00,0xd0,0xe7]
.code32
clo.h %d14, %d0

# CHECK-INST: clo.h %d14, %d1
# CHECK: encoding: [0x0f,0x01,0xd0,0xe7]
.code32
clo.h %d14, %d1

# CHECK-INST: clo.h %d14, %d14
# CHECK: encoding: [0x0f,0x0e,0xd0,0xe7]
.code32
clo.h %d14, %d14

# CHECK-INST: clo.h %d14, %d15
# CHECK: encoding: [0x0f,0x0f,0xd0,0xe7]
.code32
clo.h %d14, %d15

# CHECK-INST: clo.h %d15, %d0
# CHECK: encoding: [0x0f,0x00,0xd0,0xf7]
.code32
clo.h %d15, %d0

# CHECK-INST: clo.h %d15, %d1
# CHECK: encoding: [0x0f,0x01,0xd0,0xf7]
.code32
clo.h %d15, %d1

# CHECK-INST: clo.h %d15, %d14
# CHECK: encoding: [0x0f,0x0e,0xd0,0xf7]
.code32
clo.h %d15, %d14

# CHECK-INST: clo.h %d15, %d15
# CHECK: encoding: [0x0f,0x0f,0xd0,0xf7]
.code32
clo.h %d15, %d15

# CHECK-INST: cls.h %d0, %d0
# CHECK: encoding: [0x0f,0x00,0xe0,0x07]
.code32
cls.h %d0, %d0

# CHECK-INST: cls.h %d0, %d1
# CHECK: encoding: [0x0f,0x01,0xe0,0x07]
.code32
cls.h %d0, %d1

# CHECK-INST: cls.h %d0, %d14
# CHECK: encoding: [0x0f,0x0e,0xe0,0x07]
.code32
cls.h %d0, %d14

# CHECK-INST: cls.h %d0, %d15
# CHECK: encoding: [0x0f,0x0f,0xe0,0x07]
.code32
cls.h %d0, %d15

# CHECK-INST: cls.h %d1, %d0
# CHECK: encoding: [0x0f,0x00,0xe0,0x17]
.code32
cls.h %d1, %d0

# CHECK-INST: cls.h %d1, %d1
# CHECK: encoding: [0x0f,0x01,0xe0,0x17]
.code32
cls.h %d1, %d1

# CHECK-INST: cls.h %d1, %d14
# CHECK: encoding: [0x0f,0x0e,0xe0,0x17]
.code32
cls.h %d1, %d14

# CHECK-INST: cls.h %d1, %d15
# CHECK: encoding: [0x0f,0x0f,0xe0,0x17]
.code32
cls.h %d1, %d15

# CHECK-INST: cls.h %d14, %d0
# CHECK: encoding: [0x0f,0x00,0xe0,0xe7]
.code32
cls.h %d14, %d0

# CHECK-INST: cls.h %d14, %d1
# CHECK: encoding: [0x0f,0x01,0xe0,0xe7]
.code32
cls.h %d14, %d1

# CHECK-INST: cls.h %d14, %d14
# CHECK: encoding: [0x0f,0x0e,0xe0,0xe7]
.code32
cls.h %d14, %d14

# CHECK-INST: cls.h %d14, %d15
# CHECK: encoding: [0x0f,0x0f,0xe0,0xe7]
.code32
cls.h %d14, %d15

# CHECK-INST: cls.h %d15, %d0
# CHECK: encoding: [0x0f,0x00,0xe0,0xf7]
.code32
cls.h %d15, %d0

# CHECK-INST: cls.h %d15, %d1
# CHECK: encoding: [0x0f,0x01,0xe0,0xf7]
.code32
cls.h %d15, %d1

# CHECK-INST: cls.h %d15, %d14
# CHECK: encoding: [0x0f,0x0e,0xe0,0xf7]
.code32
cls.h %d15, %d14

# CHECK-INST: cls.h %d15, %d15
# CHECK: encoding: [0x0f,0x0f,0xe0,0xf7]
.code32
cls.h %d15, %d15

# CHECK-INST: clz.h %d0, %d0
# CHECK: encoding: [0x0f,0x00,0xc0,0x07]
.code32
clz.h %d0, %d0

# CHECK-INST: clz.h %d0, %d1
# CHECK: encoding: [0x0f,0x01,0xc0,0x07]
.code32
clz.h %d0, %d1

# CHECK-INST: clz.h %d0, %d14
# CHECK: encoding: [0x0f,0x0e,0xc0,0x07]
.code32
clz.h %d0, %d14

# CHECK-INST: clz.h %d0, %d15
# CHECK: encoding: [0x0f,0x0f,0xc0,0x07]
.code32
clz.h %d0, %d15

# CHECK-INST: clz.h %d1, %d0
# CHECK: encoding: [0x0f,0x00,0xc0,0x17]
.code32
clz.h %d1, %d0

# CHECK-INST: clz.h %d1, %d1
# CHECK: encoding: [0x0f,0x01,0xc0,0x17]
.code32
clz.h %d1, %d1

# CHECK-INST: clz.h %d1, %d14
# CHECK: encoding: [0x0f,0x0e,0xc0,0x17]
.code32
clz.h %d1, %d14

# CHECK-INST: clz.h %d1, %d15
# CHECK: encoding: [0x0f,0x0f,0xc0,0x17]
.code32
clz.h %d1, %d15

# CHECK-INST: clz.h %d14, %d0
# CHECK: encoding: [0x0f,0x00,0xc0,0xe7]
.code32
clz.h %d14, %d0

# CHECK-INST: clz.h %d14, %d1
# CHECK: encoding: [0x0f,0x01,0xc0,0xe7]
.code32
clz.h %d14, %d1

# CHECK-INST: clz.h %d14, %d14
# CHECK: encoding: [0x0f,0x0e,0xc0,0xe7]
.code32
clz.h %d14, %d14

# CHECK-INST: clz.h %d14, %d15
# CHECK: encoding: [0x0f,0x0f,0xc0,0xe7]
.code32
clz.h %d14, %d15

# CHECK-INST: clz.h %d15, %d0
# CHECK: encoding: [0x0f,0x00,0xc0,0xf7]
.code32
clz.h %d15, %d0

# CHECK-INST: clz.h %d15, %d1
# CHECK: encoding: [0x0f,0x01,0xc0,0xf7]
.code32
clz.h %d15, %d1

# CHECK-INST: clz.h %d15, %d14
# CHECK: encoding: [0x0f,0x0e,0xc0,0xf7]
.code32
clz.h %d15, %d14

# CHECK-INST: clz.h %d15, %d15
# CHECK: encoding: [0x0f,0x0f,0xc0,0xf7]
.code32
clz.h %d15, %d15

# CHECK-INST: eqany.b %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x60,0x05]
.code32
eqany.b %d0, %d0, %d0

# CHECK-INST: eqany.b %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x60,0x05]
.code32
eqany.b %d0, %d0, %d1

# CHECK-INST: eqany.b %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x60,0x05]
.code32
eqany.b %d0, %d0, %d14

# CHECK-INST: eqany.b %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x60,0x05]
.code32
eqany.b %d0, %d0, %d15

# CHECK-INST: eqany.b %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x60,0x05]
.code32
eqany.b %d0, %d1, %d0

# CHECK-INST: eqany.b %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x60,0x05]
.code32
eqany.b %d0, %d1, %d1

# CHECK-INST: eqany.b %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x60,0x05]
.code32
eqany.b %d0, %d1, %d14

# CHECK-INST: eqany.b %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x60,0x05]
.code32
eqany.b %d0, %d1, %d15

# CHECK-INST: eqany.b %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x60,0x05]
.code32
eqany.b %d0, %d14, %d0

# CHECK-INST: eqany.b %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x60,0x05]
.code32
eqany.b %d0, %d14, %d1

# CHECK-INST: eqany.b %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x60,0x05]
.code32
eqany.b %d0, %d14, %d14

# CHECK-INST: eqany.b %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x60,0x05]
.code32
eqany.b %d0, %d14, %d15

# CHECK-INST: eqany.b %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x60,0x05]
.code32
eqany.b %d0, %d15, %d0

# CHECK-INST: eqany.b %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x60,0x05]
.code32
eqany.b %d0, %d15, %d1

# CHECK-INST: eqany.b %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x60,0x05]
.code32
eqany.b %d0, %d15, %d14

# CHECK-INST: eqany.b %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x60,0x05]
.code32
eqany.b %d0, %d15, %d15

# CHECK-INST: eqany.b %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x60,0x15]
.code32
eqany.b %d1, %d0, %d0

# CHECK-INST: eqany.b %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x60,0x15]
.code32
eqany.b %d1, %d0, %d1

# CHECK-INST: eqany.b %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x60,0x15]
.code32
eqany.b %d1, %d0, %d14

# CHECK-INST: eqany.b %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x60,0x15]
.code32
eqany.b %d1, %d0, %d15

# CHECK-INST: eqany.b %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x60,0x15]
.code32
eqany.b %d1, %d1, %d0

# CHECK-INST: eqany.b %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x60,0x15]
.code32
eqany.b %d1, %d1, %d1

# CHECK-INST: eqany.b %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x60,0x15]
.code32
eqany.b %d1, %d1, %d14

# CHECK-INST: eqany.b %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x60,0x15]
.code32
eqany.b %d1, %d1, %d15

# CHECK-INST: eqany.b %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x60,0x15]
.code32
eqany.b %d1, %d14, %d0

# CHECK-INST: eqany.b %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x60,0x15]
.code32
eqany.b %d1, %d14, %d1

# CHECK-INST: eqany.b %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x60,0x15]
.code32
eqany.b %d1, %d14, %d14

# CHECK-INST: eqany.b %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x60,0x15]
.code32
eqany.b %d1, %d14, %d15

# CHECK-INST: eqany.b %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x60,0x15]
.code32
eqany.b %d1, %d15, %d0

# CHECK-INST: eqany.b %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x60,0x15]
.code32
eqany.b %d1, %d15, %d1

# CHECK-INST: eqany.b %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x60,0x15]
.code32
eqany.b %d1, %d15, %d14

# CHECK-INST: eqany.b %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x60,0x15]
.code32
eqany.b %d1, %d15, %d15

# CHECK-INST: eqany.b %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x60,0xe5]
.code32
eqany.b %d14, %d0, %d0

# CHECK-INST: eqany.b %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x60,0xe5]
.code32
eqany.b %d14, %d0, %d1

# CHECK-INST: eqany.b %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x60,0xe5]
.code32
eqany.b %d14, %d0, %d14

# CHECK-INST: eqany.b %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x60,0xe5]
.code32
eqany.b %d14, %d0, %d15

# CHECK-INST: eqany.b %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x60,0xe5]
.code32
eqany.b %d14, %d1, %d0

# CHECK-INST: eqany.b %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x60,0xe5]
.code32
eqany.b %d14, %d1, %d1

# CHECK-INST: eqany.b %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x60,0xe5]
.code32
eqany.b %d14, %d1, %d14

# CHECK-INST: eqany.b %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x60,0xe5]
.code32
eqany.b %d14, %d1, %d15

# CHECK-INST: eqany.b %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x60,0xe5]
.code32
eqany.b %d14, %d14, %d0

# CHECK-INST: eqany.b %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x60,0xe5]
.code32
eqany.b %d14, %d14, %d1

# CHECK-INST: eqany.b %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x60,0xe5]
.code32
eqany.b %d14, %d14, %d14

# CHECK-INST: eqany.b %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x60,0xe5]
.code32
eqany.b %d14, %d14, %d15

# CHECK-INST: eqany.b %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x60,0xe5]
.code32
eqany.b %d14, %d15, %d0

# CHECK-INST: eqany.b %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x60,0xe5]
.code32
eqany.b %d14, %d15, %d1

# CHECK-INST: eqany.b %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x60,0xe5]
.code32
eqany.b %d14, %d15, %d14

# CHECK-INST: eqany.b %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x60,0xe5]
.code32
eqany.b %d14, %d15, %d15

# CHECK-INST: eqany.b %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x60,0xf5]
.code32
eqany.b %d15, %d0, %d0

# CHECK-INST: eqany.b %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x60,0xf5]
.code32
eqany.b %d15, %d0, %d1

# CHECK-INST: eqany.b %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x60,0xf5]
.code32
eqany.b %d15, %d0, %d14

# CHECK-INST: eqany.b %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x60,0xf5]
.code32
eqany.b %d15, %d0, %d15

# CHECK-INST: eqany.b %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x60,0xf5]
.code32
eqany.b %d15, %d1, %d0

# CHECK-INST: eqany.b %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x60,0xf5]
.code32
eqany.b %d15, %d1, %d1

# CHECK-INST: eqany.b %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x60,0xf5]
.code32
eqany.b %d15, %d1, %d14

# CHECK-INST: eqany.b %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x60,0xf5]
.code32
eqany.b %d15, %d1, %d15

# CHECK-INST: eqany.b %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x60,0xf5]
.code32
eqany.b %d15, %d14, %d0

# CHECK-INST: eqany.b %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x60,0xf5]
.code32
eqany.b %d15, %d14, %d1

# CHECK-INST: eqany.b %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x60,0xf5]
.code32
eqany.b %d15, %d14, %d14

# CHECK-INST: eqany.b %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x60,0xf5]
.code32
eqany.b %d15, %d14, %d15

# CHECK-INST: eqany.b %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x60,0xf5]
.code32
eqany.b %d15, %d15, %d0

# CHECK-INST: eqany.b %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x60,0xf5]
.code32
eqany.b %d15, %d15, %d1

# CHECK-INST: eqany.b %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x60,0xf5]
.code32
eqany.b %d15, %d15, %d14

# CHECK-INST: eqany.b %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x60,0xf5]
.code32
eqany.b %d15, %d15, %d15

# CHECK-INST: eqany.b %d0, %d0, -256
# CHECK: encoding: [0x8b,0x00,0xd0,0x0a]
.code32
eqany.b %d0, %d0, -256

# CHECK-INST: eqany.b %d0, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0xd7,0x0a]
.code32
eqany.b %d0, %d0, -129

# CHECK-INST: eqany.b %d0, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0xdf,0x0a]
.code32
eqany.b %d0, %d0, -1

# CHECK-INST: eqany.b %d0, %d0, 0
# CHECK: encoding: [0x8b,0x00,0xc0,0x0a]
.code32
eqany.b %d0, %d0, 0

# CHECK-INST: eqany.b %d0, %d0, 1
# CHECK: encoding: [0x8b,0x10,0xc0,0x0a]
.code32
eqany.b %d0, %d0, 1

# CHECK-INST: eqany.b %d0, %d0, 128
# CHECK: encoding: [0x8b,0x00,0xc8,0x0a]
.code32
eqany.b %d0, %d0, 128

# CHECK-INST: eqany.b %d0, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0xcf,0x0a]
.code32
eqany.b %d0, %d0, 255

# CHECK-INST: eqany.b %d0, %d1, -256
# CHECK: encoding: [0x8b,0x01,0xd0,0x0a]
.code32
eqany.b %d0, %d1, -256

# CHECK-INST: eqany.b %d0, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0xd7,0x0a]
.code32
eqany.b %d0, %d1, -129

# CHECK-INST: eqany.b %d0, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0xdf,0x0a]
.code32
eqany.b %d0, %d1, -1

# CHECK-INST: eqany.b %d0, %d1, 0
# CHECK: encoding: [0x8b,0x01,0xc0,0x0a]
.code32
eqany.b %d0, %d1, 0

# CHECK-INST: eqany.b %d0, %d1, 1
# CHECK: encoding: [0x8b,0x11,0xc0,0x0a]
.code32
eqany.b %d0, %d1, 1

# CHECK-INST: eqany.b %d0, %d1, 128
# CHECK: encoding: [0x8b,0x01,0xc8,0x0a]
.code32
eqany.b %d0, %d1, 128

# CHECK-INST: eqany.b %d0, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0xcf,0x0a]
.code32
eqany.b %d0, %d1, 255

# CHECK-INST: eqany.b %d0, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0xd0,0x0a]
.code32
eqany.b %d0, %d14, -256

# CHECK-INST: eqany.b %d0, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0xd7,0x0a]
.code32
eqany.b %d0, %d14, -129

# CHECK-INST: eqany.b %d0, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0xdf,0x0a]
.code32
eqany.b %d0, %d14, -1

# CHECK-INST: eqany.b %d0, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0xc0,0x0a]
.code32
eqany.b %d0, %d14, 0

# CHECK-INST: eqany.b %d0, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0xc0,0x0a]
.code32
eqany.b %d0, %d14, 1

# CHECK-INST: eqany.b %d0, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0xc8,0x0a]
.code32
eqany.b %d0, %d14, 128

# CHECK-INST: eqany.b %d0, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0xcf,0x0a]
.code32
eqany.b %d0, %d14, 255

# CHECK-INST: eqany.b %d0, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0xd0,0x0a]
.code32
eqany.b %d0, %d15, -256

# CHECK-INST: eqany.b %d0, %d15, -129
# CHECK: encoding: [0x8b,0xff,0xd7,0x0a]
.code32
eqany.b %d0, %d15, -129

# CHECK-INST: eqany.b %d0, %d15, -1
# CHECK: encoding: [0x8b,0xff,0xdf,0x0a]
.code32
eqany.b %d0, %d15, -1

# CHECK-INST: eqany.b %d0, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0xc0,0x0a]
.code32
eqany.b %d0, %d15, 0

# CHECK-INST: eqany.b %d0, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0xc0,0x0a]
.code32
eqany.b %d0, %d15, 1

# CHECK-INST: eqany.b %d0, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0xc8,0x0a]
.code32
eqany.b %d0, %d15, 128

# CHECK-INST: eqany.b %d0, %d15, 255
# CHECK: encoding: [0x8b,0xff,0xcf,0x0a]
.code32
eqany.b %d0, %d15, 255

# CHECK-INST: eqany.b %d1, %d0, -256
# CHECK: encoding: [0x8b,0x00,0xd0,0x1a]
.code32
eqany.b %d1, %d0, -256

# CHECK-INST: eqany.b %d1, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0xd7,0x1a]
.code32
eqany.b %d1, %d0, -129

# CHECK-INST: eqany.b %d1, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0xdf,0x1a]
.code32
eqany.b %d1, %d0, -1

# CHECK-INST: eqany.b %d1, %d0, 0
# CHECK: encoding: [0x8b,0x00,0xc0,0x1a]
.code32
eqany.b %d1, %d0, 0

# CHECK-INST: eqany.b %d1, %d0, 1
# CHECK: encoding: [0x8b,0x10,0xc0,0x1a]
.code32
eqany.b %d1, %d0, 1

# CHECK-INST: eqany.b %d1, %d0, 128
# CHECK: encoding: [0x8b,0x00,0xc8,0x1a]
.code32
eqany.b %d1, %d0, 128

# CHECK-INST: eqany.b %d1, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0xcf,0x1a]
.code32
eqany.b %d1, %d0, 255

# CHECK-INST: eqany.b %d1, %d1, -256
# CHECK: encoding: [0x8b,0x01,0xd0,0x1a]
.code32
eqany.b %d1, %d1, -256

# CHECK-INST: eqany.b %d1, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0xd7,0x1a]
.code32
eqany.b %d1, %d1, -129

# CHECK-INST: eqany.b %d1, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0xdf,0x1a]
.code32
eqany.b %d1, %d1, -1

# CHECK-INST: eqany.b %d1, %d1, 0
# CHECK: encoding: [0x8b,0x01,0xc0,0x1a]
.code32
eqany.b %d1, %d1, 0

# CHECK-INST: eqany.b %d1, %d1, 1
# CHECK: encoding: [0x8b,0x11,0xc0,0x1a]
.code32
eqany.b %d1, %d1, 1

# CHECK-INST: eqany.b %d1, %d1, 128
# CHECK: encoding: [0x8b,0x01,0xc8,0x1a]
.code32
eqany.b %d1, %d1, 128

# CHECK-INST: eqany.b %d1, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0xcf,0x1a]
.code32
eqany.b %d1, %d1, 255

# CHECK-INST: eqany.b %d1, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0xd0,0x1a]
.code32
eqany.b %d1, %d14, -256

# CHECK-INST: eqany.b %d1, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0xd7,0x1a]
.code32
eqany.b %d1, %d14, -129

# CHECK-INST: eqany.b %d1, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0xdf,0x1a]
.code32
eqany.b %d1, %d14, -1

# CHECK-INST: eqany.b %d1, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0xc0,0x1a]
.code32
eqany.b %d1, %d14, 0

# CHECK-INST: eqany.b %d1, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0xc0,0x1a]
.code32
eqany.b %d1, %d14, 1

# CHECK-INST: eqany.b %d1, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0xc8,0x1a]
.code32
eqany.b %d1, %d14, 128

# CHECK-INST: eqany.b %d1, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0xcf,0x1a]
.code32
eqany.b %d1, %d14, 255

# CHECK-INST: eqany.b %d1, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0xd0,0x1a]
.code32
eqany.b %d1, %d15, -256

# CHECK-INST: eqany.b %d1, %d15, -129
# CHECK: encoding: [0x8b,0xff,0xd7,0x1a]
.code32
eqany.b %d1, %d15, -129

# CHECK-INST: eqany.b %d1, %d15, -1
# CHECK: encoding: [0x8b,0xff,0xdf,0x1a]
.code32
eqany.b %d1, %d15, -1

# CHECK-INST: eqany.b %d1, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0xc0,0x1a]
.code32
eqany.b %d1, %d15, 0

# CHECK-INST: eqany.b %d1, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0xc0,0x1a]
.code32
eqany.b %d1, %d15, 1

# CHECK-INST: eqany.b %d1, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0xc8,0x1a]
.code32
eqany.b %d1, %d15, 128

# CHECK-INST: eqany.b %d1, %d15, 255
# CHECK: encoding: [0x8b,0xff,0xcf,0x1a]
.code32
eqany.b %d1, %d15, 255

# CHECK-INST: eqany.b %d14, %d0, -256
# CHECK: encoding: [0x8b,0x00,0xd0,0xea]
.code32
eqany.b %d14, %d0, -256

# CHECK-INST: eqany.b %d14, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0xd7,0xea]
.code32
eqany.b %d14, %d0, -129

# CHECK-INST: eqany.b %d14, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0xdf,0xea]
.code32
eqany.b %d14, %d0, -1

# CHECK-INST: eqany.b %d14, %d0, 0
# CHECK: encoding: [0x8b,0x00,0xc0,0xea]
.code32
eqany.b %d14, %d0, 0

# CHECK-INST: eqany.b %d14, %d0, 1
# CHECK: encoding: [0x8b,0x10,0xc0,0xea]
.code32
eqany.b %d14, %d0, 1

# CHECK-INST: eqany.b %d14, %d0, 128
# CHECK: encoding: [0x8b,0x00,0xc8,0xea]
.code32
eqany.b %d14, %d0, 128

# CHECK-INST: eqany.b %d14, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0xcf,0xea]
.code32
eqany.b %d14, %d0, 255

# CHECK-INST: eqany.b %d14, %d1, -256
# CHECK: encoding: [0x8b,0x01,0xd0,0xea]
.code32
eqany.b %d14, %d1, -256

# CHECK-INST: eqany.b %d14, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0xd7,0xea]
.code32
eqany.b %d14, %d1, -129

# CHECK-INST: eqany.b %d14, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0xdf,0xea]
.code32
eqany.b %d14, %d1, -1

# CHECK-INST: eqany.b %d14, %d1, 0
# CHECK: encoding: [0x8b,0x01,0xc0,0xea]
.code32
eqany.b %d14, %d1, 0

# CHECK-INST: eqany.b %d14, %d1, 1
# CHECK: encoding: [0x8b,0x11,0xc0,0xea]
.code32
eqany.b %d14, %d1, 1

# CHECK-INST: eqany.b %d14, %d1, 128
# CHECK: encoding: [0x8b,0x01,0xc8,0xea]
.code32
eqany.b %d14, %d1, 128

# CHECK-INST: eqany.b %d14, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0xcf,0xea]
.code32
eqany.b %d14, %d1, 255

# CHECK-INST: eqany.b %d14, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0xd0,0xea]
.code32
eqany.b %d14, %d14, -256

# CHECK-INST: eqany.b %d14, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0xd7,0xea]
.code32
eqany.b %d14, %d14, -129

# CHECK-INST: eqany.b %d14, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0xdf,0xea]
.code32
eqany.b %d14, %d14, -1

# CHECK-INST: eqany.b %d14, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0xc0,0xea]
.code32
eqany.b %d14, %d14, 0

# CHECK-INST: eqany.b %d14, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0xc0,0xea]
.code32
eqany.b %d14, %d14, 1

# CHECK-INST: eqany.b %d14, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0xc8,0xea]
.code32
eqany.b %d14, %d14, 128

# CHECK-INST: eqany.b %d14, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0xcf,0xea]
.code32
eqany.b %d14, %d14, 255

# CHECK-INST: eqany.b %d14, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0xd0,0xea]
.code32
eqany.b %d14, %d15, -256

# CHECK-INST: eqany.b %d14, %d15, -129
# CHECK: encoding: [0x8b,0xff,0xd7,0xea]
.code32
eqany.b %d14, %d15, -129

# CHECK-INST: eqany.b %d14, %d15, -1
# CHECK: encoding: [0x8b,0xff,0xdf,0xea]
.code32
eqany.b %d14, %d15, -1

# CHECK-INST: eqany.b %d14, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0xc0,0xea]
.code32
eqany.b %d14, %d15, 0

# CHECK-INST: eqany.b %d14, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0xc0,0xea]
.code32
eqany.b %d14, %d15, 1

# CHECK-INST: eqany.b %d14, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0xc8,0xea]
.code32
eqany.b %d14, %d15, 128

# CHECK-INST: eqany.b %d14, %d15, 255
# CHECK: encoding: [0x8b,0xff,0xcf,0xea]
.code32
eqany.b %d14, %d15, 255

# CHECK-INST: eqany.b %d15, %d0, -256
# CHECK: encoding: [0x8b,0x00,0xd0,0xfa]
.code32
eqany.b %d15, %d0, -256

# CHECK-INST: eqany.b %d15, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0xd7,0xfa]
.code32
eqany.b %d15, %d0, -129

# CHECK-INST: eqany.b %d15, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0xdf,0xfa]
.code32
eqany.b %d15, %d0, -1

# CHECK-INST: eqany.b %d15, %d0, 0
# CHECK: encoding: [0x8b,0x00,0xc0,0xfa]
.code32
eqany.b %d15, %d0, 0

# CHECK-INST: eqany.b %d15, %d0, 1
# CHECK: encoding: [0x8b,0x10,0xc0,0xfa]
.code32
eqany.b %d15, %d0, 1

# CHECK-INST: eqany.b %d15, %d0, 128
# CHECK: encoding: [0x8b,0x00,0xc8,0xfa]
.code32
eqany.b %d15, %d0, 128

# CHECK-INST: eqany.b %d15, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0xcf,0xfa]
.code32
eqany.b %d15, %d0, 255

# CHECK-INST: eqany.b %d15, %d1, -256
# CHECK: encoding: [0x8b,0x01,0xd0,0xfa]
.code32
eqany.b %d15, %d1, -256

# CHECK-INST: eqany.b %d15, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0xd7,0xfa]
.code32
eqany.b %d15, %d1, -129

# CHECK-INST: eqany.b %d15, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0xdf,0xfa]
.code32
eqany.b %d15, %d1, -1

# CHECK-INST: eqany.b %d15, %d1, 0
# CHECK: encoding: [0x8b,0x01,0xc0,0xfa]
.code32
eqany.b %d15, %d1, 0

# CHECK-INST: eqany.b %d15, %d1, 1
# CHECK: encoding: [0x8b,0x11,0xc0,0xfa]
.code32
eqany.b %d15, %d1, 1

# CHECK-INST: eqany.b %d15, %d1, 128
# CHECK: encoding: [0x8b,0x01,0xc8,0xfa]
.code32
eqany.b %d15, %d1, 128

# CHECK-INST: eqany.b %d15, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0xcf,0xfa]
.code32
eqany.b %d15, %d1, 255

# CHECK-INST: eqany.b %d15, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0xd0,0xfa]
.code32
eqany.b %d15, %d14, -256

# CHECK-INST: eqany.b %d15, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0xd7,0xfa]
.code32
eqany.b %d15, %d14, -129

# CHECK-INST: eqany.b %d15, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0xdf,0xfa]
.code32
eqany.b %d15, %d14, -1

# CHECK-INST: eqany.b %d15, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0xc0,0xfa]
.code32
eqany.b %d15, %d14, 0

# CHECK-INST: eqany.b %d15, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0xc0,0xfa]
.code32
eqany.b %d15, %d14, 1

# CHECK-INST: eqany.b %d15, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0xc8,0xfa]
.code32
eqany.b %d15, %d14, 128

# CHECK-INST: eqany.b %d15, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0xcf,0xfa]
.code32
eqany.b %d15, %d14, 255

# CHECK-INST: eqany.b %d15, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0xd0,0xfa]
.code32
eqany.b %d15, %d15, -256

# CHECK-INST: eqany.b %d15, %d15, -129
# CHECK: encoding: [0x8b,0xff,0xd7,0xfa]
.code32
eqany.b %d15, %d15, -129

# CHECK-INST: eqany.b %d15, %d15, -1
# CHECK: encoding: [0x8b,0xff,0xdf,0xfa]
.code32
eqany.b %d15, %d15, -1

# CHECK-INST: eqany.b %d15, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0xc0,0xfa]
.code32
eqany.b %d15, %d15, 0

# CHECK-INST: eqany.b %d15, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0xc0,0xfa]
.code32
eqany.b %d15, %d15, 1

# CHECK-INST: eqany.b %d15, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0xc8,0xfa]
.code32
eqany.b %d15, %d15, 128

# CHECK-INST: eqany.b %d15, %d15, 255
# CHECK: encoding: [0x8b,0xff,0xcf,0xfa]
.code32
eqany.b %d15, %d15, 255

# CHECK-INST: eqany.h %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x60,0x07]
.code32
eqany.h %d0, %d0, %d0

# CHECK-INST: eqany.h %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x60,0x07]
.code32
eqany.h %d0, %d0, %d1

# CHECK-INST: eqany.h %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x60,0x07]
.code32
eqany.h %d0, %d0, %d14

# CHECK-INST: eqany.h %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x60,0x07]
.code32
eqany.h %d0, %d0, %d15

# CHECK-INST: eqany.h %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x60,0x07]
.code32
eqany.h %d0, %d1, %d0

# CHECK-INST: eqany.h %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x60,0x07]
.code32
eqany.h %d0, %d1, %d1

# CHECK-INST: eqany.h %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x60,0x07]
.code32
eqany.h %d0, %d1, %d14

# CHECK-INST: eqany.h %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x60,0x07]
.code32
eqany.h %d0, %d1, %d15

# CHECK-INST: eqany.h %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x60,0x07]
.code32
eqany.h %d0, %d14, %d0

# CHECK-INST: eqany.h %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x60,0x07]
.code32
eqany.h %d0, %d14, %d1

# CHECK-INST: eqany.h %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x60,0x07]
.code32
eqany.h %d0, %d14, %d14

# CHECK-INST: eqany.h %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x60,0x07]
.code32
eqany.h %d0, %d14, %d15

# CHECK-INST: eqany.h %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x60,0x07]
.code32
eqany.h %d0, %d15, %d0

# CHECK-INST: eqany.h %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x60,0x07]
.code32
eqany.h %d0, %d15, %d1

# CHECK-INST: eqany.h %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x60,0x07]
.code32
eqany.h %d0, %d15, %d14

# CHECK-INST: eqany.h %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x60,0x07]
.code32
eqany.h %d0, %d15, %d15

# CHECK-INST: eqany.h %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x60,0x17]
.code32
eqany.h %d1, %d0, %d0

# CHECK-INST: eqany.h %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x60,0x17]
.code32
eqany.h %d1, %d0, %d1

# CHECK-INST: eqany.h %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x60,0x17]
.code32
eqany.h %d1, %d0, %d14

# CHECK-INST: eqany.h %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x60,0x17]
.code32
eqany.h %d1, %d0, %d15

# CHECK-INST: eqany.h %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x60,0x17]
.code32
eqany.h %d1, %d1, %d0

# CHECK-INST: eqany.h %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x60,0x17]
.code32
eqany.h %d1, %d1, %d1

# CHECK-INST: eqany.h %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x60,0x17]
.code32
eqany.h %d1, %d1, %d14

# CHECK-INST: eqany.h %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x60,0x17]
.code32
eqany.h %d1, %d1, %d15

# CHECK-INST: eqany.h %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x60,0x17]
.code32
eqany.h %d1, %d14, %d0

# CHECK-INST: eqany.h %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x60,0x17]
.code32
eqany.h %d1, %d14, %d1

# CHECK-INST: eqany.h %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x60,0x17]
.code32
eqany.h %d1, %d14, %d14

# CHECK-INST: eqany.h %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x60,0x17]
.code32
eqany.h %d1, %d14, %d15

# CHECK-INST: eqany.h %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x60,0x17]
.code32
eqany.h %d1, %d15, %d0

# CHECK-INST: eqany.h %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x60,0x17]
.code32
eqany.h %d1, %d15, %d1

# CHECK-INST: eqany.h %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x60,0x17]
.code32
eqany.h %d1, %d15, %d14

# CHECK-INST: eqany.h %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x60,0x17]
.code32
eqany.h %d1, %d15, %d15

# CHECK-INST: eqany.h %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x60,0xe7]
.code32
eqany.h %d14, %d0, %d0

# CHECK-INST: eqany.h %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x60,0xe7]
.code32
eqany.h %d14, %d0, %d1

# CHECK-INST: eqany.h %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x60,0xe7]
.code32
eqany.h %d14, %d0, %d14

# CHECK-INST: eqany.h %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x60,0xe7]
.code32
eqany.h %d14, %d0, %d15

# CHECK-INST: eqany.h %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x60,0xe7]
.code32
eqany.h %d14, %d1, %d0

# CHECK-INST: eqany.h %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x60,0xe7]
.code32
eqany.h %d14, %d1, %d1

# CHECK-INST: eqany.h %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x60,0xe7]
.code32
eqany.h %d14, %d1, %d14

# CHECK-INST: eqany.h %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x60,0xe7]
.code32
eqany.h %d14, %d1, %d15

# CHECK-INST: eqany.h %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x60,0xe7]
.code32
eqany.h %d14, %d14, %d0

# CHECK-INST: eqany.h %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x60,0xe7]
.code32
eqany.h %d14, %d14, %d1

# CHECK-INST: eqany.h %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x60,0xe7]
.code32
eqany.h %d14, %d14, %d14

# CHECK-INST: eqany.h %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x60,0xe7]
.code32
eqany.h %d14, %d14, %d15

# CHECK-INST: eqany.h %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x60,0xe7]
.code32
eqany.h %d14, %d15, %d0

# CHECK-INST: eqany.h %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x60,0xe7]
.code32
eqany.h %d14, %d15, %d1

# CHECK-INST: eqany.h %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x60,0xe7]
.code32
eqany.h %d14, %d15, %d14

# CHECK-INST: eqany.h %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x60,0xe7]
.code32
eqany.h %d14, %d15, %d15

# CHECK-INST: eqany.h %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x60,0xf7]
.code32
eqany.h %d15, %d0, %d0

# CHECK-INST: eqany.h %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x60,0xf7]
.code32
eqany.h %d15, %d0, %d1

# CHECK-INST: eqany.h %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x60,0xf7]
.code32
eqany.h %d15, %d0, %d14

# CHECK-INST: eqany.h %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x60,0xf7]
.code32
eqany.h %d15, %d0, %d15

# CHECK-INST: eqany.h %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x60,0xf7]
.code32
eqany.h %d15, %d1, %d0

# CHECK-INST: eqany.h %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x60,0xf7]
.code32
eqany.h %d15, %d1, %d1

# CHECK-INST: eqany.h %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x60,0xf7]
.code32
eqany.h %d15, %d1, %d14

# CHECK-INST: eqany.h %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x60,0xf7]
.code32
eqany.h %d15, %d1, %d15

# CHECK-INST: eqany.h %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x60,0xf7]
.code32
eqany.h %d15, %d14, %d0

# CHECK-INST: eqany.h %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x60,0xf7]
.code32
eqany.h %d15, %d14, %d1

# CHECK-INST: eqany.h %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x60,0xf7]
.code32
eqany.h %d15, %d14, %d14

# CHECK-INST: eqany.h %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x60,0xf7]
.code32
eqany.h %d15, %d14, %d15

# CHECK-INST: eqany.h %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x60,0xf7]
.code32
eqany.h %d15, %d15, %d0

# CHECK-INST: eqany.h %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x60,0xf7]
.code32
eqany.h %d15, %d15, %d1

# CHECK-INST: eqany.h %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x60,0xf7]
.code32
eqany.h %d15, %d15, %d14

# CHECK-INST: eqany.h %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x60,0xf7]
.code32
eqany.h %d15, %d15, %d15

# CHECK-INST: eqany.h %d0, %d0, -256
# CHECK: encoding: [0x8b,0x00,0xd0,0x0e]
.code32
eqany.h %d0, %d0, -256

# CHECK-INST: eqany.h %d0, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0xd7,0x0e]
.code32
eqany.h %d0, %d0, -129

# CHECK-INST: eqany.h %d0, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0xdf,0x0e]
.code32
eqany.h %d0, %d0, -1

# CHECK-INST: eqany.h %d0, %d0, 0
# CHECK: encoding: [0x8b,0x00,0xc0,0x0e]
.code32
eqany.h %d0, %d0, 0

# CHECK-INST: eqany.h %d0, %d0, 1
# CHECK: encoding: [0x8b,0x10,0xc0,0x0e]
.code32
eqany.h %d0, %d0, 1

# CHECK-INST: eqany.h %d0, %d0, 128
# CHECK: encoding: [0x8b,0x00,0xc8,0x0e]
.code32
eqany.h %d0, %d0, 128

# CHECK-INST: eqany.h %d0, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0xcf,0x0e]
.code32
eqany.h %d0, %d0, 255

# CHECK-INST: eqany.h %d0, %d1, -256
# CHECK: encoding: [0x8b,0x01,0xd0,0x0e]
.code32
eqany.h %d0, %d1, -256

# CHECK-INST: eqany.h %d0, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0xd7,0x0e]
.code32
eqany.h %d0, %d1, -129

# CHECK-INST: eqany.h %d0, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0xdf,0x0e]
.code32
eqany.h %d0, %d1, -1

# CHECK-INST: eqany.h %d0, %d1, 0
# CHECK: encoding: [0x8b,0x01,0xc0,0x0e]
.code32
eqany.h %d0, %d1, 0

# CHECK-INST: eqany.h %d0, %d1, 1
# CHECK: encoding: [0x8b,0x11,0xc0,0x0e]
.code32
eqany.h %d0, %d1, 1

# CHECK-INST: eqany.h %d0, %d1, 128
# CHECK: encoding: [0x8b,0x01,0xc8,0x0e]
.code32
eqany.h %d0, %d1, 128

# CHECK-INST: eqany.h %d0, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0xcf,0x0e]
.code32
eqany.h %d0, %d1, 255

# CHECK-INST: eqany.h %d0, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0xd0,0x0e]
.code32
eqany.h %d0, %d14, -256

# CHECK-INST: eqany.h %d0, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0xd7,0x0e]
.code32
eqany.h %d0, %d14, -129

# CHECK-INST: eqany.h %d0, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0xdf,0x0e]
.code32
eqany.h %d0, %d14, -1

# CHECK-INST: eqany.h %d0, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0xc0,0x0e]
.code32
eqany.h %d0, %d14, 0

# CHECK-INST: eqany.h %d0, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0xc0,0x0e]
.code32
eqany.h %d0, %d14, 1

# CHECK-INST: eqany.h %d0, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0xc8,0x0e]
.code32
eqany.h %d0, %d14, 128

# CHECK-INST: eqany.h %d0, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0xcf,0x0e]
.code32
eqany.h %d0, %d14, 255

# CHECK-INST: eqany.h %d0, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0xd0,0x0e]
.code32
eqany.h %d0, %d15, -256

# CHECK-INST: eqany.h %d0, %d15, -129
# CHECK: encoding: [0x8b,0xff,0xd7,0x0e]
.code32
eqany.h %d0, %d15, -129

# CHECK-INST: eqany.h %d0, %d15, -1
# CHECK: encoding: [0x8b,0xff,0xdf,0x0e]
.code32
eqany.h %d0, %d15, -1

# CHECK-INST: eqany.h %d0, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0xc0,0x0e]
.code32
eqany.h %d0, %d15, 0

# CHECK-INST: eqany.h %d0, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0xc0,0x0e]
.code32
eqany.h %d0, %d15, 1

# CHECK-INST: eqany.h %d0, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0xc8,0x0e]
.code32
eqany.h %d0, %d15, 128

# CHECK-INST: eqany.h %d0, %d15, 255
# CHECK: encoding: [0x8b,0xff,0xcf,0x0e]
.code32
eqany.h %d0, %d15, 255

# CHECK-INST: eqany.h %d1, %d0, -256
# CHECK: encoding: [0x8b,0x00,0xd0,0x1e]
.code32
eqany.h %d1, %d0, -256

# CHECK-INST: eqany.h %d1, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0xd7,0x1e]
.code32
eqany.h %d1, %d0, -129

# CHECK-INST: eqany.h %d1, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0xdf,0x1e]
.code32
eqany.h %d1, %d0, -1

# CHECK-INST: eqany.h %d1, %d0, 0
# CHECK: encoding: [0x8b,0x00,0xc0,0x1e]
.code32
eqany.h %d1, %d0, 0

# CHECK-INST: eqany.h %d1, %d0, 1
# CHECK: encoding: [0x8b,0x10,0xc0,0x1e]
.code32
eqany.h %d1, %d0, 1

# CHECK-INST: eqany.h %d1, %d0, 128
# CHECK: encoding: [0x8b,0x00,0xc8,0x1e]
.code32
eqany.h %d1, %d0, 128

# CHECK-INST: eqany.h %d1, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0xcf,0x1e]
.code32
eqany.h %d1, %d0, 255

# CHECK-INST: eqany.h %d1, %d1, -256
# CHECK: encoding: [0x8b,0x01,0xd0,0x1e]
.code32
eqany.h %d1, %d1, -256

# CHECK-INST: eqany.h %d1, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0xd7,0x1e]
.code32
eqany.h %d1, %d1, -129

# CHECK-INST: eqany.h %d1, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0xdf,0x1e]
.code32
eqany.h %d1, %d1, -1

# CHECK-INST: eqany.h %d1, %d1, 0
# CHECK: encoding: [0x8b,0x01,0xc0,0x1e]
.code32
eqany.h %d1, %d1, 0

# CHECK-INST: eqany.h %d1, %d1, 1
# CHECK: encoding: [0x8b,0x11,0xc0,0x1e]
.code32
eqany.h %d1, %d1, 1

# CHECK-INST: eqany.h %d1, %d1, 128
# CHECK: encoding: [0x8b,0x01,0xc8,0x1e]
.code32
eqany.h %d1, %d1, 128

# CHECK-INST: eqany.h %d1, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0xcf,0x1e]
.code32
eqany.h %d1, %d1, 255

# CHECK-INST: eqany.h %d1, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0xd0,0x1e]
.code32
eqany.h %d1, %d14, -256

# CHECK-INST: eqany.h %d1, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0xd7,0x1e]
.code32
eqany.h %d1, %d14, -129

# CHECK-INST: eqany.h %d1, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0xdf,0x1e]
.code32
eqany.h %d1, %d14, -1

# CHECK-INST: eqany.h %d1, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0xc0,0x1e]
.code32
eqany.h %d1, %d14, 0

# CHECK-INST: eqany.h %d1, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0xc0,0x1e]
.code32
eqany.h %d1, %d14, 1

# CHECK-INST: eqany.h %d1, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0xc8,0x1e]
.code32
eqany.h %d1, %d14, 128

# CHECK-INST: eqany.h %d1, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0xcf,0x1e]
.code32
eqany.h %d1, %d14, 255

# CHECK-INST: eqany.h %d1, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0xd0,0x1e]
.code32
eqany.h %d1, %d15, -256

# CHECK-INST: eqany.h %d1, %d15, -129
# CHECK: encoding: [0x8b,0xff,0xd7,0x1e]
.code32
eqany.h %d1, %d15, -129

# CHECK-INST: eqany.h %d1, %d15, -1
# CHECK: encoding: [0x8b,0xff,0xdf,0x1e]
.code32
eqany.h %d1, %d15, -1

# CHECK-INST: eqany.h %d1, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0xc0,0x1e]
.code32
eqany.h %d1, %d15, 0

# CHECK-INST: eqany.h %d1, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0xc0,0x1e]
.code32
eqany.h %d1, %d15, 1

# CHECK-INST: eqany.h %d1, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0xc8,0x1e]
.code32
eqany.h %d1, %d15, 128

# CHECK-INST: eqany.h %d1, %d15, 255
# CHECK: encoding: [0x8b,0xff,0xcf,0x1e]
.code32
eqany.h %d1, %d15, 255

# CHECK-INST: eqany.h %d14, %d0, -256
# CHECK: encoding: [0x8b,0x00,0xd0,0xee]
.code32
eqany.h %d14, %d0, -256

# CHECK-INST: eqany.h %d14, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0xd7,0xee]
.code32
eqany.h %d14, %d0, -129

# CHECK-INST: eqany.h %d14, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0xdf,0xee]
.code32
eqany.h %d14, %d0, -1

# CHECK-INST: eqany.h %d14, %d0, 0
# CHECK: encoding: [0x8b,0x00,0xc0,0xee]
.code32
eqany.h %d14, %d0, 0

# CHECK-INST: eqany.h %d14, %d0, 1
# CHECK: encoding: [0x8b,0x10,0xc0,0xee]
.code32
eqany.h %d14, %d0, 1

# CHECK-INST: eqany.h %d14, %d0, 128
# CHECK: encoding: [0x8b,0x00,0xc8,0xee]
.code32
eqany.h %d14, %d0, 128

# CHECK-INST: eqany.h %d14, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0xcf,0xee]
.code32
eqany.h %d14, %d0, 255

# CHECK-INST: eqany.h %d14, %d1, -256
# CHECK: encoding: [0x8b,0x01,0xd0,0xee]
.code32
eqany.h %d14, %d1, -256

# CHECK-INST: eqany.h %d14, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0xd7,0xee]
.code32
eqany.h %d14, %d1, -129

# CHECK-INST: eqany.h %d14, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0xdf,0xee]
.code32
eqany.h %d14, %d1, -1

# CHECK-INST: eqany.h %d14, %d1, 0
# CHECK: encoding: [0x8b,0x01,0xc0,0xee]
.code32
eqany.h %d14, %d1, 0

# CHECK-INST: eqany.h %d14, %d1, 1
# CHECK: encoding: [0x8b,0x11,0xc0,0xee]
.code32
eqany.h %d14, %d1, 1

# CHECK-INST: eqany.h %d14, %d1, 128
# CHECK: encoding: [0x8b,0x01,0xc8,0xee]
.code32
eqany.h %d14, %d1, 128

# CHECK-INST: eqany.h %d14, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0xcf,0xee]
.code32
eqany.h %d14, %d1, 255

# CHECK-INST: eqany.h %d14, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0xd0,0xee]
.code32
eqany.h %d14, %d14, -256

# CHECK-INST: eqany.h %d14, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0xd7,0xee]
.code32
eqany.h %d14, %d14, -129

# CHECK-INST: eqany.h %d14, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0xdf,0xee]
.code32
eqany.h %d14, %d14, -1

# CHECK-INST: eqany.h %d14, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0xc0,0xee]
.code32
eqany.h %d14, %d14, 0

# CHECK-INST: eqany.h %d14, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0xc0,0xee]
.code32
eqany.h %d14, %d14, 1

# CHECK-INST: eqany.h %d14, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0xc8,0xee]
.code32
eqany.h %d14, %d14, 128

# CHECK-INST: eqany.h %d14, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0xcf,0xee]
.code32
eqany.h %d14, %d14, 255

# CHECK-INST: eqany.h %d14, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0xd0,0xee]
.code32
eqany.h %d14, %d15, -256

# CHECK-INST: eqany.h %d14, %d15, -129
# CHECK: encoding: [0x8b,0xff,0xd7,0xee]
.code32
eqany.h %d14, %d15, -129

# CHECK-INST: eqany.h %d14, %d15, -1
# CHECK: encoding: [0x8b,0xff,0xdf,0xee]
.code32
eqany.h %d14, %d15, -1

# CHECK-INST: eqany.h %d14, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0xc0,0xee]
.code32
eqany.h %d14, %d15, 0

# CHECK-INST: eqany.h %d14, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0xc0,0xee]
.code32
eqany.h %d14, %d15, 1

# CHECK-INST: eqany.h %d14, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0xc8,0xee]
.code32
eqany.h %d14, %d15, 128

# CHECK-INST: eqany.h %d14, %d15, 255
# CHECK: encoding: [0x8b,0xff,0xcf,0xee]
.code32
eqany.h %d14, %d15, 255

# CHECK-INST: eqany.h %d15, %d0, -256
# CHECK: encoding: [0x8b,0x00,0xd0,0xfe]
.code32
eqany.h %d15, %d0, -256

# CHECK-INST: eqany.h %d15, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0xd7,0xfe]
.code32
eqany.h %d15, %d0, -129

# CHECK-INST: eqany.h %d15, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0xdf,0xfe]
.code32
eqany.h %d15, %d0, -1

# CHECK-INST: eqany.h %d15, %d0, 0
# CHECK: encoding: [0x8b,0x00,0xc0,0xfe]
.code32
eqany.h %d15, %d0, 0

# CHECK-INST: eqany.h %d15, %d0, 1
# CHECK: encoding: [0x8b,0x10,0xc0,0xfe]
.code32
eqany.h %d15, %d0, 1

# CHECK-INST: eqany.h %d15, %d0, 128
# CHECK: encoding: [0x8b,0x00,0xc8,0xfe]
.code32
eqany.h %d15, %d0, 128

# CHECK-INST: eqany.h %d15, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0xcf,0xfe]
.code32
eqany.h %d15, %d0, 255

# CHECK-INST: eqany.h %d15, %d1, -256
# CHECK: encoding: [0x8b,0x01,0xd0,0xfe]
.code32
eqany.h %d15, %d1, -256

# CHECK-INST: eqany.h %d15, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0xd7,0xfe]
.code32
eqany.h %d15, %d1, -129

# CHECK-INST: eqany.h %d15, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0xdf,0xfe]
.code32
eqany.h %d15, %d1, -1

# CHECK-INST: eqany.h %d15, %d1, 0
# CHECK: encoding: [0x8b,0x01,0xc0,0xfe]
.code32
eqany.h %d15, %d1, 0

# CHECK-INST: eqany.h %d15, %d1, 1
# CHECK: encoding: [0x8b,0x11,0xc0,0xfe]
.code32
eqany.h %d15, %d1, 1

# CHECK-INST: eqany.h %d15, %d1, 128
# CHECK: encoding: [0x8b,0x01,0xc8,0xfe]
.code32
eqany.h %d15, %d1, 128

# CHECK-INST: eqany.h %d15, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0xcf,0xfe]
.code32
eqany.h %d15, %d1, 255

# CHECK-INST: eqany.h %d15, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0xd0,0xfe]
.code32
eqany.h %d15, %d14, -256

# CHECK-INST: eqany.h %d15, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0xd7,0xfe]
.code32
eqany.h %d15, %d14, -129

# CHECK-INST: eqany.h %d15, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0xdf,0xfe]
.code32
eqany.h %d15, %d14, -1

# CHECK-INST: eqany.h %d15, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0xc0,0xfe]
.code32
eqany.h %d15, %d14, 0

# CHECK-INST: eqany.h %d15, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0xc0,0xfe]
.code32
eqany.h %d15, %d14, 1

# CHECK-INST: eqany.h %d15, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0xc8,0xfe]
.code32
eqany.h %d15, %d14, 128

# CHECK-INST: eqany.h %d15, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0xcf,0xfe]
.code32
eqany.h %d15, %d14, 255

# CHECK-INST: eqany.h %d15, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0xd0,0xfe]
.code32
eqany.h %d15, %d15, -256

# CHECK-INST: eqany.h %d15, %d15, -129
# CHECK: encoding: [0x8b,0xff,0xd7,0xfe]
.code32
eqany.h %d15, %d15, -129

# CHECK-INST: eqany.h %d15, %d15, -1
# CHECK: encoding: [0x8b,0xff,0xdf,0xfe]
.code32
eqany.h %d15, %d15, -1

# CHECK-INST: eqany.h %d15, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0xc0,0xfe]
.code32
eqany.h %d15, %d15, 0

# CHECK-INST: eqany.h %d15, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0xc0,0xfe]
.code32
eqany.h %d15, %d15, 1

# CHECK-INST: eqany.h %d15, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0xc8,0xfe]
.code32
eqany.h %d15, %d15, 128

# CHECK-INST: eqany.h %d15, %d15, 255
# CHECK: encoding: [0x8b,0xff,0xcf,0xfe]
.code32
eqany.h %d15, %d15, 255

# CHECK-INST: max.b %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xa0,0x05]
.code32
max.b %d0, %d0, %d0

# CHECK-INST: max.b %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xa0,0x05]
.code32
max.b %d0, %d0, %d1

# CHECK-INST: max.b %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xa0,0x05]
.code32
max.b %d0, %d0, %d14

# CHECK-INST: max.b %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xa0,0x05]
.code32
max.b %d0, %d0, %d15

# CHECK-INST: max.b %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xa0,0x05]
.code32
max.b %d0, %d1, %d0

# CHECK-INST: max.b %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xa0,0x05]
.code32
max.b %d0, %d1, %d1

# CHECK-INST: max.b %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xa0,0x05]
.code32
max.b %d0, %d1, %d14

# CHECK-INST: max.b %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xa0,0x05]
.code32
max.b %d0, %d1, %d15

# CHECK-INST: max.b %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xa0,0x05]
.code32
max.b %d0, %d14, %d0

# CHECK-INST: max.b %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xa0,0x05]
.code32
max.b %d0, %d14, %d1

# CHECK-INST: max.b %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xa0,0x05]
.code32
max.b %d0, %d14, %d14

# CHECK-INST: max.b %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xa0,0x05]
.code32
max.b %d0, %d14, %d15

# CHECK-INST: max.b %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xa0,0x05]
.code32
max.b %d0, %d15, %d0

# CHECK-INST: max.b %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xa0,0x05]
.code32
max.b %d0, %d15, %d1

# CHECK-INST: max.b %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xa0,0x05]
.code32
max.b %d0, %d15, %d14

# CHECK-INST: max.b %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xa0,0x05]
.code32
max.b %d0, %d15, %d15

# CHECK-INST: max.b %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xa0,0x15]
.code32
max.b %d1, %d0, %d0

# CHECK-INST: max.b %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xa0,0x15]
.code32
max.b %d1, %d0, %d1

# CHECK-INST: max.b %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xa0,0x15]
.code32
max.b %d1, %d0, %d14

# CHECK-INST: max.b %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xa0,0x15]
.code32
max.b %d1, %d0, %d15

# CHECK-INST: max.b %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xa0,0x15]
.code32
max.b %d1, %d1, %d0

# CHECK-INST: max.b %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xa0,0x15]
.code32
max.b %d1, %d1, %d1

# CHECK-INST: max.b %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xa0,0x15]
.code32
max.b %d1, %d1, %d14

# CHECK-INST: max.b %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xa0,0x15]
.code32
max.b %d1, %d1, %d15

# CHECK-INST: max.b %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xa0,0x15]
.code32
max.b %d1, %d14, %d0

# CHECK-INST: max.b %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xa0,0x15]
.code32
max.b %d1, %d14, %d1

# CHECK-INST: max.b %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xa0,0x15]
.code32
max.b %d1, %d14, %d14

# CHECK-INST: max.b %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xa0,0x15]
.code32
max.b %d1, %d14, %d15

# CHECK-INST: max.b %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xa0,0x15]
.code32
max.b %d1, %d15, %d0

# CHECK-INST: max.b %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xa0,0x15]
.code32
max.b %d1, %d15, %d1

# CHECK-INST: max.b %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xa0,0x15]
.code32
max.b %d1, %d15, %d14

# CHECK-INST: max.b %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xa0,0x15]
.code32
max.b %d1, %d15, %d15

# CHECK-INST: max.b %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xa0,0xe5]
.code32
max.b %d14, %d0, %d0

# CHECK-INST: max.b %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xa0,0xe5]
.code32
max.b %d14, %d0, %d1

# CHECK-INST: max.b %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xa0,0xe5]
.code32
max.b %d14, %d0, %d14

# CHECK-INST: max.b %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xa0,0xe5]
.code32
max.b %d14, %d0, %d15

# CHECK-INST: max.b %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xa0,0xe5]
.code32
max.b %d14, %d1, %d0

# CHECK-INST: max.b %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xa0,0xe5]
.code32
max.b %d14, %d1, %d1

# CHECK-INST: max.b %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xa0,0xe5]
.code32
max.b %d14, %d1, %d14

# CHECK-INST: max.b %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xa0,0xe5]
.code32
max.b %d14, %d1, %d15

# CHECK-INST: max.b %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xa0,0xe5]
.code32
max.b %d14, %d14, %d0

# CHECK-INST: max.b %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xa0,0xe5]
.code32
max.b %d14, %d14, %d1

# CHECK-INST: max.b %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xa0,0xe5]
.code32
max.b %d14, %d14, %d14

# CHECK-INST: max.b %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xa0,0xe5]
.code32
max.b %d14, %d14, %d15

# CHECK-INST: max.b %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xa0,0xe5]
.code32
max.b %d14, %d15, %d0

# CHECK-INST: max.b %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xa0,0xe5]
.code32
max.b %d14, %d15, %d1

# CHECK-INST: max.b %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xa0,0xe5]
.code32
max.b %d14, %d15, %d14

# CHECK-INST: max.b %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xa0,0xe5]
.code32
max.b %d14, %d15, %d15

# CHECK-INST: max.b %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xa0,0xf5]
.code32
max.b %d15, %d0, %d0

# CHECK-INST: max.b %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xa0,0xf5]
.code32
max.b %d15, %d0, %d1

# CHECK-INST: max.b %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xa0,0xf5]
.code32
max.b %d15, %d0, %d14

# CHECK-INST: max.b %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xa0,0xf5]
.code32
max.b %d15, %d0, %d15

# CHECK-INST: max.b %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xa0,0xf5]
.code32
max.b %d15, %d1, %d0

# CHECK-INST: max.b %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xa0,0xf5]
.code32
max.b %d15, %d1, %d1

# CHECK-INST: max.b %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xa0,0xf5]
.code32
max.b %d15, %d1, %d14

# CHECK-INST: max.b %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xa0,0xf5]
.code32
max.b %d15, %d1, %d15

# CHECK-INST: max.b %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xa0,0xf5]
.code32
max.b %d15, %d14, %d0

# CHECK-INST: max.b %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xa0,0xf5]
.code32
max.b %d15, %d14, %d1

# CHECK-INST: max.b %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xa0,0xf5]
.code32
max.b %d15, %d14, %d14

# CHECK-INST: max.b %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xa0,0xf5]
.code32
max.b %d15, %d14, %d15

# CHECK-INST: max.b %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xa0,0xf5]
.code32
max.b %d15, %d15, %d0

# CHECK-INST: max.b %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xa0,0xf5]
.code32
max.b %d15, %d15, %d1

# CHECK-INST: max.b %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xa0,0xf5]
.code32
max.b %d15, %d15, %d14

# CHECK-INST: max.b %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xa0,0xf5]
.code32
max.b %d15, %d15, %d15

# CHECK-INST: max.bu %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xb0,0x05]
.code32
max.bu %d0, %d0, %d0

# CHECK-INST: max.bu %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xb0,0x05]
.code32
max.bu %d0, %d0, %d1

# CHECK-INST: max.bu %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xb0,0x05]
.code32
max.bu %d0, %d0, %d14

# CHECK-INST: max.bu %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xb0,0x05]
.code32
max.bu %d0, %d0, %d15

# CHECK-INST: max.bu %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xb0,0x05]
.code32
max.bu %d0, %d1, %d0

# CHECK-INST: max.bu %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xb0,0x05]
.code32
max.bu %d0, %d1, %d1

# CHECK-INST: max.bu %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xb0,0x05]
.code32
max.bu %d0, %d1, %d14

# CHECK-INST: max.bu %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xb0,0x05]
.code32
max.bu %d0, %d1, %d15

# CHECK-INST: max.bu %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xb0,0x05]
.code32
max.bu %d0, %d14, %d0

# CHECK-INST: max.bu %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xb0,0x05]
.code32
max.bu %d0, %d14, %d1

# CHECK-INST: max.bu %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xb0,0x05]
.code32
max.bu %d0, %d14, %d14

# CHECK-INST: max.bu %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xb0,0x05]
.code32
max.bu %d0, %d14, %d15

# CHECK-INST: max.bu %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xb0,0x05]
.code32
max.bu %d0, %d15, %d0

# CHECK-INST: max.bu %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xb0,0x05]
.code32
max.bu %d0, %d15, %d1

# CHECK-INST: max.bu %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xb0,0x05]
.code32
max.bu %d0, %d15, %d14

# CHECK-INST: max.bu %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xb0,0x05]
.code32
max.bu %d0, %d15, %d15

# CHECK-INST: max.bu %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xb0,0x15]
.code32
max.bu %d1, %d0, %d0

# CHECK-INST: max.bu %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xb0,0x15]
.code32
max.bu %d1, %d0, %d1

# CHECK-INST: max.bu %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xb0,0x15]
.code32
max.bu %d1, %d0, %d14

# CHECK-INST: max.bu %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xb0,0x15]
.code32
max.bu %d1, %d0, %d15

# CHECK-INST: max.bu %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xb0,0x15]
.code32
max.bu %d1, %d1, %d0

# CHECK-INST: max.bu %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xb0,0x15]
.code32
max.bu %d1, %d1, %d1

# CHECK-INST: max.bu %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xb0,0x15]
.code32
max.bu %d1, %d1, %d14

# CHECK-INST: max.bu %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xb0,0x15]
.code32
max.bu %d1, %d1, %d15

# CHECK-INST: max.bu %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xb0,0x15]
.code32
max.bu %d1, %d14, %d0

# CHECK-INST: max.bu %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xb0,0x15]
.code32
max.bu %d1, %d14, %d1

# CHECK-INST: max.bu %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xb0,0x15]
.code32
max.bu %d1, %d14, %d14

# CHECK-INST: max.bu %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xb0,0x15]
.code32
max.bu %d1, %d14, %d15

# CHECK-INST: max.bu %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xb0,0x15]
.code32
max.bu %d1, %d15, %d0

# CHECK-INST: max.bu %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xb0,0x15]
.code32
max.bu %d1, %d15, %d1

# CHECK-INST: max.bu %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xb0,0x15]
.code32
max.bu %d1, %d15, %d14

# CHECK-INST: max.bu %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xb0,0x15]
.code32
max.bu %d1, %d15, %d15

# CHECK-INST: max.bu %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xb0,0xe5]
.code32
max.bu %d14, %d0, %d0

# CHECK-INST: max.bu %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xb0,0xe5]
.code32
max.bu %d14, %d0, %d1

# CHECK-INST: max.bu %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xb0,0xe5]
.code32
max.bu %d14, %d0, %d14

# CHECK-INST: max.bu %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xb0,0xe5]
.code32
max.bu %d14, %d0, %d15

# CHECK-INST: max.bu %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xb0,0xe5]
.code32
max.bu %d14, %d1, %d0

# CHECK-INST: max.bu %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xb0,0xe5]
.code32
max.bu %d14, %d1, %d1

# CHECK-INST: max.bu %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xb0,0xe5]
.code32
max.bu %d14, %d1, %d14

# CHECK-INST: max.bu %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xb0,0xe5]
.code32
max.bu %d14, %d1, %d15

# CHECK-INST: max.bu %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xb0,0xe5]
.code32
max.bu %d14, %d14, %d0

# CHECK-INST: max.bu %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xb0,0xe5]
.code32
max.bu %d14, %d14, %d1

# CHECK-INST: max.bu %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xb0,0xe5]
.code32
max.bu %d14, %d14, %d14

# CHECK-INST: max.bu %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xb0,0xe5]
.code32
max.bu %d14, %d14, %d15

# CHECK-INST: max.bu %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xb0,0xe5]
.code32
max.bu %d14, %d15, %d0

# CHECK-INST: max.bu %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xb0,0xe5]
.code32
max.bu %d14, %d15, %d1

# CHECK-INST: max.bu %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xb0,0xe5]
.code32
max.bu %d14, %d15, %d14

# CHECK-INST: max.bu %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xb0,0xe5]
.code32
max.bu %d14, %d15, %d15

# CHECK-INST: max.bu %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xb0,0xf5]
.code32
max.bu %d15, %d0, %d0

# CHECK-INST: max.bu %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xb0,0xf5]
.code32
max.bu %d15, %d0, %d1

# CHECK-INST: max.bu %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xb0,0xf5]
.code32
max.bu %d15, %d0, %d14

# CHECK-INST: max.bu %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xb0,0xf5]
.code32
max.bu %d15, %d0, %d15

# CHECK-INST: max.bu %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xb0,0xf5]
.code32
max.bu %d15, %d1, %d0

# CHECK-INST: max.bu %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xb0,0xf5]
.code32
max.bu %d15, %d1, %d1

# CHECK-INST: max.bu %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xb0,0xf5]
.code32
max.bu %d15, %d1, %d14

# CHECK-INST: max.bu %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xb0,0xf5]
.code32
max.bu %d15, %d1, %d15

# CHECK-INST: max.bu %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xb0,0xf5]
.code32
max.bu %d15, %d14, %d0

# CHECK-INST: max.bu %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xb0,0xf5]
.code32
max.bu %d15, %d14, %d1

# CHECK-INST: max.bu %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xb0,0xf5]
.code32
max.bu %d15, %d14, %d14

# CHECK-INST: max.bu %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xb0,0xf5]
.code32
max.bu %d15, %d14, %d15

# CHECK-INST: max.bu %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xb0,0xf5]
.code32
max.bu %d15, %d15, %d0

# CHECK-INST: max.bu %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xb0,0xf5]
.code32
max.bu %d15, %d15, %d1

# CHECK-INST: max.bu %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xb0,0xf5]
.code32
max.bu %d15, %d15, %d14

# CHECK-INST: max.bu %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xb0,0xf5]
.code32
max.bu %d15, %d15, %d15

# CHECK-INST: max.h %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xa0,0x07]
.code32
max.h %d0, %d0, %d0

# CHECK-INST: max.h %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xa0,0x07]
.code32
max.h %d0, %d0, %d1

# CHECK-INST: max.h %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xa0,0x07]
.code32
max.h %d0, %d0, %d14

# CHECK-INST: max.h %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xa0,0x07]
.code32
max.h %d0, %d0, %d15

# CHECK-INST: max.h %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xa0,0x07]
.code32
max.h %d0, %d1, %d0

# CHECK-INST: max.h %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xa0,0x07]
.code32
max.h %d0, %d1, %d1

# CHECK-INST: max.h %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xa0,0x07]
.code32
max.h %d0, %d1, %d14

# CHECK-INST: max.h %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xa0,0x07]
.code32
max.h %d0, %d1, %d15

# CHECK-INST: max.h %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xa0,0x07]
.code32
max.h %d0, %d14, %d0

# CHECK-INST: max.h %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xa0,0x07]
.code32
max.h %d0, %d14, %d1

# CHECK-INST: max.h %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xa0,0x07]
.code32
max.h %d0, %d14, %d14

# CHECK-INST: max.h %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xa0,0x07]
.code32
max.h %d0, %d14, %d15

# CHECK-INST: max.h %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xa0,0x07]
.code32
max.h %d0, %d15, %d0

# CHECK-INST: max.h %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xa0,0x07]
.code32
max.h %d0, %d15, %d1

# CHECK-INST: max.h %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xa0,0x07]
.code32
max.h %d0, %d15, %d14

# CHECK-INST: max.h %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xa0,0x07]
.code32
max.h %d0, %d15, %d15

# CHECK-INST: max.h %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xa0,0x17]
.code32
max.h %d1, %d0, %d0

# CHECK-INST: max.h %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xa0,0x17]
.code32
max.h %d1, %d0, %d1

# CHECK-INST: max.h %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xa0,0x17]
.code32
max.h %d1, %d0, %d14

# CHECK-INST: max.h %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xa0,0x17]
.code32
max.h %d1, %d0, %d15

# CHECK-INST: max.h %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xa0,0x17]
.code32
max.h %d1, %d1, %d0

# CHECK-INST: max.h %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xa0,0x17]
.code32
max.h %d1, %d1, %d1

# CHECK-INST: max.h %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xa0,0x17]
.code32
max.h %d1, %d1, %d14

# CHECK-INST: max.h %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xa0,0x17]
.code32
max.h %d1, %d1, %d15

# CHECK-INST: max.h %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xa0,0x17]
.code32
max.h %d1, %d14, %d0

# CHECK-INST: max.h %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xa0,0x17]
.code32
max.h %d1, %d14, %d1

# CHECK-INST: max.h %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xa0,0x17]
.code32
max.h %d1, %d14, %d14

# CHECK-INST: max.h %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xa0,0x17]
.code32
max.h %d1, %d14, %d15

# CHECK-INST: max.h %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xa0,0x17]
.code32
max.h %d1, %d15, %d0

# CHECK-INST: max.h %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xa0,0x17]
.code32
max.h %d1, %d15, %d1

# CHECK-INST: max.h %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xa0,0x17]
.code32
max.h %d1, %d15, %d14

# CHECK-INST: max.h %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xa0,0x17]
.code32
max.h %d1, %d15, %d15

# CHECK-INST: max.h %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xa0,0xe7]
.code32
max.h %d14, %d0, %d0

# CHECK-INST: max.h %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xa0,0xe7]
.code32
max.h %d14, %d0, %d1

# CHECK-INST: max.h %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xa0,0xe7]
.code32
max.h %d14, %d0, %d14

# CHECK-INST: max.h %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xa0,0xe7]
.code32
max.h %d14, %d0, %d15

# CHECK-INST: max.h %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xa0,0xe7]
.code32
max.h %d14, %d1, %d0

# CHECK-INST: max.h %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xa0,0xe7]
.code32
max.h %d14, %d1, %d1

# CHECK-INST: max.h %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xa0,0xe7]
.code32
max.h %d14, %d1, %d14

# CHECK-INST: max.h %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xa0,0xe7]
.code32
max.h %d14, %d1, %d15

# CHECK-INST: max.h %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xa0,0xe7]
.code32
max.h %d14, %d14, %d0

# CHECK-INST: max.h %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xa0,0xe7]
.code32
max.h %d14, %d14, %d1

# CHECK-INST: max.h %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xa0,0xe7]
.code32
max.h %d14, %d14, %d14

# CHECK-INST: max.h %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xa0,0xe7]
.code32
max.h %d14, %d14, %d15

# CHECK-INST: max.h %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xa0,0xe7]
.code32
max.h %d14, %d15, %d0

# CHECK-INST: max.h %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xa0,0xe7]
.code32
max.h %d14, %d15, %d1

# CHECK-INST: max.h %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xa0,0xe7]
.code32
max.h %d14, %d15, %d14

# CHECK-INST: max.h %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xa0,0xe7]
.code32
max.h %d14, %d15, %d15

# CHECK-INST: max.h %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xa0,0xf7]
.code32
max.h %d15, %d0, %d0

# CHECK-INST: max.h %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xa0,0xf7]
.code32
max.h %d15, %d0, %d1

# CHECK-INST: max.h %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xa0,0xf7]
.code32
max.h %d15, %d0, %d14

# CHECK-INST: max.h %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xa0,0xf7]
.code32
max.h %d15, %d0, %d15

# CHECK-INST: max.h %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xa0,0xf7]
.code32
max.h %d15, %d1, %d0

# CHECK-INST: max.h %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xa0,0xf7]
.code32
max.h %d15, %d1, %d1

# CHECK-INST: max.h %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xa0,0xf7]
.code32
max.h %d15, %d1, %d14

# CHECK-INST: max.h %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xa0,0xf7]
.code32
max.h %d15, %d1, %d15

# CHECK-INST: max.h %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xa0,0xf7]
.code32
max.h %d15, %d14, %d0

# CHECK-INST: max.h %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xa0,0xf7]
.code32
max.h %d15, %d14, %d1

# CHECK-INST: max.h %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xa0,0xf7]
.code32
max.h %d15, %d14, %d14

# CHECK-INST: max.h %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xa0,0xf7]
.code32
max.h %d15, %d14, %d15

# CHECK-INST: max.h %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xa0,0xf7]
.code32
max.h %d15, %d15, %d0

# CHECK-INST: max.h %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xa0,0xf7]
.code32
max.h %d15, %d15, %d1

# CHECK-INST: max.h %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xa0,0xf7]
.code32
max.h %d15, %d15, %d14

# CHECK-INST: max.h %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xa0,0xf7]
.code32
max.h %d15, %d15, %d15

# CHECK-INST: max.hu %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xb0,0x07]
.code32
max.hu %d0, %d0, %d0

# CHECK-INST: max.hu %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xb0,0x07]
.code32
max.hu %d0, %d0, %d1

# CHECK-INST: max.hu %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xb0,0x07]
.code32
max.hu %d0, %d0, %d14

# CHECK-INST: max.hu %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xb0,0x07]
.code32
max.hu %d0, %d0, %d15

# CHECK-INST: max.hu %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xb0,0x07]
.code32
max.hu %d0, %d1, %d0

# CHECK-INST: max.hu %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xb0,0x07]
.code32
max.hu %d0, %d1, %d1

# CHECK-INST: max.hu %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xb0,0x07]
.code32
max.hu %d0, %d1, %d14

# CHECK-INST: max.hu %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xb0,0x07]
.code32
max.hu %d0, %d1, %d15

# CHECK-INST: max.hu %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xb0,0x07]
.code32
max.hu %d0, %d14, %d0

# CHECK-INST: max.hu %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xb0,0x07]
.code32
max.hu %d0, %d14, %d1

# CHECK-INST: max.hu %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xb0,0x07]
.code32
max.hu %d0, %d14, %d14

# CHECK-INST: max.hu %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xb0,0x07]
.code32
max.hu %d0, %d14, %d15

# CHECK-INST: max.hu %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xb0,0x07]
.code32
max.hu %d0, %d15, %d0

# CHECK-INST: max.hu %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xb0,0x07]
.code32
max.hu %d0, %d15, %d1

# CHECK-INST: max.hu %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xb0,0x07]
.code32
max.hu %d0, %d15, %d14

# CHECK-INST: max.hu %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xb0,0x07]
.code32
max.hu %d0, %d15, %d15

# CHECK-INST: max.hu %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xb0,0x17]
.code32
max.hu %d1, %d0, %d0

# CHECK-INST: max.hu %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xb0,0x17]
.code32
max.hu %d1, %d0, %d1

# CHECK-INST: max.hu %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xb0,0x17]
.code32
max.hu %d1, %d0, %d14

# CHECK-INST: max.hu %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xb0,0x17]
.code32
max.hu %d1, %d0, %d15

# CHECK-INST: max.hu %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xb0,0x17]
.code32
max.hu %d1, %d1, %d0

# CHECK-INST: max.hu %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xb0,0x17]
.code32
max.hu %d1, %d1, %d1

# CHECK-INST: max.hu %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xb0,0x17]
.code32
max.hu %d1, %d1, %d14

# CHECK-INST: max.hu %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xb0,0x17]
.code32
max.hu %d1, %d1, %d15

# CHECK-INST: max.hu %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xb0,0x17]
.code32
max.hu %d1, %d14, %d0

# CHECK-INST: max.hu %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xb0,0x17]
.code32
max.hu %d1, %d14, %d1

# CHECK-INST: max.hu %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xb0,0x17]
.code32
max.hu %d1, %d14, %d14

# CHECK-INST: max.hu %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xb0,0x17]
.code32
max.hu %d1, %d14, %d15

# CHECK-INST: max.hu %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xb0,0x17]
.code32
max.hu %d1, %d15, %d0

# CHECK-INST: max.hu %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xb0,0x17]
.code32
max.hu %d1, %d15, %d1

# CHECK-INST: max.hu %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xb0,0x17]
.code32
max.hu %d1, %d15, %d14

# CHECK-INST: max.hu %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xb0,0x17]
.code32
max.hu %d1, %d15, %d15

# CHECK-INST: max.hu %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xb0,0xe7]
.code32
max.hu %d14, %d0, %d0

# CHECK-INST: max.hu %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xb0,0xe7]
.code32
max.hu %d14, %d0, %d1

# CHECK-INST: max.hu %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xb0,0xe7]
.code32
max.hu %d14, %d0, %d14

# CHECK-INST: max.hu %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xb0,0xe7]
.code32
max.hu %d14, %d0, %d15

# CHECK-INST: max.hu %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xb0,0xe7]
.code32
max.hu %d14, %d1, %d0

# CHECK-INST: max.hu %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xb0,0xe7]
.code32
max.hu %d14, %d1, %d1

# CHECK-INST: max.hu %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xb0,0xe7]
.code32
max.hu %d14, %d1, %d14

# CHECK-INST: max.hu %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xb0,0xe7]
.code32
max.hu %d14, %d1, %d15

# CHECK-INST: max.hu %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xb0,0xe7]
.code32
max.hu %d14, %d14, %d0

# CHECK-INST: max.hu %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xb0,0xe7]
.code32
max.hu %d14, %d14, %d1

# CHECK-INST: max.hu %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xb0,0xe7]
.code32
max.hu %d14, %d14, %d14

# CHECK-INST: max.hu %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xb0,0xe7]
.code32
max.hu %d14, %d14, %d15

# CHECK-INST: max.hu %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xb0,0xe7]
.code32
max.hu %d14, %d15, %d0

# CHECK-INST: max.hu %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xb0,0xe7]
.code32
max.hu %d14, %d15, %d1

# CHECK-INST: max.hu %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xb0,0xe7]
.code32
max.hu %d14, %d15, %d14

# CHECK-INST: max.hu %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xb0,0xe7]
.code32
max.hu %d14, %d15, %d15

# CHECK-INST: max.hu %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xb0,0xf7]
.code32
max.hu %d15, %d0, %d0

# CHECK-INST: max.hu %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xb0,0xf7]
.code32
max.hu %d15, %d0, %d1

# CHECK-INST: max.hu %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xb0,0xf7]
.code32
max.hu %d15, %d0, %d14

# CHECK-INST: max.hu %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xb0,0xf7]
.code32
max.hu %d15, %d0, %d15

# CHECK-INST: max.hu %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xb0,0xf7]
.code32
max.hu %d15, %d1, %d0

# CHECK-INST: max.hu %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xb0,0xf7]
.code32
max.hu %d15, %d1, %d1

# CHECK-INST: max.hu %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xb0,0xf7]
.code32
max.hu %d15, %d1, %d14

# CHECK-INST: max.hu %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xb0,0xf7]
.code32
max.hu %d15, %d1, %d15

# CHECK-INST: max.hu %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xb0,0xf7]
.code32
max.hu %d15, %d14, %d0

# CHECK-INST: max.hu %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xb0,0xf7]
.code32
max.hu %d15, %d14, %d1

# CHECK-INST: max.hu %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xb0,0xf7]
.code32
max.hu %d15, %d14, %d14

# CHECK-INST: max.hu %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xb0,0xf7]
.code32
max.hu %d15, %d14, %d15

# CHECK-INST: max.hu %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xb0,0xf7]
.code32
max.hu %d15, %d15, %d0

# CHECK-INST: max.hu %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xb0,0xf7]
.code32
max.hu %d15, %d15, %d1

# CHECK-INST: max.hu %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xb0,0xf7]
.code32
max.hu %d15, %d15, %d14

# CHECK-INST: max.hu %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xb0,0xf7]
.code32
max.hu %d15, %d15, %d15

# CHECK-INST: min.b %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x80,0x05]
.code32
min.b %d0, %d0, %d0

# CHECK-INST: min.b %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x80,0x05]
.code32
min.b %d0, %d0, %d1

# CHECK-INST: min.b %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x80,0x05]
.code32
min.b %d0, %d0, %d14

# CHECK-INST: min.b %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x80,0x05]
.code32
min.b %d0, %d0, %d15

# CHECK-INST: min.b %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x80,0x05]
.code32
min.b %d0, %d1, %d0

# CHECK-INST: min.b %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x80,0x05]
.code32
min.b %d0, %d1, %d1

# CHECK-INST: min.b %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x80,0x05]
.code32
min.b %d0, %d1, %d14

# CHECK-INST: min.b %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x80,0x05]
.code32
min.b %d0, %d1, %d15

# CHECK-INST: min.b %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x80,0x05]
.code32
min.b %d0, %d14, %d0

# CHECK-INST: min.b %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x80,0x05]
.code32
min.b %d0, %d14, %d1

# CHECK-INST: min.b %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x80,0x05]
.code32
min.b %d0, %d14, %d14

# CHECK-INST: min.b %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x80,0x05]
.code32
min.b %d0, %d14, %d15

# CHECK-INST: min.b %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x80,0x05]
.code32
min.b %d0, %d15, %d0

# CHECK-INST: min.b %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x80,0x05]
.code32
min.b %d0, %d15, %d1

# CHECK-INST: min.b %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x80,0x05]
.code32
min.b %d0, %d15, %d14

# CHECK-INST: min.b %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x80,0x05]
.code32
min.b %d0, %d15, %d15

# CHECK-INST: min.b %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x80,0x15]
.code32
min.b %d1, %d0, %d0

# CHECK-INST: min.b %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x80,0x15]
.code32
min.b %d1, %d0, %d1

# CHECK-INST: min.b %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x80,0x15]
.code32
min.b %d1, %d0, %d14

# CHECK-INST: min.b %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x80,0x15]
.code32
min.b %d1, %d0, %d15

# CHECK-INST: min.b %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x80,0x15]
.code32
min.b %d1, %d1, %d0

# CHECK-INST: min.b %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x80,0x15]
.code32
min.b %d1, %d1, %d1

# CHECK-INST: min.b %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x80,0x15]
.code32
min.b %d1, %d1, %d14

# CHECK-INST: min.b %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x80,0x15]
.code32
min.b %d1, %d1, %d15

# CHECK-INST: min.b %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x80,0x15]
.code32
min.b %d1, %d14, %d0

# CHECK-INST: min.b %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x80,0x15]
.code32
min.b %d1, %d14, %d1

# CHECK-INST: min.b %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x80,0x15]
.code32
min.b %d1, %d14, %d14

# CHECK-INST: min.b %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x80,0x15]
.code32
min.b %d1, %d14, %d15

# CHECK-INST: min.b %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x80,0x15]
.code32
min.b %d1, %d15, %d0

# CHECK-INST: min.b %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x80,0x15]
.code32
min.b %d1, %d15, %d1

# CHECK-INST: min.b %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x80,0x15]
.code32
min.b %d1, %d15, %d14

# CHECK-INST: min.b %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x80,0x15]
.code32
min.b %d1, %d15, %d15

# CHECK-INST: min.b %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x80,0xe5]
.code32
min.b %d14, %d0, %d0

# CHECK-INST: min.b %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x80,0xe5]
.code32
min.b %d14, %d0, %d1

# CHECK-INST: min.b %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x80,0xe5]
.code32
min.b %d14, %d0, %d14

# CHECK-INST: min.b %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x80,0xe5]
.code32
min.b %d14, %d0, %d15

# CHECK-INST: min.b %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x80,0xe5]
.code32
min.b %d14, %d1, %d0

# CHECK-INST: min.b %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x80,0xe5]
.code32
min.b %d14, %d1, %d1

# CHECK-INST: min.b %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x80,0xe5]
.code32
min.b %d14, %d1, %d14

# CHECK-INST: min.b %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x80,0xe5]
.code32
min.b %d14, %d1, %d15

# CHECK-INST: min.b %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x80,0xe5]
.code32
min.b %d14, %d14, %d0

# CHECK-INST: min.b %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x80,0xe5]
.code32
min.b %d14, %d14, %d1

# CHECK-INST: min.b %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x80,0xe5]
.code32
min.b %d14, %d14, %d14

# CHECK-INST: min.b %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x80,0xe5]
.code32
min.b %d14, %d14, %d15

# CHECK-INST: min.b %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x80,0xe5]
.code32
min.b %d14, %d15, %d0

# CHECK-INST: min.b %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x80,0xe5]
.code32
min.b %d14, %d15, %d1

# CHECK-INST: min.b %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x80,0xe5]
.code32
min.b %d14, %d15, %d14

# CHECK-INST: min.b %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x80,0xe5]
.code32
min.b %d14, %d15, %d15

# CHECK-INST: min.b %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x80,0xf5]
.code32
min.b %d15, %d0, %d0

# CHECK-INST: min.b %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x80,0xf5]
.code32
min.b %d15, %d0, %d1

# CHECK-INST: min.b %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x80,0xf5]
.code32
min.b %d15, %d0, %d14

# CHECK-INST: min.b %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x80,0xf5]
.code32
min.b %d15, %d0, %d15

# CHECK-INST: min.b %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x80,0xf5]
.code32
min.b %d15, %d1, %d0

# CHECK-INST: min.b %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x80,0xf5]
.code32
min.b %d15, %d1, %d1

# CHECK-INST: min.b %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x80,0xf5]
.code32
min.b %d15, %d1, %d14

# CHECK-INST: min.b %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x80,0xf5]
.code32
min.b %d15, %d1, %d15

# CHECK-INST: min.b %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x80,0xf5]
.code32
min.b %d15, %d14, %d0

# CHECK-INST: min.b %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x80,0xf5]
.code32
min.b %d15, %d14, %d1

# CHECK-INST: min.b %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x80,0xf5]
.code32
min.b %d15, %d14, %d14

# CHECK-INST: min.b %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x80,0xf5]
.code32
min.b %d15, %d14, %d15

# CHECK-INST: min.b %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x80,0xf5]
.code32
min.b %d15, %d15, %d0

# CHECK-INST: min.b %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x80,0xf5]
.code32
min.b %d15, %d15, %d1

# CHECK-INST: min.b %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x80,0xf5]
.code32
min.b %d15, %d15, %d14

# CHECK-INST: min.b %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x80,0xf5]
.code32
min.b %d15, %d15, %d15

# CHECK-INST: min.bu %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x90,0x05]
.code32
min.bu %d0, %d0, %d0

# CHECK-INST: min.bu %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x90,0x05]
.code32
min.bu %d0, %d0, %d1

# CHECK-INST: min.bu %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x90,0x05]
.code32
min.bu %d0, %d0, %d14

# CHECK-INST: min.bu %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x90,0x05]
.code32
min.bu %d0, %d0, %d15

# CHECK-INST: min.bu %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x90,0x05]
.code32
min.bu %d0, %d1, %d0

# CHECK-INST: min.bu %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x90,0x05]
.code32
min.bu %d0, %d1, %d1

# CHECK-INST: min.bu %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x90,0x05]
.code32
min.bu %d0, %d1, %d14

# CHECK-INST: min.bu %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x90,0x05]
.code32
min.bu %d0, %d1, %d15

# CHECK-INST: min.bu %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x90,0x05]
.code32
min.bu %d0, %d14, %d0

# CHECK-INST: min.bu %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x90,0x05]
.code32
min.bu %d0, %d14, %d1

# CHECK-INST: min.bu %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x90,0x05]
.code32
min.bu %d0, %d14, %d14

# CHECK-INST: min.bu %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x90,0x05]
.code32
min.bu %d0, %d14, %d15

# CHECK-INST: min.bu %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x90,0x05]
.code32
min.bu %d0, %d15, %d0

# CHECK-INST: min.bu %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x90,0x05]
.code32
min.bu %d0, %d15, %d1

# CHECK-INST: min.bu %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x90,0x05]
.code32
min.bu %d0, %d15, %d14

# CHECK-INST: min.bu %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x90,0x05]
.code32
min.bu %d0, %d15, %d15

# CHECK-INST: min.bu %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x90,0x15]
.code32
min.bu %d1, %d0, %d0

# CHECK-INST: min.bu %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x90,0x15]
.code32
min.bu %d1, %d0, %d1

# CHECK-INST: min.bu %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x90,0x15]
.code32
min.bu %d1, %d0, %d14

# CHECK-INST: min.bu %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x90,0x15]
.code32
min.bu %d1, %d0, %d15

# CHECK-INST: min.bu %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x90,0x15]
.code32
min.bu %d1, %d1, %d0

# CHECK-INST: min.bu %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x90,0x15]
.code32
min.bu %d1, %d1, %d1

# CHECK-INST: min.bu %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x90,0x15]
.code32
min.bu %d1, %d1, %d14

# CHECK-INST: min.bu %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x90,0x15]
.code32
min.bu %d1, %d1, %d15

# CHECK-INST: min.bu %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x90,0x15]
.code32
min.bu %d1, %d14, %d0

# CHECK-INST: min.bu %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x90,0x15]
.code32
min.bu %d1, %d14, %d1

# CHECK-INST: min.bu %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x90,0x15]
.code32
min.bu %d1, %d14, %d14

# CHECK-INST: min.bu %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x90,0x15]
.code32
min.bu %d1, %d14, %d15

# CHECK-INST: min.bu %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x90,0x15]
.code32
min.bu %d1, %d15, %d0

# CHECK-INST: min.bu %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x90,0x15]
.code32
min.bu %d1, %d15, %d1

# CHECK-INST: min.bu %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x90,0x15]
.code32
min.bu %d1, %d15, %d14

# CHECK-INST: min.bu %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x90,0x15]
.code32
min.bu %d1, %d15, %d15

# CHECK-INST: min.bu %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x90,0xe5]
.code32
min.bu %d14, %d0, %d0

# CHECK-INST: min.bu %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x90,0xe5]
.code32
min.bu %d14, %d0, %d1

# CHECK-INST: min.bu %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x90,0xe5]
.code32
min.bu %d14, %d0, %d14

# CHECK-INST: min.bu %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x90,0xe5]
.code32
min.bu %d14, %d0, %d15

# CHECK-INST: min.bu %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x90,0xe5]
.code32
min.bu %d14, %d1, %d0

# CHECK-INST: min.bu %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x90,0xe5]
.code32
min.bu %d14, %d1, %d1

# CHECK-INST: min.bu %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x90,0xe5]
.code32
min.bu %d14, %d1, %d14

# CHECK-INST: min.bu %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x90,0xe5]
.code32
min.bu %d14, %d1, %d15

# CHECK-INST: min.bu %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x90,0xe5]
.code32
min.bu %d14, %d14, %d0

# CHECK-INST: min.bu %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x90,0xe5]
.code32
min.bu %d14, %d14, %d1

# CHECK-INST: min.bu %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x90,0xe5]
.code32
min.bu %d14, %d14, %d14

# CHECK-INST: min.bu %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x90,0xe5]
.code32
min.bu %d14, %d14, %d15

# CHECK-INST: min.bu %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x90,0xe5]
.code32
min.bu %d14, %d15, %d0

# CHECK-INST: min.bu %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x90,0xe5]
.code32
min.bu %d14, %d15, %d1

# CHECK-INST: min.bu %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x90,0xe5]
.code32
min.bu %d14, %d15, %d14

# CHECK-INST: min.bu %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x90,0xe5]
.code32
min.bu %d14, %d15, %d15

# CHECK-INST: min.bu %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x90,0xf5]
.code32
min.bu %d15, %d0, %d0

# CHECK-INST: min.bu %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x90,0xf5]
.code32
min.bu %d15, %d0, %d1

# CHECK-INST: min.bu %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x90,0xf5]
.code32
min.bu %d15, %d0, %d14

# CHECK-INST: min.bu %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x90,0xf5]
.code32
min.bu %d15, %d0, %d15

# CHECK-INST: min.bu %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x90,0xf5]
.code32
min.bu %d15, %d1, %d0

# CHECK-INST: min.bu %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x90,0xf5]
.code32
min.bu %d15, %d1, %d1

# CHECK-INST: min.bu %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x90,0xf5]
.code32
min.bu %d15, %d1, %d14

# CHECK-INST: min.bu %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x90,0xf5]
.code32
min.bu %d15, %d1, %d15

# CHECK-INST: min.bu %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x90,0xf5]
.code32
min.bu %d15, %d14, %d0

# CHECK-INST: min.bu %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x90,0xf5]
.code32
min.bu %d15, %d14, %d1

# CHECK-INST: min.bu %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x90,0xf5]
.code32
min.bu %d15, %d14, %d14

# CHECK-INST: min.bu %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x90,0xf5]
.code32
min.bu %d15, %d14, %d15

# CHECK-INST: min.bu %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x90,0xf5]
.code32
min.bu %d15, %d15, %d0

# CHECK-INST: min.bu %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x90,0xf5]
.code32
min.bu %d15, %d15, %d1

# CHECK-INST: min.bu %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x90,0xf5]
.code32
min.bu %d15, %d15, %d14

# CHECK-INST: min.bu %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x90,0xf5]
.code32
min.bu %d15, %d15, %d15

# CHECK-INST: min.h %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x80,0x07]
.code32
min.h %d0, %d0, %d0

# CHECK-INST: min.h %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x80,0x07]
.code32
min.h %d0, %d0, %d1

# CHECK-INST: min.h %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x80,0x07]
.code32
min.h %d0, %d0, %d14

# CHECK-INST: min.h %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x80,0x07]
.code32
min.h %d0, %d0, %d15

# CHECK-INST: min.h %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x80,0x07]
.code32
min.h %d0, %d1, %d0

# CHECK-INST: min.h %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x80,0x07]
.code32
min.h %d0, %d1, %d1

# CHECK-INST: min.h %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x80,0x07]
.code32
min.h %d0, %d1, %d14

# CHECK-INST: min.h %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x80,0x07]
.code32
min.h %d0, %d1, %d15

# CHECK-INST: min.h %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x80,0x07]
.code32
min.h %d0, %d14, %d0

# CHECK-INST: min.h %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x80,0x07]
.code32
min.h %d0, %d14, %d1

# CHECK-INST: min.h %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x80,0x07]
.code32
min.h %d0, %d14, %d14

# CHECK-INST: min.h %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x80,0x07]
.code32
min.h %d0, %d14, %d15

# CHECK-INST: min.h %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x80,0x07]
.code32
min.h %d0, %d15, %d0

# CHECK-INST: min.h %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x80,0x07]
.code32
min.h %d0, %d15, %d1

# CHECK-INST: min.h %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x80,0x07]
.code32
min.h %d0, %d15, %d14

# CHECK-INST: min.h %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x80,0x07]
.code32
min.h %d0, %d15, %d15

# CHECK-INST: min.h %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x80,0x17]
.code32
min.h %d1, %d0, %d0

# CHECK-INST: min.h %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x80,0x17]
.code32
min.h %d1, %d0, %d1

# CHECK-INST: min.h %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x80,0x17]
.code32
min.h %d1, %d0, %d14

# CHECK-INST: min.h %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x80,0x17]
.code32
min.h %d1, %d0, %d15

# CHECK-INST: min.h %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x80,0x17]
.code32
min.h %d1, %d1, %d0

# CHECK-INST: min.h %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x80,0x17]
.code32
min.h %d1, %d1, %d1

# CHECK-INST: min.h %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x80,0x17]
.code32
min.h %d1, %d1, %d14

# CHECK-INST: min.h %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x80,0x17]
.code32
min.h %d1, %d1, %d15

# CHECK-INST: min.h %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x80,0x17]
.code32
min.h %d1, %d14, %d0

# CHECK-INST: min.h %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x80,0x17]
.code32
min.h %d1, %d14, %d1

# CHECK-INST: min.h %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x80,0x17]
.code32
min.h %d1, %d14, %d14

# CHECK-INST: min.h %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x80,0x17]
.code32
min.h %d1, %d14, %d15

# CHECK-INST: min.h %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x80,0x17]
.code32
min.h %d1, %d15, %d0

# CHECK-INST: min.h %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x80,0x17]
.code32
min.h %d1, %d15, %d1

# CHECK-INST: min.h %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x80,0x17]
.code32
min.h %d1, %d15, %d14

# CHECK-INST: min.h %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x80,0x17]
.code32
min.h %d1, %d15, %d15

# CHECK-INST: min.h %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x80,0xe7]
.code32
min.h %d14, %d0, %d0

# CHECK-INST: min.h %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x80,0xe7]
.code32
min.h %d14, %d0, %d1

# CHECK-INST: min.h %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x80,0xe7]
.code32
min.h %d14, %d0, %d14

# CHECK-INST: min.h %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x80,0xe7]
.code32
min.h %d14, %d0, %d15

# CHECK-INST: min.h %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x80,0xe7]
.code32
min.h %d14, %d1, %d0

# CHECK-INST: min.h %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x80,0xe7]
.code32
min.h %d14, %d1, %d1

# CHECK-INST: min.h %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x80,0xe7]
.code32
min.h %d14, %d1, %d14

# CHECK-INST: min.h %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x80,0xe7]
.code32
min.h %d14, %d1, %d15

# CHECK-INST: min.h %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x80,0xe7]
.code32
min.h %d14, %d14, %d0

# CHECK-INST: min.h %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x80,0xe7]
.code32
min.h %d14, %d14, %d1

# CHECK-INST: min.h %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x80,0xe7]
.code32
min.h %d14, %d14, %d14

# CHECK-INST: min.h %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x80,0xe7]
.code32
min.h %d14, %d14, %d15

# CHECK-INST: min.h %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x80,0xe7]
.code32
min.h %d14, %d15, %d0

# CHECK-INST: min.h %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x80,0xe7]
.code32
min.h %d14, %d15, %d1

# CHECK-INST: min.h %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x80,0xe7]
.code32
min.h %d14, %d15, %d14

# CHECK-INST: min.h %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x80,0xe7]
.code32
min.h %d14, %d15, %d15

# CHECK-INST: min.h %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x80,0xf7]
.code32
min.h %d15, %d0, %d0

# CHECK-INST: min.h %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x80,0xf7]
.code32
min.h %d15, %d0, %d1

# CHECK-INST: min.h %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x80,0xf7]
.code32
min.h %d15, %d0, %d14

# CHECK-INST: min.h %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x80,0xf7]
.code32
min.h %d15, %d0, %d15

# CHECK-INST: min.h %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x80,0xf7]
.code32
min.h %d15, %d1, %d0

# CHECK-INST: min.h %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x80,0xf7]
.code32
min.h %d15, %d1, %d1

# CHECK-INST: min.h %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x80,0xf7]
.code32
min.h %d15, %d1, %d14

# CHECK-INST: min.h %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x80,0xf7]
.code32
min.h %d15, %d1, %d15

# CHECK-INST: min.h %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x80,0xf7]
.code32
min.h %d15, %d14, %d0

# CHECK-INST: min.h %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x80,0xf7]
.code32
min.h %d15, %d14, %d1

# CHECK-INST: min.h %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x80,0xf7]
.code32
min.h %d15, %d14, %d14

# CHECK-INST: min.h %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x80,0xf7]
.code32
min.h %d15, %d14, %d15

# CHECK-INST: min.h %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x80,0xf7]
.code32
min.h %d15, %d15, %d0

# CHECK-INST: min.h %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x80,0xf7]
.code32
min.h %d15, %d15, %d1

# CHECK-INST: min.h %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x80,0xf7]
.code32
min.h %d15, %d15, %d14

# CHECK-INST: min.h %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x80,0xf7]
.code32
min.h %d15, %d15, %d15

# CHECK-INST: min.hu %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x90,0x07]
.code32
min.hu %d0, %d0, %d0

# CHECK-INST: min.hu %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x90,0x07]
.code32
min.hu %d0, %d0, %d1

# CHECK-INST: min.hu %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x90,0x07]
.code32
min.hu %d0, %d0, %d14

# CHECK-INST: min.hu %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x90,0x07]
.code32
min.hu %d0, %d0, %d15

# CHECK-INST: min.hu %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x90,0x07]
.code32
min.hu %d0, %d1, %d0

# CHECK-INST: min.hu %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x90,0x07]
.code32
min.hu %d0, %d1, %d1

# CHECK-INST: min.hu %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x90,0x07]
.code32
min.hu %d0, %d1, %d14

# CHECK-INST: min.hu %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x90,0x07]
.code32
min.hu %d0, %d1, %d15

# CHECK-INST: min.hu %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x90,0x07]
.code32
min.hu %d0, %d14, %d0

# CHECK-INST: min.hu %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x90,0x07]
.code32
min.hu %d0, %d14, %d1

# CHECK-INST: min.hu %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x90,0x07]
.code32
min.hu %d0, %d14, %d14

# CHECK-INST: min.hu %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x90,0x07]
.code32
min.hu %d0, %d14, %d15

# CHECK-INST: min.hu %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x90,0x07]
.code32
min.hu %d0, %d15, %d0

# CHECK-INST: min.hu %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x90,0x07]
.code32
min.hu %d0, %d15, %d1

# CHECK-INST: min.hu %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x90,0x07]
.code32
min.hu %d0, %d15, %d14

# CHECK-INST: min.hu %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x90,0x07]
.code32
min.hu %d0, %d15, %d15

# CHECK-INST: min.hu %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x90,0x17]
.code32
min.hu %d1, %d0, %d0

# CHECK-INST: min.hu %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x90,0x17]
.code32
min.hu %d1, %d0, %d1

# CHECK-INST: min.hu %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x90,0x17]
.code32
min.hu %d1, %d0, %d14

# CHECK-INST: min.hu %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x90,0x17]
.code32
min.hu %d1, %d0, %d15

# CHECK-INST: min.hu %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x90,0x17]
.code32
min.hu %d1, %d1, %d0

# CHECK-INST: min.hu %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x90,0x17]
.code32
min.hu %d1, %d1, %d1

# CHECK-INST: min.hu %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x90,0x17]
.code32
min.hu %d1, %d1, %d14

# CHECK-INST: min.hu %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x90,0x17]
.code32
min.hu %d1, %d1, %d15

# CHECK-INST: min.hu %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x90,0x17]
.code32
min.hu %d1, %d14, %d0

# CHECK-INST: min.hu %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x90,0x17]
.code32
min.hu %d1, %d14, %d1

# CHECK-INST: min.hu %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x90,0x17]
.code32
min.hu %d1, %d14, %d14

# CHECK-INST: min.hu %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x90,0x17]
.code32
min.hu %d1, %d14, %d15

# CHECK-INST: min.hu %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x90,0x17]
.code32
min.hu %d1, %d15, %d0

# CHECK-INST: min.hu %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x90,0x17]
.code32
min.hu %d1, %d15, %d1

# CHECK-INST: min.hu %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x90,0x17]
.code32
min.hu %d1, %d15, %d14

# CHECK-INST: min.hu %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x90,0x17]
.code32
min.hu %d1, %d15, %d15

# CHECK-INST: min.hu %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x90,0xe7]
.code32
min.hu %d14, %d0, %d0

# CHECK-INST: min.hu %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x90,0xe7]
.code32
min.hu %d14, %d0, %d1

# CHECK-INST: min.hu %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x90,0xe7]
.code32
min.hu %d14, %d0, %d14

# CHECK-INST: min.hu %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x90,0xe7]
.code32
min.hu %d14, %d0, %d15

# CHECK-INST: min.hu %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x90,0xe7]
.code32
min.hu %d14, %d1, %d0

# CHECK-INST: min.hu %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x90,0xe7]
.code32
min.hu %d14, %d1, %d1

# CHECK-INST: min.hu %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x90,0xe7]
.code32
min.hu %d14, %d1, %d14

# CHECK-INST: min.hu %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x90,0xe7]
.code32
min.hu %d14, %d1, %d15

# CHECK-INST: min.hu %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x90,0xe7]
.code32
min.hu %d14, %d14, %d0

# CHECK-INST: min.hu %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x90,0xe7]
.code32
min.hu %d14, %d14, %d1

# CHECK-INST: min.hu %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x90,0xe7]
.code32
min.hu %d14, %d14, %d14

# CHECK-INST: min.hu %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x90,0xe7]
.code32
min.hu %d14, %d14, %d15

# CHECK-INST: min.hu %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x90,0xe7]
.code32
min.hu %d14, %d15, %d0

# CHECK-INST: min.hu %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x90,0xe7]
.code32
min.hu %d14, %d15, %d1

# CHECK-INST: min.hu %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x90,0xe7]
.code32
min.hu %d14, %d15, %d14

# CHECK-INST: min.hu %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x90,0xe7]
.code32
min.hu %d14, %d15, %d15

# CHECK-INST: min.hu %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x90,0xf7]
.code32
min.hu %d15, %d0, %d0

# CHECK-INST: min.hu %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x90,0xf7]
.code32
min.hu %d15, %d0, %d1

# CHECK-INST: min.hu %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x90,0xf7]
.code32
min.hu %d15, %d0, %d14

# CHECK-INST: min.hu %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x90,0xf7]
.code32
min.hu %d15, %d0, %d15

# CHECK-INST: min.hu %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x90,0xf7]
.code32
min.hu %d15, %d1, %d0

# CHECK-INST: min.hu %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x90,0xf7]
.code32
min.hu %d15, %d1, %d1

# CHECK-INST: min.hu %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x90,0xf7]
.code32
min.hu %d15, %d1, %d14

# CHECK-INST: min.hu %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x90,0xf7]
.code32
min.hu %d15, %d1, %d15

# CHECK-INST: min.hu %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x90,0xf7]
.code32
min.hu %d15, %d14, %d0

# CHECK-INST: min.hu %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x90,0xf7]
.code32
min.hu %d15, %d14, %d1

# CHECK-INST: min.hu %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x90,0xf7]
.code32
min.hu %d15, %d14, %d14

# CHECK-INST: min.hu %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x90,0xf7]
.code32
min.hu %d15, %d14, %d15

# CHECK-INST: min.hu %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x90,0xf7]
.code32
min.hu %d15, %d15, %d0

# CHECK-INST: min.hu %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x90,0xf7]
.code32
min.hu %d15, %d15, %d1

# CHECK-INST: min.hu %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x90,0xf7]
.code32
min.hu %d15, %d15, %d14

# CHECK-INST: min.hu %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x90,0xf7]
.code32
min.hu %d15, %d15, %d15

# CHECK-INST: sh.h %d0, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0x00,0x04]
sh.h %d0, %d0, %d0

# CHECK-INST: sh.h %d0, %d0, %d1
# CHECK: encoding: [0x0f,0x10,0x00,0x04]
sh.h %d0, %d0, %d1

# CHECK-INST: sh.h %d0, %d0, %d14
# CHECK: encoding: [0x0f,0xe0,0x00,0x04]
sh.h %d0, %d0, %d14

# CHECK-INST: sh.h %d0, %d0, %d15
# CHECK: encoding: [0x0f,0xf0,0x00,0x04]
sh.h %d0, %d0, %d15

# CHECK-INST: sh.h %d0, %d1, %d0
# CHECK: encoding: [0x0f,0x01,0x00,0x04]
sh.h %d0, %d1, %d0

# CHECK-INST: sh.h %d0, %d1, %d1
# CHECK: encoding: [0x0f,0x11,0x00,0x04]
sh.h %d0, %d1, %d1

# CHECK-INST: sh.h %d0, %d1, %d14
# CHECK: encoding: [0x0f,0xe1,0x00,0x04]
sh.h %d0, %d1, %d14

# CHECK-INST: sh.h %d0, %d1, %d15
# CHECK: encoding: [0x0f,0xf1,0x00,0x04]
sh.h %d0, %d1, %d15

# CHECK-INST: sh.h %d0, %d14, %d0
# CHECK: encoding: [0x0f,0x0e,0x00,0x04]
sh.h %d0, %d14, %d0

# CHECK-INST: sh.h %d0, %d14, %d1
# CHECK: encoding: [0x0f,0x1e,0x00,0x04]
sh.h %d0, %d14, %d1

# CHECK-INST: sh.h %d0, %d14, %d14
# CHECK: encoding: [0x0f,0xee,0x00,0x04]
sh.h %d0, %d14, %d14

# CHECK-INST: sh.h %d0, %d14, %d15
# CHECK: encoding: [0x0f,0xfe,0x00,0x04]
sh.h %d0, %d14, %d15

# CHECK-INST: sh.h %d0, %d15, %d0
# CHECK: encoding: [0x0f,0x0f,0x00,0x04]
sh.h %d0, %d15, %d0

# CHECK-INST: sh.h %d0, %d15, %d1
# CHECK: encoding: [0x0f,0x1f,0x00,0x04]
sh.h %d0, %d15, %d1

# CHECK-INST: sh.h %d0, %d15, %d14
# CHECK: encoding: [0x0f,0xef,0x00,0x04]
sh.h %d0, %d15, %d14

# CHECK-INST: sh.h %d0, %d15, %d15
# CHECK: encoding: [0x0f,0xff,0x00,0x04]
sh.h %d0, %d15, %d15

# CHECK-INST: sh.h %d1, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0x00,0x14]
sh.h %d1, %d0, %d0

# CHECK-INST: sh.h %d1, %d0, %d1
# CHECK: encoding: [0x0f,0x10,0x00,0x14]
sh.h %d1, %d0, %d1

# CHECK-INST: sh.h %d1, %d0, %d14
# CHECK: encoding: [0x0f,0xe0,0x00,0x14]
sh.h %d1, %d0, %d14

# CHECK-INST: sh.h %d1, %d0, %d15
# CHECK: encoding: [0x0f,0xf0,0x00,0x14]
sh.h %d1, %d0, %d15

# CHECK-INST: sh.h %d1, %d1, %d0
# CHECK: encoding: [0x0f,0x01,0x00,0x14]
sh.h %d1, %d1, %d0

# CHECK-INST: sh.h %d1, %d1, %d1
# CHECK: encoding: [0x0f,0x11,0x00,0x14]
sh.h %d1, %d1, %d1

# CHECK-INST: sh.h %d1, %d1, %d14
# CHECK: encoding: [0x0f,0xe1,0x00,0x14]
sh.h %d1, %d1, %d14

# CHECK-INST: sh.h %d1, %d1, %d15
# CHECK: encoding: [0x0f,0xf1,0x00,0x14]
sh.h %d1, %d1, %d15

# CHECK-INST: sh.h %d1, %d14, %d0
# CHECK: encoding: [0x0f,0x0e,0x00,0x14]
sh.h %d1, %d14, %d0

# CHECK-INST: sh.h %d1, %d14, %d1
# CHECK: encoding: [0x0f,0x1e,0x00,0x14]
sh.h %d1, %d14, %d1

# CHECK-INST: sh.h %d1, %d14, %d14
# CHECK: encoding: [0x0f,0xee,0x00,0x14]
sh.h %d1, %d14, %d14

# CHECK-INST: sh.h %d1, %d14, %d15
# CHECK: encoding: [0x0f,0xfe,0x00,0x14]
sh.h %d1, %d14, %d15

# CHECK-INST: sh.h %d1, %d15, %d0
# CHECK: encoding: [0x0f,0x0f,0x00,0x14]
sh.h %d1, %d15, %d0

# CHECK-INST: sh.h %d1, %d15, %d1
# CHECK: encoding: [0x0f,0x1f,0x00,0x14]
sh.h %d1, %d15, %d1

# CHECK-INST: sh.h %d1, %d15, %d14
# CHECK: encoding: [0x0f,0xef,0x00,0x14]
sh.h %d1, %d15, %d14

# CHECK-INST: sh.h %d1, %d15, %d15
# CHECK: encoding: [0x0f,0xff,0x00,0x14]
sh.h %d1, %d15, %d15

# CHECK-INST: sh.h %d14, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0x00,0xe4]
sh.h %d14, %d0, %d0

# CHECK-INST: sh.h %d14, %d0, %d1
# CHECK: encoding: [0x0f,0x10,0x00,0xe4]
sh.h %d14, %d0, %d1

# CHECK-INST: sh.h %d14, %d0, %d14
# CHECK: encoding: [0x0f,0xe0,0x00,0xe4]
sh.h %d14, %d0, %d14

# CHECK-INST: sh.h %d14, %d0, %d15
# CHECK: encoding: [0x0f,0xf0,0x00,0xe4]
sh.h %d14, %d0, %d15

# CHECK-INST: sh.h %d14, %d1, %d0
# CHECK: encoding: [0x0f,0x01,0x00,0xe4]
sh.h %d14, %d1, %d0

# CHECK-INST: sh.h %d14, %d1, %d1
# CHECK: encoding: [0x0f,0x11,0x00,0xe4]
sh.h %d14, %d1, %d1

# CHECK-INST: sh.h %d14, %d1, %d14
# CHECK: encoding: [0x0f,0xe1,0x00,0xe4]
sh.h %d14, %d1, %d14

# CHECK-INST: sh.h %d14, %d1, %d15
# CHECK: encoding: [0x0f,0xf1,0x00,0xe4]
sh.h %d14, %d1, %d15

# CHECK-INST: sh.h %d14, %d14, %d0
# CHECK: encoding: [0x0f,0x0e,0x00,0xe4]
sh.h %d14, %d14, %d0

# CHECK-INST: sh.h %d14, %d14, %d1
# CHECK: encoding: [0x0f,0x1e,0x00,0xe4]
sh.h %d14, %d14, %d1

# CHECK-INST: sh.h %d14, %d14, %d14
# CHECK: encoding: [0x0f,0xee,0x00,0xe4]
sh.h %d14, %d14, %d14

# CHECK-INST: sh.h %d14, %d14, %d15
# CHECK: encoding: [0x0f,0xfe,0x00,0xe4]
sh.h %d14, %d14, %d15

# CHECK-INST: sh.h %d14, %d15, %d0
# CHECK: encoding: [0x0f,0x0f,0x00,0xe4]
sh.h %d14, %d15, %d0

# CHECK-INST: sh.h %d14, %d15, %d1
# CHECK: encoding: [0x0f,0x1f,0x00,0xe4]
sh.h %d14, %d15, %d1

# CHECK-INST: sh.h %d14, %d15, %d14
# CHECK: encoding: [0x0f,0xef,0x00,0xe4]
sh.h %d14, %d15, %d14

# CHECK-INST: sh.h %d14, %d15, %d15
# CHECK: encoding: [0x0f,0xff,0x00,0xe4]
sh.h %d14, %d15, %d15

# CHECK-INST: sh.h %d15, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0x00,0xf4]
sh.h %d15, %d0, %d0

# CHECK-INST: sh.h %d15, %d0, %d1
# CHECK: encoding: [0x0f,0x10,0x00,0xf4]
sh.h %d15, %d0, %d1

# CHECK-INST: sh.h %d15, %d0, %d14
# CHECK: encoding: [0x0f,0xe0,0x00,0xf4]
sh.h %d15, %d0, %d14

# CHECK-INST: sh.h %d15, %d0, %d15
# CHECK: encoding: [0x0f,0xf0,0x00,0xf4]
sh.h %d15, %d0, %d15

# CHECK-INST: sh.h %d15, %d1, %d0
# CHECK: encoding: [0x0f,0x01,0x00,0xf4]
sh.h %d15, %d1, %d0

# CHECK-INST: sh.h %d15, %d1, %d1
# CHECK: encoding: [0x0f,0x11,0x00,0xf4]
sh.h %d15, %d1, %d1

# CHECK-INST: sh.h %d15, %d1, %d14
# CHECK: encoding: [0x0f,0xe1,0x00,0xf4]
sh.h %d15, %d1, %d14

# CHECK-INST: sh.h %d15, %d1, %d15
# CHECK: encoding: [0x0f,0xf1,0x00,0xf4]
sh.h %d15, %d1, %d15

# CHECK-INST: sh.h %d15, %d14, %d0
# CHECK: encoding: [0x0f,0x0e,0x00,0xf4]
sh.h %d15, %d14, %d0

# CHECK-INST: sh.h %d15, %d14, %d1
# CHECK: encoding: [0x0f,0x1e,0x00,0xf4]
sh.h %d15, %d14, %d1

# CHECK-INST: sh.h %d15, %d14, %d14
# CHECK: encoding: [0x0f,0xee,0x00,0xf4]
sh.h %d15, %d14, %d14

# CHECK-INST: sh.h %d15, %d14, %d15
# CHECK: encoding: [0x0f,0xfe,0x00,0xf4]
sh.h %d15, %d14, %d15

# CHECK-INST: sh.h %d15, %d15, %d0
# CHECK: encoding: [0x0f,0x0f,0x00,0xf4]
sh.h %d15, %d15, %d0

# CHECK-INST: sh.h %d15, %d15, %d1
# CHECK: encoding: [0x0f,0x1f,0x00,0xf4]
sh.h %d15, %d15, %d1

# CHECK-INST: sh.h %d15, %d15, %d14
# CHECK: encoding: [0x0f,0xef,0x00,0xf4]
sh.h %d15, %d15, %d14

# CHECK-INST: sh.h %d15, %d15, %d15
# CHECK: encoding: [0x0f,0xff,0x00,0xf4]
sh.h %d15, %d15, %d15

# CHECK-INST: sh.h %d0, %d0, -16
# CHECK: encoding: [0x8f,0x00,0x1f,0x08]
.code32
sh.h %d0, %d0, -16

# CHECK-INST: sh.h %d0, %d0, -15
# CHECK: encoding: [0x8f,0x10,0x1f,0x08]
.code32
sh.h %d0, %d0, -15

# CHECK-INST: sh.h %d0, %d0, -2
# CHECK: encoding: [0x8f,0xe0,0x1f,0x08]
.code32
sh.h %d0, %d0, -2

# CHECK-INST: sh.h %d0, %d0, -1
# CHECK: encoding: [0x8f,0xf0,0x1f,0x08]
.code32
sh.h %d0, %d0, -1

# CHECK-INST: sh.h %d0, %d0, 0
# CHECK: encoding: [0x8f,0x00,0x00,0x08]
.code32
sh.h %d0, %d0, 0

# CHECK-INST: sh.h %d0, %d0, 1
# CHECK: encoding: [0x8f,0x10,0x00,0x08]
.code32
sh.h %d0, %d0, 1

# CHECK-INST: sh.h %d0, %d0, 14
# CHECK: encoding: [0x8f,0xe0,0x00,0x08]
.code32
sh.h %d0, %d0, 14

# CHECK-INST: sh.h %d0, %d0, 15
# CHECK: encoding: [0x8f,0xf0,0x00,0x08]
.code32
sh.h %d0, %d0, 15

# CHECK-INST: sh.h %d0, %d1, -16
# CHECK: encoding: [0x8f,0x01,0x1f,0x08]
.code32
sh.h %d0, %d1, -16

# CHECK-INST: sh.h %d0, %d1, -15
# CHECK: encoding: [0x8f,0x11,0x1f,0x08]
.code32
sh.h %d0, %d1, -15

# CHECK-INST: sh.h %d0, %d1, -2
# CHECK: encoding: [0x8f,0xe1,0x1f,0x08]
.code32
sh.h %d0, %d1, -2

# CHECK-INST: sh.h %d0, %d1, -1
# CHECK: encoding: [0x8f,0xf1,0x1f,0x08]
.code32
sh.h %d0, %d1, -1

# CHECK-INST: sh.h %d0, %d1, 0
# CHECK: encoding: [0x8f,0x01,0x00,0x08]
.code32
sh.h %d0, %d1, 0

# CHECK-INST: sh.h %d0, %d1, 1
# CHECK: encoding: [0x8f,0x11,0x00,0x08]
.code32
sh.h %d0, %d1, 1

# CHECK-INST: sh.h %d0, %d1, 14
# CHECK: encoding: [0x8f,0xe1,0x00,0x08]
.code32
sh.h %d0, %d1, 14

# CHECK-INST: sh.h %d0, %d1, 15
# CHECK: encoding: [0x8f,0xf1,0x00,0x08]
.code32
sh.h %d0, %d1, 15

# CHECK-INST: sh.h %d0, %d14, -16
# CHECK: encoding: [0x8f,0x0e,0x1f,0x08]
.code32
sh.h %d0, %d14, -16

# CHECK-INST: sh.h %d0, %d14, -15
# CHECK: encoding: [0x8f,0x1e,0x1f,0x08]
.code32
sh.h %d0, %d14, -15

# CHECK-INST: sh.h %d0, %d14, -2
# CHECK: encoding: [0x8f,0xee,0x1f,0x08]
.code32
sh.h %d0, %d14, -2

# CHECK-INST: sh.h %d0, %d14, -1
# CHECK: encoding: [0x8f,0xfe,0x1f,0x08]
.code32
sh.h %d0, %d14, -1

# CHECK-INST: sh.h %d0, %d14, 0
# CHECK: encoding: [0x8f,0x0e,0x00,0x08]
.code32
sh.h %d0, %d14, 0

# CHECK-INST: sh.h %d0, %d14, 1
# CHECK: encoding: [0x8f,0x1e,0x00,0x08]
.code32
sh.h %d0, %d14, 1

# CHECK-INST: sh.h %d0, %d14, 14
# CHECK: encoding: [0x8f,0xee,0x00,0x08]
.code32
sh.h %d0, %d14, 14

# CHECK-INST: sh.h %d0, %d14, 15
# CHECK: encoding: [0x8f,0xfe,0x00,0x08]
.code32
sh.h %d0, %d14, 15

# CHECK-INST: sh.h %d0, %d15, -16
# CHECK: encoding: [0x8f,0x0f,0x1f,0x08]
.code32
sh.h %d0, %d15, -16

# CHECK-INST: sh.h %d0, %d15, -15
# CHECK: encoding: [0x8f,0x1f,0x1f,0x08]
.code32
sh.h %d0, %d15, -15

# CHECK-INST: sh.h %d0, %d15, -2
# CHECK: encoding: [0x8f,0xef,0x1f,0x08]
.code32
sh.h %d0, %d15, -2

# CHECK-INST: sh.h %d0, %d15, -1
# CHECK: encoding: [0x8f,0xff,0x1f,0x08]
.code32
sh.h %d0, %d15, -1

# CHECK-INST: sh.h %d0, %d15, 0
# CHECK: encoding: [0x8f,0x0f,0x00,0x08]
.code32
sh.h %d0, %d15, 0

# CHECK-INST: sh.h %d0, %d15, 1
# CHECK: encoding: [0x8f,0x1f,0x00,0x08]
.code32
sh.h %d0, %d15, 1

# CHECK-INST: sh.h %d0, %d15, 14
# CHECK: encoding: [0x8f,0xef,0x00,0x08]
.code32
sh.h %d0, %d15, 14

# CHECK-INST: sh.h %d0, %d15, 15
# CHECK: encoding: [0x8f,0xff,0x00,0x08]
.code32
sh.h %d0, %d15, 15

# CHECK-INST: sh.h %d1, %d0, -16
# CHECK: encoding: [0x8f,0x00,0x1f,0x18]
.code32
sh.h %d1, %d0, -16

# CHECK-INST: sh.h %d1, %d0, -15
# CHECK: encoding: [0x8f,0x10,0x1f,0x18]
.code32
sh.h %d1, %d0, -15

# CHECK-INST: sh.h %d1, %d0, -2
# CHECK: encoding: [0x8f,0xe0,0x1f,0x18]
.code32
sh.h %d1, %d0, -2

# CHECK-INST: sh.h %d1, %d0, -1
# CHECK: encoding: [0x8f,0xf0,0x1f,0x18]
.code32
sh.h %d1, %d0, -1

# CHECK-INST: sh.h %d1, %d0, 0
# CHECK: encoding: [0x8f,0x00,0x00,0x18]
.code32
sh.h %d1, %d0, 0

# CHECK-INST: sh.h %d1, %d0, 1
# CHECK: encoding: [0x8f,0x10,0x00,0x18]
.code32
sh.h %d1, %d0, 1

# CHECK-INST: sh.h %d1, %d0, 14
# CHECK: encoding: [0x8f,0xe0,0x00,0x18]
.code32
sh.h %d1, %d0, 14

# CHECK-INST: sh.h %d1, %d0, 15
# CHECK: encoding: [0x8f,0xf0,0x00,0x18]
.code32
sh.h %d1, %d0, 15

# CHECK-INST: sh.h %d1, %d1, -16
# CHECK: encoding: [0x8f,0x01,0x1f,0x18]
.code32
sh.h %d1, %d1, -16

# CHECK-INST: sh.h %d1, %d1, -15
# CHECK: encoding: [0x8f,0x11,0x1f,0x18]
.code32
sh.h %d1, %d1, -15

# CHECK-INST: sh.h %d1, %d1, -2
# CHECK: encoding: [0x8f,0xe1,0x1f,0x18]
.code32
sh.h %d1, %d1, -2

# CHECK-INST: sh.h %d1, %d1, -1
# CHECK: encoding: [0x8f,0xf1,0x1f,0x18]
.code32
sh.h %d1, %d1, -1

# CHECK-INST: sh.h %d1, %d1, 0
# CHECK: encoding: [0x8f,0x01,0x00,0x18]
.code32
sh.h %d1, %d1, 0

# CHECK-INST: sh.h %d1, %d1, 1
# CHECK: encoding: [0x8f,0x11,0x00,0x18]
.code32
sh.h %d1, %d1, 1

# CHECK-INST: sh.h %d1, %d1, 14
# CHECK: encoding: [0x8f,0xe1,0x00,0x18]
.code32
sh.h %d1, %d1, 14

# CHECK-INST: sh.h %d1, %d1, 15
# CHECK: encoding: [0x8f,0xf1,0x00,0x18]
.code32
sh.h %d1, %d1, 15

# CHECK-INST: sh.h %d1, %d14, -16
# CHECK: encoding: [0x8f,0x0e,0x1f,0x18]
.code32
sh.h %d1, %d14, -16

# CHECK-INST: sh.h %d1, %d14, -15
# CHECK: encoding: [0x8f,0x1e,0x1f,0x18]
.code32
sh.h %d1, %d14, -15

# CHECK-INST: sh.h %d1, %d14, -2
# CHECK: encoding: [0x8f,0xee,0x1f,0x18]
.code32
sh.h %d1, %d14, -2

# CHECK-INST: sh.h %d1, %d14, -1
# CHECK: encoding: [0x8f,0xfe,0x1f,0x18]
.code32
sh.h %d1, %d14, -1

# CHECK-INST: sh.h %d1, %d14, 0
# CHECK: encoding: [0x8f,0x0e,0x00,0x18]
.code32
sh.h %d1, %d14, 0

# CHECK-INST: sh.h %d1, %d14, 1
# CHECK: encoding: [0x8f,0x1e,0x00,0x18]
.code32
sh.h %d1, %d14, 1

# CHECK-INST: sh.h %d1, %d14, 14
# CHECK: encoding: [0x8f,0xee,0x00,0x18]
.code32
sh.h %d1, %d14, 14

# CHECK-INST: sh.h %d1, %d14, 15
# CHECK: encoding: [0x8f,0xfe,0x00,0x18]
.code32
sh.h %d1, %d14, 15

# CHECK-INST: sh.h %d1, %d15, -16
# CHECK: encoding: [0x8f,0x0f,0x1f,0x18]
.code32
sh.h %d1, %d15, -16

# CHECK-INST: sh.h %d1, %d15, -15
# CHECK: encoding: [0x8f,0x1f,0x1f,0x18]
.code32
sh.h %d1, %d15, -15

# CHECK-INST: sh.h %d1, %d15, -2
# CHECK: encoding: [0x8f,0xef,0x1f,0x18]
.code32
sh.h %d1, %d15, -2

# CHECK-INST: sh.h %d1, %d15, -1
# CHECK: encoding: [0x8f,0xff,0x1f,0x18]
.code32
sh.h %d1, %d15, -1

# CHECK-INST: sh.h %d1, %d15, 0
# CHECK: encoding: [0x8f,0x0f,0x00,0x18]
.code32
sh.h %d1, %d15, 0

# CHECK-INST: sh.h %d1, %d15, 1
# CHECK: encoding: [0x8f,0x1f,0x00,0x18]
.code32
sh.h %d1, %d15, 1

# CHECK-INST: sh.h %d1, %d15, 14
# CHECK: encoding: [0x8f,0xef,0x00,0x18]
.code32
sh.h %d1, %d15, 14

# CHECK-INST: sh.h %d1, %d15, 15
# CHECK: encoding: [0x8f,0xff,0x00,0x18]
.code32
sh.h %d1, %d15, 15

# CHECK-INST: sh.h %d14, %d0, -16
# CHECK: encoding: [0x8f,0x00,0x1f,0xe8]
.code32
sh.h %d14, %d0, -16

# CHECK-INST: sh.h %d14, %d0, -15
# CHECK: encoding: [0x8f,0x10,0x1f,0xe8]
.code32
sh.h %d14, %d0, -15

# CHECK-INST: sh.h %d14, %d0, -2
# CHECK: encoding: [0x8f,0xe0,0x1f,0xe8]
.code32
sh.h %d14, %d0, -2

# CHECK-INST: sh.h %d14, %d0, -1
# CHECK: encoding: [0x8f,0xf0,0x1f,0xe8]
.code32
sh.h %d14, %d0, -1

# CHECK-INST: sh.h %d14, %d0, 0
# CHECK: encoding: [0x8f,0x00,0x00,0xe8]
.code32
sh.h %d14, %d0, 0

# CHECK-INST: sh.h %d14, %d0, 1
# CHECK: encoding: [0x8f,0x10,0x00,0xe8]
.code32
sh.h %d14, %d0, 1

# CHECK-INST: sh.h %d14, %d0, 14
# CHECK: encoding: [0x8f,0xe0,0x00,0xe8]
.code32
sh.h %d14, %d0, 14

# CHECK-INST: sh.h %d14, %d0, 15
# CHECK: encoding: [0x8f,0xf0,0x00,0xe8]
.code32
sh.h %d14, %d0, 15

# CHECK-INST: sh.h %d14, %d1, -16
# CHECK: encoding: [0x8f,0x01,0x1f,0xe8]
.code32
sh.h %d14, %d1, -16

# CHECK-INST: sh.h %d14, %d1, -15
# CHECK: encoding: [0x8f,0x11,0x1f,0xe8]
.code32
sh.h %d14, %d1, -15

# CHECK-INST: sh.h %d14, %d1, -2
# CHECK: encoding: [0x8f,0xe1,0x1f,0xe8]
.code32
sh.h %d14, %d1, -2

# CHECK-INST: sh.h %d14, %d1, -1
# CHECK: encoding: [0x8f,0xf1,0x1f,0xe8]
.code32
sh.h %d14, %d1, -1

# CHECK-INST: sh.h %d14, %d1, 0
# CHECK: encoding: [0x8f,0x01,0x00,0xe8]
.code32
sh.h %d14, %d1, 0

# CHECK-INST: sh.h %d14, %d1, 1
# CHECK: encoding: [0x8f,0x11,0x00,0xe8]
.code32
sh.h %d14, %d1, 1

# CHECK-INST: sh.h %d14, %d1, 14
# CHECK: encoding: [0x8f,0xe1,0x00,0xe8]
.code32
sh.h %d14, %d1, 14

# CHECK-INST: sh.h %d14, %d1, 15
# CHECK: encoding: [0x8f,0xf1,0x00,0xe8]
.code32
sh.h %d14, %d1, 15

# CHECK-INST: sh.h %d14, %d14, -16
# CHECK: encoding: [0x8f,0x0e,0x1f,0xe8]
.code32
sh.h %d14, %d14, -16

# CHECK-INST: sh.h %d14, %d14, -15
# CHECK: encoding: [0x8f,0x1e,0x1f,0xe8]
.code32
sh.h %d14, %d14, -15

# CHECK-INST: sh.h %d14, %d14, -2
# CHECK: encoding: [0x8f,0xee,0x1f,0xe8]
.code32
sh.h %d14, %d14, -2

# CHECK-INST: sh.h %d14, %d14, -1
# CHECK: encoding: [0x8f,0xfe,0x1f,0xe8]
.code32
sh.h %d14, %d14, -1

# CHECK-INST: sh.h %d14, %d14, 0
# CHECK: encoding: [0x8f,0x0e,0x00,0xe8]
.code32
sh.h %d14, %d14, 0

# CHECK-INST: sh.h %d14, %d14, 1
# CHECK: encoding: [0x8f,0x1e,0x00,0xe8]
.code32
sh.h %d14, %d14, 1

# CHECK-INST: sh.h %d14, %d14, 14
# CHECK: encoding: [0x8f,0xee,0x00,0xe8]
.code32
sh.h %d14, %d14, 14

# CHECK-INST: sh.h %d14, %d14, 15
# CHECK: encoding: [0x8f,0xfe,0x00,0xe8]
.code32
sh.h %d14, %d14, 15

# CHECK-INST: sh.h %d14, %d15, -16
# CHECK: encoding: [0x8f,0x0f,0x1f,0xe8]
.code32
sh.h %d14, %d15, -16

# CHECK-INST: sh.h %d14, %d15, -15
# CHECK: encoding: [0x8f,0x1f,0x1f,0xe8]
.code32
sh.h %d14, %d15, -15

# CHECK-INST: sh.h %d14, %d15, -2
# CHECK: encoding: [0x8f,0xef,0x1f,0xe8]
.code32
sh.h %d14, %d15, -2

# CHECK-INST: sh.h %d14, %d15, -1
# CHECK: encoding: [0x8f,0xff,0x1f,0xe8]
.code32
sh.h %d14, %d15, -1

# CHECK-INST: sh.h %d14, %d15, 0
# CHECK: encoding: [0x8f,0x0f,0x00,0xe8]
.code32
sh.h %d14, %d15, 0

# CHECK-INST: sh.h %d14, %d15, 1
# CHECK: encoding: [0x8f,0x1f,0x00,0xe8]
.code32
sh.h %d14, %d15, 1

# CHECK-INST: sh.h %d14, %d15, 14
# CHECK: encoding: [0x8f,0xef,0x00,0xe8]
.code32
sh.h %d14, %d15, 14

# CHECK-INST: sh.h %d14, %d15, 15
# CHECK: encoding: [0x8f,0xff,0x00,0xe8]
.code32
sh.h %d14, %d15, 15

# CHECK-INST: sh.h %d15, %d0, -16
# CHECK: encoding: [0x8f,0x00,0x1f,0xf8]
.code32
sh.h %d15, %d0, -16

# CHECK-INST: sh.h %d15, %d0, -15
# CHECK: encoding: [0x8f,0x10,0x1f,0xf8]
.code32
sh.h %d15, %d0, -15

# CHECK-INST: sh.h %d15, %d0, -2
# CHECK: encoding: [0x8f,0xe0,0x1f,0xf8]
.code32
sh.h %d15, %d0, -2

# CHECK-INST: sh.h %d15, %d0, -1
# CHECK: encoding: [0x8f,0xf0,0x1f,0xf8]
.code32
sh.h %d15, %d0, -1

# CHECK-INST: sh.h %d15, %d0, 0
# CHECK: encoding: [0x8f,0x00,0x00,0xf8]
.code32
sh.h %d15, %d0, 0

# CHECK-INST: sh.h %d15, %d0, 1
# CHECK: encoding: [0x8f,0x10,0x00,0xf8]
.code32
sh.h %d15, %d0, 1

# CHECK-INST: sh.h %d15, %d0, 14
# CHECK: encoding: [0x8f,0xe0,0x00,0xf8]
.code32
sh.h %d15, %d0, 14

# CHECK-INST: sh.h %d15, %d0, 15
# CHECK: encoding: [0x8f,0xf0,0x00,0xf8]
.code32
sh.h %d15, %d0, 15

# CHECK-INST: sh.h %d15, %d1, -16
# CHECK: encoding: [0x8f,0x01,0x1f,0xf8]
.code32
sh.h %d15, %d1, -16

# CHECK-INST: sh.h %d15, %d1, -15
# CHECK: encoding: [0x8f,0x11,0x1f,0xf8]
.code32
sh.h %d15, %d1, -15

# CHECK-INST: sh.h %d15, %d1, -2
# CHECK: encoding: [0x8f,0xe1,0x1f,0xf8]
.code32
sh.h %d15, %d1, -2

# CHECK-INST: sh.h %d15, %d1, -1
# CHECK: encoding: [0x8f,0xf1,0x1f,0xf8]
.code32
sh.h %d15, %d1, -1

# CHECK-INST: sh.h %d15, %d1, 0
# CHECK: encoding: [0x8f,0x01,0x00,0xf8]
.code32
sh.h %d15, %d1, 0

# CHECK-INST: sh.h %d15, %d1, 1
# CHECK: encoding: [0x8f,0x11,0x00,0xf8]
.code32
sh.h %d15, %d1, 1

# CHECK-INST: sh.h %d15, %d1, 14
# CHECK: encoding: [0x8f,0xe1,0x00,0xf8]
.code32
sh.h %d15, %d1, 14

# CHECK-INST: sh.h %d15, %d1, 15
# CHECK: encoding: [0x8f,0xf1,0x00,0xf8]
.code32
sh.h %d15, %d1, 15

# CHECK-INST: sh.h %d15, %d14, -16
# CHECK: encoding: [0x8f,0x0e,0x1f,0xf8]
.code32
sh.h %d15, %d14, -16

# CHECK-INST: sh.h %d15, %d14, -15
# CHECK: encoding: [0x8f,0x1e,0x1f,0xf8]
.code32
sh.h %d15, %d14, -15

# CHECK-INST: sh.h %d15, %d14, -2
# CHECK: encoding: [0x8f,0xee,0x1f,0xf8]
.code32
sh.h %d15, %d14, -2

# CHECK-INST: sh.h %d15, %d14, -1
# CHECK: encoding: [0x8f,0xfe,0x1f,0xf8]
.code32
sh.h %d15, %d14, -1

# CHECK-INST: sh.h %d15, %d14, 0
# CHECK: encoding: [0x8f,0x0e,0x00,0xf8]
.code32
sh.h %d15, %d14, 0

# CHECK-INST: sh.h %d15, %d14, 1
# CHECK: encoding: [0x8f,0x1e,0x00,0xf8]
.code32
sh.h %d15, %d14, 1

# CHECK-INST: sh.h %d15, %d14, 14
# CHECK: encoding: [0x8f,0xee,0x00,0xf8]
.code32
sh.h %d15, %d14, 14

# CHECK-INST: sh.h %d15, %d14, 15
# CHECK: encoding: [0x8f,0xfe,0x00,0xf8]
.code32
sh.h %d15, %d14, 15

# CHECK-INST: sh.h %d15, %d15, -16
# CHECK: encoding: [0x8f,0x0f,0x1f,0xf8]
.code32
sh.h %d15, %d15, -16

# CHECK-INST: sh.h %d15, %d15, -15
# CHECK: encoding: [0x8f,0x1f,0x1f,0xf8]
.code32
sh.h %d15, %d15, -15

# CHECK-INST: sh.h %d15, %d15, -2
# CHECK: encoding: [0x8f,0xef,0x1f,0xf8]
.code32
sh.h %d15, %d15, -2

# CHECK-INST: sh.h %d15, %d15, -1
# CHECK: encoding: [0x8f,0xff,0x1f,0xf8]
.code32
sh.h %d15, %d15, -1

# CHECK-INST: sh.h %d15, %d15, 0
# CHECK: encoding: [0x8f,0x0f,0x00,0xf8]
.code32
sh.h %d15, %d15, 0

# CHECK-INST: sh.h %d15, %d15, 1
# CHECK: encoding: [0x8f,0x1f,0x00,0xf8]
.code32
sh.h %d15, %d15, 1

# CHECK-INST: sh.h %d15, %d15, 14
# CHECK: encoding: [0x8f,0xef,0x00,0xf8]
.code32
sh.h %d15, %d15, 14

# CHECK-INST: sh.h %d15, %d15, 15
# CHECK: encoding: [0x8f,0xff,0x00,0xf8]
.code32
sh.h %d15, %d15, 15

# CHECK-INST: sha.h %d0, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0x10,0x04]
sha.h %d0, %d0, %d0

# CHECK-INST: sha.h %d0, %d0, %d1
# CHECK: encoding: [0x0f,0x10,0x10,0x04]
sha.h %d0, %d0, %d1

# CHECK-INST: sha.h %d0, %d0, %d14
# CHECK: encoding: [0x0f,0xe0,0x10,0x04]
sha.h %d0, %d0, %d14

# CHECK-INST: sha.h %d0, %d0, %d15
# CHECK: encoding: [0x0f,0xf0,0x10,0x04]
sha.h %d0, %d0, %d15

# CHECK-INST: sha.h %d0, %d1, %d0
# CHECK: encoding: [0x0f,0x01,0x10,0x04]
sha.h %d0, %d1, %d0

# CHECK-INST: sha.h %d0, %d1, %d1
# CHECK: encoding: [0x0f,0x11,0x10,0x04]
sha.h %d0, %d1, %d1

# CHECK-INST: sha.h %d0, %d1, %d14
# CHECK: encoding: [0x0f,0xe1,0x10,0x04]
sha.h %d0, %d1, %d14

# CHECK-INST: sha.h %d0, %d1, %d15
# CHECK: encoding: [0x0f,0xf1,0x10,0x04]
sha.h %d0, %d1, %d15

# CHECK-INST: sha.h %d0, %d14, %d0
# CHECK: encoding: [0x0f,0x0e,0x10,0x04]
sha.h %d0, %d14, %d0

# CHECK-INST: sha.h %d0, %d14, %d1
# CHECK: encoding: [0x0f,0x1e,0x10,0x04]
sha.h %d0, %d14, %d1

# CHECK-INST: sha.h %d0, %d14, %d14
# CHECK: encoding: [0x0f,0xee,0x10,0x04]
sha.h %d0, %d14, %d14

# CHECK-INST: sha.h %d0, %d14, %d15
# CHECK: encoding: [0x0f,0xfe,0x10,0x04]
sha.h %d0, %d14, %d15

# CHECK-INST: sha.h %d0, %d15, %d0
# CHECK: encoding: [0x0f,0x0f,0x10,0x04]
sha.h %d0, %d15, %d0

# CHECK-INST: sha.h %d0, %d15, %d1
# CHECK: encoding: [0x0f,0x1f,0x10,0x04]
sha.h %d0, %d15, %d1

# CHECK-INST: sha.h %d0, %d15, %d14
# CHECK: encoding: [0x0f,0xef,0x10,0x04]
sha.h %d0, %d15, %d14

# CHECK-INST: sha.h %d0, %d15, %d15
# CHECK: encoding: [0x0f,0xff,0x10,0x04]
sha.h %d0, %d15, %d15

# CHECK-INST: sha.h %d1, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0x10,0x14]
sha.h %d1, %d0, %d0

# CHECK-INST: sha.h %d1, %d0, %d1
# CHECK: encoding: [0x0f,0x10,0x10,0x14]
sha.h %d1, %d0, %d1

# CHECK-INST: sha.h %d1, %d0, %d14
# CHECK: encoding: [0x0f,0xe0,0x10,0x14]
sha.h %d1, %d0, %d14

# CHECK-INST: sha.h %d1, %d0, %d15
# CHECK: encoding: [0x0f,0xf0,0x10,0x14]
sha.h %d1, %d0, %d15

# CHECK-INST: sha.h %d1, %d1, %d0
# CHECK: encoding: [0x0f,0x01,0x10,0x14]
sha.h %d1, %d1, %d0

# CHECK-INST: sha.h %d1, %d1, %d1
# CHECK: encoding: [0x0f,0x11,0x10,0x14]
sha.h %d1, %d1, %d1

# CHECK-INST: sha.h %d1, %d1, %d14
# CHECK: encoding: [0x0f,0xe1,0x10,0x14]
sha.h %d1, %d1, %d14

# CHECK-INST: sha.h %d1, %d1, %d15
# CHECK: encoding: [0x0f,0xf1,0x10,0x14]
sha.h %d1, %d1, %d15

# CHECK-INST: sha.h %d1, %d14, %d0
# CHECK: encoding: [0x0f,0x0e,0x10,0x14]
sha.h %d1, %d14, %d0

# CHECK-INST: sha.h %d1, %d14, %d1
# CHECK: encoding: [0x0f,0x1e,0x10,0x14]
sha.h %d1, %d14, %d1

# CHECK-INST: sha.h %d1, %d14, %d14
# CHECK: encoding: [0x0f,0xee,0x10,0x14]
sha.h %d1, %d14, %d14

# CHECK-INST: sha.h %d1, %d14, %d15
# CHECK: encoding: [0x0f,0xfe,0x10,0x14]
sha.h %d1, %d14, %d15

# CHECK-INST: sha.h %d1, %d15, %d0
# CHECK: encoding: [0x0f,0x0f,0x10,0x14]
sha.h %d1, %d15, %d0

# CHECK-INST: sha.h %d1, %d15, %d1
# CHECK: encoding: [0x0f,0x1f,0x10,0x14]
sha.h %d1, %d15, %d1

# CHECK-INST: sha.h %d1, %d15, %d14
# CHECK: encoding: [0x0f,0xef,0x10,0x14]
sha.h %d1, %d15, %d14

# CHECK-INST: sha.h %d1, %d15, %d15
# CHECK: encoding: [0x0f,0xff,0x10,0x14]
sha.h %d1, %d15, %d15

# CHECK-INST: sha.h %d14, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0x10,0xe4]
sha.h %d14, %d0, %d0

# CHECK-INST: sha.h %d14, %d0, %d1
# CHECK: encoding: [0x0f,0x10,0x10,0xe4]
sha.h %d14, %d0, %d1

# CHECK-INST: sha.h %d14, %d0, %d14
# CHECK: encoding: [0x0f,0xe0,0x10,0xe4]
sha.h %d14, %d0, %d14

# CHECK-INST: sha.h %d14, %d0, %d15
# CHECK: encoding: [0x0f,0xf0,0x10,0xe4]
sha.h %d14, %d0, %d15

# CHECK-INST: sha.h %d14, %d1, %d0
# CHECK: encoding: [0x0f,0x01,0x10,0xe4]
sha.h %d14, %d1, %d0

# CHECK-INST: sha.h %d14, %d1, %d1
# CHECK: encoding: [0x0f,0x11,0x10,0xe4]
sha.h %d14, %d1, %d1

# CHECK-INST: sha.h %d14, %d1, %d14
# CHECK: encoding: [0x0f,0xe1,0x10,0xe4]
sha.h %d14, %d1, %d14

# CHECK-INST: sha.h %d14, %d1, %d15
# CHECK: encoding: [0x0f,0xf1,0x10,0xe4]
sha.h %d14, %d1, %d15

# CHECK-INST: sha.h %d14, %d14, %d0
# CHECK: encoding: [0x0f,0x0e,0x10,0xe4]
sha.h %d14, %d14, %d0

# CHECK-INST: sha.h %d14, %d14, %d1
# CHECK: encoding: [0x0f,0x1e,0x10,0xe4]
sha.h %d14, %d14, %d1

# CHECK-INST: sha.h %d14, %d14, %d14
# CHECK: encoding: [0x0f,0xee,0x10,0xe4]
sha.h %d14, %d14, %d14

# CHECK-INST: sha.h %d14, %d14, %d15
# CHECK: encoding: [0x0f,0xfe,0x10,0xe4]
sha.h %d14, %d14, %d15

# CHECK-INST: sha.h %d14, %d15, %d0
# CHECK: encoding: [0x0f,0x0f,0x10,0xe4]
sha.h %d14, %d15, %d0

# CHECK-INST: sha.h %d14, %d15, %d1
# CHECK: encoding: [0x0f,0x1f,0x10,0xe4]
sha.h %d14, %d15, %d1

# CHECK-INST: sha.h %d14, %d15, %d14
# CHECK: encoding: [0x0f,0xef,0x10,0xe4]
sha.h %d14, %d15, %d14

# CHECK-INST: sha.h %d14, %d15, %d15
# CHECK: encoding: [0x0f,0xff,0x10,0xe4]
sha.h %d14, %d15, %d15

# CHECK-INST: sha.h %d15, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0x10,0xf4]
sha.h %d15, %d0, %d0

# CHECK-INST: sha.h %d15, %d0, %d1
# CHECK: encoding: [0x0f,0x10,0x10,0xf4]
sha.h %d15, %d0, %d1

# CHECK-INST: sha.h %d15, %d0, %d14
# CHECK: encoding: [0x0f,0xe0,0x10,0xf4]
sha.h %d15, %d0, %d14

# CHECK-INST: sha.h %d15, %d0, %d15
# CHECK: encoding: [0x0f,0xf0,0x10,0xf4]
sha.h %d15, %d0, %d15

# CHECK-INST: sha.h %d15, %d1, %d0
# CHECK: encoding: [0x0f,0x01,0x10,0xf4]
sha.h %d15, %d1, %d0

# CHECK-INST: sha.h %d15, %d1, %d1
# CHECK: encoding: [0x0f,0x11,0x10,0xf4]
sha.h %d15, %d1, %d1

# CHECK-INST: sha.h %d15, %d1, %d14
# CHECK: encoding: [0x0f,0xe1,0x10,0xf4]
sha.h %d15, %d1, %d14

# CHECK-INST: sha.h %d15, %d1, %d15
# CHECK: encoding: [0x0f,0xf1,0x10,0xf4]
sha.h %d15, %d1, %d15

# CHECK-INST: sha.h %d15, %d14, %d0
# CHECK: encoding: [0x0f,0x0e,0x10,0xf4]
sha.h %d15, %d14, %d0

# CHECK-INST: sha.h %d15, %d14, %d1
# CHECK: encoding: [0x0f,0x1e,0x10,0xf4]
sha.h %d15, %d14, %d1

# CHECK-INST: sha.h %d15, %d14, %d14
# CHECK: encoding: [0x0f,0xee,0x10,0xf4]
sha.h %d15, %d14, %d14

# CHECK-INST: sha.h %d15, %d14, %d15
# CHECK: encoding: [0x0f,0xfe,0x10,0xf4]
sha.h %d15, %d14, %d15

# CHECK-INST: sha.h %d15, %d15, %d0
# CHECK: encoding: [0x0f,0x0f,0x10,0xf4]
sha.h %d15, %d15, %d0

# CHECK-INST: sha.h %d15, %d15, %d1
# CHECK: encoding: [0x0f,0x1f,0x10,0xf4]
sha.h %d15, %d15, %d1

# CHECK-INST: sha.h %d15, %d15, %d14
# CHECK: encoding: [0x0f,0xef,0x10,0xf4]
sha.h %d15, %d15, %d14

# CHECK-INST: sha.h %d15, %d15, %d15
# CHECK: encoding: [0x0f,0xff,0x10,0xf4]
sha.h %d15, %d15, %d15

# CHECK-INST: sha.h %d0, %d0, -16
# CHECK: encoding: [0x8f,0x00,0x3f,0x08]
.code32
sha.h %d0, %d0, -16

# CHECK-INST: sha.h %d0, %d0, -15
# CHECK: encoding: [0x8f,0x10,0x3f,0x08]
.code32
sha.h %d0, %d0, -15

# CHECK-INST: sha.h %d0, %d0, -2
# CHECK: encoding: [0x8f,0xe0,0x3f,0x08]
.code32
sha.h %d0, %d0, -2

# CHECK-INST: sha.h %d0, %d0, -1
# CHECK: encoding: [0x8f,0xf0,0x3f,0x08]
.code32
sha.h %d0, %d0, -1

# CHECK-INST: sha.h %d0, %d0, 0
# CHECK: encoding: [0x8f,0x00,0x20,0x08]
.code32
sha.h %d0, %d0, 0

# CHECK-INST: sha.h %d0, %d0, 1
# CHECK: encoding: [0x8f,0x10,0x20,0x08]
.code32
sha.h %d0, %d0, 1

# CHECK-INST: sha.h %d0, %d0, 14
# CHECK: encoding: [0x8f,0xe0,0x20,0x08]
.code32
sha.h %d0, %d0, 14

# CHECK-INST: sha.h %d0, %d0, 15
# CHECK: encoding: [0x8f,0xf0,0x20,0x08]
.code32
sha.h %d0, %d0, 15

# CHECK-INST: sha.h %d0, %d1, -16
# CHECK: encoding: [0x8f,0x01,0x3f,0x08]
.code32
sha.h %d0, %d1, -16

# CHECK-INST: sha.h %d0, %d1, -15
# CHECK: encoding: [0x8f,0x11,0x3f,0x08]
.code32
sha.h %d0, %d1, -15

# CHECK-INST: sha.h %d0, %d1, -2
# CHECK: encoding: [0x8f,0xe1,0x3f,0x08]
.code32
sha.h %d0, %d1, -2

# CHECK-INST: sha.h %d0, %d1, -1
# CHECK: encoding: [0x8f,0xf1,0x3f,0x08]
.code32
sha.h %d0, %d1, -1

# CHECK-INST: sha.h %d0, %d1, 0
# CHECK: encoding: [0x8f,0x01,0x20,0x08]
.code32
sha.h %d0, %d1, 0

# CHECK-INST: sha.h %d0, %d1, 1
# CHECK: encoding: [0x8f,0x11,0x20,0x08]
.code32
sha.h %d0, %d1, 1

# CHECK-INST: sha.h %d0, %d1, 14
# CHECK: encoding: [0x8f,0xe1,0x20,0x08]
.code32
sha.h %d0, %d1, 14

# CHECK-INST: sha.h %d0, %d1, 15
# CHECK: encoding: [0x8f,0xf1,0x20,0x08]
.code32
sha.h %d0, %d1, 15

# CHECK-INST: sha.h %d0, %d14, -16
# CHECK: encoding: [0x8f,0x0e,0x3f,0x08]
.code32
sha.h %d0, %d14, -16

# CHECK-INST: sha.h %d0, %d14, -15
# CHECK: encoding: [0x8f,0x1e,0x3f,0x08]
.code32
sha.h %d0, %d14, -15

# CHECK-INST: sha.h %d0, %d14, -2
# CHECK: encoding: [0x8f,0xee,0x3f,0x08]
.code32
sha.h %d0, %d14, -2

# CHECK-INST: sha.h %d0, %d14, -1
# CHECK: encoding: [0x8f,0xfe,0x3f,0x08]
.code32
sha.h %d0, %d14, -1

# CHECK-INST: sha.h %d0, %d14, 0
# CHECK: encoding: [0x8f,0x0e,0x20,0x08]
.code32
sha.h %d0, %d14, 0

# CHECK-INST: sha.h %d0, %d14, 1
# CHECK: encoding: [0x8f,0x1e,0x20,0x08]
.code32
sha.h %d0, %d14, 1

# CHECK-INST: sha.h %d0, %d14, 14
# CHECK: encoding: [0x8f,0xee,0x20,0x08]
.code32
sha.h %d0, %d14, 14

# CHECK-INST: sha.h %d0, %d14, 15
# CHECK: encoding: [0x8f,0xfe,0x20,0x08]
.code32
sha.h %d0, %d14, 15

# CHECK-INST: sha.h %d0, %d15, -16
# CHECK: encoding: [0x8f,0x0f,0x3f,0x08]
.code32
sha.h %d0, %d15, -16

# CHECK-INST: sha.h %d0, %d15, -15
# CHECK: encoding: [0x8f,0x1f,0x3f,0x08]
.code32
sha.h %d0, %d15, -15

# CHECK-INST: sha.h %d0, %d15, -2
# CHECK: encoding: [0x8f,0xef,0x3f,0x08]
.code32
sha.h %d0, %d15, -2

# CHECK-INST: sha.h %d0, %d15, -1
# CHECK: encoding: [0x8f,0xff,0x3f,0x08]
.code32
sha.h %d0, %d15, -1

# CHECK-INST: sha.h %d0, %d15, 0
# CHECK: encoding: [0x8f,0x0f,0x20,0x08]
.code32
sha.h %d0, %d15, 0

# CHECK-INST: sha.h %d0, %d15, 1
# CHECK: encoding: [0x8f,0x1f,0x20,0x08]
.code32
sha.h %d0, %d15, 1

# CHECK-INST: sha.h %d0, %d15, 14
# CHECK: encoding: [0x8f,0xef,0x20,0x08]
.code32
sha.h %d0, %d15, 14

# CHECK-INST: sha.h %d0, %d15, 15
# CHECK: encoding: [0x8f,0xff,0x20,0x08]
.code32
sha.h %d0, %d15, 15

# CHECK-INST: sha.h %d1, %d0, -16
# CHECK: encoding: [0x8f,0x00,0x3f,0x18]
.code32
sha.h %d1, %d0, -16

# CHECK-INST: sha.h %d1, %d0, -15
# CHECK: encoding: [0x8f,0x10,0x3f,0x18]
.code32
sha.h %d1, %d0, -15

# CHECK-INST: sha.h %d1, %d0, -2
# CHECK: encoding: [0x8f,0xe0,0x3f,0x18]
.code32
sha.h %d1, %d0, -2

# CHECK-INST: sha.h %d1, %d0, -1
# CHECK: encoding: [0x8f,0xf0,0x3f,0x18]
.code32
sha.h %d1, %d0, -1

# CHECK-INST: sha.h %d1, %d0, 0
# CHECK: encoding: [0x8f,0x00,0x20,0x18]
.code32
sha.h %d1, %d0, 0

# CHECK-INST: sha.h %d1, %d0, 1
# CHECK: encoding: [0x8f,0x10,0x20,0x18]
.code32
sha.h %d1, %d0, 1

# CHECK-INST: sha.h %d1, %d0, 14
# CHECK: encoding: [0x8f,0xe0,0x20,0x18]
.code32
sha.h %d1, %d0, 14

# CHECK-INST: sha.h %d1, %d0, 15
# CHECK: encoding: [0x8f,0xf0,0x20,0x18]
.code32
sha.h %d1, %d0, 15

# CHECK-INST: sha.h %d1, %d1, -16
# CHECK: encoding: [0x8f,0x01,0x3f,0x18]
.code32
sha.h %d1, %d1, -16

# CHECK-INST: sha.h %d1, %d1, -15
# CHECK: encoding: [0x8f,0x11,0x3f,0x18]
.code32
sha.h %d1, %d1, -15

# CHECK-INST: sha.h %d1, %d1, -2
# CHECK: encoding: [0x8f,0xe1,0x3f,0x18]
.code32
sha.h %d1, %d1, -2

# CHECK-INST: sha.h %d1, %d1, -1
# CHECK: encoding: [0x8f,0xf1,0x3f,0x18]
.code32
sha.h %d1, %d1, -1

# CHECK-INST: sha.h %d1, %d1, 0
# CHECK: encoding: [0x8f,0x01,0x20,0x18]
.code32
sha.h %d1, %d1, 0

# CHECK-INST: sha.h %d1, %d1, 1
# CHECK: encoding: [0x8f,0x11,0x20,0x18]
.code32
sha.h %d1, %d1, 1

# CHECK-INST: sha.h %d1, %d1, 14
# CHECK: encoding: [0x8f,0xe1,0x20,0x18]
.code32
sha.h %d1, %d1, 14

# CHECK-INST: sha.h %d1, %d1, 15
# CHECK: encoding: [0x8f,0xf1,0x20,0x18]
.code32
sha.h %d1, %d1, 15

# CHECK-INST: sha.h %d1, %d14, -16
# CHECK: encoding: [0x8f,0x0e,0x3f,0x18]
.code32
sha.h %d1, %d14, -16

# CHECK-INST: sha.h %d1, %d14, -15
# CHECK: encoding: [0x8f,0x1e,0x3f,0x18]
.code32
sha.h %d1, %d14, -15

# CHECK-INST: sha.h %d1, %d14, -2
# CHECK: encoding: [0x8f,0xee,0x3f,0x18]
.code32
sha.h %d1, %d14, -2

# CHECK-INST: sha.h %d1, %d14, -1
# CHECK: encoding: [0x8f,0xfe,0x3f,0x18]
.code32
sha.h %d1, %d14, -1

# CHECK-INST: sha.h %d1, %d14, 0
# CHECK: encoding: [0x8f,0x0e,0x20,0x18]
.code32
sha.h %d1, %d14, 0

# CHECK-INST: sha.h %d1, %d14, 1
# CHECK: encoding: [0x8f,0x1e,0x20,0x18]
.code32
sha.h %d1, %d14, 1

# CHECK-INST: sha.h %d1, %d14, 14
# CHECK: encoding: [0x8f,0xee,0x20,0x18]
.code32
sha.h %d1, %d14, 14

# CHECK-INST: sha.h %d1, %d14, 15
# CHECK: encoding: [0x8f,0xfe,0x20,0x18]
.code32
sha.h %d1, %d14, 15

# CHECK-INST: sha.h %d1, %d15, -16
# CHECK: encoding: [0x8f,0x0f,0x3f,0x18]
.code32
sha.h %d1, %d15, -16

# CHECK-INST: sha.h %d1, %d15, -15
# CHECK: encoding: [0x8f,0x1f,0x3f,0x18]
.code32
sha.h %d1, %d15, -15

# CHECK-INST: sha.h %d1, %d15, -2
# CHECK: encoding: [0x8f,0xef,0x3f,0x18]
.code32
sha.h %d1, %d15, -2

# CHECK-INST: sha.h %d1, %d15, -1
# CHECK: encoding: [0x8f,0xff,0x3f,0x18]
.code32
sha.h %d1, %d15, -1

# CHECK-INST: sha.h %d1, %d15, 0
# CHECK: encoding: [0x8f,0x0f,0x20,0x18]
.code32
sha.h %d1, %d15, 0

# CHECK-INST: sha.h %d1, %d15, 1
# CHECK: encoding: [0x8f,0x1f,0x20,0x18]
.code32
sha.h %d1, %d15, 1

# CHECK-INST: sha.h %d1, %d15, 14
# CHECK: encoding: [0x8f,0xef,0x20,0x18]
.code32
sha.h %d1, %d15, 14

# CHECK-INST: sha.h %d1, %d15, 15
# CHECK: encoding: [0x8f,0xff,0x20,0x18]
.code32
sha.h %d1, %d15, 15

# CHECK-INST: sha.h %d14, %d0, -16
# CHECK: encoding: [0x8f,0x00,0x3f,0xe8]
.code32
sha.h %d14, %d0, -16

# CHECK-INST: sha.h %d14, %d0, -15
# CHECK: encoding: [0x8f,0x10,0x3f,0xe8]
.code32
sha.h %d14, %d0, -15

# CHECK-INST: sha.h %d14, %d0, -2
# CHECK: encoding: [0x8f,0xe0,0x3f,0xe8]
.code32
sha.h %d14, %d0, -2

# CHECK-INST: sha.h %d14, %d0, -1
# CHECK: encoding: [0x8f,0xf0,0x3f,0xe8]
.code32
sha.h %d14, %d0, -1

# CHECK-INST: sha.h %d14, %d0, 0
# CHECK: encoding: [0x8f,0x00,0x20,0xe8]
.code32
sha.h %d14, %d0, 0

# CHECK-INST: sha.h %d14, %d0, 1
# CHECK: encoding: [0x8f,0x10,0x20,0xe8]
.code32
sha.h %d14, %d0, 1

# CHECK-INST: sha.h %d14, %d0, 14
# CHECK: encoding: [0x8f,0xe0,0x20,0xe8]
.code32
sha.h %d14, %d0, 14

# CHECK-INST: sha.h %d14, %d0, 15
# CHECK: encoding: [0x8f,0xf0,0x20,0xe8]
.code32
sha.h %d14, %d0, 15

# CHECK-INST: sha.h %d14, %d1, -16
# CHECK: encoding: [0x8f,0x01,0x3f,0xe8]
.code32
sha.h %d14, %d1, -16

# CHECK-INST: sha.h %d14, %d1, -15
# CHECK: encoding: [0x8f,0x11,0x3f,0xe8]
.code32
sha.h %d14, %d1, -15

# CHECK-INST: sha.h %d14, %d1, -2
# CHECK: encoding: [0x8f,0xe1,0x3f,0xe8]
.code32
sha.h %d14, %d1, -2

# CHECK-INST: sha.h %d14, %d1, -1
# CHECK: encoding: [0x8f,0xf1,0x3f,0xe8]
.code32
sha.h %d14, %d1, -1

# CHECK-INST: sha.h %d14, %d1, 0
# CHECK: encoding: [0x8f,0x01,0x20,0xe8]
.code32
sha.h %d14, %d1, 0

# CHECK-INST: sha.h %d14, %d1, 1
# CHECK: encoding: [0x8f,0x11,0x20,0xe8]
.code32
sha.h %d14, %d1, 1

# CHECK-INST: sha.h %d14, %d1, 14
# CHECK: encoding: [0x8f,0xe1,0x20,0xe8]
.code32
sha.h %d14, %d1, 14

# CHECK-INST: sha.h %d14, %d1, 15
# CHECK: encoding: [0x8f,0xf1,0x20,0xe8]
.code32
sha.h %d14, %d1, 15

# CHECK-INST: sha.h %d14, %d14, -16
# CHECK: encoding: [0x8f,0x0e,0x3f,0xe8]
.code32
sha.h %d14, %d14, -16

# CHECK-INST: sha.h %d14, %d14, -15
# CHECK: encoding: [0x8f,0x1e,0x3f,0xe8]
.code32
sha.h %d14, %d14, -15

# CHECK-INST: sha.h %d14, %d14, -2
# CHECK: encoding: [0x8f,0xee,0x3f,0xe8]
.code32
sha.h %d14, %d14, -2

# CHECK-INST: sha.h %d14, %d14, -1
# CHECK: encoding: [0x8f,0xfe,0x3f,0xe8]
.code32
sha.h %d14, %d14, -1

# CHECK-INST: sha.h %d14, %d14, 0
# CHECK: encoding: [0x8f,0x0e,0x20,0xe8]
.code32
sha.h %d14, %d14, 0

# CHECK-INST: sha.h %d14, %d14, 1
# CHECK: encoding: [0x8f,0x1e,0x20,0xe8]
.code32
sha.h %d14, %d14, 1

# CHECK-INST: sha.h %d14, %d14, 14
# CHECK: encoding: [0x8f,0xee,0x20,0xe8]
.code32
sha.h %d14, %d14, 14

# CHECK-INST: sha.h %d14, %d14, 15
# CHECK: encoding: [0x8f,0xfe,0x20,0xe8]
.code32
sha.h %d14, %d14, 15

# CHECK-INST: sha.h %d14, %d15, -16
# CHECK: encoding: [0x8f,0x0f,0x3f,0xe8]
.code32
sha.h %d14, %d15, -16

# CHECK-INST: sha.h %d14, %d15, -15
# CHECK: encoding: [0x8f,0x1f,0x3f,0xe8]
.code32
sha.h %d14, %d15, -15

# CHECK-INST: sha.h %d14, %d15, -2
# CHECK: encoding: [0x8f,0xef,0x3f,0xe8]
.code32
sha.h %d14, %d15, -2

# CHECK-INST: sha.h %d14, %d15, -1
# CHECK: encoding: [0x8f,0xff,0x3f,0xe8]
.code32
sha.h %d14, %d15, -1

# CHECK-INST: sha.h %d14, %d15, 0
# CHECK: encoding: [0x8f,0x0f,0x20,0xe8]
.code32
sha.h %d14, %d15, 0

# CHECK-INST: sha.h %d14, %d15, 1
# CHECK: encoding: [0x8f,0x1f,0x20,0xe8]
.code32
sha.h %d14, %d15, 1

# CHECK-INST: sha.h %d14, %d15, 14
# CHECK: encoding: [0x8f,0xef,0x20,0xe8]
.code32
sha.h %d14, %d15, 14

# CHECK-INST: sha.h %d14, %d15, 15
# CHECK: encoding: [0x8f,0xff,0x20,0xe8]
.code32
sha.h %d14, %d15, 15

# CHECK-INST: sha.h %d15, %d0, -16
# CHECK: encoding: [0x8f,0x00,0x3f,0xf8]
.code32
sha.h %d15, %d0, -16

# CHECK-INST: sha.h %d15, %d0, -15
# CHECK: encoding: [0x8f,0x10,0x3f,0xf8]
.code32
sha.h %d15, %d0, -15

# CHECK-INST: sha.h %d15, %d0, -2
# CHECK: encoding: [0x8f,0xe0,0x3f,0xf8]
.code32
sha.h %d15, %d0, -2

# CHECK-INST: sha.h %d15, %d0, -1
# CHECK: encoding: [0x8f,0xf0,0x3f,0xf8]
.code32
sha.h %d15, %d0, -1

# CHECK-INST: sha.h %d15, %d0, 0
# CHECK: encoding: [0x8f,0x00,0x20,0xf8]
.code32
sha.h %d15, %d0, 0

# CHECK-INST: sha.h %d15, %d0, 1
# CHECK: encoding: [0x8f,0x10,0x20,0xf8]
.code32
sha.h %d15, %d0, 1

# CHECK-INST: sha.h %d15, %d0, 14
# CHECK: encoding: [0x8f,0xe0,0x20,0xf8]
.code32
sha.h %d15, %d0, 14

# CHECK-INST: sha.h %d15, %d0, 15
# CHECK: encoding: [0x8f,0xf0,0x20,0xf8]
.code32
sha.h %d15, %d0, 15

# CHECK-INST: sha.h %d15, %d1, -16
# CHECK: encoding: [0x8f,0x01,0x3f,0xf8]
.code32
sha.h %d15, %d1, -16

# CHECK-INST: sha.h %d15, %d1, -15
# CHECK: encoding: [0x8f,0x11,0x3f,0xf8]
.code32
sha.h %d15, %d1, -15

# CHECK-INST: sha.h %d15, %d1, -2
# CHECK: encoding: [0x8f,0xe1,0x3f,0xf8]
.code32
sha.h %d15, %d1, -2

# CHECK-INST: sha.h %d15, %d1, -1
# CHECK: encoding: [0x8f,0xf1,0x3f,0xf8]
.code32
sha.h %d15, %d1, -1

# CHECK-INST: sha.h %d15, %d1, 0
# CHECK: encoding: [0x8f,0x01,0x20,0xf8]
.code32
sha.h %d15, %d1, 0

# CHECK-INST: sha.h %d15, %d1, 1
# CHECK: encoding: [0x8f,0x11,0x20,0xf8]
.code32
sha.h %d15, %d1, 1

# CHECK-INST: sha.h %d15, %d1, 14
# CHECK: encoding: [0x8f,0xe1,0x20,0xf8]
.code32
sha.h %d15, %d1, 14

# CHECK-INST: sha.h %d15, %d1, 15
# CHECK: encoding: [0x8f,0xf1,0x20,0xf8]
.code32
sha.h %d15, %d1, 15

# CHECK-INST: sha.h %d15, %d14, -16
# CHECK: encoding: [0x8f,0x0e,0x3f,0xf8]
.code32
sha.h %d15, %d14, -16

# CHECK-INST: sha.h %d15, %d14, -15
# CHECK: encoding: [0x8f,0x1e,0x3f,0xf8]
.code32
sha.h %d15, %d14, -15

# CHECK-INST: sha.h %d15, %d14, -2
# CHECK: encoding: [0x8f,0xee,0x3f,0xf8]
.code32
sha.h %d15, %d14, -2

# CHECK-INST: sha.h %d15, %d14, -1
# CHECK: encoding: [0x8f,0xfe,0x3f,0xf8]
.code32
sha.h %d15, %d14, -1

# CHECK-INST: sha.h %d15, %d14, 0
# CHECK: encoding: [0x8f,0x0e,0x20,0xf8]
.code32
sha.h %d15, %d14, 0

# CHECK-INST: sha.h %d15, %d14, 1
# CHECK: encoding: [0x8f,0x1e,0x20,0xf8]
.code32
sha.h %d15, %d14, 1

# CHECK-INST: sha.h %d15, %d14, 14
# CHECK: encoding: [0x8f,0xee,0x20,0xf8]
.code32
sha.h %d15, %d14, 14

# CHECK-INST: sha.h %d15, %d14, 15
# CHECK: encoding: [0x8f,0xfe,0x20,0xf8]
.code32
sha.h %d15, %d14, 15

# CHECK-INST: sha.h %d15, %d15, -16
# CHECK: encoding: [0x8f,0x0f,0x3f,0xf8]
.code32
sha.h %d15, %d15, -16

# CHECK-INST: sha.h %d15, %d15, -15
# CHECK: encoding: [0x8f,0x1f,0x3f,0xf8]
.code32
sha.h %d15, %d15, -15

# CHECK-INST: sha.h %d15, %d15, -2
# CHECK: encoding: [0x8f,0xef,0x3f,0xf8]
.code32
sha.h %d15, %d15, -2

# CHECK-INST: sha.h %d15, %d15, -1
# CHECK: encoding: [0x8f,0xff,0x3f,0xf8]
.code32
sha.h %d15, %d15, -1

# CHECK-INST: sha.h %d15, %d15, 0
# CHECK: encoding: [0x8f,0x0f,0x20,0xf8]
.code32
sha.h %d15, %d15, 0

# CHECK-INST: sha.h %d15, %d15, 1
# CHECK: encoding: [0x8f,0x1f,0x20,0xf8]
.code32
sha.h %d15, %d15, 1

# CHECK-INST: sha.h %d15, %d15, 14
# CHECK: encoding: [0x8f,0xef,0x20,0xf8]
.code32
sha.h %d15, %d15, 14

# CHECK-INST: sha.h %d15, %d15, 15
# CHECK: encoding: [0x8f,0xff,0x20,0xf8]
.code32
sha.h %d15, %d15, 15

# CHECK-INST: sub.b %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x80,0x04]
.code32
sub.b %d0, %d0, %d0

# CHECK-INST: sub.b %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x80,0x04]
.code32
sub.b %d0, %d0, %d1

# CHECK-INST: sub.b %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x80,0x04]
.code32
sub.b %d0, %d0, %d14

# CHECK-INST: sub.b %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x80,0x04]
.code32
sub.b %d0, %d0, %d15

# CHECK-INST: sub.b %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x80,0x04]
.code32
sub.b %d0, %d1, %d0

# CHECK-INST: sub.b %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x80,0x04]
.code32
sub.b %d0, %d1, %d1

# CHECK-INST: sub.b %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x80,0x04]
.code32
sub.b %d0, %d1, %d14

# CHECK-INST: sub.b %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x80,0x04]
.code32
sub.b %d0, %d1, %d15

# CHECK-INST: sub.b %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x80,0x04]
.code32
sub.b %d0, %d14, %d0

# CHECK-INST: sub.b %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x80,0x04]
.code32
sub.b %d0, %d14, %d1

# CHECK-INST: sub.b %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x80,0x04]
.code32
sub.b %d0, %d14, %d14

# CHECK-INST: sub.b %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x80,0x04]
.code32
sub.b %d0, %d14, %d15

# CHECK-INST: sub.b %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x80,0x04]
.code32
sub.b %d0, %d15, %d0

# CHECK-INST: sub.b %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x80,0x04]
.code32
sub.b %d0, %d15, %d1

# CHECK-INST: sub.b %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x80,0x04]
.code32
sub.b %d0, %d15, %d14

# CHECK-INST: sub.b %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x80,0x04]
.code32
sub.b %d0, %d15, %d15

# CHECK-INST: sub.b %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x80,0x14]
.code32
sub.b %d1, %d0, %d0

# CHECK-INST: sub.b %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x80,0x14]
.code32
sub.b %d1, %d0, %d1

# CHECK-INST: sub.b %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x80,0x14]
.code32
sub.b %d1, %d0, %d14

# CHECK-INST: sub.b %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x80,0x14]
.code32
sub.b %d1, %d0, %d15

# CHECK-INST: sub.b %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x80,0x14]
.code32
sub.b %d1, %d1, %d0

# CHECK-INST: sub.b %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x80,0x14]
.code32
sub.b %d1, %d1, %d1

# CHECK-INST: sub.b %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x80,0x14]
.code32
sub.b %d1, %d1, %d14

# CHECK-INST: sub.b %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x80,0x14]
.code32
sub.b %d1, %d1, %d15

# CHECK-INST: sub.b %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x80,0x14]
.code32
sub.b %d1, %d14, %d0

# CHECK-INST: sub.b %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x80,0x14]
.code32
sub.b %d1, %d14, %d1

# CHECK-INST: sub.b %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x80,0x14]
.code32
sub.b %d1, %d14, %d14

# CHECK-INST: sub.b %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x80,0x14]
.code32
sub.b %d1, %d14, %d15

# CHECK-INST: sub.b %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x80,0x14]
.code32
sub.b %d1, %d15, %d0

# CHECK-INST: sub.b %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x80,0x14]
.code32
sub.b %d1, %d15, %d1

# CHECK-INST: sub.b %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x80,0x14]
.code32
sub.b %d1, %d15, %d14

# CHECK-INST: sub.b %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x80,0x14]
.code32
sub.b %d1, %d15, %d15

# CHECK-INST: sub.b %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x80,0xe4]
.code32
sub.b %d14, %d0, %d0

# CHECK-INST: sub.b %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x80,0xe4]
.code32
sub.b %d14, %d0, %d1

# CHECK-INST: sub.b %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x80,0xe4]
.code32
sub.b %d14, %d0, %d14

# CHECK-INST: sub.b %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x80,0xe4]
.code32
sub.b %d14, %d0, %d15

# CHECK-INST: sub.b %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x80,0xe4]
.code32
sub.b %d14, %d1, %d0

# CHECK-INST: sub.b %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x80,0xe4]
.code32
sub.b %d14, %d1, %d1

# CHECK-INST: sub.b %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x80,0xe4]
.code32
sub.b %d14, %d1, %d14

# CHECK-INST: sub.b %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x80,0xe4]
.code32
sub.b %d14, %d1, %d15

# CHECK-INST: sub.b %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x80,0xe4]
.code32
sub.b %d14, %d14, %d0

# CHECK-INST: sub.b %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x80,0xe4]
.code32
sub.b %d14, %d14, %d1

# CHECK-INST: sub.b %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x80,0xe4]
.code32
sub.b %d14, %d14, %d14

# CHECK-INST: sub.b %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x80,0xe4]
.code32
sub.b %d14, %d14, %d15

# CHECK-INST: sub.b %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x80,0xe4]
.code32
sub.b %d14, %d15, %d0

# CHECK-INST: sub.b %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x80,0xe4]
.code32
sub.b %d14, %d15, %d1

# CHECK-INST: sub.b %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x80,0xe4]
.code32
sub.b %d14, %d15, %d14

# CHECK-INST: sub.b %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x80,0xe4]
.code32
sub.b %d14, %d15, %d15

# CHECK-INST: sub.b %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x80,0xf4]
.code32
sub.b %d15, %d0, %d0

# CHECK-INST: sub.b %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x80,0xf4]
.code32
sub.b %d15, %d0, %d1

# CHECK-INST: sub.b %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x80,0xf4]
.code32
sub.b %d15, %d0, %d14

# CHECK-INST: sub.b %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x80,0xf4]
.code32
sub.b %d15, %d0, %d15

# CHECK-INST: sub.b %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x80,0xf4]
.code32
sub.b %d15, %d1, %d0

# CHECK-INST: sub.b %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x80,0xf4]
.code32
sub.b %d15, %d1, %d1

# CHECK-INST: sub.b %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x80,0xf4]
.code32
sub.b %d15, %d1, %d14

# CHECK-INST: sub.b %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x80,0xf4]
.code32
sub.b %d15, %d1, %d15

# CHECK-INST: sub.b %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x80,0xf4]
.code32
sub.b %d15, %d14, %d0

# CHECK-INST: sub.b %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x80,0xf4]
.code32
sub.b %d15, %d14, %d1

# CHECK-INST: sub.b %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x80,0xf4]
.code32
sub.b %d15, %d14, %d14

# CHECK-INST: sub.b %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x80,0xf4]
.code32
sub.b %d15, %d14, %d15

# CHECK-INST: sub.b %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x80,0xf4]
.code32
sub.b %d15, %d15, %d0

# CHECK-INST: sub.b %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x80,0xf4]
.code32
sub.b %d15, %d15, %d1

# CHECK-INST: sub.b %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x80,0xf4]
.code32
sub.b %d15, %d15, %d14

# CHECK-INST: sub.b %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x80,0xf4]
.code32
sub.b %d15, %d15, %d15

# CHECK-INST: sub.h %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x80,0x06]
.code32
sub.h %d0, %d0, %d0

# CHECK-INST: sub.h %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x80,0x06]
.code32
sub.h %d0, %d0, %d1

# CHECK-INST: sub.h %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x80,0x06]
.code32
sub.h %d0, %d0, %d14

# CHECK-INST: sub.h %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x80,0x06]
.code32
sub.h %d0, %d0, %d15

# CHECK-INST: sub.h %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x80,0x06]
.code32
sub.h %d0, %d1, %d0

# CHECK-INST: sub.h %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x80,0x06]
.code32
sub.h %d0, %d1, %d1

# CHECK-INST: sub.h %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x80,0x06]
.code32
sub.h %d0, %d1, %d14

# CHECK-INST: sub.h %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x80,0x06]
.code32
sub.h %d0, %d1, %d15

# CHECK-INST: sub.h %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x80,0x06]
.code32
sub.h %d0, %d14, %d0

# CHECK-INST: sub.h %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x80,0x06]
.code32
sub.h %d0, %d14, %d1

# CHECK-INST: sub.h %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x80,0x06]
.code32
sub.h %d0, %d14, %d14

# CHECK-INST: sub.h %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x80,0x06]
.code32
sub.h %d0, %d14, %d15

# CHECK-INST: sub.h %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x80,0x06]
.code32
sub.h %d0, %d15, %d0

# CHECK-INST: sub.h %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x80,0x06]
.code32
sub.h %d0, %d15, %d1

# CHECK-INST: sub.h %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x80,0x06]
.code32
sub.h %d0, %d15, %d14

# CHECK-INST: sub.h %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x80,0x06]
.code32
sub.h %d0, %d15, %d15

# CHECK-INST: sub.h %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x80,0x16]
.code32
sub.h %d1, %d0, %d0

# CHECK-INST: sub.h %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x80,0x16]
.code32
sub.h %d1, %d0, %d1

# CHECK-INST: sub.h %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x80,0x16]
.code32
sub.h %d1, %d0, %d14

# CHECK-INST: sub.h %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x80,0x16]
.code32
sub.h %d1, %d0, %d15

# CHECK-INST: sub.h %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x80,0x16]
.code32
sub.h %d1, %d1, %d0

# CHECK-INST: sub.h %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x80,0x16]
.code32
sub.h %d1, %d1, %d1

# CHECK-INST: sub.h %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x80,0x16]
.code32
sub.h %d1, %d1, %d14

# CHECK-INST: sub.h %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x80,0x16]
.code32
sub.h %d1, %d1, %d15

# CHECK-INST: sub.h %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x80,0x16]
.code32
sub.h %d1, %d14, %d0

# CHECK-INST: sub.h %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x80,0x16]
.code32
sub.h %d1, %d14, %d1

# CHECK-INST: sub.h %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x80,0x16]
.code32
sub.h %d1, %d14, %d14

# CHECK-INST: sub.h %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x80,0x16]
.code32
sub.h %d1, %d14, %d15

# CHECK-INST: sub.h %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x80,0x16]
.code32
sub.h %d1, %d15, %d0

# CHECK-INST: sub.h %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x80,0x16]
.code32
sub.h %d1, %d15, %d1

# CHECK-INST: sub.h %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x80,0x16]
.code32
sub.h %d1, %d15, %d14

# CHECK-INST: sub.h %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x80,0x16]
.code32
sub.h %d1, %d15, %d15

# CHECK-INST: sub.h %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x80,0xe6]
.code32
sub.h %d14, %d0, %d0

# CHECK-INST: sub.h %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x80,0xe6]
.code32
sub.h %d14, %d0, %d1

# CHECK-INST: sub.h %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x80,0xe6]
.code32
sub.h %d14, %d0, %d14

# CHECK-INST: sub.h %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x80,0xe6]
.code32
sub.h %d14, %d0, %d15

# CHECK-INST: sub.h %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x80,0xe6]
.code32
sub.h %d14, %d1, %d0

# CHECK-INST: sub.h %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x80,0xe6]
.code32
sub.h %d14, %d1, %d1

# CHECK-INST: sub.h %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x80,0xe6]
.code32
sub.h %d14, %d1, %d14

# CHECK-INST: sub.h %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x80,0xe6]
.code32
sub.h %d14, %d1, %d15

# CHECK-INST: sub.h %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x80,0xe6]
.code32
sub.h %d14, %d14, %d0

# CHECK-INST: sub.h %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x80,0xe6]
.code32
sub.h %d14, %d14, %d1

# CHECK-INST: sub.h %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x80,0xe6]
.code32
sub.h %d14, %d14, %d14

# CHECK-INST: sub.h %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x80,0xe6]
.code32
sub.h %d14, %d14, %d15

# CHECK-INST: sub.h %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x80,0xe6]
.code32
sub.h %d14, %d15, %d0

# CHECK-INST: sub.h %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x80,0xe6]
.code32
sub.h %d14, %d15, %d1

# CHECK-INST: sub.h %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x80,0xe6]
.code32
sub.h %d14, %d15, %d14

# CHECK-INST: sub.h %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x80,0xe6]
.code32
sub.h %d14, %d15, %d15

# CHECK-INST: sub.h %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x80,0xf6]
.code32
sub.h %d15, %d0, %d0

# CHECK-INST: sub.h %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x80,0xf6]
.code32
sub.h %d15, %d0, %d1

# CHECK-INST: sub.h %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x80,0xf6]
.code32
sub.h %d15, %d0, %d14

# CHECK-INST: sub.h %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x80,0xf6]
.code32
sub.h %d15, %d0, %d15

# CHECK-INST: sub.h %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x80,0xf6]
.code32
sub.h %d15, %d1, %d0

# CHECK-INST: sub.h %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x80,0xf6]
.code32
sub.h %d15, %d1, %d1

# CHECK-INST: sub.h %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x80,0xf6]
.code32
sub.h %d15, %d1, %d14

# CHECK-INST: sub.h %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x80,0xf6]
.code32
sub.h %d15, %d1, %d15

# CHECK-INST: sub.h %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x80,0xf6]
.code32
sub.h %d15, %d14, %d0

# CHECK-INST: sub.h %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x80,0xf6]
.code32
sub.h %d15, %d14, %d1

# CHECK-INST: sub.h %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x80,0xf6]
.code32
sub.h %d15, %d14, %d14

# CHECK-INST: sub.h %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x80,0xf6]
.code32
sub.h %d15, %d14, %d15

# CHECK-INST: sub.h %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x80,0xf6]
.code32
sub.h %d15, %d15, %d0

# CHECK-INST: sub.h %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x80,0xf6]
.code32
sub.h %d15, %d15, %d1

# CHECK-INST: sub.h %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x80,0xf6]
.code32
sub.h %d15, %d15, %d14

# CHECK-INST: sub.h %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x80,0xf6]
.code32
sub.h %d15, %d15, %d15

# CHECK-INST: subs.h %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xa0,0x06]
.code32
subs.h %d0, %d0, %d0

# CHECK-INST: subs.h %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xa0,0x06]
.code32
subs.h %d0, %d0, %d1

# CHECK-INST: subs.h %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xa0,0x06]
.code32
subs.h %d0, %d0, %d14

# CHECK-INST: subs.h %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xa0,0x06]
.code32
subs.h %d0, %d0, %d15

# CHECK-INST: subs.h %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xa0,0x06]
.code32
subs.h %d0, %d1, %d0

# CHECK-INST: subs.h %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xa0,0x06]
.code32
subs.h %d0, %d1, %d1

# CHECK-INST: subs.h %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xa0,0x06]
.code32
subs.h %d0, %d1, %d14

# CHECK-INST: subs.h %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xa0,0x06]
.code32
subs.h %d0, %d1, %d15

# CHECK-INST: subs.h %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xa0,0x06]
.code32
subs.h %d0, %d14, %d0

# CHECK-INST: subs.h %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xa0,0x06]
.code32
subs.h %d0, %d14, %d1

# CHECK-INST: subs.h %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xa0,0x06]
.code32
subs.h %d0, %d14, %d14

# CHECK-INST: subs.h %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xa0,0x06]
.code32
subs.h %d0, %d14, %d15

# CHECK-INST: subs.h %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xa0,0x06]
.code32
subs.h %d0, %d15, %d0

# CHECK-INST: subs.h %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xa0,0x06]
.code32
subs.h %d0, %d15, %d1

# CHECK-INST: subs.h %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xa0,0x06]
.code32
subs.h %d0, %d15, %d14

# CHECK-INST: subs.h %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xa0,0x06]
.code32
subs.h %d0, %d15, %d15

# CHECK-INST: subs.h %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xa0,0x16]
.code32
subs.h %d1, %d0, %d0

# CHECK-INST: subs.h %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xa0,0x16]
.code32
subs.h %d1, %d0, %d1

# CHECK-INST: subs.h %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xa0,0x16]
.code32
subs.h %d1, %d0, %d14

# CHECK-INST: subs.h %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xa0,0x16]
.code32
subs.h %d1, %d0, %d15

# CHECK-INST: subs.h %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xa0,0x16]
.code32
subs.h %d1, %d1, %d0

# CHECK-INST: subs.h %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xa0,0x16]
.code32
subs.h %d1, %d1, %d1

# CHECK-INST: subs.h %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xa0,0x16]
.code32
subs.h %d1, %d1, %d14

# CHECK-INST: subs.h %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xa0,0x16]
.code32
subs.h %d1, %d1, %d15

# CHECK-INST: subs.h %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xa0,0x16]
.code32
subs.h %d1, %d14, %d0

# CHECK-INST: subs.h %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xa0,0x16]
.code32
subs.h %d1, %d14, %d1

# CHECK-INST: subs.h %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xa0,0x16]
.code32
subs.h %d1, %d14, %d14

# CHECK-INST: subs.h %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xa0,0x16]
.code32
subs.h %d1, %d14, %d15

# CHECK-INST: subs.h %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xa0,0x16]
.code32
subs.h %d1, %d15, %d0

# CHECK-INST: subs.h %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xa0,0x16]
.code32
subs.h %d1, %d15, %d1

# CHECK-INST: subs.h %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xa0,0x16]
.code32
subs.h %d1, %d15, %d14

# CHECK-INST: subs.h %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xa0,0x16]
.code32
subs.h %d1, %d15, %d15

# CHECK-INST: subs.h %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xa0,0xe6]
.code32
subs.h %d14, %d0, %d0

# CHECK-INST: subs.h %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xa0,0xe6]
.code32
subs.h %d14, %d0, %d1

# CHECK-INST: subs.h %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xa0,0xe6]
.code32
subs.h %d14, %d0, %d14

# CHECK-INST: subs.h %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xa0,0xe6]
.code32
subs.h %d14, %d0, %d15

# CHECK-INST: subs.h %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xa0,0xe6]
.code32
subs.h %d14, %d1, %d0

# CHECK-INST: subs.h %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xa0,0xe6]
.code32
subs.h %d14, %d1, %d1

# CHECK-INST: subs.h %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xa0,0xe6]
.code32
subs.h %d14, %d1, %d14

# CHECK-INST: subs.h %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xa0,0xe6]
.code32
subs.h %d14, %d1, %d15

# CHECK-INST: subs.h %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xa0,0xe6]
.code32
subs.h %d14, %d14, %d0

# CHECK-INST: subs.h %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xa0,0xe6]
.code32
subs.h %d14, %d14, %d1

# CHECK-INST: subs.h %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xa0,0xe6]
.code32
subs.h %d14, %d14, %d14

# CHECK-INST: subs.h %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xa0,0xe6]
.code32
subs.h %d14, %d14, %d15

# CHECK-INST: subs.h %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xa0,0xe6]
.code32
subs.h %d14, %d15, %d0

# CHECK-INST: subs.h %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xa0,0xe6]
.code32
subs.h %d14, %d15, %d1

# CHECK-INST: subs.h %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xa0,0xe6]
.code32
subs.h %d14, %d15, %d14

# CHECK-INST: subs.h %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xa0,0xe6]
.code32
subs.h %d14, %d15, %d15

# CHECK-INST: subs.h %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xa0,0xf6]
.code32
subs.h %d15, %d0, %d0

# CHECK-INST: subs.h %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xa0,0xf6]
.code32
subs.h %d15, %d0, %d1

# CHECK-INST: subs.h %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xa0,0xf6]
.code32
subs.h %d15, %d0, %d14

# CHECK-INST: subs.h %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xa0,0xf6]
.code32
subs.h %d15, %d0, %d15

# CHECK-INST: subs.h %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xa0,0xf6]
.code32
subs.h %d15, %d1, %d0

# CHECK-INST: subs.h %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xa0,0xf6]
.code32
subs.h %d15, %d1, %d1

# CHECK-INST: subs.h %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xa0,0xf6]
.code32
subs.h %d15, %d1, %d14

# CHECK-INST: subs.h %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xa0,0xf6]
.code32
subs.h %d15, %d1, %d15

# CHECK-INST: subs.h %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xa0,0xf6]
.code32
subs.h %d15, %d14, %d0

# CHECK-INST: subs.h %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xa0,0xf6]
.code32
subs.h %d15, %d14, %d1

# CHECK-INST: subs.h %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xa0,0xf6]
.code32
subs.h %d15, %d14, %d14

# CHECK-INST: subs.h %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xa0,0xf6]
.code32
subs.h %d15, %d14, %d15

# CHECK-INST: subs.h %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xa0,0xf6]
.code32
subs.h %d15, %d15, %d0

# CHECK-INST: subs.h %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xa0,0xf6]
.code32
subs.h %d15, %d15, %d1

# CHECK-INST: subs.h %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xa0,0xf6]
.code32
subs.h %d15, %d15, %d14

# CHECK-INST: subs.h %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xa0,0xf6]
.code32
subs.h %d15, %d15, %d15

# CHECK-INST: subs.h %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xa0,0x06]
.code32
subs.h %d0, %d0, %d0

# CHECK-INST: subs.h %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xa0,0x06]
.code32
subs.h %d0, %d0, %d1

# CHECK-INST: subs.h %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xa0,0x06]
.code32
subs.h %d0, %d0, %d14

# CHECK-INST: subs.h %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xa0,0x06]
.code32
subs.h %d0, %d0, %d15

# CHECK-INST: subs.h %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xa0,0x06]
.code32
subs.h %d0, %d1, %d0

# CHECK-INST: subs.h %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xa0,0x06]
.code32
subs.h %d0, %d1, %d1

# CHECK-INST: subs.h %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xa0,0x06]
.code32
subs.h %d0, %d1, %d14

# CHECK-INST: subs.h %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xa0,0x06]
.code32
subs.h %d0, %d1, %d15

# CHECK-INST: subs.h %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xa0,0x06]
.code32
subs.h %d0, %d14, %d0

# CHECK-INST: subs.h %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xa0,0x06]
.code32
subs.h %d0, %d14, %d1

# CHECK-INST: subs.h %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xa0,0x06]
.code32
subs.h %d0, %d14, %d14

# CHECK-INST: subs.h %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xa0,0x06]
.code32
subs.h %d0, %d14, %d15

# CHECK-INST: subs.h %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xa0,0x06]
.code32
subs.h %d0, %d15, %d0

# CHECK-INST: subs.h %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xa0,0x06]
.code32
subs.h %d0, %d15, %d1

# CHECK-INST: subs.h %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xa0,0x06]
.code32
subs.h %d0, %d15, %d14

# CHECK-INST: subs.h %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xa0,0x06]
.code32
subs.h %d0, %d15, %d15

# CHECK-INST: subs.h %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xa0,0x16]
.code32
subs.h %d1, %d0, %d0

# CHECK-INST: subs.h %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xa0,0x16]
.code32
subs.h %d1, %d0, %d1

# CHECK-INST: subs.h %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xa0,0x16]
.code32
subs.h %d1, %d0, %d14

# CHECK-INST: subs.h %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xa0,0x16]
.code32
subs.h %d1, %d0, %d15

# CHECK-INST: subs.h %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xa0,0x16]
.code32
subs.h %d1, %d1, %d0

# CHECK-INST: subs.h %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xa0,0x16]
.code32
subs.h %d1, %d1, %d1

# CHECK-INST: subs.h %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xa0,0x16]
.code32
subs.h %d1, %d1, %d14

# CHECK-INST: subs.h %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xa0,0x16]
.code32
subs.h %d1, %d1, %d15

# CHECK-INST: subs.h %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xa0,0x16]
.code32
subs.h %d1, %d14, %d0

# CHECK-INST: subs.h %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xa0,0x16]
.code32
subs.h %d1, %d14, %d1

# CHECK-INST: subs.h %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xa0,0x16]
.code32
subs.h %d1, %d14, %d14

# CHECK-INST: subs.h %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xa0,0x16]
.code32
subs.h %d1, %d14, %d15

# CHECK-INST: subs.h %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xa0,0x16]
.code32
subs.h %d1, %d15, %d0

# CHECK-INST: subs.h %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xa0,0x16]
.code32
subs.h %d1, %d15, %d1

# CHECK-INST: subs.h %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xa0,0x16]
.code32
subs.h %d1, %d15, %d14

# CHECK-INST: subs.h %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xa0,0x16]
.code32
subs.h %d1, %d15, %d15

# CHECK-INST: subs.h %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xa0,0xe6]
.code32
subs.h %d14, %d0, %d0

# CHECK-INST: subs.h %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xa0,0xe6]
.code32
subs.h %d14, %d0, %d1

# CHECK-INST: subs.h %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xa0,0xe6]
.code32
subs.h %d14, %d0, %d14

# CHECK-INST: subs.h %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xa0,0xe6]
.code32
subs.h %d14, %d0, %d15

# CHECK-INST: subs.h %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xa0,0xe6]
.code32
subs.h %d14, %d1, %d0

# CHECK-INST: subs.h %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xa0,0xe6]
.code32
subs.h %d14, %d1, %d1

# CHECK-INST: subs.h %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xa0,0xe6]
.code32
subs.h %d14, %d1, %d14

# CHECK-INST: subs.h %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xa0,0xe6]
.code32
subs.h %d14, %d1, %d15

# CHECK-INST: subs.h %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xa0,0xe6]
.code32
subs.h %d14, %d14, %d0

# CHECK-INST: subs.h %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xa0,0xe6]
.code32
subs.h %d14, %d14, %d1

# CHECK-INST: subs.h %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xa0,0xe6]
.code32
subs.h %d14, %d14, %d14

# CHECK-INST: subs.h %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xa0,0xe6]
.code32
subs.h %d14, %d14, %d15

# CHECK-INST: subs.h %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xa0,0xe6]
.code32
subs.h %d14, %d15, %d0

# CHECK-INST: subs.h %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xa0,0xe6]
.code32
subs.h %d14, %d15, %d1

# CHECK-INST: subs.h %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xa0,0xe6]
.code32
subs.h %d14, %d15, %d14

# CHECK-INST: subs.h %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xa0,0xe6]
.code32
subs.h %d14, %d15, %d15

# CHECK-INST: subs.h %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xa0,0xf6]
.code32
subs.h %d15, %d0, %d0

# CHECK-INST: subs.h %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xa0,0xf6]
.code32
subs.h %d15, %d0, %d1

# CHECK-INST: subs.h %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xa0,0xf6]
.code32
subs.h %d15, %d0, %d14

# CHECK-INST: subs.h %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xa0,0xf6]
.code32
subs.h %d15, %d0, %d15

# CHECK-INST: subs.h %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xa0,0xf6]
.code32
subs.h %d15, %d1, %d0

# CHECK-INST: subs.h %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xa0,0xf6]
.code32
subs.h %d15, %d1, %d1

# CHECK-INST: subs.h %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xa0,0xf6]
.code32
subs.h %d15, %d1, %d14

# CHECK-INST: subs.h %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xa0,0xf6]
.code32
subs.h %d15, %d1, %d15

# CHECK-INST: subs.h %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xa0,0xf6]
.code32
subs.h %d15, %d14, %d0

# CHECK-INST: subs.h %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xa0,0xf6]
.code32
subs.h %d15, %d14, %d1

# CHECK-INST: subs.h %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xa0,0xf6]
.code32
subs.h %d15, %d14, %d14

# CHECK-INST: subs.h %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xa0,0xf6]
.code32
subs.h %d15, %d14, %d15

# CHECK-INST: subs.h %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xa0,0xf6]
.code32
subs.h %d15, %d15, %d0

# CHECK-INST: subs.h %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xa0,0xf6]
.code32
subs.h %d15, %d15, %d1

# CHECK-INST: subs.h %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xa0,0xf6]
.code32
subs.h %d15, %d15, %d14

# CHECK-INST: subs.h %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xa0,0xf6]
.code32
subs.h %d15, %d15, %d15
