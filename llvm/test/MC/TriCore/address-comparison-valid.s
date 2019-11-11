# RUN: llvm-mc %s -triple=tricore -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK,CHECK-INST %s

# CHECK-INST: eq.a %d0, %a0, %a0
# CHECK: encoding: [0x01,0x00,0x00,0x04]
eq.a %d0, %a0, %a0

# CHECK-INST: eq.a %d0, %a0, %a1
# CHECK: encoding: [0x01,0x10,0x00,0x04]
eq.a %d0, %a0, %a1

# CHECK-INST: eq.a %d0, %a0, %a14
# CHECK: encoding: [0x01,0xe0,0x00,0x04]
eq.a %d0, %a0, %a14

# CHECK-INST: eq.a %d0, %a0, %a15
# CHECK: encoding: [0x01,0xf0,0x00,0x04]
eq.a %d0, %a0, %a15

# CHECK-INST: eq.a %d0, %a1, %a0
# CHECK: encoding: [0x01,0x01,0x00,0x04]
eq.a %d0, %a1, %a0

# CHECK-INST: eq.a %d0, %a1, %a1
# CHECK: encoding: [0x01,0x11,0x00,0x04]
eq.a %d0, %a1, %a1

# CHECK-INST: eq.a %d0, %a1, %a14
# CHECK: encoding: [0x01,0xe1,0x00,0x04]
eq.a %d0, %a1, %a14

# CHECK-INST: eq.a %d0, %a1, %a15
# CHECK: encoding: [0x01,0xf1,0x00,0x04]
eq.a %d0, %a1, %a15

# CHECK-INST: eq.a %d0, %a14, %a0
# CHECK: encoding: [0x01,0x0e,0x00,0x04]
eq.a %d0, %a14, %a0

# CHECK-INST: eq.a %d0, %a14, %a1
# CHECK: encoding: [0x01,0x1e,0x00,0x04]
eq.a %d0, %a14, %a1

# CHECK-INST: eq.a %d0, %a14, %a14
# CHECK: encoding: [0x01,0xee,0x00,0x04]
eq.a %d0, %a14, %a14

# CHECK-INST: eq.a %d0, %a14, %a15
# CHECK: encoding: [0x01,0xfe,0x00,0x04]
eq.a %d0, %a14, %a15

# CHECK-INST: eq.a %d0, %a15, %a0
# CHECK: encoding: [0x01,0x0f,0x00,0x04]
eq.a %d0, %a15, %a0

# CHECK-INST: eq.a %d0, %a15, %a1
# CHECK: encoding: [0x01,0x1f,0x00,0x04]
eq.a %d0, %a15, %a1

# CHECK-INST: eq.a %d0, %a15, %a14
# CHECK: encoding: [0x01,0xef,0x00,0x04]
eq.a %d0, %a15, %a14

# CHECK-INST: eq.a %d0, %a15, %a15
# CHECK: encoding: [0x01,0xff,0x00,0x04]
eq.a %d0, %a15, %a15

# CHECK-INST: eq.a %d1, %a0, %a0
# CHECK: encoding: [0x01,0x00,0x00,0x14]
eq.a %d1, %a0, %a0

# CHECK-INST: eq.a %d1, %a0, %a1
# CHECK: encoding: [0x01,0x10,0x00,0x14]
eq.a %d1, %a0, %a1

# CHECK-INST: eq.a %d1, %a0, %a14
# CHECK: encoding: [0x01,0xe0,0x00,0x14]
eq.a %d1, %a0, %a14

# CHECK-INST: eq.a %d1, %a0, %a15
# CHECK: encoding: [0x01,0xf0,0x00,0x14]
eq.a %d1, %a0, %a15

# CHECK-INST: eq.a %d1, %a1, %a0
# CHECK: encoding: [0x01,0x01,0x00,0x14]
eq.a %d1, %a1, %a0

# CHECK-INST: eq.a %d1, %a1, %a1
# CHECK: encoding: [0x01,0x11,0x00,0x14]
eq.a %d1, %a1, %a1

# CHECK-INST: eq.a %d1, %a1, %a14
# CHECK: encoding: [0x01,0xe1,0x00,0x14]
eq.a %d1, %a1, %a14

# CHECK-INST: eq.a %d1, %a1, %a15
# CHECK: encoding: [0x01,0xf1,0x00,0x14]
eq.a %d1, %a1, %a15

# CHECK-INST: eq.a %d1, %a14, %a0
# CHECK: encoding: [0x01,0x0e,0x00,0x14]
eq.a %d1, %a14, %a0

# CHECK-INST: eq.a %d1, %a14, %a1
# CHECK: encoding: [0x01,0x1e,0x00,0x14]
eq.a %d1, %a14, %a1

# CHECK-INST: eq.a %d1, %a14, %a14
# CHECK: encoding: [0x01,0xee,0x00,0x14]
eq.a %d1, %a14, %a14

# CHECK-INST: eq.a %d1, %a14, %a15
# CHECK: encoding: [0x01,0xfe,0x00,0x14]
eq.a %d1, %a14, %a15

# CHECK-INST: eq.a %d1, %a15, %a0
# CHECK: encoding: [0x01,0x0f,0x00,0x14]
eq.a %d1, %a15, %a0

# CHECK-INST: eq.a %d1, %a15, %a1
# CHECK: encoding: [0x01,0x1f,0x00,0x14]
eq.a %d1, %a15, %a1

# CHECK-INST: eq.a %d1, %a15, %a14
# CHECK: encoding: [0x01,0xef,0x00,0x14]
eq.a %d1, %a15, %a14

# CHECK-INST: eq.a %d1, %a15, %a15
# CHECK: encoding: [0x01,0xff,0x00,0x14]
eq.a %d1, %a15, %a15

# CHECK-INST: eq.a %d14, %a0, %a0
# CHECK: encoding: [0x01,0x00,0x00,0xe4]
eq.a %d14, %a0, %a0

# CHECK-INST: eq.a %d14, %a0, %a1
# CHECK: encoding: [0x01,0x10,0x00,0xe4]
eq.a %d14, %a0, %a1

# CHECK-INST: eq.a %d14, %a0, %a14
# CHECK: encoding: [0x01,0xe0,0x00,0xe4]
eq.a %d14, %a0, %a14

