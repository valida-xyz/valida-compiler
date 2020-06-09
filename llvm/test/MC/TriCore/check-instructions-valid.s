# RUN: llvm-mc %s -triple=tricore -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK,CHECK-INST %s
# RUN: llvm-mc -filetype=obj -triple=tricore < %s | llvm-objdump -d - \
# RUN:     | FileCheck -check-prefixes=CHECK-INST %s


# CHECK-INST: parity %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x20,0x00]
parity %d0, %d0

# CHECK-INST: parity %d0, %d1
# CHECK: encoding: [0x4b,0x01,0x20,0x00]
parity %d0, %d1

# CHECK-INST: parity %d0, %d14
# CHECK: encoding: [0x4b,0x0e,0x20,0x00]
parity %d0, %d14

# CHECK-INST: parity %d0, %d15
# CHECK: encoding: [0x4b,0x0f,0x20,0x00]
parity %d0, %d15

# CHECK-INST: parity %d1, %d0
# CHECK: encoding: [0x4b,0x00,0x20,0x10]
parity %d1, %d0

# CHECK-INST: parity %d1, %d1
# CHECK: encoding: [0x4b,0x01,0x20,0x10]
parity %d1, %d1

# CHECK-INST: parity %d1, %d14
# CHECK: encoding: [0x4b,0x0e,0x20,0x10]
parity %d1, %d14

# CHECK-INST: parity %d1, %d15
# CHECK: encoding: [0x4b,0x0f,0x20,0x10]
parity %d1, %d15

# CHECK-INST: parity %d14, %d0
# CHECK: encoding: [0x4b,0x00,0x20,0xe0]
parity %d14, %d0

# CHECK-INST: parity %d14, %d1
# CHECK: encoding: [0x4b,0x01,0x20,0xe0]
parity %d14, %d1

# CHECK-INST: parity %d14, %d14
# CHECK: encoding: [0x4b,0x0e,0x20,0xe0]
parity %d14, %d14

# CHECK-INST: parity %d14, %d15
# CHECK: encoding: [0x4b,0x0f,0x20,0xe0]
parity %d14, %d15

# CHECK-INST: parity %d15, %d0
# CHECK: encoding: [0x4b,0x00,0x20,0xf0]
parity %d15, %d0

# CHECK-INST: parity %d15, %d1
# CHECK: encoding: [0x4b,0x01,0x20,0xf0]
parity %d15, %d1

# CHECK-INST: parity %d15, %d14
# CHECK: encoding: [0x4b,0x0e,0x20,0xf0]
parity %d15, %d14

# CHECK-INST: parity %d15, %d15
# CHECK: encoding: [0x4b,0x0f,0x20,0xf0]
parity %d15, %d15

# CHECK-INST: popcnt.w %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x20,0x02]
popcnt.w %d0, %d0

# CHECK-INST: popcnt.w %d0, %d1
# CHECK: encoding: [0x4b,0x01,0x20,0x02]
popcnt.w %d0, %d1

# CHECK-INST: popcnt.w %d0, %d14
# CHECK: encoding: [0x4b,0x0e,0x20,0x02]
popcnt.w %d0, %d14

# CHECK-INST: popcnt.w %d0, %d15
# CHECK: encoding: [0x4b,0x0f,0x20,0x02]
popcnt.w %d0, %d15

# CHECK-INST: popcnt.w %d1, %d0
# CHECK: encoding: [0x4b,0x00,0x20,0x12]
popcnt.w %d1, %d0

# CHECK-INST: popcnt.w %d1, %d1
# CHECK: encoding: [0x4b,0x01,0x20,0x12]
popcnt.w %d1, %d1

# CHECK-INST: popcnt.w %d1, %d14
# CHECK: encoding: [0x4b,0x0e,0x20,0x12]
popcnt.w %d1, %d14

# CHECK-INST: popcnt.w %d1, %d15
# CHECK: encoding: [0x4b,0x0f,0x20,0x12]
popcnt.w %d1, %d15

# CHECK-INST: popcnt.w %d14, %d0
# CHECK: encoding: [0x4b,0x00,0x20,0xe2]
popcnt.w %d14, %d0

# CHECK-INST: popcnt.w %d14, %d1
# CHECK: encoding: [0x4b,0x01,0x20,0xe2]
popcnt.w %d14, %d1

# CHECK-INST: popcnt.w %d14, %d14
# CHECK: encoding: [0x4b,0x0e,0x20,0xe2]
popcnt.w %d14, %d14

# CHECK-INST: popcnt.w %d14, %d15
# CHECK: encoding: [0x4b,0x0f,0x20,0xe2]
popcnt.w %d14, %d15

# CHECK-INST: popcnt.w %d15, %d0
# CHECK: encoding: [0x4b,0x00,0x20,0xf2]
popcnt.w %d15, %d0

# CHECK-INST: popcnt.w %d15, %d1
# CHECK: encoding: [0x4b,0x01,0x20,0xf2]
popcnt.w %d15, %d1

# CHECK-INST: popcnt.w %d15, %d14
# CHECK: encoding: [0x4b,0x0e,0x20,0xf2]
popcnt.w %d15, %d14

# CHECK-INST: popcnt.w %d15, %d15
# CHECK: encoding: [0x4b,0x0f,0x20,0xf2]
popcnt.w %d15, %d15

# CHECK-INST: crc32.b %d0, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x60,0x00]
crc32.b %d0, %d0, %d0

# CHECK-INST: crc32.b %d0, %d0, %d1
# CHECK: encoding: [0x4b,0x01,0x60,0x00]
crc32.b %d0, %d0, %d1

# CHECK-INST: crc32.b %d0, %d0, %d14
# CHECK: encoding: [0x4b,0x0e,0x60,0x00]
crc32.b %d0, %d0, %d14

# CHECK-INST: crc32.b %d0, %d0, %d15
# CHECK: encoding: [0x4b,0x0f,0x60,0x00]
crc32.b %d0, %d0, %d15

# CHECK-INST: crc32.b %d0, %d1, %d0
# CHECK: encoding: [0x4b,0x10,0x60,0x00]
crc32.b %d0, %d1, %d0

# CHECK-INST: crc32.b %d0, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0x60,0x00]
crc32.b %d0, %d1, %d1

# CHECK-INST: crc32.b %d0, %d1, %d14
# CHECK: encoding: [0x4b,0x1e,0x60,0x00]
crc32.b %d0, %d1, %d14

# CHECK-INST: crc32.b %d0, %d1, %d15
# CHECK: encoding: [0x4b,0x1f,0x60,0x00]
crc32.b %d0, %d1, %d15

# CHECK-INST: crc32.b %d0, %d14, %d0
# CHECK: encoding: [0x4b,0xe0,0x60,0x00]
crc32.b %d0, %d14, %d0

# CHECK-INST: crc32.b %d0, %d14, %d1
# CHECK: encoding: [0x4b,0xe1,0x60,0x00]
crc32.b %d0, %d14, %d1

# CHECK-INST: crc32.b %d0, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0x60,0x00]
crc32.b %d0, %d14, %d14

# CHECK-INST: crc32.b %d0, %d14, %d15
# CHECK: encoding: [0x4b,0xef,0x60,0x00]
crc32.b %d0, %d14, %d15

# CHECK-INST: crc32.b %d0, %d15, %d0
# CHECK: encoding: [0x4b,0xf0,0x60,0x00]
crc32.b %d0, %d15, %d0

# CHECK-INST: crc32.b %d0, %d15, %d1
# CHECK: encoding: [0x4b,0xf1,0x60,0x00]
crc32.b %d0, %d15, %d1

# CHECK-INST: crc32.b %d0, %d15, %d14
# CHECK: encoding: [0x4b,0xfe,0x60,0x00]
crc32.b %d0, %d15, %d14

# CHECK-INST: crc32.b %d0, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0x60,0x00]
crc32.b %d0, %d15, %d15

# CHECK-INST: crc32.b %d1, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x60,0x10]
crc32.b %d1, %d0, %d0

# CHECK-INST: crc32.b %d1, %d0, %d1
# CHECK: encoding: [0x4b,0x01,0x60,0x10]
crc32.b %d1, %d0, %d1

# CHECK-INST: crc32.b %d1, %d0, %d14
# CHECK: encoding: [0x4b,0x0e,0x60,0x10]
crc32.b %d1, %d0, %d14

# CHECK-INST: crc32.b %d1, %d0, %d15
# CHECK: encoding: [0x4b,0x0f,0x60,0x10]
crc32.b %d1, %d0, %d15

# CHECK-INST: crc32.b %d1, %d1, %d0
# CHECK: encoding: [0x4b,0x10,0x60,0x10]
crc32.b %d1, %d1, %d0

# CHECK-INST: crc32.b %d1, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0x60,0x10]
crc32.b %d1, %d1, %d1

# CHECK-INST: crc32.b %d1, %d1, %d14
# CHECK: encoding: [0x4b,0x1e,0x60,0x10]
crc32.b %d1, %d1, %d14

# CHECK-INST: crc32.b %d1, %d1, %d15
# CHECK: encoding: [0x4b,0x1f,0x60,0x10]
crc32.b %d1, %d1, %d15

# CHECK-INST: crc32.b %d1, %d14, %d0
# CHECK: encoding: [0x4b,0xe0,0x60,0x10]
crc32.b %d1, %d14, %d0

# CHECK-INST: crc32.b %d1, %d14, %d1
# CHECK: encoding: [0x4b,0xe1,0x60,0x10]
crc32.b %d1, %d14, %d1

# CHECK-INST: crc32.b %d1, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0x60,0x10]
crc32.b %d1, %d14, %d14

# CHECK-INST: crc32.b %d1, %d14, %d15
# CHECK: encoding: [0x4b,0xef,0x60,0x10]
crc32.b %d1, %d14, %d15

# CHECK-INST: crc32.b %d1, %d15, %d0
# CHECK: encoding: [0x4b,0xf0,0x60,0x10]
crc32.b %d1, %d15, %d0

# CHECK-INST: crc32.b %d1, %d15, %d1
# CHECK: encoding: [0x4b,0xf1,0x60,0x10]
crc32.b %d1, %d15, %d1

# CHECK-INST: crc32.b %d1, %d15, %d14
# CHECK: encoding: [0x4b,0xfe,0x60,0x10]
crc32.b %d1, %d15, %d14

# CHECK-INST: crc32.b %d1, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0x60,0x10]
crc32.b %d1, %d15, %d15

# CHECK-INST: crc32.b %d14, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x60,0xe0]
crc32.b %d14, %d0, %d0

# CHECK-INST: crc32.b %d14, %d0, %d1
# CHECK: encoding: [0x4b,0x01,0x60,0xe0]
crc32.b %d14, %d0, %d1

# CHECK-INST: crc32.b %d14, %d0, %d14
# CHECK: encoding: [0x4b,0x0e,0x60,0xe0]
crc32.b %d14, %d0, %d14

# CHECK-INST: crc32.b %d14, %d0, %d15
# CHECK: encoding: [0x4b,0x0f,0x60,0xe0]
crc32.b %d14, %d0, %d15

# CHECK-INST: crc32.b %d14, %d1, %d0
# CHECK: encoding: [0x4b,0x10,0x60,0xe0]
crc32.b %d14, %d1, %d0

# CHECK-INST: crc32.b %d14, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0x60,0xe0]
crc32.b %d14, %d1, %d1

# CHECK-INST: crc32.b %d14, %d1, %d14
# CHECK: encoding: [0x4b,0x1e,0x60,0xe0]
crc32.b %d14, %d1, %d14

# CHECK-INST: crc32.b %d14, %d1, %d15
# CHECK: encoding: [0x4b,0x1f,0x60,0xe0]
crc32.b %d14, %d1, %d15

# CHECK-INST: crc32.b %d14, %d14, %d0
# CHECK: encoding: [0x4b,0xe0,0x60,0xe0]
crc32.b %d14, %d14, %d0

# CHECK-INST: crc32.b %d14, %d14, %d1
# CHECK: encoding: [0x4b,0xe1,0x60,0xe0]
crc32.b %d14, %d14, %d1

# CHECK-INST: crc32.b %d14, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0x60,0xe0]
crc32.b %d14, %d14, %d14

# CHECK-INST: crc32.b %d14, %d14, %d15
# CHECK: encoding: [0x4b,0xef,0x60,0xe0]
crc32.b %d14, %d14, %d15

# CHECK-INST: crc32.b %d14, %d15, %d0
# CHECK: encoding: [0x4b,0xf0,0x60,0xe0]
crc32.b %d14, %d15, %d0

# CHECK-INST: crc32.b %d14, %d15, %d1
# CHECK: encoding: [0x4b,0xf1,0x60,0xe0]
crc32.b %d14, %d15, %d1

# CHECK-INST: crc32.b %d14, %d15, %d14
# CHECK: encoding: [0x4b,0xfe,0x60,0xe0]
crc32.b %d14, %d15, %d14

# CHECK-INST: crc32.b %d14, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0x60,0xe0]
crc32.b %d14, %d15, %d15

# CHECK-INST: crc32.b %d15, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x60,0xf0]
crc32.b %d15, %d0, %d0

# CHECK-INST: crc32.b %d15, %d0, %d1
# CHECK: encoding: [0x4b,0x01,0x60,0xf0]
crc32.b %d15, %d0, %d1

# CHECK-INST: crc32.b %d15, %d0, %d14
# CHECK: encoding: [0x4b,0x0e,0x60,0xf0]
crc32.b %d15, %d0, %d14

# CHECK-INST: crc32.b %d15, %d0, %d15
# CHECK: encoding: [0x4b,0x0f,0x60,0xf0]
crc32.b %d15, %d0, %d15

# CHECK-INST: crc32.b %d15, %d1, %d0
# CHECK: encoding: [0x4b,0x10,0x60,0xf0]
crc32.b %d15, %d1, %d0

# CHECK-INST: crc32.b %d15, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0x60,0xf0]
crc32.b %d15, %d1, %d1