# CHECK-INST: eq.a %d14, %a0, %a15
# CHECK: encoding: [0x01,0xf0,0x00,0xe4]
eq.a %d14, %a0, %a15

# CHECK-INST: eq.a %d14, %a1, %a0
# CHECK: encoding: [0x01,0x01,0x00,0xe4]
eq.a %d14, %a1, %a0

# CHECK-INST: eq.a %d14, %a1, %a1
# CHECK: encoding: [0x01,0x11,0x00,0xe4]
eq.a %d14, %a1, %a1

# CHECK-INST: eq.a %d14, %a1, %a14
# CHECK: encoding: [0x01,0xe1,0x00,0xe4]
eq.a %d14, %a1, %a14

# CHECK-INST: eq.a %d14, %a1, %a15
# CHECK: encoding: [0x01,0xf1,0x00,0xe4]
eq.a %d14, %a1, %a15

# CHECK-INST: eq.a %d14, %a14, %a0
# CHECK: encoding: [0x01,0x0e,0x00,0xe4]
eq.a %d14, %a14, %a0

# CHECK-INST: eq.a %d14, %a14, %a1
# CHECK: encoding: [0x01,0x1e,0x00,0xe4]
eq.a %d14, %a14, %a1

# CHECK-INST: eq.a %d14, %a14, %a14
# CHECK: encoding: [0x01,0xee,0x00,0xe4]
eq.a %d14, %a14, %a14

# CHECK-INST: eq.a %d14, %a14, %a15
# CHECK: encoding: [0x01,0xfe,0x00,0xe4]
eq.a %d14, %a14, %a15

# CHECK-INST: eq.a %d14, %a15, %a0
# CHECK: encoding: [0x01,0x0f,0x00,0xe4]
eq.a %d14, %a15, %a0

# CHECK-INST: eq.a %d14, %a15, %a1
# CHECK: encoding: [0x01,0x1f,0x00,0xe4]
eq.a %d14, %a15, %a1

# CHECK-INST: eq.a %d14, %a15, %a14
# CHECK: encoding: [0x01,0xef,0x00,0xe4]
eq.a %d14, %a15, %a14

# CHECK-INST: eq.a %d14, %a15, %a15
# CHECK: encoding: [0x01,0xff,0x00,0xe4]
eq.a %d14, %a15, %a15

# CHECK-INST: eq.a %d15, %a0, %a0
# CHECK: encoding: [0x01,0x00,0x00,0xf4]
eq.a %d15, %a0, %a0

# CHECK-INST: eq.a %d15, %a0, %a1
# CHECK: encoding: [0x01,0x10,0x00,0xf4]
eq.a %d15, %a0, %a1

# CHECK-INST: eq.a %d15, %a0, %a14
# CHECK: encoding: [0x01,0xe0,0x00,0xf4]
eq.a %d15, %a0, %a14

# CHECK-INST: eq.a %d15, %a0, %a15
# CHECK: encoding: [0x01,0xf0,0x00,0xf4]
eq.a %d15, %a0, %a15

# CHECK-INST: eq.a %d15, %a1, %a0
# CHECK: encoding: [0x01,0x01,0x00,0xf4]
eq.a %d15, %a1, %a0

# CHECK-INST: eq.a %d15, %a1, %a1
# CHECK: encoding: [0x01,0x11,0x00,0xf4]
eq.a %d15, %a1, %a1

# CHECK-INST: eq.a %d15, %a1, %a14
# CHECK: encoding: [0x01,0xe1,0x00,0xf4]
eq.a %d15, %a1, %a14

# CHECK-INST: eq.a %d15, %a1, %a15
# CHECK: encoding: [0x01,0xf1,0x00,0xf4]
eq.a %d15, %a1, %a15

# CHECK-INST: eq.a %d15, %a14, %a0
# CHECK: encoding: [0x01,0x0e,0x00,0xf4]
eq.a %d15, %a14, %a0

# CHECK-INST: eq.a %d15, %a14, %a1
# CHECK: encoding: [0x01,0x1e,0x00,0xf4]
eq.a %d15, %a14, %a1

# CHECK-INST: eq.a %d15, %a14, %a14
# CHECK: encoding: [0x01,0xee,0x00,0xf4]
eq.a %d15, %a14, %a14

# CHECK-INST: eq.a %d15, %a14, %a15
# CHECK: encoding: [0x01,0xfe,0x00,0xf4]
eq.a %d15, %a14, %a15

# CHECK-INST: eq.a %d15, %a15, %a0
# CHECK: encoding: [0x01,0x0f,0x00,0xf4]
eq.a %d15, %a15, %a0

# CHECK-INST: eq.a %d15, %a15, %a1
# CHECK: encoding: [0x01,0x1f,0x00,0xf4]
eq.a %d15, %a15, %a1

# CHECK-INST: eq.a %d15, %a15, %a14
# CHECK: encoding: [0x01,0xef,0x00,0xf4]
eq.a %d15, %a15, %a14

# CHECK-INST: eq.a %d15, %a15, %a15
# CHECK: encoding: [0x01,0xff,0x00,0xf4]
eq.a %d15, %a15, %a15

# CHECK-INST: eqz.a %d0, %a0
# CHECK: encoding: [0x01,0x00,0x80,0x04]
eqz.a %d0, %a0

# CHECK-INST: eqz.a %d0, %a1
# CHECK: encoding: [0x01,0x01,0x80,0x04]
eqz.a %d0, %a1

# CHECK-INST: eqz.a %d0, %a14
# CHECK: encoding: [0x01,0x0e,0x80,0x04]
eqz.a %d0, %a14

# CHECK-INST: eqz.a %d0, %a15
# CHECK: encoding: [0x01,0x0f,0x80,0x04]
eqz.a %d0, %a15

# CHECK-INST: eqz.a %d1, %a0
# CHECK: encoding: [0x01,0x00,0x80,0x14]
eqz.a %d1, %a0

# CHECK-INST: eqz.a %d1, %a1
# CHECK: encoding: [0x01,0x01,0x80,0x14]
eqz.a %d1, %a1

# CHECK-INST: eqz.a %d1, %a14
# CHECK: encoding: [0x01,0x0e,0x80,0x14]
eqz.a %d1, %a14

# CHECK-INST: eqz.a %d1, %a15
# CHECK: encoding: [0x01,0x0f,0x80,0x14]
eqz.a %d1, %a15

# CHECK-INST: eqz.a %d14, %a0
# CHECK: encoding: [0x01,0x00,0x80,0xe4]
eqz.a %d14, %a0

# CHECK-INST: eqz.a %d14, %a1
# CHECK: encoding: [0x01,0x01,0x80,0xe4]
eqz.a %d14, %a1

# CHECK-INST: eqz.a %d14, %a14
# CHECK: encoding: [0x01,0x0e,0x80,0xe4]
eqz.a %d14, %a14

# CHECK-INST: eqz.a %d14, %a15
# CHECK: encoding: [0x01,0x0f,0x80,0xe4]
eqz.a %d14, %a15

# CHECK-INST: eqz.a %d15, %a0
# CHECK: encoding: [0x01,0x00,0x80,0xf4]
eqz.a %d15, %a0

# CHECK-INST: eqz.a %d15, %a1
# CHECK: encoding: [0x01,0x01,0x80,0xf4]
eqz.a %d15, %a1

# CHECK-INST: eqz.a %d15, %a14
# CHECK: encoding: [0x01,0x0e,0x80,0xf4]
eqz.a %d15, %a14

# CHECK-INST: eqz.a %d15, %a15
# CHECK: encoding: [0x01,0x0f,0x80,0xf4]
eqz.a %d15, %a15

# CHECK-INST: ge.a %d0, %a0, %a0
# CHECK: encoding: [0x01,0x00,0x30,0x04]
ge.a %d0, %a0, %a0

# CHECK-INST: ge.a %d0, %a0, %a1
# CHECK: encoding: [0x01,0x10,0x30,0x04]
ge.a %d0, %a0, %a1

# CHECK-INST: ge.a %d0, %a0, %a14
# CHECK: encoding: [0x01,0xe0,0x30,0x04]
ge.a %d0, %a0, %a14

# CHECK-INST: ge.a %d0, %a0, %a15
# CHECK: encoding: [0x01,0xf0,0x30,0x04]
ge.a %d0, %a0, %a15

# CHECK-INST: ge.a %d0, %a1, %a0
# CHECK: encoding: [0x01,0x01,0x30,0x04]
ge.a %d0, %a1, %a0

# CHECK-INST: ge.a %d0, %a1, %a1
# CHECK: encoding: [0x01,0x11,0x30,0x04]
ge.a %d0, %a1, %a1

# CHECK-INST: ge.a %d0, %a1, %a14
# CHECK: encoding: [0x01,0xe1,0x30,0x04]
ge.a %d0, %a1, %a14

# CHECK-INST: ge.a %d0, %a1, %a15
# CHECK: encoding: [0x01,0xf1,0x30,0x04]
ge.a %d0, %a1, %a15

# CHECK-INST: ge.a %d0, %a14, %a0
# CHECK: encoding: [0x01,0x0e,0x30,0x04]
ge.a %d0, %a14, %a0

# CHECK-INST: ge.a %d0, %a14, %a1
# CHECK: encoding: [0x01,0x1e,0x30,0x04]
ge.a %d0, %a14, %a1

# CHECK-INST: ge.a %d0, %a14, %a14
# CHECK: encoding: [0x01,0xee,0x30,0x04]
ge.a %d0, %a14, %a14

# CHECK-INST: ge.a %d0, %a14, %a15
# CHECK: encoding: [0x01,0xfe,0x30,0x04]
ge.a %d0, %a14, %a15

# CHECK-INST: ge.a %d0, %a15, %a0
# CHECK: encoding: [0x01,0x0f,0x30,0x04]
ge.a %d0, %a15, %a0

# CHECK-INST: ge.a %d0, %a15, %a1
# CHECK: encoding: [0x01,0x1f,0x30,0x04]
ge.a %d0, %a15, %a1

# CHECK-INST: ge.a %d0, %a15, %a14
# CHECK: encoding: [0x01,0xef,0x30,0x04]
ge.a %d0, %a15, %a14

# CHECK-INST: ge.a %d0, %a15, %a15
# CHECK: encoding: [0x01,0xff,0x30,0x04]
ge.a %d0, %a15, %a15

# CHECK-INST: ge.a %d1, %a0, %a0
# CHECK: encoding: [0x01,0x00,0x30,0x14]
ge.a %d1, %a0, %a0

# CHECK-INST: ge.a %d1, %a0, %a1
# CHECK: encoding: [0x01,0x10,0x30,0x14]
ge.a %d1, %a0, %a1

# CHECK-INST: ge.a %d1, %a0, %a14
# CHECK: encoding: [0x01,0xe0,0x30,0x14]
ge.a %d1, %a0, %a14

# CHECK-INST: ge.a %d1, %a0, %a15
# CHECK: encoding: [0x01,0xf0,0x30,0x14]
ge.a %d1, %a0, %a15

# CHECK-INST: ge.a %d1, %a1, %a0
# CHECK: encoding: [0x01,0x01,0x30,0x14]
ge.a %d1, %a1, %a0

# CHECK-INST: ge.a %d1, %a1, %a1
# CHECK: encoding: [0x01,0x11,0x30,0x14]
ge.a %d1, %a1, %a1

# CHECK-INST: ge.a %d1, %a1, %a14
# CHECK: encoding: [0x01,0xe1,0x30,0x14]
ge.a %d1, %a1, %a14

# CHECK-INST: ge.a %d1, %a1, %a15
# CHECK: encoding: [0x01,0xf1,0x30,0x14]
ge.a %d1, %a1, %a15

# CHECK-INST: ge.a %d1, %a14, %a0
# CHECK: encoding: [0x01,0x0e,0x30,0x14]
ge.a %d1, %a14, %a0

# CHECK-INST: ge.a %d1, %a14, %a1
# CHECK: encoding: [0x01,0x1e,0x30,0x14]
ge.a %d1, %a14, %a1

# CHECK-INST: ge.a %d1, %a14, %a14
# CHECK: encoding: [0x01,0xee,0x30,0x14]
ge.a %d1, %a14, %a14

# CHECK-INST: ge.a %d1, %a14, %a15
# CHECK: encoding: [0x01,0xfe,0x30,0x14]
ge.a %d1, %a14, %a15