# CHECK-INST: crc32.b %d15, %d1, %d14
# CHECK: encoding: [0x4b,0x1e,0x60,0xf0]
crc32.b %d15, %d1, %d14

# CHECK-INST: crc32.b %d15, %d1, %d15
# CHECK: encoding: [0x4b,0x1f,0x60,0xf0]
crc32.b %d15, %d1, %d15

# CHECK-INST: crc32.b %d15, %d14, %d0
# CHECK: encoding: [0x4b,0xe0,0x60,0xf0]
crc32.b %d15, %d14, %d0

# CHECK-INST: crc32.b %d15, %d14, %d1
# CHECK: encoding: [0x4b,0xe1,0x60,0xf0]
crc32.b %d15, %d14, %d1

# CHECK-INST: crc32.b %d15, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0x60,0xf0]
crc32.b %d15, %d14, %d14

# CHECK-INST: crc32.b %d15, %d14, %d15
# CHECK: encoding: [0x4b,0xef,0x60,0xf0]
crc32.b %d15, %d14, %d15

# CHECK-INST: crc32.b %d15, %d15, %d0
# CHECK: encoding: [0x4b,0xf0,0x60,0xf0]
crc32.b %d15, %d15, %d0

# CHECK-INST: crc32.b %d15, %d15, %d1
# CHECK: encoding: [0x4b,0xf1,0x60,0xf0]
crc32.b %d15, %d15, %d1

# CHECK-INST: crc32.b %d15, %d15, %d14
# CHECK: encoding: [0x4b,0xfe,0x60,0xf0]
crc32.b %d15, %d15, %d14

# CHECK-INST: crc32.b %d15, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0x60,0xf0]
crc32.b %d15, %d15, %d15

# CHECK-INST: crc32b.w %d0, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x30,0x00]
crc32b.w %d0, %d0, %d0

# CHECK-INST: crc32b.w %d0, %d0, %d1
# CHECK: encoding: [0x4b,0x01,0x30,0x00]
crc32b.w %d0, %d0, %d1

# CHECK-INST: crc32b.w %d0, %d0, %d14
# CHECK: encoding: [0x4b,0x0e,0x30,0x00]
crc32b.w %d0, %d0, %d14

# CHECK-INST: crc32b.w %d0, %d0, %d15
# CHECK: encoding: [0x4b,0x0f,0x30,0x00]
crc32b.w %d0, %d0, %d15

# CHECK-INST: crc32b.w %d0, %d1, %d0
# CHECK: encoding: [0x4b,0x10,0x30,0x00]
crc32b.w %d0, %d1, %d0

# CHECK-INST: crc32b.w %d0, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0x30,0x00]
crc32b.w %d0, %d1, %d1

# CHECK-INST: crc32b.w %d0, %d1, %d14
# CHECK: encoding: [0x4b,0x1e,0x30,0x00]
crc32b.w %d0, %d1, %d14

# CHECK-INST: crc32b.w %d0, %d1, %d15
# CHECK: encoding: [0x4b,0x1f,0x30,0x00]
crc32b.w %d0, %d1, %d15

# CHECK-INST: crc32b.w %d0, %d14, %d0
# CHECK: encoding: [0x4b,0xe0,0x30,0x00]
crc32b.w %d0, %d14, %d0

# CHECK-INST: crc32b.w %d0, %d14, %d1
# CHECK: encoding: [0x4b,0xe1,0x30,0x00]
crc32b.w %d0, %d14, %d1

# CHECK-INST: crc32b.w %d0, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0x30,0x00]
crc32b.w %d0, %d14, %d14

# CHECK-INST: crc32b.w %d0, %d14, %d15
# CHECK: encoding: [0x4b,0xef,0x30,0x00]
crc32b.w %d0, %d14, %d15

# CHECK-INST: crc32b.w %d0, %d15, %d0
# CHECK: encoding: [0x4b,0xf0,0x30,0x00]
crc32b.w %d0, %d15, %d0

# CHECK-INST: crc32b.w %d0, %d15, %d1
# CHECK: encoding: [0x4b,0xf1,0x30,0x00]
crc32b.w %d0, %d15, %d1

# CHECK-INST: crc32b.w %d0, %d15, %d14
# CHECK: encoding: [0x4b,0xfe,0x30,0x00]
crc32b.w %d0, %d15, %d14

# CHECK-INST: crc32b.w %d0, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0x30,0x00]
crc32b.w %d0, %d15, %d15

# CHECK-INST: crc32b.w %d1, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x30,0x10]
crc32b.w %d1, %d0, %d0

# CHECK-INST: crc32b.w %d1, %d0, %d1
# CHECK: encoding: [0x4b,0x01,0x30,0x10]
crc32b.w %d1, %d0, %d1

# CHECK-INST: crc32b.w %d1, %d0, %d14
# CHECK: encoding: [0x4b,0x0e,0x30,0x10]
crc32b.w %d1, %d0, %d14

# CHECK-INST: crc32b.w %d1, %d0, %d15
# CHECK: encoding: [0x4b,0x0f,0x30,0x10]
crc32b.w %d1, %d0, %d15

# CHECK-INST: crc32b.w %d1, %d1, %d0
# CHECK: encoding: [0x4b,0x10,0x30,0x10]
crc32b.w %d1, %d1, %d0

# CHECK-INST: crc32b.w %d1, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0x30,0x10]
crc32b.w %d1, %d1, %d1

# CHECK-INST: crc32b.w %d1, %d1, %d14
# CHECK: encoding: [0x4b,0x1e,0x30,0x10]
crc32b.w %d1, %d1, %d14

# CHECK-INST: crc32b.w %d1, %d1, %d15
# CHECK: encoding: [0x4b,0x1f,0x30,0x10]
crc32b.w %d1, %d1, %d15

# CHECK-INST: crc32b.w %d1, %d14, %d0
# CHECK: encoding: [0x4b,0xe0,0x30,0x10]
crc32b.w %d1, %d14, %d0

# CHECK-INST: crc32b.w %d1, %d14, %d1
# CHECK: encoding: [0x4b,0xe1,0x30,0x10]
crc32b.w %d1, %d14, %d1

# CHECK-INST: crc32b.w %d1, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0x30,0x10]
crc32b.w %d1, %d14, %d14

# CHECK-INST: crc32b.w %d1, %d14, %d15
# CHECK: encoding: [0x4b,0xef,0x30,0x10]
crc32b.w %d1, %d14, %d15

# CHECK-INST: crc32b.w %d1, %d15, %d0
# CHECK: encoding: [0x4b,0xf0,0x30,0x10]
crc32b.w %d1, %d15, %d0

# CHECK-INST: crc32b.w %d1, %d15, %d1
# CHECK: encoding: [0x4b,0xf1,0x30,0x10]
crc32b.w %d1, %d15, %d1

# CHECK-INST: crc32b.w %d1, %d15, %d14
# CHECK: encoding: [0x4b,0xfe,0x30,0x10]
crc32b.w %d1, %d15, %d14

# CHECK-INST: crc32b.w %d1, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0x30,0x10]
crc32b.w %d1, %d15, %d15

# CHECK-INST: crc32b.w %d14, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x30,0xe0]
crc32b.w %d14, %d0, %d0

# CHECK-INST: crc32b.w %d14, %d0, %d1
# CHECK: encoding: [0x4b,0x01,0x30,0xe0]
crc32b.w %d14, %d0, %d1

# CHECK-INST: crc32b.w %d14, %d0, %d14
# CHECK: encoding: [0x4b,0x0e,0x30,0xe0]
crc32b.w %d14, %d0, %d14

# CHECK-INST: crc32b.w %d14, %d0, %d15
# CHECK: encoding: [0x4b,0x0f,0x30,0xe0]
crc32b.w %d14, %d0, %d15

# CHECK-INST: crc32b.w %d14, %d1, %d0
# CHECK: encoding: [0x4b,0x10,0x30,0xe0]
crc32b.w %d14, %d1, %d0

# CHECK-INST: crc32b.w %d14, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0x30,0xe0]
crc32b.w %d14, %d1, %d1

# CHECK-INST: crc32b.w %d14, %d1, %d14
# CHECK: encoding: [0x4b,0x1e,0x30,0xe0]
crc32b.w %d14, %d1, %d14

# CHECK-INST: crc32b.w %d14, %d1, %d15
# CHECK: encoding: [0x4b,0x1f,0x30,0xe0]
crc32b.w %d14, %d1, %d15

# CHECK-INST: crc32b.w %d14, %d14, %d0
# CHECK: encoding: [0x4b,0xe0,0x30,0xe0]
crc32b.w %d14, %d14, %d0

# CHECK-INST: crc32b.w %d14, %d14, %d1
# CHECK: encoding: [0x4b,0xe1,0x30,0xe0]
crc32b.w %d14, %d14, %d1

# CHECK-INST: crc32b.w %d14, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0x30,0xe0]
crc32b.w %d14, %d14, %d14

# CHECK-INST: crc32b.w %d14, %d14, %d15
# CHECK: encoding: [0x4b,0xef,0x30,0xe0]
crc32b.w %d14, %d14, %d15

# CHECK-INST: crc32b.w %d14, %d15, %d0
# CHECK: encoding: [0x4b,0xf0,0x30,0xe0]
crc32b.w %d14, %d15, %d0

# CHECK-INST: crc32b.w %d14, %d15, %d1
# CHECK: encoding: [0x4b,0xf1,0x30,0xe0]
crc32b.w %d14, %d15, %d1

# CHECK-INST: crc32b.w %d14, %d15, %d14
# CHECK: encoding: [0x4b,0xfe,0x30,0xe0]
crc32b.w %d14, %d15, %d14

# CHECK-INST: crc32b.w %d14, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0x30,0xe0]
crc32b.w %d14, %d15, %d15

# CHECK-INST: crc32b.w %d15, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x30,0xf0]
crc32b.w %d15, %d0, %d0

# CHECK-INST: crc32b.w %d15, %d0, %d1
# CHECK: encoding: [0x4b,0x01,0x30,0xf0]
crc32b.w %d15, %d0, %d1

# CHECK-INST: crc32b.w %d15, %d0, %d14
# CHECK: encoding: [0x4b,0x0e,0x30,0xf0]
crc32b.w %d15, %d0, %d14

# CHECK-INST: crc32b.w %d15, %d0, %d15
# CHECK: encoding: [0x4b,0x0f,0x30,0xf0]
crc32b.w %d15, %d0, %d15

# CHECK-INST: crc32b.w %d15, %d1, %d0
# CHECK: encoding: [0x4b,0x10,0x30,0xf0]
crc32b.w %d15, %d1, %d0

# CHECK-INST: crc32b.w %d15, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0x30,0xf0]
crc32b.w %d15, %d1, %d1

# CHECK-INST: crc32b.w %d15, %d1, %d14
# CHECK: encoding: [0x4b,0x1e,0x30,0xf0]
crc32b.w %d15, %d1, %d14

# CHECK-INST: crc32b.w %d15, %d1, %d15
# CHECK: encoding: [0x4b,0x1f,0x30,0xf0]
crc32b.w %d15, %d1, %d15

# CHECK-INST: crc32b.w %d15, %d14, %d0
# CHECK: encoding: [0x4b,0xe0,0x30,0xf0]
crc32b.w %d15, %d14, %d0

# CHECK-INST: crc32b.w %d15, %d14, %d1
# CHECK: encoding: [0x4b,0xe1,0x30,0xf0]
crc32b.w %d15, %d14, %d1

# CHECK-INST: crc32b.w %d15, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0x30,0xf0]
crc32b.w %d15, %d14, %d14

# CHECK-INST: crc32b.w %d15, %d14, %d15
# CHECK: encoding: [0x4b,0xef,0x30,0xf0]
crc32b.w %d15, %d14, %d15

# CHECK-INST: crc32b.w %d15, %d15, %d0
# CHECK: encoding: [0x4b,0xf0,0x30,0xf0]
crc32b.w %d15, %d15, %d0

# CHECK-INST: crc32b.w %d15, %d15, %d1
# CHECK: encoding: [0x4b,0xf1,0x30,0xf0]
crc32b.w %d15, %d15, %d1

# CHECK-INST: crc32b.w %d15, %d15, %d14
# CHECK: encoding: [0x4b,0xfe,0x30,0xf0]
crc32b.w %d15, %d15, %d14

# CHECK-INST: crc32b.w %d15, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0x30,0xf0]
crc32b.w %d15, %d15, %d15

# CHECK-INST: crc32l.w %d0, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x70,0x00]
crc32l.w %d0, %d0, %d0

# CHECK-INST: crc32l.w %d0, %d0, %d1
# CHECK: encoding: [0x4b,0x01,0x70,0x00]
crc32l.w %d0, %d0, %d1

# CHECK-INST: crc32l.w %d0, %d0, %d14
# CHECK: encoding: [0x4b,0x0e,0x70,0x00]
crc32l.w %d0, %d0, %d14

# CHECK-INST: crc32l.w %d0, %d0, %d15
# CHECK: encoding: [0x4b,0x0f,0x70,0x00]
crc32l.w %d0, %d0, %d15

# CHECK-INST: crc32l.w %d0, %d1, %d0
# CHECK: encoding: [0x4b,0x10,0x70,0x00]
crc32l.w %d0, %d1, %d0

# CHECK-INST: crc32l.w %d0, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0x70,0x00]
crc32l.w %d0, %d1, %d1

# CHECK-INST: crc32l.w %d0, %d1, %d14
# CHECK: encoding: [0x4b,0x1e,0x70,0x00]
crc32l.w %d0, %d1, %d14

# CHECK-INST: crc32l.w %d0, %d1, %d15
# CHECK: encoding: [0x4b,0x1f,0x70,0x00]
crc32l.w %d0, %d1, %d15

# CHECK-INST: crc32l.w %d0, %d14, %d0
# CHECK: encoding: [0x4b,0xe0,0x70,0x00]
crc32l.w %d0, %d14, %d0

# CHECK-INST: crc32l.w %d0, %d14, %d1
# CHECK: encoding: [0x4b,0xe1,0x70,0x00]
crc32l.w %d0, %d14, %d1

# CHECK-INST: crc32l.w %d0, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0x70,0x00]
crc32l.w %d0, %d14, %d14

# CHECK-INST: crc32l.w %d0, %d14, %d15
# CHECK: encoding: [0x4b,0xef,0x70,0x00]
crc32l.w %d0, %d14, %d15

# CHECK-INST: crc32l.w %d0, %d15, %d0
# CHECK: encoding: [0x4b,0xf0,0x70,0x00]
crc32l.w %d0, %d15, %d0

# CHECK-INST: crc32l.w %d0, %d15, %d1
# CHECK: encoding: [0x4b,0xf1,0x70,0x00]
crc32l.w %d0, %d15, %d1

# CHECK-INST: crc32l.w %d0, %d15, %d14
# CHECK: encoding: [0x4b,0xfe,0x70,0x00]
crc32l.w %d0, %d15, %d14

# CHECK-INST: crc32l.w %d0, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0x70,0x00]
crc32l.w %d0, %d15, %d15

# CHECK-INST: crc32l.w %d1, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x70,0x10]
crc32l.w %d1, %d0, %d0

# CHECK-INST: crc32l.w %d1, %d0, %d1
# CHECK: encoding: [0x4b,0x01,0x70,0x10]
crc32l.w %d1, %d0, %d1

# CHECK-INST: crc32l.w %d1, %d0, %d14
# CHECK: encoding: [0x4b,0x0e,0x70,0x10]
crc32l.w %d1, %d0, %d14

# CHECK-INST: crc32l.w %d1, %d0, %d15
# CHECK: encoding: [0x4b,0x0f,0x70,0x10]
crc32l.w %d1, %d0, %d15

# CHECK-INST: crc32l.w %d1, %d1, %d0
# CHECK: encoding: [0x4b,0x10,0x70,0x10]
crc32l.w %d1, %d1, %d0

# CHECK-INST: crc32l.w %d1, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0x70,0x10]
crc32l.w %d1, %d1, %d1

# CHECK-INST: crc32l.w %d1, %d1, %d14
# CHECK: encoding: [0x4b,0x1e,0x70,0x10]
crc32l.w %d1, %d1, %d14

# CHECK-INST: crc32l.w %d1, %d1, %d15
# CHECK: encoding: [0x4b,0x1f,0x70,0x10]
crc32l.w %d1, %d1, %d15

# CHECK-INST: crc32l.w %d1, %d14, %d0
# CHECK: encoding: [0x4b,0xe0,0x70,0x10]
crc32l.w %d1, %d14, %d0

# CHECK-INST: crc32l.w %d1, %d14, %d1
# CHECK: encoding: [0x4b,0xe1,0x70,0x10]
crc32l.w %d1, %d14, %d1

# CHECK-INST: crc32l.w %d1, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0x70,0x10]
crc32l.w %d1, %d14, %d14

# CHECK-INST: crc32l.w %d1, %d14, %d15
# CHECK: encoding: [0x4b,0xef,0x70,0x10]
crc32l.w %d1, %d14, %d15

# CHECK-INST: crc32l.w %d1, %d15, %d0
# CHECK: encoding: [0x4b,0xf0,0x70,0x10]
crc32l.w %d1, %d15, %d0

# CHECK-INST: crc32l.w %d1, %d15, %d1
# CHECK: encoding: [0x4b,0xf1,0x70,0x10]
crc32l.w %d1, %d15, %d1

# CHECK-INST: crc32l.w %d1, %d15, %d14
# CHECK: encoding: [0x4b,0xfe,0x70,0x10]
crc32l.w %d1, %d15, %d14

# CHECK-INST: crc32l.w %d1, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0x70,0x10]
crc32l.w %d1, %d15, %d15

# CHECK-INST: crc32l.w %d14, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x70,0xe0]
crc32l.w %d14, %d0, %d0

# CHECK-INST: crc32l.w %d14, %d0, %d1
# CHECK: encoding: [0x4b,0x01,0x70,0xe0]
crc32l.w %d14, %d0, %d1

# CHECK-INST: crc32l.w %d14, %d0, %d14
# CHECK: encoding: [0x4b,0x0e,0x70,0xe0]
crc32l.w %d14, %d0, %d14

# CHECK-INST: crc32l.w %d14, %d0, %d15
# CHECK: encoding: [0x4b,0x0f,0x70,0xe0]
crc32l.w %d14, %d0, %d15

# CHECK-INST: crc32l.w %d14, %d1, %d0
# CHECK: encoding: [0x4b,0x10,0x70,0xe0]
crc32l.w %d14, %d1, %d0

# CHECK-INST: crc32l.w %d14, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0x70,0xe0]
crc32l.w %d14, %d1, %d1

# CHECK-INST: crc32l.w %d14, %d1, %d14
# CHECK: encoding: [0x4b,0x1e,0x70,0xe0]
crc32l.w %d14, %d1, %d14

# CHECK-INST: crc32l.w %d14, %d1, %d15
# CHECK: encoding: [0x4b,0x1f,0x70,0xe0]
crc32l.w %d14, %d1, %d15

# CHECK-INST: crc32l.w %d14, %d14, %d0
# CHECK: encoding: [0x4b,0xe0,0x70,0xe0]
crc32l.w %d14, %d14, %d0

# CHECK-INST: crc32l.w %d14, %d14, %d1
# CHECK: encoding: [0x4b,0xe1,0x70,0xe0]
crc32l.w %d14, %d14, %d1

# CHECK-INST: crc32l.w %d14, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0x70,0xe0]
crc32l.w %d14, %d14, %d14

# CHECK-INST: crc32l.w %d14, %d14, %d15
# CHECK: encoding: [0x4b,0xef,0x70,0xe0]
crc32l.w %d14, %d14, %d15

# CHECK-INST: crc32l.w %d14, %d15, %d0
# CHECK: encoding: [0x4b,0xf0,0x70,0xe0]
crc32l.w %d14, %d15, %d0

# CHECK-INST: crc32l.w %d14, %d15, %d1
# CHECK: encoding: [0x4b,0xf1,0x70,0xe0]
crc32l.w %d14, %d15, %d1

# CHECK-INST: crc32l.w %d14, %d15, %d14
# CHECK: encoding: [0x4b,0xfe,0x70,0xe0]
crc32l.w %d14, %d15, %d14

# CHECK-INST: crc32l.w %d14, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0x70,0xe0]
crc32l.w %d14, %d15, %d15

# CHECK-INST: crc32l.w %d15, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x70,0xf0]
crc32l.w %d15, %d0, %d0

# CHECK-INST: crc32l.w %d15, %d0, %d1
# CHECK: encoding: [0x4b,0x01,0x70,0xf0]
crc32l.w %d15, %d0, %d1

# CHECK-INST: crc32l.w %d15, %d0, %d14
# CHECK: encoding: [0x4b,0x0e,0x70,0xf0]
crc32l.w %d15, %d0, %d14

# CHECK-INST: crc32l.w %d15, %d0, %d15
# CHECK: encoding: [0x4b,0x0f,0x70,0xf0]
crc32l.w %d15, %d0, %d15

# CHECK-INST: crc32l.w %d15, %d1, %d0
# CHECK: encoding: [0x4b,0x10,0x70,0xf0]
crc32l.w %d15, %d1, %d0

# CHECK-INST: crc32l.w %d15, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0x70,0xf0]
crc32l.w %d15, %d1, %d1

# CHECK-INST: crc32l.w %d15, %d1, %d14
# CHECK: encoding: [0x4b,0x1e,0x70,0xf0]
crc32l.w %d15, %d1, %d14

# CHECK-INST: crc32l.w %d15, %d1, %d15
# CHECK: encoding: [0x4b,0x1f,0x70,0xf0]
crc32l.w %d15, %d1, %d15

# CHECK-INST: crc32l.w %d15, %d14, %d0
# CHECK: encoding: [0x4b,0xe0,0x70,0xf0]
crc32l.w %d15, %d14, %d0

# CHECK-INST: crc32l.w %d15, %d14, %d1
# CHECK: encoding: [0x4b,0xe1,0x70,0xf0]
crc32l.w %d15, %d14, %d1

# CHECK-INST: crc32l.w %d15, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0x70,0xf0]
crc32l.w %d15, %d14, %d14

# CHECK-INST: crc32l.w %d15, %d14, %d15
# CHECK: encoding: [0x4b,0xef,0x70,0xf0]
crc32l.w %d15, %d14, %d15

# CHECK-INST: crc32l.w %d15, %d15, %d0
# CHECK: encoding: [0x4b,0xf0,0x70,0xf0]
crc32l.w %d15, %d15, %d0

# CHECK-INST: crc32l.w %d15, %d15, %d1
# CHECK: encoding: [0x4b,0xf1,0x70,0xf0]
crc32l.w %d15, %d15, %d1

# CHECK-INST: crc32l.w %d15, %d15, %d14
# CHECK: encoding: [0x4b,0xfe,0x70,0xf0]
crc32l.w %d15, %d15, %d14

# CHECK-INST: crc32l.w %d15, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0x70,0xf0]
crc32l.w %d15, %d15, %d15

# CHECK-INST: crcn %d0, %d0, %d0, %d0
# CHECK: encoding: [0x6b,0x00,0x10,0x00]
crcn %d0, %d0, %d0, %d0

# CHECK-INST: crcn %d0, %d0, %d0, %d1
# CHECK: encoding: [0x6b,0x10,0x10,0x00]
crcn %d0, %d0, %d0, %d1

# CHECK-INST: crcn %d0, %d0, %d0, %d14
# CHECK: encoding: [0x6b,0xe0,0x10,0x00]
crcn %d0, %d0, %d0, %d14

# CHECK-INST: crcn %d0, %d0, %d0, %d15
# CHECK: encoding: [0x6b,0xf0,0x10,0x00]
crcn %d0, %d0, %d0, %d15

# CHECK-INST: crcn %d0, %d0, %d1, %d0
# CHECK: encoding: [0x6b,0x01,0x10,0x00]
crcn %d0, %d0, %d1, %d0

# CHECK-INST: crcn %d0, %d0, %d1, %d1
# CHECK: encoding: [0x6b,0x11,0x10,0x00]
crcn %d0, %d0, %d1, %d1

# CHECK-INST: crcn %d0, %d0, %d1, %d14
# CHECK: encoding: [0x6b,0xe1,0x10,0x00]
crcn %d0, %d0, %d1, %d14

# CHECK-INST: crcn %d0, %d0, %d1, %d15
# CHECK: encoding: [0x6b,0xf1,0x10,0x00]
crcn %d0, %d0, %d1, %d15

# CHECK-INST: crcn %d0, %d0, %d14, %d0
# CHECK: encoding: [0x6b,0x0e,0x10,0x00]
crcn %d0, %d0, %d14, %d0

# CHECK-INST: crcn %d0, %d0, %d14, %d1
# CHECK: encoding: [0x6b,0x1e,0x10,0x00]
crcn %d0, %d0, %d14, %d1

# CHECK-INST: crcn %d0, %d0, %d14, %d14
# CHECK: encoding: [0x6b,0xee,0x10,0x00]
crcn %d0, %d0, %d14, %d14

# CHECK-INST: crcn %d0, %d0, %d14, %d15
# CHECK: encoding: [0x6b,0xfe,0x10,0x00]
crcn %d0, %d0, %d14, %d15

# CHECK-INST: crcn %d0, %d0, %d15, %d0
# CHECK: encoding: [0x6b,0x0f,0x10,0x00]
crcn %d0, %d0, %d15, %d0

# CHECK-INST: crcn %d0, %d0, %d15, %d1
# CHECK: encoding: [0x6b,0x1f,0x10,0x00]
crcn %d0, %d0, %d15, %d1

# CHECK-INST: crcn %d0, %d0, %d15, %d14
# CHECK: encoding: [0x6b,0xef,0x10,0x00]
crcn %d0, %d0, %d15, %d14

# CHECK-INST: crcn %d0, %d0, %d15, %d15
# CHECK: encoding: [0x6b,0xff,0x10,0x00]
crcn %d0, %d0, %d15, %d15

# CHECK-INST: crcn %d0, %d1, %d0, %d0
# CHECK: encoding: [0x6b,0x00,0x10,0x01]
crcn %d0, %d1, %d0, %d0

# CHECK-INST: crcn %d0, %d1, %d0, %d1
# CHECK: encoding: [0x6b,0x10,0x10,0x01]
crcn %d0, %d1, %d0, %d1

# CHECK-INST: crcn %d0, %d1, %d0, %d14
# CHECK: encoding: [0x6b,0xe0,0x10,0x01]
crcn %d0, %d1, %d0, %d14

# CHECK-INST: crcn %d0, %d1, %d0, %d15
# CHECK: encoding: [0x6b,0xf0,0x10,0x01]
crcn %d0, %d1, %d0, %d15

# CHECK-INST: crcn %d0, %d1, %d1, %d0
# CHECK: encoding: [0x6b,0x01,0x10,0x01]
crcn %d0, %d1, %d1, %d0

# CHECK-INST: crcn %d0, %d1, %d1, %d1
# CHECK: encoding: [0x6b,0x11,0x10,0x01]
crcn %d0, %d1, %d1, %d1

# CHECK-INST: crcn %d0, %d1, %d1, %d14
# CHECK: encoding: [0x6b,0xe1,0x10,0x01]
crcn %d0, %d1, %d1, %d14

# CHECK-INST: crcn %d0, %d1, %d1, %d15
# CHECK: encoding: [0x6b,0xf1,0x10,0x01]
crcn %d0, %d1, %d1, %d15

# CHECK-INST: crcn %d0, %d1, %d14, %d0
# CHECK: encoding: [0x6b,0x0e,0x10,0x01]
crcn %d0, %d1, %d14, %d0