# CHECK-INST: ge.a %d1, %a15, %a0
# CHECK: encoding: [0x01,0x0f,0x30,0x14]
ge.a %d1, %a15, %a0

# CHECK-INST: ge.a %d1, %a15, %a1
# CHECK: encoding: [0x01,0x1f,0x30,0x14]
ge.a %d1, %a15, %a1

# CHECK-INST: ge.a %d1, %a15, %a14
# CHECK: encoding: [0x01,0xef,0x30,0x14]
ge.a %d1, %a15, %a14

# CHECK-INST: ge.a %d1, %a15, %a15
# CHECK: encoding: [0x01,0xff,0x30,0x14]
ge.a %d1, %a15, %a15

# CHECK-INST: ge.a %d14, %a0, %a0
# CHECK: encoding: [0x01,0x00,0x30,0xe4]
ge.a %d14, %a0, %a0

# CHECK-INST: ge.a %d14, %a0, %a1
# CHECK: encoding: [0x01,0x10,0x30,0xe4]
ge.a %d14, %a0, %a1

# CHECK-INST: ge.a %d14, %a0, %a14
# CHECK: encoding: [0x01,0xe0,0x30,0xe4]
ge.a %d14, %a0, %a14

# CHECK-INST: ge.a %d14, %a0, %a15
# CHECK: encoding: [0x01,0xf0,0x30,0xe4]
ge.a %d14, %a0, %a15

# CHECK-INST: ge.a %d14, %a1, %a0
# CHECK: encoding: [0x01,0x01,0x30,0xe4]
ge.a %d14, %a1, %a0

# CHECK-INST: ge.a %d14, %a1, %a1
# CHECK: encoding: [0x01,0x11,0x30,0xe4]
ge.a %d14, %a1, %a1

# CHECK-INST: ge.a %d14, %a1, %a14
# CHECK: encoding: [0x01,0xe1,0x30,0xe4]
ge.a %d14, %a1, %a14

# CHECK-INST: ge.a %d14, %a1, %a15
# CHECK: encoding: [0x01,0xf1,0x30,0xe4]
ge.a %d14, %a1, %a15

# CHECK-INST: ge.a %d14, %a14, %a0
# CHECK: encoding: [0x01,0x0e,0x30,0xe4]
ge.a %d14, %a14, %a0

# CHECK-INST: ge.a %d14, %a14, %a1
# CHECK: encoding: [0x01,0x1e,0x30,0xe4]
ge.a %d14, %a14, %a1

# CHECK-INST: ge.a %d14, %a14, %a14
# CHECK: encoding: [0x01,0xee,0x30,0xe4]
ge.a %d14, %a14, %a14

# CHECK-INST: ge.a %d14, %a14, %a15
# CHECK: encoding: [0x01,0xfe,0x30,0xe4]
ge.a %d14, %a14, %a15

# CHECK-INST: ge.a %d14, %a15, %a0
# CHECK: encoding: [0x01,0x0f,0x30,0xe4]
ge.a %d14, %a15, %a0

# CHECK-INST: ge.a %d14, %a15, %a1
# CHECK: encoding: [0x01,0x1f,0x30,0xe4]
ge.a %d14, %a15, %a1

# CHECK-INST: ge.a %d14, %a15, %a14
# CHECK: encoding: [0x01,0xef,0x30,0xe4]
ge.a %d14, %a15, %a14

# CHECK-INST: ge.a %d14, %a15, %a15
# CHECK: encoding: [0x01,0xff,0x30,0xe4]
ge.a %d14, %a15, %a15

# CHECK-INST: ge.a %d15, %a0, %a0
# CHECK: encoding: [0x01,0x00,0x30,0xf4]
ge.a %d15, %a0, %a0

# CHECK-INST: ge.a %d15, %a0, %a1
# CHECK: encoding: [0x01,0x10,0x30,0xf4]
ge.a %d15, %a0, %a1

# CHECK-INST: ge.a %d15, %a0, %a14
# CHECK: encoding: [0x01,0xe0,0x30,0xf4]
ge.a %d15, %a0, %a14

# CHECK-INST: ge.a %d15, %a0, %a15
# CHECK: encoding: [0x01,0xf0,0x30,0xf4]
ge.a %d15, %a0, %a15

# CHECK-INST: ge.a %d15, %a1, %a0
# CHECK: encoding: [0x01,0x01,0x30,0xf4]
ge.a %d15, %a1, %a0

# CHECK-INST: ge.a %d15, %a1, %a1
# CHECK: encoding: [0x01,0x11,0x30,0xf4]
ge.a %d15, %a1, %a1

# CHECK-INST: ge.a %d15, %a1, %a14
# CHECK: encoding: [0x01,0xe1,0x30,0xf4]
ge.a %d15, %a1, %a14

# CHECK-INST: ge.a %d15, %a1, %a15
# CHECK: encoding: [0x01,0xf1,0x30,0xf4]
ge.a %d15, %a1, %a15

# CHECK-INST: ge.a %d15, %a14, %a0
# CHECK: encoding: [0x01,0x0e,0x30,0xf4]
ge.a %d15, %a14, %a0

# CHECK-INST: ge.a %d15, %a14, %a1
# CHECK: encoding: [0x01,0x1e,0x30,0xf4]
ge.a %d15, %a14, %a1

# CHECK-INST: ge.a %d15, %a14, %a14
# CHECK: encoding: [0x01,0xee,0x30,0xf4]
ge.a %d15, %a14, %a14

# CHECK-INST: ge.a %d15, %a14, %a15
# CHECK: encoding: [0x01,0xfe,0x30,0xf4]
ge.a %d15, %a14, %a15

# CHECK-INST: ge.a %d15, %a15, %a0
# CHECK: encoding: [0x01,0x0f,0x30,0xf4]
ge.a %d15, %a15, %a0

# CHECK-INST: ge.a %d15, %a15, %a1
# CHECK: encoding: [0x01,0x1f,0x30,0xf4]
ge.a %d15, %a15, %a1

# CHECK-INST: ge.a %d15, %a15, %a14
# CHECK: encoding: [0x01,0xef,0x30,0xf4]
ge.a %d15, %a15, %a14