# CHECK-INST: crcn %d0, %d1, %d14, %d1
# CHECK: encoding: [0x6b,0x1e,0x10,0x01]
crcn %d0, %d1, %d14, %d1

# CHECK-INST: crcn %d0, %d1, %d14, %d14
# CHECK: encoding: [0x6b,0xee,0x10,0x01]
crcn %d0, %d1, %d14, %d14

# CHECK-INST: crcn %d0, %d1, %d14, %d15
# CHECK: encoding: [0x6b,0xfe,0x10,0x01]
crcn %d0, %d1, %d14, %d15

# CHECK-INST: crcn %d0, %d1, %d15, %d0
# CHECK: encoding: [0x6b,0x0f,0x10,0x01]
crcn %d0, %d1, %d15, %d0

# CHECK-INST: crcn %d0, %d1, %d15, %d1
# CHECK: encoding: [0x6b,0x1f,0x10,0x01]
crcn %d0, %d1, %d15, %d1

# CHECK-INST: crcn %d0, %d1, %d15, %d14
# CHECK: encoding: [0x6b,0xef,0x10,0x01]
crcn %d0, %d1, %d15, %d14

# CHECK-INST: crcn %d0, %d1, %d15, %d15
# CHECK: encoding: [0x6b,0xff,0x10,0x01]
crcn %d0, %d1, %d15, %d15

# CHECK-INST: crcn %d0, %d14, %d0, %d0
# CHECK: encoding: [0x6b,0x00,0x10,0x0e]
crcn %d0, %d14, %d0, %d0

# CHECK-INST: crcn %d0, %d14, %d0, %d1
# CHECK: encoding: [0x6b,0x10,0x10,0x0e]
crcn %d0, %d14, %d0, %d1

# CHECK-INST: crcn %d0, %d14, %d0, %d14
# CHECK: encoding: [0x6b,0xe0,0x10,0x0e]
crcn %d0, %d14, %d0, %d14

# CHECK-INST: crcn %d0, %d14, %d0, %d15
# CHECK: encoding: [0x6b,0xf0,0x10,0x0e]
crcn %d0, %d14, %d0, %d15

# CHECK-INST: crcn %d0, %d14, %d1, %d0
# CHECK: encoding: [0x6b,0x01,0x10,0x0e]
crcn %d0, %d14, %d1, %d0

# CHECK-INST: crcn %d0, %d14, %d1, %d1
# CHECK: encoding: [0x6b,0x11,0x10,0x0e]
crcn %d0, %d14, %d1, %d1

# CHECK-INST: crcn %d0, %d14, %d1, %d14
# CHECK: encoding: [0x6b,0xe1,0x10,0x0e]
crcn %d0, %d14, %d1, %d14

# CHECK-INST: crcn %d0, %d14, %d1, %d15
# CHECK: encoding: [0x6b,0xf1,0x10,0x0e]
crcn %d0, %d14, %d1, %d15

# CHECK-INST: crcn %d0, %d14, %d14, %d0
# CHECK: encoding: [0x6b,0x0e,0x10,0x0e]
crcn %d0, %d14, %d14, %d0

# CHECK-INST: crcn %d0, %d14, %d14, %d1
# CHECK: encoding: [0x6b,0x1e,0x10,0x0e]
crcn %d0, %d14, %d14, %d1

# CHECK-INST: crcn %d0, %d14, %d14, %d14
# CHECK: encoding: [0x6b,0xee,0x10,0x0e]
crcn %d0, %d14, %d14, %d14

# CHECK-INST: crcn %d0, %d14, %d14, %d15
# CHECK: encoding: [0x6b,0xfe,0x10,0x0e]
crcn %d0, %d14, %d14, %d15

# CHECK-INST: crcn %d0, %d14, %d15, %d0
# CHECK: encoding: [0x6b,0x0f,0x10,0x0e]
crcn %d0, %d14, %d15, %d0

# CHECK-INST: crcn %d0, %d14, %d15, %d1
# CHECK: encoding: [0x6b,0x1f,0x10,0x0e]
crcn %d0, %d14, %d15, %d1

# CHECK-INST: crcn %d0, %d14, %d15, %d14
# CHECK: encoding: [0x6b,0xef,0x10,0x0e]
crcn %d0, %d14, %d15, %d14

# CHECK-INST: crcn %d0, %d14, %d15, %d15
# CHECK: encoding: [0x6b,0xff,0x10,0x0e]
crcn %d0, %d14, %d15, %d15

# CHECK-INST: crcn %d0, %d15, %d0, %d0
# CHECK: encoding: [0x6b,0x00,0x10,0x0f]
crcn %d0, %d15, %d0, %d0

# CHECK-INST: crcn %d0, %d15, %d0, %d1
# CHECK: encoding: [0x6b,0x10,0x10,0x0f]
crcn %d0, %d15, %d0, %d1

# CHECK-INST: crcn %d0, %d15, %d0, %d14
# CHECK: encoding: [0x6b,0xe0,0x10,0x0f]
crcn %d0, %d15, %d0, %d14

# CHECK-INST: crcn %d0, %d15, %d0, %d15
# CHECK: encoding: [0x6b,0xf0,0x10,0x0f]
crcn %d0, %d15, %d0, %d15

# CHECK-INST: crcn %d0, %d15, %d1, %d0
# CHECK: encoding: [0x6b,0x01,0x10,0x0f]
crcn %d0, %d15, %d1, %d0

# CHECK-INST: crcn %d0, %d15, %d1, %d1
# CHECK: encoding: [0x6b,0x11,0x10,0x0f]
crcn %d0, %d15, %d1, %d1

# CHECK-INST: crcn %d0, %d15, %d1, %d14
# CHECK: encoding: [0x6b,0xe1,0x10,0x0f]
crcn %d0, %d15, %d1, %d14

# CHECK-INST: crcn %d0, %d15, %d1, %d15
# CHECK: encoding: [0x6b,0xf1,0x10,0x0f]
crcn %d0, %d15, %d1, %d15

# CHECK-INST: crcn %d0, %d15, %d14, %d0
# CHECK: encoding: [0x6b,0x0e,0x10,0x0f]
crcn %d0, %d15, %d14, %d0

# CHECK-INST: crcn %d0, %d15, %d14, %d1
# CHECK: encoding: [0x6b,0x1e,0x10,0x0f]
crcn %d0, %d15, %d14, %d1

# CHECK-INST: crcn %d0, %d15, %d14, %d14
# CHECK: encoding: [0x6b,0xee,0x10,0x0f]
crcn %d0, %d15, %d14, %d14

# CHECK-INST: crcn %d0, %d15, %d14, %d15
# CHECK: encoding: [0x6b,0xfe,0x10,0x0f]
crcn %d0, %d15, %d14, %d15

# CHECK-INST: crcn %d0, %d15, %d15, %d0
# CHECK: encoding: [0x6b,0x0f,0x10,0x0f]
crcn %d0, %d15, %d15, %d0

# CHECK-INST: crcn %d0, %d15, %d15, %d1
# CHECK: encoding: [0x6b,0x1f,0x10,0x0f]
crcn %d0, %d15, %d15, %d1

# CHECK-INST: crcn %d0, %d15, %d15, %d14
# CHECK: encoding: [0x6b,0xef,0x10,0x0f]
crcn %d0, %d15, %d15, %d14

# CHECK-INST: crcn %d0, %d15, %d15, %d15
# CHECK: encoding: [0x6b,0xff,0x10,0x0f]
crcn %d0, %d15, %d15, %d15

# CHECK-INST: crcn %d1, %d0, %d0, %d0
# CHECK: encoding: [0x6b,0x00,0x10,0x10]
crcn %d1, %d0, %d0, %d0

# CHECK-INST: crcn %d1, %d0, %d0, %d1
# CHECK: encoding: [0x6b,0x10,0x10,0x10]
crcn %d1, %d0, %d0, %d1

# CHECK-INST: crcn %d1, %d0, %d0, %d14
# CHECK: encoding: [0x6b,0xe0,0x10,0x10]
crcn %d1, %d0, %d0, %d14

# CHECK-INST: crcn %d1, %d0, %d0, %d15
# CHECK: encoding: [0x6b,0xf0,0x10,0x10]
crcn %d1, %d0, %d0, %d15

# CHECK-INST: crcn %d1, %d0, %d1, %d0
# CHECK: encoding: [0x6b,0x01,0x10,0x10]
crcn %d1, %d0, %d1, %d0

# CHECK-INST: crcn %d1, %d0, %d1, %d1
# CHECK: encoding: [0x6b,0x11,0x10,0x10]
crcn %d1, %d0, %d1, %d1

# CHECK-INST: crcn %d1, %d0, %d1, %d14
# CHECK: encoding: [0x6b,0xe1,0x10,0x10]
crcn %d1, %d0, %d1, %d14

# CHECK-INST: crcn %d1, %d0, %d1, %d15
# CHECK: encoding: [0x6b,0xf1,0x10,0x10]
crcn %d1, %d0, %d1, %d15

# CHECK-INST: crcn %d1, %d0, %d14, %d0
# CHECK: encoding: [0x6b,0x0e,0x10,0x10]
crcn %d1, %d0, %d14, %d0

# CHECK-INST: crcn %d1, %d0, %d14, %d1
# CHECK: encoding: [0x6b,0x1e,0x10,0x10]
crcn %d1, %d0, %d14, %d1

# CHECK-INST: crcn %d1, %d0, %d14, %d14
# CHECK: encoding: [0x6b,0xee,0x10,0x10]
crcn %d1, %d0, %d14, %d14

# CHECK-INST: crcn %d1, %d0, %d14, %d15
# CHECK: encoding: [0x6b,0xfe,0x10,0x10]
crcn %d1, %d0, %d14, %d15

# CHECK-INST: crcn %d1, %d0, %d15, %d0
# CHECK: encoding: [0x6b,0x0f,0x10,0x10]
crcn %d1, %d0, %d15, %d0

# CHECK-INST: crcn %d1, %d0, %d15, %d1
# CHECK: encoding: [0x6b,0x1f,0x10,0x10]
crcn %d1, %d0, %d15, %d1

# CHECK-INST: crcn %d1, %d0, %d15, %d14
# CHECK: encoding: [0x6b,0xef,0x10,0x10]
crcn %d1, %d0, %d15, %d14

# CHECK-INST: crcn %d1, %d0, %d15, %d15
# CHECK: encoding: [0x6b,0xff,0x10,0x10]
crcn %d1, %d0, %d15, %d15

# CHECK-INST: crcn %d1, %d1, %d0, %d0
# CHECK: encoding: [0x6b,0x00,0x10,0x11]
crcn %d1, %d1, %d0, %d0

# CHECK-INST: crcn %d1, %d1, %d0, %d1
# CHECK: encoding: [0x6b,0x10,0x10,0x11]
crcn %d1, %d1, %d0, %d1

# CHECK-INST: crcn %d1, %d1, %d0, %d14
# CHECK: encoding: [0x6b,0xe0,0x10,0x11]
crcn %d1, %d1, %d0, %d14

# CHECK-INST: crcn %d1, %d1, %d0, %d15
# CHECK: encoding: [0x6b,0xf0,0x10,0x11]
crcn %d1, %d1, %d0, %d15

# CHECK-INST: crcn %d1, %d1, %d1, %d0
# CHECK: encoding: [0x6b,0x01,0x10,0x11]
crcn %d1, %d1, %d1, %d0

# CHECK-INST: crcn %d1, %d1, %d1, %d1
# CHECK: encoding: [0x6b,0x11,0x10,0x11]
crcn %d1, %d1, %d1, %d1

# CHECK-INST: crcn %d1, %d1, %d1, %d14
# CHECK: encoding: [0x6b,0xe1,0x10,0x11]
crcn %d1, %d1, %d1, %d14

# CHECK-INST: crcn %d1, %d1, %d1, %d15
# CHECK: encoding: [0x6b,0xf1,0x10,0x11]
crcn %d1, %d1, %d1, %d15

# CHECK-INST: crcn %d1, %d1, %d14, %d0
# CHECK: encoding: [0x6b,0x0e,0x10,0x11]
crcn %d1, %d1, %d14, %d0

# CHECK-INST: crcn %d1, %d1, %d14, %d1
# CHECK: encoding: [0x6b,0x1e,0x10,0x11]
crcn %d1, %d1, %d14, %d1

# CHECK-INST: crcn %d1, %d1, %d14, %d14
# CHECK: encoding: [0x6b,0xee,0x10,0x11]
crcn %d1, %d1, %d14, %d14

# CHECK-INST: crcn %d1, %d1, %d14, %d15
# CHECK: encoding: [0x6b,0xfe,0x10,0x11]
crcn %d1, %d1, %d14, %d15

# CHECK-INST: crcn %d1, %d1, %d15, %d0
# CHECK: encoding: [0x6b,0x0f,0x10,0x11]
crcn %d1, %d1, %d15, %d0

# CHECK-INST: crcn %d1, %d1, %d15, %d1
# CHECK: encoding: [0x6b,0x1f,0x10,0x11]
crcn %d1, %d1, %d15, %d1

# CHECK-INST: crcn %d1, %d1, %d15, %d14
# CHECK: encoding: [0x6b,0xef,0x10,0x11]
crcn %d1, %d1, %d15, %d14

# CHECK-INST: crcn %d1, %d1, %d15, %d15
# CHECK: encoding: [0x6b,0xff,0x10,0x11]
crcn %d1, %d1, %d15, %d15

# CHECK-INST: crcn %d1, %d14, %d0, %d0
# CHECK: encoding: [0x6b,0x00,0x10,0x1e]
crcn %d1, %d14, %d0, %d0

# CHECK-INST: crcn %d1, %d14, %d0, %d1
# CHECK: encoding: [0x6b,0x10,0x10,0x1e]
crcn %d1, %d14, %d0, %d1

# CHECK-INST: crcn %d1, %d14, %d0, %d14
# CHECK: encoding: [0x6b,0xe0,0x10,0x1e]
crcn %d1, %d14, %d0, %d14