# CHECK-INST: ge.a %d15, %a15, %a15
# CHECK: encoding: [0x01,0xff,0x30,0xf4]
ge.a %d15, %a15, %a15

# CHECK-INST: lt.a %d0, %a0, %a0
# CHECK: encoding: [0x01,0x00,0x20,0x04]
lt.a %d0, %a0, %a0

# CHECK-INST: lt.a %d0, %a0, %a1
# CHECK: encoding: [0x01,0x10,0x20,0x04]
lt.a %d0, %a0, %a1

# CHECK-INST: lt.a %d0, %a0, %a14
# CHECK: encoding: [0x01,0xe0,0x20,0x04]
lt.a %d0, %a0, %a14

# CHECK-INST: lt.a %d0, %a0, %a15
# CHECK: encoding: [0x01,0xf0,0x20,0x04]
lt.a %d0, %a0, %a15

# CHECK-INST: lt.a %d0, %a1, %a0
# CHECK: encoding: [0x01,0x01,0x20,0x04]
lt.a %d0, %a1, %a0

# CHECK-INST: lt.a %d0, %a1, %a1
# CHECK: encoding: [0x01,0x11,0x20,0x04]
lt.a %d0, %a1, %a1

# CHECK-INST: lt.a %d0, %a1, %a14
# CHECK: encoding: [0x01,0xe1,0x20,0x04]
lt.a %d0, %a1, %a14

# CHECK-INST: lt.a %d0, %a1, %a15
# CHECK: encoding: [0x01,0xf1,0x20,0x04]
lt.a %d0, %a1, %a15

# CHECK-INST: lt.a %d0, %a14, %a0
# CHECK: encoding: [0x01,0x0e,0x20,0x04]
lt.a %d0, %a14, %a0

# CHECK-INST: lt.a %d0, %a14, %a1
# CHECK: encoding: [0x01,0x1e,0x20,0x04]
lt.a %d0, %a14, %a1

# CHECK-INST: lt.a %d0, %a14, %a14
# CHECK: encoding: [0x01,0xee,0x20,0x04]
lt.a %d0, %a14, %a14

# CHECK-INST: lt.a %d0, %a14, %a15
# CHECK: encoding: [0x01,0xfe,0x20,0x04]
lt.a %d0, %a14, %a15

# CHECK-INST: lt.a %d0, %a15, %a0
# CHECK: encoding: [0x01,0x0f,0x20,0x04]
lt.a %d0, %a15, %a0

# CHECK-INST: lt.a %d0, %a15, %a1
# CHECK: encoding: [0x01,0x1f,0x20,0x04]
lt.a %d0, %a15, %a1

# CHECK-INST: lt.a %d0, %a15, %a14
# CHECK: encoding: [0x01,0xef,0x20,0x04]
lt.a %d0, %a15, %a14

# CHECK-INST: lt.a %d0, %a15, %a15
# CHECK: encoding: [0x01,0xff,0x20,0x04]
lt.a %d0, %a15, %a15

# CHECK-INST: lt.a %d1, %a0, %a0
# CHECK: encoding: [0x01,0x00,0x20,0x14]
lt.a %d1, %a0, %a0

# CHECK-INST: lt.a %d1, %a0, %a1
# CHECK: encoding: [0x01,0x10,0x20,0x14]
lt.a %d1, %a0, %a1

# CHECK-INST: lt.a %d1, %a0, %a14
# CHECK: encoding: [0x01,0xe0,0x20,0x14]
lt.a %d1, %a0, %a14

# CHECK-INST: lt.a %d1, %a0, %a15
# CHECK: encoding: [0x01,0xf0,0x20,0x14]
lt.a %d1, %a0, %a15

# CHECK-INST: lt.a %d1, %a1, %a0
# CHECK: encoding: [0x01,0x01,0x20,0x14]
lt.a %d1, %a1, %a0

# CHECK-INST: lt.a %d1, %a1, %a1
# CHECK: encoding: [0x01,0x11,0x20,0x14]
lt.a %d1, %a1, %a1

# CHECK-INST: lt.a %d1, %a1, %a14
# CHECK: encoding: [0x01,0xe1,0x20,0x14]
lt.a %d1, %a1, %a14

# CHECK-INST: lt.a %d1, %a1, %a15
# CHECK: encoding: [0x01,0xf1,0x20,0x14]
lt.a %d1, %a1, %a15

# CHECK-INST: lt.a %d1, %a14, %a0
# CHECK: encoding: [0x01,0x0e,0x20,0x14]
lt.a %d1, %a14, %a0

# CHECK-INST: lt.a %d1, %a14, %a1
# CHECK: encoding: [0x01,0x1e,0x20,0x14]
lt.a %d1, %a14, %a1

# CHECK-INST: lt.a %d1, %a14, %a14
# CHECK: encoding: [0x01,0xee,0x20,0x14]
lt.a %d1, %a14, %a14

# CHECK-INST: lt.a %d1, %a14, %a15
# CHECK: encoding: [0x01,0xfe,0x20,0x14]
lt.a %d1, %a14, %a15

# CHECK-INST: lt.a %d1, %a15, %a0
# CHECK: encoding: [0x01,0x0f,0x20,0x14]
lt.a %d1, %a15, %a0

# CHECK-INST: lt.a %d1, %a15, %a1
# CHECK: encoding: [0x01,0x1f,0x20,0x14]
lt.a %d1, %a15, %a1

# CHECK-INST: lt.a %d1, %a15, %a14
# CHECK: encoding: [0x01,0xef,0x20,0x14]
lt.a %d1, %a15, %a14

# CHECK-INST: lt.a %d1, %a15, %a15
# CHECK: encoding: [0x01,0xff,0x20,0x14]
lt.a %d1, %a15, %a15

# CHECK-INST: lt.a %d14, %a0, %a0
# CHECK: encoding: [0x01,0x00,0x20,0xe4]
lt.a %d14, %a0, %a0

# CHECK-INST: lt.a %d14, %a0, %a1
# CHECK: encoding: [0x01,0x10,0x20,0xe4]
lt.a %d14, %a0, %a1

# CHECK-INST: lt.a %d14, %a0, %a14
# CHECK: encoding: [0x01,0xe0,0x20,0xe4]
lt.a %d14, %a0, %a14