# CHECK-INST: crcn %d1, %d14, %d0, %d15
# CHECK: encoding: [0x6b,0xf0,0x10,0x1e]
crcn %d1, %d14, %d0, %d15

# CHECK-INST: crcn %d1, %d14, %d1, %d0
# CHECK: encoding: [0x6b,0x01,0x10,0x1e]
crcn %d1, %d14, %d1, %d0

# CHECK-INST: crcn %d1, %d14, %d1, %d1
# CHECK: encoding: [0x6b,0x11,0x10,0x1e]
crcn %d1, %d14, %d1, %d1

# CHECK-INST: crcn %d1, %d14, %d1, %d14
# CHECK: encoding: [0x6b,0xe1,0x10,0x1e]
crcn %d1, %d14, %d1, %d14

# CHECK-INST: crcn %d1, %d14, %d1, %d15
# CHECK: encoding: [0x6b,0xf1,0x10,0x1e]
crcn %d1, %d14, %d1, %d15

# CHECK-INST: crcn %d1, %d14, %d14, %d0
# CHECK: encoding: [0x6b,0x0e,0x10,0x1e]
crcn %d1, %d14, %d14, %d0

# CHECK-INST: crcn %d1, %d14, %d14, %d1
# CHECK: encoding: [0x6b,0x1e,0x10,0x1e]
crcn %d1, %d14, %d14, %d1

# CHECK-INST: crcn %d1, %d14, %d14, %d14
# CHECK: encoding: [0x6b,0xee,0x10,0x1e]
crcn %d1, %d14, %d14, %d14

# CHECK-INST: crcn %d1, %d14, %d14, %d15
# CHECK: encoding: [0x6b,0xfe,0x10,0x1e]
crcn %d1, %d14, %d14, %d15

# CHECK-INST: crcn %d1, %d14, %d15, %d0
# CHECK: encoding: [0x6b,0x0f,0x10,0x1e]
crcn %d1, %d14, %d15, %d0

# CHECK-INST: crcn %d1, %d14, %d15, %d1
# CHECK: encoding: [0x6b,0x1f,0x10,0x1e]
crcn %d1, %d14, %d15, %d1

# CHECK-INST: crcn %d1, %d14, %d15, %d14
# CHECK: encoding: [0x6b,0xef,0x10,0x1e]
crcn %d1, %d14, %d15, %d14

# CHECK-INST: crcn %d1, %d14, %d15, %d15
# CHECK: encoding: [0x6b,0xff,0x10,0x1e]
crcn %d1, %d14, %d15, %d15

# CHECK-INST: crcn %d1, %d15, %d0, %d0
# CHECK: encoding: [0x6b,0x00,0x10,0x1f]
crcn %d1, %d15, %d0, %d0

# CHECK-INST: crcn %d1, %d15, %d0, %d1
# CHECK: encoding: [0x6b,0x10,0x10,0x1f]
crcn %d1, %d15, %d0, %d1

# CHECK-INST: crcn %d1, %d15, %d0, %d14
# CHECK: encoding: [0x6b,0xe0,0x10,0x1f]
crcn %d1, %d15, %d0, %d14

# CHECK-INST: crcn %d1, %d15, %d0, %d15
# CHECK: encoding: [0x6b,0xf0,0x10,0x1f]
crcn %d1, %d15, %d0, %d15

# CHECK-INST: crcn %d1, %d15, %d1, %d0
# CHECK: encoding: [0x6b,0x01,0x10,0x1f]
crcn %d1, %d15, %d1, %d0

# CHECK-INST: crcn %d1, %d15, %d1, %d1
# CHECK: encoding: [0x6b,0x11,0x10,0x1f]
crcn %d1, %d15, %d1, %d1

# CHECK-INST: crcn %d1, %d15, %d1, %d14
# CHECK: encoding: [0x6b,0xe1,0x10,0x1f]
crcn %d1, %d15, %d1, %d14

# CHECK-INST: crcn %d1, %d15, %d1, %d15
# CHECK: encoding: [0x6b,0xf1,0x10,0x1f]
crcn %d1, %d15, %d1, %d15

# CHECK-INST: crcn %d1, %d15, %d14, %d0
# CHECK: encoding: [0x6b,0x0e,0x10,0x1f]
crcn %d1, %d15, %d14, %d0

# CHECK-INST: crcn %d1, %d15, %d14, %d1
# CHECK: encoding: [0x6b,0x1e,0x10,0x1f]
crcn %d1, %d15, %d14, %d1

# CHECK-INST: crcn %d1, %d15, %d14, %d14
# CHECK: encoding: [0x6b,0xee,0x10,0x1f]
crcn %d1, %d15, %d14, %d14

# CHECK-INST: crcn %d1, %d15, %d14, %d15
# CHECK: encoding: [0x6b,0xfe,0x10,0x1f]
crcn %d1, %d15, %d14, %d15

# CHECK-INST: crcn %d1, %d15, %d15, %d0
# CHECK: encoding: [0x6b,0x0f,0x10,0x1f]
crcn %d1, %d15, %d15, %d0

# CHECK-INST: crcn %d1, %d15, %d15, %d1
# CHECK: encoding: [0x6b,0x1f,0x10,0x1f]
crcn %d1, %d15, %d15, %d1

# CHECK-INST: crcn %d1, %d15, %d15, %d14
# CHECK: encoding: [0x6b,0xef,0x10,0x1f]
crcn %d1, %d15, %d15, %d14

# CHECK-INST: crcn %d1, %d15, %d15, %d15
# CHECK: encoding: [0x6b,0xff,0x10,0x1f]
crcn %d1, %d15, %d15, %d15

# CHECK-INST: crcn %d14, %d0, %d0, %d0
# CHECK: encoding: [0x6b,0x00,0x10,0xe0]
crcn %d14, %d0, %d0, %d0

# CHECK-INST: crcn %d14, %d0, %d0, %d1
# CHECK: encoding: [0x6b,0x10,0x10,0xe0]
crcn %d14, %d0, %d0, %d1

# CHECK-INST: crcn %d14, %d0, %d0, %d14
# CHECK: encoding: [0x6b,0xe0,0x10,0xe0]
crcn %d14, %d0, %d0, %d14

# CHECK-INST: crcn %d14, %d0, %d0, %d15
# CHECK: encoding: [0x6b,0xf0,0x10,0xe0]
crcn %d14, %d0, %d0, %d15

# CHECK-INST: crcn %d14, %d0, %d1, %d0
# CHECK: encoding: [0x6b,0x01,0x10,0xe0]
crcn %d14, %d0, %d1, %d0

# CHECK-INST: crcn %d14, %d0, %d1, %d1
# CHECK: encoding: [0x6b,0x11,0x10,0xe0]
crcn %d14, %d0, %d1, %d1

# CHECK-INST: crcn %d14, %d0, %d1, %d14
# CHECK: encoding: [0x6b,0xe1,0x10,0xe0]
crcn %d14, %d0, %d1, %d14

# CHECK-INST: crcn %d14, %d0, %d1, %d15
# CHECK: encoding: [0x6b,0xf1,0x10,0xe0]
crcn %d14, %d0, %d1, %d15

# CHECK-INST: crcn %d14, %d0, %d14, %d0
# CHECK: encoding: [0x6b,0x0e,0x10,0xe0]
crcn %d14, %d0, %d14, %d0

# CHECK-INST: crcn %d14, %d0, %d14, %d1
# CHECK: encoding: [0x6b,0x1e,0x10,0xe0]
crcn %d14, %d0, %d14, %d1

# CHECK-INST: crcn %d14, %d0, %d14, %d14
# CHECK: encoding: [0x6b,0xee,0x10,0xe0]
crcn %d14, %d0, %d14, %d14

# CHECK-INST: crcn %d14, %d0, %d14, %d15
# CHECK: encoding: [0x6b,0xfe,0x10,0xe0]
crcn %d14, %d0, %d14, %d15

# CHECK-INST: crcn %d14, %d0, %d15, %d0
# CHECK: encoding: [0x6b,0x0f,0x10,0xe0]
crcn %d14, %d0, %d15, %d0

# CHECK-INST: crcn %d14, %d0, %d15, %d1
# CHECK: encoding: [0x6b,0x1f,0x10,0xe0]
crcn %d14, %d0, %d15, %d1

# CHECK-INST: crcn %d14, %d0, %d15, %d14
# CHECK: encoding: [0x6b,0xef,0x10,0xe0]
crcn %d14, %d0, %d15, %d14

# CHECK-INST: crcn %d14, %d0, %d15, %d15
# CHECK: encoding: [0x6b,0xff,0x10,0xe0]
crcn %d14, %d0, %d15, %d15

# CHECK-INST: crcn %d14, %d1, %d0, %d0
# CHECK: encoding: [0x6b,0x00,0x10,0xe1]
crcn %d14, %d1, %d0, %d0

# CHECK-INST: crcn %d14, %d1, %d0, %d1
# CHECK: encoding: [0x6b,0x10,0x10,0xe1]
crcn %d14, %d1, %d0, %d1

# CHECK-INST: crcn %d14, %d1, %d0, %d14
# CHECK: encoding: [0x6b,0xe0,0x10,0xe1]
crcn %d14, %d1, %d0, %d14

# CHECK-INST: crcn %d14, %d1, %d0, %d15
# CHECK: encoding: [0x6b,0xf0,0x10,0xe1]
crcn %d14, %d1, %d0, %d15

# CHECK-INST: crcn %d14, %d1, %d1, %d0
# CHECK: encoding: [0x6b,0x01,0x10,0xe1]
crcn %d14, %d1, %d1, %d0

# CHECK-INST: crcn %d14, %d1, %d1, %d1
# CHECK: encoding: [0x6b,0x11,0x10,0xe1]
crcn %d14, %d1, %d1, %d1

# CHECK-INST: crcn %d14, %d1, %d1, %d14
# CHECK: encoding: [0x6b,0xe1,0x10,0xe1]
crcn %d14, %d1, %d1, %d14

# CHECK-INST: crcn %d14, %d1, %d1, %d15
# CHECK: encoding: [0x6b,0xf1,0x10,0xe1]
crcn %d14, %d1, %d1, %d15

# CHECK-INST: crcn %d14, %d1, %d14, %d0
# CHECK: encoding: [0x6b,0x0e,0x10,0xe1]
crcn %d14, %d1, %d14, %d0

# CHECK-INST: crcn %d14, %d1, %d14, %d1
# CHECK: encoding: [0x6b,0x1e,0x10,0xe1]
crcn %d14, %d1, %d14, %d1

# CHECK-INST: crcn %d14, %d1, %d14, %d14
# CHECK: encoding: [0x6b,0xee,0x10,0xe1]
crcn %d14, %d1, %d14, %d14

# CHECK-INST: crcn %d14, %d1, %d14, %d15
# CHECK: encoding: [0x6b,0xfe,0x10,0xe1]
crcn %d14, %d1, %d14, %d15

# CHECK-INST: crcn %d14, %d1, %d15, %d0
# CHECK: encoding: [0x6b,0x0f,0x10,0xe1]
crcn %d14, %d1, %d15, %d0

# CHECK-INST: crcn %d14, %d1, %d15, %d1
# CHECK: encoding: [0x6b,0x1f,0x10,0xe1]
crcn %d14, %d1, %d15, %d1

# CHECK-INST: crcn %d14, %d1, %d15, %d14
# CHECK: encoding: [0x6b,0xef,0x10,0xe1]
crcn %d14, %d1, %d15, %d14

# CHECK-INST: crcn %d14, %d1, %d15, %d15
# CHECK: encoding: [0x6b,0xff,0x10,0xe1]
crcn %d14, %d1, %d15, %d15

# CHECK-INST: crcn %d14, %d14, %d0, %d0
# CHECK: encoding: [0x6b,0x00,0x10,0xee]
crcn %d14, %d14, %d0, %d0

# CHECK-INST: crcn %d14, %d14, %d0, %d1
# CHECK: encoding: [0x6b,0x10,0x10,0xee]
crcn %d14, %d14, %d0, %d1

# CHECK-INST: crcn %d14, %d14, %d0, %d14
# CHECK: encoding: [0x6b,0xe0,0x10,0xee]
crcn %d14, %d14, %d0, %d14

# CHECK-INST: crcn %d14, %d14, %d0, %d15
# CHECK: encoding: [0x6b,0xf0,0x10,0xee]
crcn %d14, %d14, %d0, %d15

# CHECK-INST: crcn %d14, %d14, %d1, %d0
# CHECK: encoding: [0x6b,0x01,0x10,0xee]
crcn %d14, %d14, %d1, %d0

# CHECK-INST: crcn %d14, %d14, %d1, %d1
# CHECK: encoding: [0x6b,0x11,0x10,0xee]
crcn %d14, %d14, %d1, %d1

# CHECK-INST: crcn %d14, %d14, %d1, %d14
# CHECK: encoding: [0x6b,0xe1,0x10,0xee]
crcn %d14, %d14, %d1, %d14

# CHECK-INST: crcn %d14, %d14, %d1, %d15
# CHECK: encoding: [0x6b,0xf1,0x10,0xee]
crcn %d14, %d14, %d1, %d15

# CHECK-INST: crcn %d14, %d14, %d14, %d0
# CHECK: encoding: [0x6b,0x0e,0x10,0xee]
crcn %d14, %d14, %d14, %d0

# CHECK-INST: crcn %d14, %d14, %d14, %d1
# CHECK: encoding: [0x6b,0x1e,0x10,0xee]
crcn %d14, %d14, %d14, %d1

# CHECK-INST: crcn %d14, %d14, %d14, %d14
# CHECK: encoding: [0x6b,0xee,0x10,0xee]
crcn %d14, %d14, %d14, %d14

# CHECK-INST: crcn %d14, %d14, %d14, %d15
# CHECK: encoding: [0x6b,0xfe,0x10,0xee]
crcn %d14, %d14, %d14, %d15