# CHECK-INST: lt.a %d14, %a0, %a15
# CHECK: encoding: [0x01,0xf0,0x20,0xe4]
lt.a %d14, %a0, %a15

# CHECK-INST: lt.a %d14, %a1, %a0
# CHECK: encoding: [0x01,0x01,0x20,0xe4]
lt.a %d14, %a1, %a0

# CHECK-INST: lt.a %d14, %a1, %a1
# CHECK: encoding: [0x01,0x11,0x20,0xe4]
lt.a %d14, %a1, %a1

# CHECK-INST: lt.a %d14, %a1, %a14
# CHECK: encoding: [0x01,0xe1,0x20,0xe4]
lt.a %d14, %a1, %a14

# CHECK-INST: lt.a %d14, %a1, %a15
# CHECK: encoding: [0x01,0xf1,0x20,0xe4]
lt.a %d14, %a1, %a15

# CHECK-INST: lt.a %d14, %a14, %a0
# CHECK: encoding: [0x01,0x0e,0x20,0xe4]
lt.a %d14, %a14, %a0

# CHECK-INST: lt.a %d14, %a14, %a1
# CHECK: encoding: [0x01,0x1e,0x20,0xe4]
lt.a %d14, %a14, %a1

# CHECK-INST: lt.a %d14, %a14, %a14
# CHECK: encoding: [0x01,0xee,0x20,0xe4]
lt.a %d14, %a14, %a14

# CHECK-INST: lt.a %d14, %a14, %a15
# CHECK: encoding: [0x01,0xfe,0x20,0xe4]
lt.a %d14, %a14, %a15

# CHECK-INST: lt.a %d14, %a15, %a0
# CHECK: encoding: [0x01,0x0f,0x20,0xe4]
lt.a %d14, %a15, %a0

# CHECK-INST: lt.a %d14, %a15, %a1
# CHECK: encoding: [0x01,0x1f,0x20,0xe4]
lt.a %d14, %a15, %a1

# CHECK-INST: lt.a %d14, %a15, %a14
# CHECK: encoding: [0x01,0xef,0x20,0xe4]
lt.a %d14, %a15, %a14

# CHECK-INST: lt.a %d14, %a15, %a15
# CHECK: encoding: [0x01,0xff,0x20,0xe4]
lt.a %d14, %a15, %a15

# CHECK-INST: lt.a %d15, %a0, %a0
# CHECK: encoding: [0x01,0x00,0x20,0xf4]
lt.a %d15, %a0, %a0

# CHECK-INST: lt.a %d15, %a0, %a1
# CHECK: encoding: [0x01,0x10,0x20,0xf4]
lt.a %d15, %a0, %a1

# CHECK-INST: lt.a %d15, %a0, %a14
# CHECK: encoding: [0x01,0xe0,0x20,0xf4]
lt.a %d15, %a0, %a14

# CHECK-INST: lt.a %d15, %a0, %a15
# CHECK: encoding: [0x01,0xf0,0x20,0xf4]
lt.a %d15, %a0, %a15

# CHECK-INST: lt.a %d15, %a1, %a0
# CHECK: encoding: [0x01,0x01,0x20,0xf4]
lt.a %d15, %a1, %a0

# CHECK-INST: lt.a %d15, %a1, %a1
# CHECK: encoding: [0x01,0x11,0x20,0xf4]
lt.a %d15, %a1, %a1

# CHECK-INST: lt.a %d15, %a1, %a14
# CHECK: encoding: [0x01,0xe1,0x20,0xf4]
lt.a %d15, %a1, %a14

# CHECK-INST: lt.a %d15, %a1, %a15
# CHECK: encoding: [0x01,0xf1,0x20,0xf4]
lt.a %d15, %a1, %a15

# CHECK-INST: lt.a %d15, %a14, %a0
# CHECK: encoding: [0x01,0x0e,0x20,0xf4]
lt.a %d15, %a14, %a0

# CHECK-INST: lt.a %d15, %a14, %a1
# CHECK: encoding: [0x01,0x1e,0x20,0xf4]
lt.a %d15, %a14, %a1

# CHECK-INST: lt.a %d15, %a14, %a14
# CHECK: encoding: [0x01,0xee,0x20,0xf4]
lt.a %d15, %a14, %a14

# CHECK-INST: lt.a %d15, %a14, %a15
# CHECK: encoding: [0x01,0xfe,0x20,0xf4]
lt.a %d15, %a14, %a15

# CHECK-INST: lt.a %d15, %a15, %a0
# CHECK: encoding: [0x01,0x0f,0x20,0xf4]
lt.a %d15, %a15, %a0

# CHECK-INST: lt.a %d15, %a15, %a1
# CHECK: encoding: [0x01,0x1f,0x20,0xf4]
lt.a %d15, %a15, %a1

# CHECK-INST: lt.a %d15, %a15, %a14
# CHECK: encoding: [0x01,0xef,0x20,0xf4]
lt.a %d15, %a15, %a14

# CHECK-INST: lt.a %d15, %a15, %a15
# CHECK: encoding: [0x01,0xff,0x20,0xf4]
lt.a %d15, %a15, %a15

# CHECK-INST: ne.a %d0, %a0, %a0
# CHECK: encoding: [0x01,0x00,0x10,0x04]
ne.a %d0, %a0, %a0

# CHECK-INST: ne.a %d0, %a0, %a1
# CHECK: encoding: [0x01,0x10,0x10,0x04]
ne.a %d0, %a0, %a1

# CHECK-INST: ne.a %d0, %a0, %a14
# CHECK: encoding: [0x01,0xe0,0x10,0x04]
ne.a %d0, %a0, %a14

# CHECK-INST: ne.a %d0, %a0, %a15
# CHECK: encoding: [0x01,0xf0,0x10,0x04]
ne.a %d0, %a0, %a15

# CHECK-INST: ne.a %d0, %a1, %a0
# CHECK: encoding: [0x01,0x01,0x10,0x04]
ne.a %d0, %a1, %a0

# CHECK-INST: ne.a %d0, %a1, %a1
# CHECK: encoding: [0x01,0x11,0x10,0x04]
ne.a %d0, %a1, %a1

# CHECK-INST: ne.a %d0, %a1, %a14
# CHECK: encoding: [0x01,0xe1,0x10,0x04]
ne.a %d0, %a1, %a14