# CHECK-INST: crcn %d14, %d14, %d15, %d0
# CHECK: encoding: [0x6b,0x0f,0x10,0xee]
crcn %d14, %d14, %d15, %d0

# CHECK-INST: crcn %d14, %d14, %d15, %d1
# CHECK: encoding: [0x6b,0x1f,0x10,0xee]
crcn %d14, %d14, %d15, %d1

# CHECK-INST: crcn %d14, %d14, %d15, %d14
# CHECK: encoding: [0x6b,0xef,0x10,0xee]
crcn %d14, %d14, %d15, %d14

# CHECK-INST: crcn %d14, %d14, %d15, %d15
# CHECK: encoding: [0x6b,0xff,0x10,0xee]
crcn %d14, %d14, %d15, %d15

# CHECK-INST: crcn %d14, %d15, %d0, %d0
# CHECK: encoding: [0x6b,0x00,0x10,0xef]
crcn %d14, %d15, %d0, %d0

# CHECK-INST: crcn %d14, %d15, %d0, %d1
# CHECK: encoding: [0x6b,0x10,0x10,0xef]
crcn %d14, %d15, %d0, %d1

# CHECK-INST: crcn %d14, %d15, %d0, %d14
# CHECK: encoding: [0x6b,0xe0,0x10,0xef]
crcn %d14, %d15, %d0, %d14

# CHECK-INST: crcn %d14, %d15, %d0, %d15
# CHECK: encoding: [0x6b,0xf0,0x10,0xef]
crcn %d14, %d15, %d0, %d15

# CHECK-INST: crcn %d14, %d15, %d1, %d0
# CHECK: encoding: [0x6b,0x01,0x10,0xef]
crcn %d14, %d15, %d1, %d0

# CHECK-INST: crcn %d14, %d15, %d1, %d1
# CHECK: encoding: [0x6b,0x11,0x10,0xef]
crcn %d14, %d15, %d1, %d1

# CHECK-INST: crcn %d14, %d15, %d1, %d14
# CHECK: encoding: [0x6b,0xe1,0x10,0xef]
crcn %d14, %d15, %d1, %d14

# CHECK-INST: crcn %d14, %d15, %d1, %d15
# CHECK: encoding: [0x6b,0xf1,0x10,0xef]
crcn %d14, %d15, %d1, %d15

# CHECK-INST: crcn %d14, %d15, %d14, %d0
# CHECK: encoding: [0x6b,0x0e,0x10,0xef]
crcn %d14, %d15, %d14, %d0

# CHECK-INST: crcn %d14, %d15, %d14, %d1
# CHECK: encoding: [0x6b,0x1e,0x10,0xef]
crcn %d14, %d15, %d14, %d1

# CHECK-INST: crcn %d14, %d15, %d14, %d14
# CHECK: encoding: [0x6b,0xee,0x10,0xef]
crcn %d14, %d15, %d14, %d14

# CHECK-INST: crcn %d14, %d15, %d14, %d15
# CHECK: encoding: [0x6b,0xfe,0x10,0xef]
crcn %d14, %d15, %d14, %d15

# CHECK-INST: crcn %d14, %d15, %d15, %d0
# CHECK: encoding: [0x6b,0x0f,0x10,0xef]
crcn %d14, %d15, %d15, %d0

# CHECK-INST: crcn %d14, %d15, %d15, %d1
# CHECK: encoding: [0x6b,0x1f,0x10,0xef]
crcn %d14, %d15, %d15, %d1

# CHECK-INST: crcn %d14, %d15, %d15, %d14
# CHECK: encoding: [0x6b,0xef,0x10,0xef]
crcn %d14, %d15, %d15, %d14

# CHECK-INST: crcn %d14, %d15, %d15, %d15
# CHECK: encoding: [0x6b,0xff,0x10,0xef]
crcn %d14, %d15, %d15, %d15

# CHECK-INST: crcn %d15, %d0, %d0, %d0
# CHECK: encoding: [0x6b,0x00,0x10,0xf0]
crcn %d15, %d0, %d0, %d0

# CHECK-INST: crcn %d15, %d0, %d0, %d1
# CHECK: encoding: [0x6b,0x10,0x10,0xf0]
crcn %d15, %d0, %d0, %d1

# CHECK-INST: crcn %d15, %d0, %d0, %d14
# CHECK: encoding: [0x6b,0xe0,0x10,0xf0]
crcn %d15, %d0, %d0, %d14

# CHECK-INST: crcn %d15, %d0, %d0, %d15
# CHECK: encoding: [0x6b,0xf0,0x10,0xf0]
crcn %d15, %d0, %d0, %d15

# CHECK-INST: crcn %d15, %d0, %d1, %d0
# CHECK: encoding: [0x6b,0x01,0x10,0xf0]
crcn %d15, %d0, %d1, %d0

# CHECK-INST: crcn %d15, %d0, %d1, %d1
# CHECK: encoding: [0x6b,0x11,0x10,0xf0]
crcn %d15, %d0, %d1, %d1

# CHECK-INST: crcn %d15, %d0, %d1, %d14
# CHECK: encoding: [0x6b,0xe1,0x10,0xf0]
crcn %d15, %d0, %d1, %d14

# CHECK-INST: crcn %d15, %d0, %d1, %d15
# CHECK: encoding: [0x6b,0xf1,0x10,0xf0]
crcn %d15, %d0, %d1, %d15

# CHECK-INST: crcn %d15, %d0, %d14, %d0
# CHECK: encoding: [0x6b,0x0e,0x10,0xf0]
crcn %d15, %d0, %d14, %d0

# CHECK-INST: crcn %d15, %d0, %d14, %d1
# CHECK: encoding: [0x6b,0x1e,0x10,0xf0]
crcn %d15, %d0, %d14, %d1

# CHECK-INST: crcn %d15, %d0, %d14, %d14
# CHECK: encoding: [0x6b,0xee,0x10,0xf0]
crcn %d15, %d0, %d14, %d14

# CHECK-INST: crcn %d15, %d0, %d14, %d15
# CHECK: encoding: [0x6b,0xfe,0x10,0xf0]
crcn %d15, %d0, %d14, %d15

# CHECK-INST: crcn %d15, %d0, %d15, %d0
# CHECK: encoding: [0x6b,0x0f,0x10,0xf0]
crcn %d15, %d0, %d15, %d0

# CHECK-INST: crcn %d15, %d0, %d15, %d1
# CHECK: encoding: [0x6b,0x1f,0x10,0xf0]
crcn %d15, %d0, %d15, %d1

# CHECK-INST: crcn %d15, %d0, %d15, %d14
# CHECK: encoding: [0x6b,0xef,0x10,0xf0]
crcn %d15, %d0, %d15, %d14

# CHECK-INST: crcn %d15, %d0, %d15, %d15
# CHECK: encoding: [0x6b,0xff,0x10,0xf0]
crcn %d15, %d0, %d15, %d15

# CHECK-INST: crcn %d15, %d1, %d0, %d0
# CHECK: encoding: [0x6b,0x00,0x10,0xf1]
crcn %d15, %d1, %d0, %d0

# CHECK-INST: crcn %d15, %d1, %d0, %d1
# CHECK: encoding: [0x6b,0x10,0x10,0xf1]
crcn %d15, %d1, %d0, %d1

# CHECK-INST: crcn %d15, %d1, %d0, %d14
# CHECK: encoding: [0x6b,0xe0,0x10,0xf1]
crcn %d15, %d1, %d0, %d14

# CHECK-INST: crcn %d15, %d1, %d0, %d15
# CHECK: encoding: [0x6b,0xf0,0x10,0xf1]
crcn %d15, %d1, %d0, %d15

# CHECK-INST: crcn %d15, %d1, %d1, %d0
# CHECK: encoding: [0x6b,0x01,0x10,0xf1]
crcn %d15, %d1, %d1, %d0

# CHECK-INST: crcn %d15, %d1, %d1, %d1
# CHECK: encoding: [0x6b,0x11,0x10,0xf1]
crcn %d15, %d1, %d1, %d1

# CHECK-INST: crcn %d15, %d1, %d1, %d14
# CHECK: encoding: [0x6b,0xe1,0x10,0xf1]
crcn %d15, %d1, %d1, %d14

# CHECK-INST: crcn %d15, %d1, %d1, %d15
# CHECK: encoding: [0x6b,0xf1,0x10,0xf1]
crcn %d15, %d1, %d1, %d15

# CHECK-INST: crcn %d15, %d1, %d14, %d0
# CHECK: encoding: [0x6b,0x0e,0x10,0xf1]
crcn %d15, %d1, %d14, %d0

# CHECK-INST: crcn %d15, %d1, %d14, %d1
# CHECK: encoding: [0x6b,0x1e,0x10,0xf1]
crcn %d15, %d1, %d14, %d1

# CHECK-INST: crcn %d15, %d1, %d14, %d14
# CHECK: encoding: [0x6b,0xee,0x10,0xf1]
crcn %d15, %d1, %d14, %d14

# CHECK-INST: crcn %d15, %d1, %d14, %d15
# CHECK: encoding: [0x6b,0xfe,0x10,0xf1]
crcn %d15, %d1, %d14, %d15

# CHECK-INST: crcn %d15, %d1, %d15, %d0
# CHECK: encoding: [0x6b,0x0f,0x10,0xf1]
crcn %d15, %d1, %d15, %d0

# CHECK-INST: crcn %d15, %d1, %d15, %d1
# CHECK: encoding: [0x6b,0x1f,0x10,0xf1]
crcn %d15, %d1, %d15, %d1

# CHECK-INST: crcn %d15, %d1, %d15, %d14
# CHECK: encoding: [0x6b,0xef,0x10,0xf1]
crcn %d15, %d1, %d15, %d14

# CHECK-INST: crcn %d15, %d1, %d15, %d15
# CHECK: encoding: [0x6b,0xff,0x10,0xf1]
crcn %d15, %d1, %d15, %d15

# CHECK-INST: crcn %d15, %d14, %d0, %d0
# CHECK: encoding: [0x6b,0x00,0x10,0xfe]
crcn %d15, %d14, %d0, %d0

# CHECK-INST: crcn %d15, %d14, %d0, %d1
# CHECK: encoding: [0x6b,0x10,0x10,0xfe]
crcn %d15, %d14, %d0, %d1

# CHECK-INST: crcn %d15, %d14, %d0, %d14
# CHECK: encoding: [0x6b,0xe0,0x10,0xfe]
crcn %d15, %d14, %d0, %d14

# CHECK-INST: crcn %d15, %d14, %d0, %d15
# CHECK: encoding: [0x6b,0xf0,0x10,0xfe]
crcn %d15, %d14, %d0, %d15

# CHECK-INST: crcn %d15, %d14, %d1, %d0
# CHECK: encoding: [0x6b,0x01,0x10,0xfe]
crcn %d15, %d14, %d1, %d0

# CHECK-INST: crcn %d15, %d14, %d1, %d1
# CHECK: encoding: [0x6b,0x11,0x10,0xfe]
crcn %d15, %d14, %d1, %d1

# CHECK-INST: crcn %d15, %d14, %d1, %d14
# CHECK: encoding: [0x6b,0xe1,0x10,0xfe]
crcn %d15, %d14, %d1, %d14

# CHECK-INST: crcn %d15, %d14, %d1, %d15
# CHECK: encoding: [0x6b,0xf1,0x10,0xfe]
crcn %d15, %d14, %d1, %d15

# CHECK-INST: crcn %d15, %d14, %d14, %d0
# CHECK: encoding: [0x6b,0x0e,0x10,0xfe]
crcn %d15, %d14, %d14, %d0

# CHECK-INST: crcn %d15, %d14, %d14, %d1
# CHECK: encoding: [0x6b,0x1e,0x10,0xfe]
crcn %d15, %d14, %d14, %d1

# CHECK-INST: crcn %d15, %d14, %d14, %d14
# CHECK: encoding: [0x6b,0xee,0x10,0xfe]
crcn %d15, %d14, %d14, %d14

# CHECK-INST: crcn %d15, %d14, %d14, %d15
# CHECK: encoding: [0x6b,0xfe,0x10,0xfe]
crcn %d15, %d14, %d14, %d15

# CHECK-INST: crcn %d15, %d14, %d15, %d0
# CHECK: encoding: [0x6b,0x0f,0x10,0xfe]
crcn %d15, %d14, %d15, %d0

# CHECK-INST: crcn %d15, %d14, %d15, %d1
# CHECK: encoding: [0x6b,0x1f,0x10,0xfe]
crcn %d15, %d14, %d15, %d1

# CHECK-INST: crcn %d15, %d14, %d15, %d14
# CHECK: encoding: [0x6b,0xef,0x10,0xfe]
crcn %d15, %d14, %d15, %d14

# CHECK-INST: crcn %d15, %d14, %d15, %d15
# CHECK: encoding: [0x6b,0xff,0x10,0xfe]
crcn %d15, %d14, %d15, %d15

# CHECK-INST: crcn %d15, %d15, %d0, %d0
# CHECK: encoding: [0x6b,0x00,0x10,0xff]
crcn %d15, %d15, %d0, %d0

# CHECK-INST: crcn %d15, %d15, %d0, %d1
# CHECK: encoding: [0x6b,0x10,0x10,0xff]
crcn %d15, %d15, %d0, %d1

# CHECK-INST: crcn %d15, %d15, %d0, %d14
# CHECK: encoding: [0x6b,0xe0,0x10,0xff]
crcn %d15, %d15, %d0, %d14

# CHECK-INST: crcn %d15, %d15, %d0, %d15
# CHECK: encoding: [0x6b,0xf0,0x10,0xff]
crcn %d15, %d15, %d0, %d15

# CHECK-INST: crcn %d15, %d15, %d1, %d0
# CHECK: encoding: [0x6b,0x01,0x10,0xff]
crcn %d15, %d15, %d1, %d0

# CHECK-INST: crcn %d15, %d15, %d1, %d1
# CHECK: encoding: [0x6b,0x11,0x10,0xff]
crcn %d15, %d15, %d1, %d1