# CHECK-INST: ne.a %d0, %a1, %a15
# CHECK: encoding: [0x01,0xf1,0x10,0x04]
ne.a %d0, %a1, %a15

# CHECK-INST: ne.a %d0, %a14, %a0
# CHECK: encoding: [0x01,0x0e,0x10,0x04]
ne.a %d0, %a14, %a0

# CHECK-INST: ne.a %d0, %a14, %a1
# CHECK: encoding: [0x01,0x1e,0x10,0x04]
ne.a %d0, %a14, %a1

# CHECK-INST: ne.a %d0, %a14, %a14
# CHECK: encoding: [0x01,0xee,0x10,0x04]
ne.a %d0, %a14, %a14

# CHECK-INST: ne.a %d0, %a14, %a15
# CHECK: encoding: [0x01,0xfe,0x10,0x04]
ne.a %d0, %a14, %a15

# CHECK-INST: ne.a %d0, %a15, %a0
# CHECK: encoding: [0x01,0x0f,0x10,0x04]
ne.a %d0, %a15, %a0

# CHECK-INST: ne.a %d0, %a15, %a1
# CHECK: encoding: [0x01,0x1f,0x10,0x04]
ne.a %d0, %a15, %a1

# CHECK-INST: ne.a %d0, %a15, %a14
# CHECK: encoding: [0x01,0xef,0x10,0x04]
ne.a %d0, %a15, %a14

# CHECK-INST: ne.a %d0, %a15, %a15
# CHECK: encoding: [0x01,0xff,0x10,0x04]
ne.a %d0, %a15, %a15

# CHECK-INST: ne.a %d1, %a0, %a0
# CHECK: encoding: [0x01,0x00,0x10,0x14]
ne.a %d1, %a0, %a0

# CHECK-INST: ne.a %d1, %a0, %a1
# CHECK: encoding: [0x01,0x10,0x10,0x14]
ne.a %d1, %a0, %a1

# CHECK-INST: ne.a %d1, %a0, %a14
# CHECK: encoding: [0x01,0xe0,0x10,0x14]
ne.a %d1, %a0, %a14

# CHECK-INST: ne.a %d1, %a0, %a15
# CHECK: encoding: [0x01,0xf0,0x10,0x14]
ne.a %d1, %a0, %a15

# CHECK-INST: ne.a %d1, %a1, %a0
# CHECK: encoding: [0x01,0x01,0x10,0x14]
ne.a %d1, %a1, %a0

# CHECK-INST: ne.a %d1, %a1, %a1
# CHECK: encoding: [0x01,0x11,0x10,0x14]
ne.a %d1, %a1, %a1

# CHECK-INST: ne.a %d1, %a1, %a14
# CHECK: encoding: [0x01,0xe1,0x10,0x14]
ne.a %d1, %a1, %a14

# CHECK-INST: ne.a %d1, %a1, %a15
# CHECK: encoding: [0x01,0xf1,0x10,0x14]
ne.a %d1, %a1, %a15

# CHECK-INST: ne.a %d1, %a14, %a0
# CHECK: encoding: [0x01,0x0e,0x10,0x14]
ne.a %d1, %a14, %a0

# CHECK-INST: ne.a %d1, %a14, %a1
# CHECK: encoding: [0x01,0x1e,0x10,0x14]
ne.a %d1, %a14, %a1

# CHECK-INST: ne.a %d1, %a14, %a14
# CHECK: encoding: [0x01,0xee,0x10,0x14]
ne.a %d1, %a14, %a14

# CHECK-INST: ne.a %d1, %a14, %a15
# CHECK: encoding: [0x01,0xfe,0x10,0x14]
ne.a %d1, %a14, %a15

# CHECK-INST: ne.a %d1, %a15, %a0
# CHECK: encoding: [0x01,0x0f,0x10,0x14]
ne.a %d1, %a15, %a0

# CHECK-INST: ne.a %d1, %a15, %a1
# CHECK: encoding: [0x01,0x1f,0x10,0x14]
ne.a %d1, %a15, %a1

# CHECK-INST: ne.a %d1, %a15, %a14
# CHECK: encoding: [0x01,0xef,0x10,0x14]
ne.a %d1, %a15, %a14

# CHECK-INST: ne.a %d1, %a15, %a15
# CHECK: encoding: [0x01,0xff,0x10,0x14]
ne.a %d1, %a15, %a15

# CHECK-INST: ne.a %d14, %a0, %a0
# CHECK: encoding: [0x01,0x00,0x10,0xe4]
ne.a %d14, %a0, %a0

# CHECK-INST: ne.a %d14, %a0, %a1
# CHECK: encoding: [0x01,0x10,0x10,0xe4]
ne.a %d14, %a0, %a1

# CHECK-INST: ne.a %d14, %a0, %a14
# CHECK: encoding: [0x01,0xe0,0x10,0xe4]
ne.a %d14, %a0, %a14

# CHECK-INST: ne.a %d14, %a0, %a15
# CHECK: encoding: [0x01,0xf0,0x10,0xe4]
ne.a %d14, %a0, %a15

# CHECK-INST: ne.a %d14, %a1, %a0
# CHECK: encoding: [0x01,0x01,0x10,0xe4]
ne.a %d14, %a1, %a0

# CHECK-INST: ne.a %d14, %a1, %a1
# CHECK: encoding: [0x01,0x11,0x10,0xe4]
ne.a %d14, %a1, %a1

# CHECK-INST: ne.a %d14, %a1, %a14
# CHECK: encoding: [0x01,0xe1,0x10,0xe4]
ne.a %d14, %a1, %a14

# CHECK-INST: ne.a %d14, %a1, %a15
# CHECK: encoding: [0x01,0xf1,0x10,0xe4]
ne.a %d14, %a1, %a15

# CHECK-INST: ne.a %d14, %a14, %a0
# CHECK: encoding: [0x01,0x0e,0x10,0xe4]
ne.a %d14, %a14, %a0

# CHECK-INST: ne.a %d14, %a14, %a1
# CHECK: encoding: [0x01,0x1e,0x10,0xe4]
ne.a %d14, %a14, %a1

# CHECK-INST: ne.a %d14, %a14, %a14
# CHECK: encoding: [0x01,0xee,0x10,0xe4]
ne.a %d14, %a14, %a14