# CHECK-INST: crcn %d15, %d15, %d1, %d14
# CHECK: encoding: [0x6b,0xe1,0x10,0xff]
crcn %d15, %d15, %d1, %d14

# CHECK-INST: crcn %d15, %d15, %d1, %d15
# CHECK: encoding: [0x6b,0xf1,0x10,0xff]
crcn %d15, %d15, %d1, %d15

# CHECK-INST: crcn %d15, %d15, %d14, %d0
# CHECK: encoding: [0x6b,0x0e,0x10,0xff]
crcn %d15, %d15, %d14, %d0

# CHECK-INST: crcn %d15, %d15, %d14, %d1
# CHECK: encoding: [0x6b,0x1e,0x10,0xff]
crcn %d15, %d15, %d14, %d1

# CHECK-INST: crcn %d15, %d15, %d14, %d14
# CHECK: encoding: [0x6b,0xee,0x10,0xff]
crcn %d15, %d15, %d14, %d14

# CHECK-INST: crcn %d15, %d15, %d14, %d15
# CHECK: encoding: [0x6b,0xfe,0x10,0xff]
crcn %d15, %d15, %d14, %d15

# CHECK-INST: crcn %d15, %d15, %d15, %d0
# CHECK: encoding: [0x6b,0x0f,0x10,0xff]
crcn %d15, %d15, %d15, %d0

# CHECK-INST: crcn %d15, %d15, %d15, %d1
# CHECK: encoding: [0x6b,0x1f,0x10,0xff]
crcn %d15, %d15, %d15, %d1

# CHECK-INST: crcn %d15, %d15, %d15, %d14
# CHECK: encoding: [0x6b,0xef,0x10,0xff]
crcn %d15, %d15, %d15, %d14

# CHECK-INST: crcn %d15, %d15, %d15, %d15
# CHECK: encoding: [0x6b,0xff,0x10,0xff]
crcn %d15, %d15, %d15, %d15

# CHECK-INST: ixmax %e0, %e0, %d0
# CHECK: encoding: [0x6b,0x00,0xa0,0x00]
ixmax %e0, %e0, %d0

# CHECK-INST: ixmax %e0, %e0, %d1
# CHECK: encoding: [0x6b,0x10,0xa0,0x00]
ixmax %e0, %e0, %d1

# CHECK-INST: ixmax %e0, %e0, %d14
# CHECK: encoding: [0x6b,0xe0,0xa0,0x00]
ixmax %e0, %e0, %d14

# CHECK-INST: ixmax %e0, %e0, %d15
# CHECK: encoding: [0x6b,0xf0,0xa0,0x00]
ixmax %e0, %e0, %d15

# CHECK-INST: ixmax %e0, %e6, %d0
# CHECK: encoding: [0x6b,0x00,0xa0,0x06]
ixmax %e0, %e6, %d0

# CHECK-INST: ixmax %e0, %e6, %d1
# CHECK: encoding: [0x6b,0x10,0xa0,0x06]
ixmax %e0, %e6, %d1

# CHECK-INST: ixmax %e0, %e6, %d14
# CHECK: encoding: [0x6b,0xe0,0xa0,0x06]
ixmax %e0, %e6, %d14

# CHECK-INST: ixmax %e0, %e6, %d15
# CHECK: encoding: [0x6b,0xf0,0xa0,0x06]
ixmax %e0, %e6, %d15

# CHECK-INST: ixmax %e0, %e14, %d0
# CHECK: encoding: [0x6b,0x00,0xa0,0x0e]
ixmax %e0, %e14, %d0

# CHECK-INST: ixmax %e0, %e14, %d1
# CHECK: encoding: [0x6b,0x10,0xa0,0x0e]
ixmax %e0, %e14, %d1

# CHECK-INST: ixmax %e0, %e14, %d14
# CHECK: encoding: [0x6b,0xe0,0xa0,0x0e]
ixmax %e0, %e14, %d14

# CHECK-INST: ixmax %e0, %e14, %d15
# CHECK: encoding: [0x6b,0xf0,0xa0,0x0e]
ixmax %e0, %e14, %d15

# CHECK-INST: ixmax %e6, %e0, %d0
# CHECK: encoding: [0x6b,0x00,0xa0,0x60]
ixmax %e6, %e0, %d0

# CHECK-INST: ixmax %e6, %e0, %d1
# CHECK: encoding: [0x6b,0x10,0xa0,0x60]
ixmax %e6, %e0, %d1

# CHECK-INST: ixmax %e6, %e0, %d14
# CHECK: encoding: [0x6b,0xe0,0xa0,0x60]
ixmax %e6, %e0, %d14

# CHECK-INST: ixmax %e6, %e0, %d15
# CHECK: encoding: [0x6b,0xf0,0xa0,0x60]
ixmax %e6, %e0, %d15

# CHECK-INST: ixmax %e6, %e6, %d0
# CHECK: encoding: [0x6b,0x00,0xa0,0x66]
ixmax %e6, %e6, %d0

# CHECK-INST: ixmax %e6, %e6, %d1
# CHECK: encoding: [0x6b,0x10,0xa0,0x66]
ixmax %e6, %e6, %d1

# CHECK-INST: ixmax %e6, %e6, %d14
# CHECK: encoding: [0x6b,0xe0,0xa0,0x66]
ixmax %e6, %e6, %d14

# CHECK-INST: ixmax %e6, %e6, %d15
# CHECK: encoding: [0x6b,0xf0,0xa0,0x66]
ixmax %e6, %e6, %d15

# CHECK-INST: ixmax %e6, %e14, %d0
# CHECK: encoding: [0x6b,0x00,0xa0,0x6e]
ixmax %e6, %e14, %d0

# CHECK-INST: ixmax %e6, %e14, %d1
# CHECK: encoding: [0x6b,0x10,0xa0,0x6e]
ixmax %e6, %e14, %d1

# CHECK-INST: ixmax %e6, %e14, %d14
# CHECK: encoding: [0x6b,0xe0,0xa0,0x6e]
ixmax %e6, %e14, %d14

# CHECK-INST: ixmax %e6, %e14, %d15
# CHECK: encoding: [0x6b,0xf0,0xa0,0x6e]
ixmax %e6, %e14, %d15

# CHECK-INST: ixmax %e14, %e0, %d0
# CHECK: encoding: [0x6b,0x00,0xa0,0xe0]
ixmax %e14, %e0, %d0

# CHECK-INST: ixmax %e14, %e0, %d1
# CHECK: encoding: [0x6b,0x10,0xa0,0xe0]
ixmax %e14, %e0, %d1

# CHECK-INST: ixmax %e14, %e0, %d14
# CHECK: encoding: [0x6b,0xe0,0xa0,0xe0]
ixmax %e14, %e0, %d14

# CHECK-INST: ixmax %e14, %e0, %d15
# CHECK: encoding: [0x6b,0xf0,0xa0,0xe0]
ixmax %e14, %e0, %d15

# CHECK-INST: ixmax %e14, %e6, %d0
# CHECK: encoding: [0x6b,0x00,0xa0,0xe6]
ixmax %e14, %e6, %d0

# CHECK-INST: ixmax %e14, %e6, %d1
# CHECK: encoding: [0x6b,0x10,0xa0,0xe6]
ixmax %e14, %e6, %d1

# CHECK-INST: ixmax %e14, %e6, %d14
# CHECK: encoding: [0x6b,0xe0,0xa0,0xe6]
ixmax %e14, %e6, %d14

# CHECK-INST: ixmax %e14, %e6, %d15
# CHECK: encoding: [0x6b,0xf0,0xa0,0xe6]
ixmax %e14, %e6, %d15

# CHECK-INST: ixmax %e14, %e14, %d0
# CHECK: encoding: [0x6b,0x00,0xa0,0xee]
ixmax %e14, %e14, %d0

# CHECK-INST: ixmax %e14, %e14, %d1
# CHECK: encoding: [0x6b,0x10,0xa0,0xee]
ixmax %e14, %e14, %d1

# CHECK-INST: ixmax %e14, %e14, %d14
# CHECK: encoding: [0x6b,0xe0,0xa0,0xee]
ixmax %e14, %e14, %d14

# CHECK-INST: ixmax %e14, %e14, %d15
# CHECK: encoding: [0x6b,0xf0,0xa0,0xee]
ixmax %e14, %e14, %d15

# CHECK-INST: ixmax.u %e0, %e0, %d0
# CHECK: encoding: [0x6b,0x00,0xb0,0x00]
ixmax.u %e0, %e0, %d0

# CHECK-INST: ixmax.u %e0, %e0, %d1
# CHECK: encoding: [0x6b,0x10,0xb0,0x00]
ixmax.u %e0, %e0, %d1

# CHECK-INST: ixmax.u %e0, %e0, %d14
# CHECK: encoding: [0x6b,0xe0,0xb0,0x00]
ixmax.u %e0, %e0, %d14

# CHECK-INST: ixmax.u %e0, %e0, %d15
# CHECK: encoding: [0x6b,0xf0,0xb0,0x00]
ixmax.u %e0, %e0, %d15

# CHECK-INST: ixmax.u %e0, %e6, %d0
# CHECK: encoding: [0x6b,0x00,0xb0,0x06]
ixmax.u %e0, %e6, %d0

# CHECK-INST: ixmax.u %e0, %e6, %d1
# CHECK: encoding: [0x6b,0x10,0xb0,0x06]
ixmax.u %e0, %e6, %d1

# CHECK-INST: ixmax.u %e0, %e6, %d14
# CHECK: encoding: [0x6b,0xe0,0xb0,0x06]
ixmax.u %e0, %e6, %d14

# CHECK-INST: ixmax.u %e0, %e6, %d15
# CHECK: encoding: [0x6b,0xf0,0xb0,0x06]
ixmax.u %e0, %e6, %d15

# CHECK-INST: ixmax.u %e0, %e14, %d0
# CHECK: encoding: [0x6b,0x00,0xb0,0x0e]
ixmax.u %e0, %e14, %d0

# CHECK-INST: ixmax.u %e0, %e14, %d1
# CHECK: encoding: [0x6b,0x10,0xb0,0x0e]
ixmax.u %e0, %e14, %d1

# CHECK-INST: ixmax.u %e0, %e14, %d14
# CHECK: encoding: [0x6b,0xe0,0xb0,0x0e]
ixmax.u %e0, %e14, %d14

# CHECK-INST: ixmax.u %e0, %e14, %d15
# CHECK: encoding: [0x6b,0xf0,0xb0,0x0e]
ixmax.u %e0, %e14, %d15

# CHECK-INST: ixmax.u %e6, %e0, %d0
# CHECK: encoding: [0x6b,0x00,0xb0,0x60]
ixmax.u %e6, %e0, %d0

# CHECK-INST: ixmax.u %e6, %e0, %d1
# CHECK: encoding: [0x6b,0x10,0xb0,0x60]
ixmax.u %e6, %e0, %d1

# CHECK-INST: ixmax.u %e6, %e0, %d14
# CHECK: encoding: [0x6b,0xe0,0xb0,0x60]
ixmax.u %e6, %e0, %d14

# CHECK-INST: ixmax.u %e6, %e0, %d15
# CHECK: encoding: [0x6b,0xf0,0xb0,0x60]
ixmax.u %e6, %e0, %d15

# CHECK-INST: ixmax.u %e6, %e6, %d0
# CHECK: encoding: [0x6b,0x00,0xb0,0x66]
ixmax.u %e6, %e6, %d0

# CHECK-INST: ixmax.u %e6, %e6, %d1
# CHECK: encoding: [0x6b,0x10,0xb0,0x66]
ixmax.u %e6, %e6, %d1

# CHECK-INST: ixmax.u %e6, %e6, %d14
# CHECK: encoding: [0x6b,0xe0,0xb0,0x66]
ixmax.u %e6, %e6, %d14

# CHECK-INST: ixmax.u %e6, %e6, %d15
# CHECK: encoding: [0x6b,0xf0,0xb0,0x66]
ixmax.u %e6, %e6, %d15

# CHECK-INST: ixmax.u %e6, %e14, %d0
# CHECK: encoding: [0x6b,0x00,0xb0,0x6e]
ixmax.u %e6, %e14, %d0

# CHECK-INST: ixmax.u %e6, %e14, %d1
# CHECK: encoding: [0x6b,0x10,0xb0,0x6e]
ixmax.u %e6, %e14, %d1

# CHECK-INST: ixmax.u %e6, %e14, %d14
# CHECK: encoding: [0x6b,0xe0,0xb0,0x6e]
ixmax.u %e6, %e14, %d14

# CHECK-INST: ixmax.u %e6, %e14, %d15
# CHECK: encoding: [0x6b,0xf0,0xb0,0x6e]
ixmax.u %e6, %e14, %d15

# CHECK-INST: ixmax.u %e14, %e0, %d0
# CHECK: encoding: [0x6b,0x00,0xb0,0xe0]
ixmax.u %e14, %e0, %d0

# CHECK-INST: ixmax.u %e14, %e0, %d1
# CHECK: encoding: [0x6b,0x10,0xb0,0xe0]
ixmax.u %e14, %e0, %d1

# CHECK-INST: ixmax.u %e14, %e0, %d14
# CHECK: encoding: [0x6b,0xe0,0xb0,0xe0]
ixmax.u %e14, %e0, %d14

# CHECK-INST: ixmax.u %e14, %e0, %d15
# CHECK: encoding: [0x6b,0xf0,0xb0,0xe0]
ixmax.u %e14, %e0, %d15

# CHECK-INST: ixmax.u %e14, %e6, %d0
# CHECK: encoding: [0x6b,0x00,0xb0,0xe6]
ixmax.u %e14, %e6, %d0

# CHECK-INST: ixmax.u %e14, %e6, %d1
# CHECK: encoding: [0x6b,0x10,0xb0,0xe6]
ixmax.u %e14, %e6, %d1

# CHECK-INST: ixmax.u %e14, %e6, %d14
# CHECK: encoding: [0x6b,0xe0,0xb0,0xe6]
ixmax.u %e14, %e6, %d14

# CHECK-INST: ixmax.u %e14, %e6, %d15
# CHECK: encoding: [0x6b,0xf0,0xb0,0xe6]
ixmax.u %e14, %e6, %d15

# CHECK-INST: ixmax.u %e14, %e14, %d0
# CHECK: encoding: [0x6b,0x00,0xb0,0xee]
ixmax.u %e14, %e14, %d0

# CHECK-INST: ixmax.u %e14, %e14, %d1
# CHECK: encoding: [0x6b,0x10,0xb0,0xee]
ixmax.u %e14, %e14, %d1

# CHECK-INST: ixmax.u %e14, %e14, %d14
# CHECK: encoding: [0x6b,0xe0,0xb0,0xee]
ixmax.u %e14, %e14, %d14

# CHECK-INST: ixmax.u %e14, %e14, %d15
# CHECK: encoding: [0x6b,0xf0,0xb0,0xee]
ixmax.u %e14, %e14, %d15

# CHECK-INST: ixmin %e0, %e0, %d0
# CHECK: encoding: [0x6b,0x00,0x80,0x00]
ixmin %e0, %e0, %d0

# CHECK-INST: ixmin %e0, %e0, %d1
# CHECK: encoding: [0x6b,0x10,0x80,0x00]
ixmin %e0, %e0, %d1

# CHECK-INST: ixmin %e0, %e0, %d14
# CHECK: encoding: [0x6b,0xe0,0x80,0x00]
ixmin %e0, %e0, %d14

# CHECK-INST: ixmin %e0, %e0, %d15
# CHECK: encoding: [0x6b,0xf0,0x80,0x00]
ixmin %e0, %e0, %d15

# CHECK-INST: ixmin %e0, %e6, %d0
# CHECK: encoding: [0x6b,0x00,0x80,0x06]
ixmin %e0, %e6, %d0

# CHECK-INST: ixmin %e0, %e6, %d1
# CHECK: encoding: [0x6b,0x10,0x80,0x06]
ixmin %e0, %e6, %d1

# CHECK-INST: ixmin %e0, %e6, %d14
# CHECK: encoding: [0x6b,0xe0,0x80,0x06]
ixmin %e0, %e6, %d14

# CHECK-INST: ixmin %e0, %e6, %d15
# CHECK: encoding: [0x6b,0xf0,0x80,0x06]
ixmin %e0, %e6, %d15

# CHECK-INST: ixmin %e0, %e14, %d0
# CHECK: encoding: [0x6b,0x00,0x80,0x0e]
ixmin %e0, %e14, %d0

# CHECK-INST: ixmin %e0, %e14, %d1
# CHECK: encoding: [0x6b,0x10,0x80,0x0e]
ixmin %e0, %e14, %d1

# CHECK-INST: ixmin %e0, %e14, %d14
# CHECK: encoding: [0x6b,0xe0,0x80,0x0e]
ixmin %e0, %e14, %d14

# CHECK-INST: ixmin %e0, %e14, %d15
# CHECK: encoding: [0x6b,0xf0,0x80,0x0e]
ixmin %e0, %e14, %d15

# CHECK-INST: ixmin %e6, %e0, %d0
# CHECK: encoding: [0x6b,0x00,0x80,0x60]
ixmin %e6, %e0, %d0

# CHECK-INST: ixmin %e6, %e0, %d1
# CHECK: encoding: [0x6b,0x10,0x80,0x60]
ixmin %e6, %e0, %d1

# CHECK-INST: ixmin %e6, %e0, %d14
# CHECK: encoding: [0x6b,0xe0,0x80,0x60]
ixmin %e6, %e0, %d14

# CHECK-INST: ixmin %e6, %e0, %d15
# CHECK: encoding: [0x6b,0xf0,0x80,0x60]
ixmin %e6, %e0, %d15

# CHECK-INST: ixmin %e6, %e6, %d0
# CHECK: encoding: [0x6b,0x00,0x80,0x66]
ixmin %e6, %e6, %d0

# CHECK-INST: ixmin %e6, %e6, %d1
# CHECK: encoding: [0x6b,0x10,0x80,0x66]
ixmin %e6, %e6, %d1

# CHECK-INST: ixmin %e6, %e6, %d14
# CHECK: encoding: [0x6b,0xe0,0x80,0x66]
ixmin %e6, %e6, %d14

# CHECK-INST: ixmin %e6, %e6, %d15
# CHECK: encoding: [0x6b,0xf0,0x80,0x66]
ixmin %e6, %e6, %d15

# CHECK-INST: ixmin %e6, %e14, %d0
# CHECK: encoding: [0x6b,0x00,0x80,0x6e]
ixmin %e6, %e14, %d0

# CHECK-INST: ixmin %e6, %e14, %d1
# CHECK: encoding: [0x6b,0x10,0x80,0x6e]
ixmin %e6, %e14, %d1

# CHECK-INST: ixmin %e6, %e14, %d14
# CHECK: encoding: [0x6b,0xe0,0x80,0x6e]
ixmin %e6, %e14, %d14

# CHECK-INST: ixmin %e6, %e14, %d15
# CHECK: encoding: [0x6b,0xf0,0x80,0x6e]
ixmin %e6, %e14, %d15

# CHECK-INST: ixmin %e14, %e0, %d0
# CHECK: encoding: [0x6b,0x00,0x80,0xe0]
ixmin %e14, %e0, %d0

# CHECK-INST: ixmin %e14, %e0, %d1
# CHECK: encoding: [0x6b,0x10,0x80,0xe0]
ixmin %e14, %e0, %d1

# CHECK-INST: ixmin %e14, %e0, %d14
# CHECK: encoding: [0x6b,0xe0,0x80,0xe0]
ixmin %e14, %e0, %d14

# CHECK-INST: ixmin %e14, %e0, %d15
# CHECK: encoding: [0x6b,0xf0,0x80,0xe0]
ixmin %e14, %e0, %d15

# CHECK-INST: ixmin %e14, %e6, %d0
# CHECK: encoding: [0x6b,0x00,0x80,0xe6]
ixmin %e14, %e6, %d0

# CHECK-INST: ixmin %e14, %e6, %d1
# CHECK: encoding: [0x6b,0x10,0x80,0xe6]
ixmin %e14, %e6, %d1

# CHECK-INST: ixmin %e14, %e6, %d14
# CHECK: encoding: [0x6b,0xe0,0x80,0xe6]
ixmin %e14, %e6, %d14

# CHECK-INST: ixmin %e14, %e6, %d15
# CHECK: encoding: [0x6b,0xf0,0x80,0xe6]
ixmin %e14, %e6, %d15

# CHECK-INST: ixmin %e14, %e14, %d0
# CHECK: encoding: [0x6b,0x00,0x80,0xee]
ixmin %e14, %e14, %d0

# CHECK-INST: ixmin %e14, %e14, %d1
# CHECK: encoding: [0x6b,0x10,0x80,0xee]
ixmin %e14, %e14, %d1

# CHECK-INST: ixmin %e14, %e14, %d14
# CHECK: encoding: [0x6b,0xe0,0x80,0xee]
ixmin %e14, %e14, %d14

# CHECK-INST: ixmin %e14, %e14, %d15
# CHECK: encoding: [0x6b,0xf0,0x80,0xee]
ixmin %e14, %e14, %d15

# CHECK-INST: ixmin.u %e0, %e0, %d0
# CHECK: encoding: [0x6b,0x00,0x90,0x00]
ixmin.u %e0, %e0, %d0

# CHECK-INST: ixmin.u %e0, %e0, %d1
# CHECK: encoding: [0x6b,0x10,0x90,0x00]
ixmin.u %e0, %e0, %d1

# CHECK-INST: ixmin.u %e0, %e0, %d14
# CHECK: encoding: [0x6b,0xe0,0x90,0x00]
ixmin.u %e0, %e0, %d14

# CHECK-INST: ixmin.u %e0, %e0, %d15
# CHECK: encoding: [0x6b,0xf0,0x90,0x00]
ixmin.u %e0, %e0, %d15

# CHECK-INST: ixmin.u %e0, %e6, %d0
# CHECK: encoding: [0x6b,0x00,0x90,0x06]
ixmin.u %e0, %e6, %d0

# CHECK-INST: ixmin.u %e0, %e6, %d1
# CHECK: encoding: [0x6b,0x10,0x90,0x06]
ixmin.u %e0, %e6, %d1

# CHECK-INST: ixmin.u %e0, %e6, %d14
# CHECK: encoding: [0x6b,0xe0,0x90,0x06]
ixmin.u %e0, %e6, %d14

# CHECK-INST: ixmin.u %e0, %e6, %d15
# CHECK: encoding: [0x6b,0xf0,0x90,0x06]
ixmin.u %e0, %e6, %d15

# CHECK-INST: ixmin.u %e0, %e14, %d0
# CHECK: encoding: [0x6b,0x00,0x90,0x0e]
ixmin.u %e0, %e14, %d0

# CHECK-INST: ixmin.u %e0, %e14, %d1
# CHECK: encoding: [0x6b,0x10,0x90,0x0e]
ixmin.u %e0, %e14, %d1

# CHECK-INST: ixmin.u %e0, %e14, %d14
# CHECK: encoding: [0x6b,0xe0,0x90,0x0e]
ixmin.u %e0, %e14, %d14

# CHECK-INST: ixmin.u %e0, %e14, %d15
# CHECK: encoding: [0x6b,0xf0,0x90,0x0e]
ixmin.u %e0, %e14, %d15

# CHECK-INST: ixmin.u %e6, %e0, %d0
# CHECK: encoding: [0x6b,0x00,0x90,0x60]
ixmin.u %e6, %e0, %d0

# CHECK-INST: ixmin.u %e6, %e0, %d1
# CHECK: encoding: [0x6b,0x10,0x90,0x60]
ixmin.u %e6, %e0, %d1

# CHECK-INST: ixmin.u %e6, %e0, %d14
# CHECK: encoding: [0x6b,0xe0,0x90,0x60]
ixmin.u %e6, %e0, %d14

# CHECK-INST: ixmin.u %e6, %e0, %d15
# CHECK: encoding: [0x6b,0xf0,0x90,0x60]
ixmin.u %e6, %e0, %d15

# CHECK-INST: ixmin.u %e6, %e6, %d0
# CHECK: encoding: [0x6b,0x00,0x90,0x66]
ixmin.u %e6, %e6, %d0

# CHECK-INST: ixmin.u %e6, %e6, %d1
# CHECK: encoding: [0x6b,0x10,0x90,0x66]
ixmin.u %e6, %e6, %d1

# CHECK-INST: ixmin.u %e6, %e6, %d14
# CHECK: encoding: [0x6b,0xe0,0x90,0x66]
ixmin.u %e6, %e6, %d14

# CHECK-INST: ixmin.u %e6, %e6, %d15
# CHECK: encoding: [0x6b,0xf0,0x90,0x66]
ixmin.u %e6, %e6, %d15

# CHECK-INST: ixmin.u %e6, %e14, %d0
# CHECK: encoding: [0x6b,0x00,0x90,0x6e]
ixmin.u %e6, %e14, %d0

# CHECK-INST: ixmin.u %e6, %e14, %d1
# CHECK: encoding: [0x6b,0x10,0x90,0x6e]
ixmin.u %e6, %e14, %d1

# CHECK-INST: ixmin.u %e6, %e14, %d14
# CHECK: encoding: [0x6b,0xe0,0x90,0x6e]
ixmin.u %e6, %e14, %d14

# CHECK-INST: ixmin.u %e6, %e14, %d15
# CHECK: encoding: [0x6b,0xf0,0x90,0x6e]
ixmin.u %e6, %e14, %d15

# CHECK-INST: ixmin.u %e14, %e0, %d0
# CHECK: encoding: [0x6b,0x00,0x90,0xe0]
ixmin.u %e14, %e0, %d0

# CHECK-INST: ixmin.u %e14, %e0, %d1
# CHECK: encoding: [0x6b,0x10,0x90,0xe0]
ixmin.u %e14, %e0, %d1

# CHECK-INST: ixmin.u %e14, %e0, %d14
# CHECK: encoding: [0x6b,0xe0,0x90,0xe0]
ixmin.u %e14, %e0, %d14

# CHECK-INST: ixmin.u %e14, %e0, %d15
# CHECK: encoding: [0x6b,0xf0,0x90,0xe0]
ixmin.u %e14, %e0, %d15

# CHECK-INST: ixmin.u %e14, %e6, %d0
# CHECK: encoding: [0x6b,0x00,0x90,0xe6]
ixmin.u %e14, %e6, %d0

# CHECK-INST: ixmin.u %e14, %e6, %d1
# CHECK: encoding: [0x6b,0x10,0x90,0xe6]
ixmin.u %e14, %e6, %d1

# CHECK-INST: ixmin.u %e14, %e6, %d14
# CHECK: encoding: [0x6b,0xe0,0x90,0xe6]
ixmin.u %e14, %e6, %d14

# CHECK-INST: ixmin.u %e14, %e6, %d15
# CHECK: encoding: [0x6b,0xf0,0x90,0xe6]
ixmin.u %e14, %e6, %d15

# CHECK-INST: ixmin.u %e14, %e14, %d0
# CHECK: encoding: [0x6b,0x00,0x90,0xee]
ixmin.u %e14, %e14, %d0

# CHECK-INST: ixmin.u %e14, %e14, %d1
# CHECK: encoding: [0x6b,0x10,0x90,0xee]
ixmin.u %e14, %e14, %d1

# CHECK-INST: ixmin.u %e14, %e14, %d14
# CHECK: encoding: [0x6b,0xe0,0x90,0xee]
ixmin.u %e14, %e14, %d14

# CHECK-INST: ixmin.u %e14, %e14, %d15
# CHECK: encoding: [0x6b,0xf0,0x90,0xee]
ixmin.u %e14, %e14, %d15