# CHECK-INST: ne.a %d14, %a14, %a15
# CHECK: encoding: [0x01,0xfe,0x10,0xe4]
ne.a %d14, %a14, %a15

# CHECK-INST: ne.a %d14, %a15, %a0
# CHECK: encoding: [0x01,0x0f,0x10,0xe4]
ne.a %d14, %a15, %a0

# CHECK-INST: ne.a %d14, %a15, %a1
# CHECK: encoding: [0x01,0x1f,0x10,0xe4]
ne.a %d14, %a15, %a1

# CHECK-INST: ne.a %d14, %a15, %a14
# CHECK: encoding: [0x01,0xef,0x10,0xe4]
ne.a %d14, %a15, %a14

# CHECK-INST: ne.a %d14, %a15, %a15
# CHECK: encoding: [0x01,0xff,0x10,0xe4]
ne.a %d14, %a15, %a15

# CHECK-INST: ne.a %d15, %a0, %a0
# CHECK: encoding: [0x01,0x00,0x10,0xf4]
ne.a %d15, %a0, %a0

# CHECK-INST: ne.a %d15, %a0, %a1
# CHECK: encoding: [0x01,0x10,0x10,0xf4]
ne.a %d15, %a0, %a1

# CHECK-INST: ne.a %d15, %a0, %a14
# CHECK: encoding: [0x01,0xe0,0x10,0xf4]
ne.a %d15, %a0, %a14

# CHECK-INST: ne.a %d15, %a0, %a15
# CHECK: encoding: [0x01,0xf0,0x10,0xf4]
ne.a %d15, %a0, %a15

# CHECK-INST: ne.a %d15, %a1, %a0
# CHECK: encoding: [0x01,0x01,0x10,0xf4]
ne.a %d15, %a1, %a0

# CHECK-INST: ne.a %d15, %a1, %a1
# CHECK: encoding: [0x01,0x11,0x10,0xf4]
ne.a %d15, %a1, %a1

# CHECK-INST: ne.a %d15, %a1, %a14
# CHECK: encoding: [0x01,0xe1,0x10,0xf4]
ne.a %d15, %a1, %a14

# CHECK-INST: ne.a %d15, %a1, %a15
# CHECK: encoding: [0x01,0xf1,0x10,0xf4]
ne.a %d15, %a1, %a15

# CHECK-INST: ne.a %d15, %a14, %a0
# CHECK: encoding: [0x01,0x0e,0x10,0xf4]
ne.a %d15, %a14, %a0

# CHECK-INST: ne.a %d15, %a14, %a1
# CHECK: encoding: [0x01,0x1e,0x10,0xf4]
ne.a %d15, %a14, %a1

# CHECK-INST: ne.a %d15, %a14, %a14
# CHECK: encoding: [0x01,0xee,0x10,0xf4]
ne.a %d15, %a14, %a14

# CHECK-INST: ne.a %d15, %a14, %a15
# CHECK: encoding: [0x01,0xfe,0x10,0xf4]
ne.a %d15, %a14, %a15

# CHECK-INST: ne.a %d15, %a15, %a0
# CHECK: encoding: [0x01,0x0f,0x10,0xf4]
ne.a %d15, %a15, %a0

# CHECK-INST: ne.a %d15, %a15, %a1
# CHECK: encoding: [0x01,0x1f,0x10,0xf4]
ne.a %d15, %a15, %a1

# CHECK-INST: ne.a %d15, %a15, %a14
# CHECK: encoding: [0x01,0xef,0x10,0xf4]
ne.a %d15, %a15, %a14

# CHECK-INST: ne.a %d15, %a15, %a15
# CHECK: encoding: [0x01,0xff,0x10,0xf4]
ne.a %d15, %a15, %a15

# CHECK-INST: nez.a %d0, %a0
# CHECK: encoding: [0x01,0x00,0x90,0x04]
nez.a %d0, %a0

# CHECK-INST: nez.a %d0, %a1
# CHECK: encoding: [0x01,0x01,0x90,0x04]
nez.a %d0, %a1

# CHECK-INST: nez.a %d0, %a14
# CHECK: encoding: [0x01,0x0e,0x90,0x04]
nez.a %d0, %a14

# CHECK-INST: nez.a %d0, %a15
# CHECK: encoding: [0x01,0x0f,0x90,0x04]
nez.a %d0, %a15

# CHECK-INST: nez.a %d1, %a0
# CHECK: encoding: [0x01,0x00,0x90,0x14]
nez.a %d1, %a0

# CHECK-INST: nez.a %d1, %a1
# CHECK: encoding: [0x01,0x01,0x90,0x14]
nez.a %d1, %a1

# CHECK-INST: nez.a %d1, %a14
# CHECK: encoding: [0x01,0x0e,0x90,0x14]
nez.a %d1, %a14

# CHECK-INST: nez.a %d1, %a15
# CHECK: encoding: [0x01,0x0f,0x90,0x14]
nez.a %d1, %a15

# CHECK-INST: nez.a %d14, %a0
# CHECK: encoding: [0x01,0x00,0x90,0xe4]
nez.a %d14, %a0

# CHECK-INST: nez.a %d14, %a1
# CHECK: encoding: [0x01,0x01,0x90,0xe4]
nez.a %d14, %a1

# CHECK-INST: nez.a %d14, %a14
# CHECK: encoding: [0x01,0x0e,0x90,0xe4]
nez.a %d14, %a14

# CHECK-INST: nez.a %d14, %a15
# CHECK: encoding: [0x01,0x0f,0x90,0xe4]
nez.a %d14, %a15

# CHECK-INST: nez.a %d15, %a0
# CHECK: encoding: [0x01,0x00,0x90,0xf4]
nez.a %d15, %a0

# CHECK-INST: nez.a %d15, %a1
# CHECK: encoding: [0x01,0x01,0x90,0xf4]
nez.a %d15, %a1

# CHECK-INST: nez.a %d15, %a14
# CHECK: encoding: [0x01,0x0e,0x90,0xf4]
nez.a %d15, %a14

# CHECK-INST: nez.a %d15, %a15
# CHECK: encoding: [0x01,0x0f,0x90,0xf4]
nez.a %d15, %a15
 