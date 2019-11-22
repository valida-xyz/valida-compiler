# RUN: llvm-mc %s -triple=tricore -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK,CHECK-INST %s


# CHECK-INST: cachea.i %a0, -512
# CHECK: encoding: [0x89,0x00,0x80,0x8b]
.code32
cachea.i %a0, -512

# CHECK-INST: cachea.i %a0, -511
# CHECK: encoding: [0x89,0x00,0x81,0x8b]
.code32
cachea.i %a0, -511

# CHECK-INST: cachea.i %a0, -2
# CHECK: encoding: [0x89,0x00,0xbe,0xfb]
.code32
cachea.i %a0, -2

# CHECK-INST: cachea.i %a0, -1
# CHECK: encoding: [0x89,0x00,0xbf,0xfb]
.code32
cachea.i %a0, -1

# CHECK-INST: cachea.i %a0, 0
# CHECK: encoding: [0x89,0x00,0x80,0x0b]
.code32
cachea.i %a0, 0

# CHECK-INST: cachea.i %a0, 1
# CHECK: encoding: [0x89,0x00,0x81,0x0b]
.code32
cachea.i %a0, 1

# CHECK-INST: cachea.i %a0, 510
# CHECK: encoding: [0x89,0x00,0xbe,0x7b]
.code32
cachea.i %a0, 510

# CHECK-INST: cachea.i %a0, 511
# CHECK: encoding: [0x89,0x00,0xbf,0x7b]
.code32
cachea.i %a0, 511

# CHECK-INST: cachea.i %a1, -512
# CHECK: encoding: [0x89,0x10,0x80,0x8b]
.code32
cachea.i %a1, -512

# CHECK-INST: cachea.i %a1, -511
# CHECK: encoding: [0x89,0x10,0x81,0x8b]
.code32
cachea.i %a1, -511

# CHECK-INST: cachea.i %a1, -2
# CHECK: encoding: [0x89,0x10,0xbe,0xfb]
.code32
cachea.i %a1, -2

# CHECK-INST: cachea.i %a1, -1
# CHECK: encoding: [0x89,0x10,0xbf,0xfb]
.code32
cachea.i %a1, -1

# CHECK-INST: cachea.i %a1, 0
# CHECK: encoding: [0x89,0x10,0x80,0x0b]
.code32
cachea.i %a1, 0

# CHECK-INST: cachea.i %a1, 1
# CHECK: encoding: [0x89,0x10,0x81,0x0b]
.code32
cachea.i %a1, 1

# CHECK-INST: cachea.i %a1, 510
# CHECK: encoding: [0x89,0x10,0xbe,0x7b]
.code32
cachea.i %a1, 510

# CHECK-INST: cachea.i %a1, 511
# CHECK: encoding: [0x89,0x10,0xbf,0x7b]
.code32
cachea.i %a1, 511

# CHECK-INST: cachea.i %a14, -512
# CHECK: encoding: [0x89,0xe0,0x80,0x8b]
.code32
cachea.i %a14, -512

# CHECK-INST: cachea.i %a14, -511
# CHECK: encoding: [0x89,0xe0,0x81,0x8b]
.code32
cachea.i %a14, -511

# CHECK-INST: cachea.i %a14, -2
# CHECK: encoding: [0x89,0xe0,0xbe,0xfb]
.code32
cachea.i %a14, -2

# CHECK-INST: cachea.i %a14, -1
# CHECK: encoding: [0x89,0xe0,0xbf,0xfb]
.code32
cachea.i %a14, -1

# CHECK-INST: cachea.i %a14, 0
# CHECK: encoding: [0x89,0xe0,0x80,0x0b]
.code32
cachea.i %a14, 0

# CHECK-INST: cachea.i %a14, 1
# CHECK: encoding: [0x89,0xe0,0x81,0x0b]
.code32
cachea.i %a14, 1

# CHECK-INST: cachea.i %a14, 510
# CHECK: encoding: [0x89,0xe0,0xbe,0x7b]
.code32
cachea.i %a14, 510

# CHECK-INST: cachea.i %a14, 511
# CHECK: encoding: [0x89,0xe0,0xbf,0x7b]
.code32
cachea.i %a14, 511

# CHECK-INST: cachea.i %a15, -512
# CHECK: encoding: [0x89,0xf0,0x80,0x8b]
.code32
cachea.i %a15, -512

# CHECK-INST: cachea.i %a15, -511
# CHECK: encoding: [0x89,0xf0,0x81,0x8b]
.code32
cachea.i %a15, -511

# CHECK-INST: cachea.i %a15, -2
# CHECK: encoding: [0x89,0xf0,0xbe,0xfb]
.code32
cachea.i %a15, -2

# CHECK-INST: cachea.i %a15, -1
# CHECK: encoding: [0x89,0xf0,0xbf,0xfb]
.code32
cachea.i %a15, -1

# CHECK-INST: cachea.i %a15, 0
# CHECK: encoding: [0x89,0xf0,0x80,0x0b]
.code32
cachea.i %a15, 0

# CHECK-INST: cachea.i %a15, 1
# CHECK: encoding: [0x89,0xf0,0x81,0x0b]
.code32
cachea.i %a15, 1

# CHECK-INST: cachea.i %a15, 510
# CHECK: encoding: [0x89,0xf0,0xbe,0x7b]
.code32
cachea.i %a15, 510

# CHECK-INST: cachea.i %a15, 511
# CHECK: encoding: [0x89,0xf0,0xbf,0x7b]
.code32
cachea.i %a15, 511

# CHECK-INST: cachea.i [%p0 + r]
# CHECK: encoding: [0xa9,0x00,0x80,0x03]
.code32
cachea.i [%p0 + r]

# CHECK-INST: cachea.i [%p2 + r]
# CHECK: encoding: [0xa9,0x20,0x80,0x03]
.code32
cachea.i [%p2 + r]

# CHECK-INST: cachea.i [%p4 + r]
# CHECK: encoding: [0xa9,0x40,0x80,0x03]
.code32
cachea.i [%p4 + r]

# CHECK-INST: cachea.i [%p8 + r]
# CHECK: encoding: [0xa9,0x80,0x80,0x03]
.code32
cachea.i [%p8 + r]

# CHECK-INST: cachea.i [%p0 + c], -512
# CHECK: encoding: [0xa9,0x00,0x80,0x87]
.code32
cachea.i [%p0 + c], -512

# CHECK-INST: cachea.i [%p0 + c], -511
# CHECK: encoding: [0xa9,0x00,0x81,0x87]
.code32
cachea.i [%p0 + c], -511

# CHECK-INST: cachea.i [%p0 + c], -2
# CHECK: encoding: [0xa9,0x00,0xbe,0xf7]
.code32
cachea.i [%p0 + c], -2

# CHECK-INST: cachea.i [%p0 + c], -1
# CHECK: encoding: [0xa9,0x00,0xbf,0xf7]
.code32
cachea.i [%p0 + c], -1

# CHECK-INST: cachea.i [%p0 + c], 0
# CHECK: encoding: [0xa9,0x00,0x80,0x07]
.code32
cachea.i [%p0 + c], 0

# CHECK-INST: cachea.i [%p0 + c], 1
# CHECK: encoding: [0xa9,0x00,0x81,0x07]
.code32
cachea.i [%p0 + c], 1

# CHECK-INST: cachea.i [%p0 + c], 510
# CHECK: encoding: [0xa9,0x00,0xbe,0x77]
.code32
cachea.i [%p0 + c], 510

# CHECK-INST: cachea.i [%p0 + c], 511
# CHECK: encoding: [0xa9,0x00,0xbf,0x77]
.code32
cachea.i [%p0 + c], 511

# CHECK-INST: cachea.i [%p2 + c], -512
# CHECK: encoding: [0xa9,0x20,0x80,0x87]
.code32
cachea.i [%p2 + c], -512

# CHECK-INST: cachea.i [%p2 + c], -511
# CHECK: encoding: [0xa9,0x20,0x81,0x87]
.code32
cachea.i [%p2 + c], -511

# CHECK-INST: cachea.i [%p2 + c], -2
# CHECK: encoding: [0xa9,0x20,0xbe,0xf7]
.code32
cachea.i [%p2 + c], -2

# CHECK-INST: cachea.i [%p2 + c], -1
# CHECK: encoding: [0xa9,0x20,0xbf,0xf7]
.code32
cachea.i [%p2 + c], -1

# CHECK-INST: cachea.i [%p2 + c], 0
# CHECK: encoding: [0xa9,0x20,0x80,0x07]
.code32
cachea.i [%p2 + c], 0

# CHECK-INST: cachea.i [%p2 + c], 1
# CHECK: encoding: [0xa9,0x20,0x81,0x07]
.code32
cachea.i [%p2 + c], 1

# CHECK-INST: cachea.i [%p2 + c], 510
# CHECK: encoding: [0xa9,0x20,0xbe,0x77]
.code32
cachea.i [%p2 + c], 510

# CHECK-INST: cachea.i [%p2 + c], 511
# CHECK: encoding: [0xa9,0x20,0xbf,0x77]
.code32
cachea.i [%p2 + c], 511

# CHECK-INST: cachea.i [%p4 + c], -512
# CHECK: encoding: [0xa9,0x40,0x80,0x87]
.code32
cachea.i [%p4 + c], -512

# CHECK-INST: cachea.i [%p4 + c], -511
# CHECK: encoding: [0xa9,0x40,0x81,0x87]
.code32
cachea.i [%p4 + c], -511

# CHECK-INST: cachea.i [%p4 + c], -2
# CHECK: encoding: [0xa9,0x40,0xbe,0xf7]
.code32
cachea.i [%p4 + c], -2

# CHECK-INST: cachea.i [%p4 + c], -1
# CHECK: encoding: [0xa9,0x40,0xbf,0xf7]
.code32
cachea.i [%p4 + c], -1

# CHECK-INST: cachea.i [%p4 + c], 0
# CHECK: encoding: [0xa9,0x40,0x80,0x07]
.code32
cachea.i [%p4 + c], 0

# CHECK-INST: cachea.i [%p4 + c], 1
# CHECK: encoding: [0xa9,0x40,0x81,0x07]
.code32
cachea.i [%p4 + c], 1

# CHECK-INST: cachea.i [%p4 + c], 510
# CHECK: encoding: [0xa9,0x40,0xbe,0x77]
.code32
cachea.i [%p4 + c], 510

# CHECK-INST: cachea.i [%p4 + c], 511
# CHECK: encoding: [0xa9,0x40,0xbf,0x77]
.code32
cachea.i [%p4 + c], 511

# CHECK-INST: cachea.i [%p8 + c], -512
# CHECK: encoding: [0xa9,0x80,0x80,0x87]
.code32
cachea.i [%p8 + c], -512

# CHECK-INST: cachea.i [%p8 + c], -511
# CHECK: encoding: [0xa9,0x80,0x81,0x87]
.code32
cachea.i [%p8 + c], -511

# CHECK-INST: cachea.i [%p8 + c], -2
# CHECK: encoding: [0xa9,0x80,0xbe,0xf7]
.code32
cachea.i [%p8 + c], -2

# CHECK-INST: cachea.i [%p8 + c], -1
# CHECK: encoding: [0xa9,0x80,0xbf,0xf7]
.code32
cachea.i [%p8 + c], -1

# CHECK-INST: cachea.i [%p8 + c], 0
# CHECK: encoding: [0xa9,0x80,0x80,0x07]
.code32
cachea.i [%p8 + c], 0

# CHECK-INST: cachea.i [%p8 + c], 1
# CHECK: encoding: [0xa9,0x80,0x81,0x07]
.code32
cachea.i [%p8 + c], 1

# CHECK-INST: cachea.i [%p8 + c], 510
# CHECK: encoding: [0xa9,0x80,0xbe,0x77]
.code32
cachea.i [%p8 + c], 510

# CHECK-INST: cachea.i [%p8 + c], 511
# CHECK: encoding: [0xa9,0x80,0xbf,0x77]
.code32
cachea.i [%p8 + c], 511

# CHECK-INST: cachea.i [%a0+], -512
# CHECK: encoding: [0x89,0x00,0x80,0x83]
.code32
cachea.i [%a0+], -512

# CHECK-INST: cachea.i [%a0+], -511
# CHECK: encoding: [0x89,0x00,0x81,0x83]
.code32
cachea.i [%a0+], -511

# CHECK-INST: cachea.i [%a0+], -2
# CHECK: encoding: [0x89,0x00,0xbe,0xf3]
.code32
cachea.i [%a0+], -2

# CHECK-INST: cachea.i [%a0+], -1
# CHECK: encoding: [0x89,0x00,0xbf,0xf3]
.code32
cachea.i [%a0+], -1

# CHECK-INST: cachea.i [%a0+], 0
# CHECK: encoding: [0x89,0x00,0x80,0x03]
.code32
cachea.i [%a0+], 0

# CHECK-INST: cachea.i [%a0+], 1
# CHECK: encoding: [0x89,0x00,0x81,0x03]
.code32
cachea.i [%a0+], 1

# CHECK-INST: cachea.i [%a0+], 510
# CHECK: encoding: [0x89,0x00,0xbe,0x73]
.code32
cachea.i [%a0+], 510

# CHECK-INST: cachea.i [%a0+], 511
# CHECK: encoding: [0x89,0x00,0xbf,0x73]
.code32
cachea.i [%a0+], 511

# CHECK-INST: cachea.i [%a1+], -512
# CHECK: encoding: [0x89,0x10,0x80,0x83]
.code32
cachea.i [%a1+], -512

# CHECK-INST: cachea.i [%a1+], -511
# CHECK: encoding: [0x89,0x10,0x81,0x83]
.code32
cachea.i [%a1+], -511

# CHECK-INST: cachea.i [%a1+], -2
# CHECK: encoding: [0x89,0x10,0xbe,0xf3]
.code32
cachea.i [%a1+], -2

# CHECK-INST: cachea.i [%a1+], -1
# CHECK: encoding: [0x89,0x10,0xbf,0xf3]
.code32
cachea.i [%a1+], -1

# CHECK-INST: cachea.i [%a1+], 0
# CHECK: encoding: [0x89,0x10,0x80,0x03]
.code32
cachea.i [%a1+], 0

# CHECK-INST: cachea.i [%a1+], 1
# CHECK: encoding: [0x89,0x10,0x81,0x03]
.code32
cachea.i [%a1+], 1

# CHECK-INST: cachea.i [%a1+], 510
# CHECK: encoding: [0x89,0x10,0xbe,0x73]
.code32
cachea.i [%a1+], 510

# CHECK-INST: cachea.i [%a1+], 511
# CHECK: encoding: [0x89,0x10,0xbf,0x73]
.code32
cachea.i [%a1+], 511

# CHECK-INST: cachea.i [%a14+], -512
# CHECK: encoding: [0x89,0xe0,0x80,0x83]
.code32
cachea.i [%a14+], -512

# CHECK-INST: cachea.i [%a14+], -511
# CHECK: encoding: [0x89,0xe0,0x81,0x83]
.code32
cachea.i [%a14+], -511

# CHECK-INST: cachea.i [%a14+], -2
# CHECK: encoding: [0x89,0xe0,0xbe,0xf3]
.code32
cachea.i [%a14+], -2

# CHECK-INST: cachea.i [%a14+], -1
# CHECK: encoding: [0x89,0xe0,0xbf,0xf3]
.code32
cachea.i [%a14+], -1

# CHECK-INST: cachea.i [%a14+], 0
# CHECK: encoding: [0x89,0xe0,0x80,0x03]
.code32
cachea.i [%a14+], 0

# CHECK-INST: cachea.i [%a14+], 1
# CHECK: encoding: [0x89,0xe0,0x81,0x03]
.code32
cachea.i [%a14+], 1

# CHECK-INST: cachea.i [%a14+], 510
# CHECK: encoding: [0x89,0xe0,0xbe,0x73]
.code32
cachea.i [%a14+], 510

# CHECK-INST: cachea.i [%a14+], 511
# CHECK: encoding: [0x89,0xe0,0xbf,0x73]
.code32
cachea.i [%a14+], 511

# CHECK-INST: cachea.i [%a15+], -512
# CHECK: encoding: [0x89,0xf0,0x80,0x83]
.code32
cachea.i [%a15+], -512

# CHECK-INST: cachea.i [%a15+], -511
# CHECK: encoding: [0x89,0xf0,0x81,0x83]
.code32
cachea.i [%a15+], -511

# CHECK-INST: cachea.i [%a15+], -2
# CHECK: encoding: [0x89,0xf0,0xbe,0xf3]
.code32
cachea.i [%a15+], -2

# CHECK-INST: cachea.i [%a15+], -1
# CHECK: encoding: [0x89,0xf0,0xbf,0xf3]
.code32
cachea.i [%a15+], -1

# CHECK-INST: cachea.i [%a15+], 0
# CHECK: encoding: [0x89,0xf0,0x80,0x03]
.code32
cachea.i [%a15+], 0

# CHECK-INST: cachea.i [%a15+], 1
# CHECK: encoding: [0x89,0xf0,0x81,0x03]
.code32
cachea.i [%a15+], 1

# CHECK-INST: cachea.i [%a15+], 510
# CHECK: encoding: [0x89,0xf0,0xbe,0x73]
.code32
cachea.i [%a15+], 510

# CHECK-INST: cachea.i [%a15+], 511
# CHECK: encoding: [0x89,0xf0,0xbf,0x73]
.code32
cachea.i [%a15+], 511

# CHECK-INST: cachea.i [+%a0], -512
# CHECK: encoding: [0x89,0x00,0x80,0x87]
.code32
cachea.i [+%a0], -512

# CHECK-INST: cachea.i [+%a0], -511
# CHECK: encoding: [0x89,0x00,0x81,0x87]
.code32
cachea.i [+%a0], -511

# CHECK-INST: cachea.i [+%a0], -2
# CHECK: encoding: [0x89,0x00,0xbe,0xf7]
.code32
cachea.i [+%a0], -2

# CHECK-INST: cachea.i [+%a0], -1
# CHECK: encoding: [0x89,0x00,0xbf,0xf7]
.code32
cachea.i [+%a0], -1

# CHECK-INST: cachea.i [+%a0], 0
# CHECK: encoding: [0x89,0x00,0x80,0x07]
.code32
cachea.i [+%a0], 0

# CHECK-INST: cachea.i [+%a0], 1
# CHECK: encoding: [0x89,0x00,0x81,0x07]
.code32
cachea.i [+%a0], 1

# CHECK-INST: cachea.i [+%a0], 510
# CHECK: encoding: [0x89,0x00,0xbe,0x77]
.code32
cachea.i [+%a0], 510

# CHECK-INST: cachea.i [+%a0], 511
# CHECK: encoding: [0x89,0x00,0xbf,0x77]
.code32
cachea.i [+%a0], 511

# CHECK-INST: cachea.i [+%a1], -512
# CHECK: encoding: [0x89,0x10,0x80,0x87]
.code32
cachea.i [+%a1], -512

# CHECK-INST: cachea.i [+%a1], -511
# CHECK: encoding: [0x89,0x10,0x81,0x87]
.code32
cachea.i [+%a1], -511

# CHECK-INST: cachea.i [+%a1], -2
# CHECK: encoding: [0x89,0x10,0xbe,0xf7]
.code32
cachea.i [+%a1], -2

# CHECK-INST: cachea.i [+%a1], -1
# CHECK: encoding: [0x89,0x10,0xbf,0xf7]
.code32
cachea.i [+%a1], -1

# CHECK-INST: cachea.i [+%a1], 0
# CHECK: encoding: [0x89,0x10,0x80,0x07]
.code32
cachea.i [+%a1], 0

# CHECK-INST: cachea.i [+%a1], 1
# CHECK: encoding: [0x89,0x10,0x81,0x07]
.code32
cachea.i [+%a1], 1

# CHECK-INST: cachea.i [+%a1], 510
# CHECK: encoding: [0x89,0x10,0xbe,0x77]
.code32
cachea.i [+%a1], 510

# CHECK-INST: cachea.i [+%a1], 511
# CHECK: encoding: [0x89,0x10,0xbf,0x77]
.code32
cachea.i [+%a1], 511

# CHECK-INST: cachea.i [+%a14], -512
# CHECK: encoding: [0x89,0xe0,0x80,0x87]
.code32
cachea.i [+%a14], -512

# CHECK-INST: cachea.i [+%a14], -511
# CHECK: encoding: [0x89,0xe0,0x81,0x87]
.code32
cachea.i [+%a14], -511

# CHECK-INST: cachea.i [+%a14], -2
# CHECK: encoding: [0x89,0xe0,0xbe,0xf7]
.code32
cachea.i [+%a14], -2

# CHECK-INST: cachea.i [+%a14], -1
# CHECK: encoding: [0x89,0xe0,0xbf,0xf7]
.code32
cachea.i [+%a14], -1

# CHECK-INST: cachea.i [+%a14], 0
# CHECK: encoding: [0x89,0xe0,0x80,0x07]
.code32
cachea.i [+%a14], 0

# CHECK-INST: cachea.i [+%a14], 1
# CHECK: encoding: [0x89,0xe0,0x81,0x07]
.code32
cachea.i [+%a14], 1

# CHECK-INST: cachea.i [+%a14], 510
# CHECK: encoding: [0x89,0xe0,0xbe,0x77]
.code32
cachea.i [+%a14], 510

# CHECK-INST: cachea.i [+%a14], 511
# CHECK: encoding: [0x89,0xe0,0xbf,0x77]
.code32
cachea.i [+%a14], 511

# CHECK-INST: cachea.i [+%a15], -512
# CHECK: encoding: [0x89,0xf0,0x80,0x87]
.code32
cachea.i [+%a15], -512

# CHECK-INST: cachea.i [+%a15], -511
# CHECK: encoding: [0x89,0xf0,0x81,0x87]
.code32
cachea.i [+%a15], -511

# CHECK-INST: cachea.i [+%a15], -2
# CHECK: encoding: [0x89,0xf0,0xbe,0xf7]
.code32
cachea.i [+%a15], -2

# CHECK-INST: cachea.i [+%a15], -1
# CHECK: encoding: [0x89,0xf0,0xbf,0xf7]
.code32
cachea.i [+%a15], -1

# CHECK-INST: cachea.i [+%a15], 0
# CHECK: encoding: [0x89,0xf0,0x80,0x07]
.code32
cachea.i [+%a15], 0

# CHECK-INST: cachea.i [+%a15], 1
# CHECK: encoding: [0x89,0xf0,0x81,0x07]
.code32
cachea.i [+%a15], 1

# CHECK-INST: cachea.i [+%a15], 510
# CHECK: encoding: [0x89,0xf0,0xbe,0x77]
.code32
cachea.i [+%a15], 510

# CHECK-INST: cachea.i [+%a15], 511
# CHECK: encoding: [0x89,0xf0,0xbf,0x77]
.code32
cachea.i [+%a15], 511

# CHECK-INST: cachea.w %a0, -512
# CHECK: encoding: [0x89,0x00,0x00,0x8b]
.code32
cachea.w %a0, -512

# CHECK-INST: cachea.w %a0, -511
# CHECK: encoding: [0x89,0x00,0x01,0x8b]
.code32
cachea.w %a0, -511

# CHECK-INST: cachea.w %a0, -2
# CHECK: encoding: [0x89,0x00,0x3e,0xfb]
.code32
cachea.w %a0, -2

# CHECK-INST: cachea.w %a0, -1
# CHECK: encoding: [0x89,0x00,0x3f,0xfb]
.code32
cachea.w %a0, -1

# CHECK-INST: cachea.w %a0, 0
# CHECK: encoding: [0x89,0x00,0x00,0x0b]
.code32
cachea.w %a0, 0

# CHECK-INST: cachea.w %a0, 1
# CHECK: encoding: [0x89,0x00,0x01,0x0b]
.code32
cachea.w %a0, 1

# CHECK-INST: cachea.w %a0, 510
# CHECK: encoding: [0x89,0x00,0x3e,0x7b]
.code32
cachea.w %a0, 510

# CHECK-INST: cachea.w %a0, 511
# CHECK: encoding: [0x89,0x00,0x3f,0x7b]
.code32
cachea.w %a0, 511

# CHECK-INST: cachea.w %a1, -512
# CHECK: encoding: [0x89,0x10,0x00,0x8b]
.code32
cachea.w %a1, -512

# CHECK-INST: cachea.w %a1, -511
# CHECK: encoding: [0x89,0x10,0x01,0x8b]
.code32
cachea.w %a1, -511

# CHECK-INST: cachea.w %a1, -2
# CHECK: encoding: [0x89,0x10,0x3e,0xfb]
.code32
cachea.w %a1, -2

# CHECK-INST: cachea.w %a1, -1
# CHECK: encoding: [0x89,0x10,0x3f,0xfb]
.code32
cachea.w %a1, -1

# CHECK-INST: cachea.w %a1, 0
# CHECK: encoding: [0x89,0x10,0x00,0x0b]
.code32
cachea.w %a1, 0

# CHECK-INST: cachea.w %a1, 1
# CHECK: encoding: [0x89,0x10,0x01,0x0b]
.code32
cachea.w %a1, 1

# CHECK-INST: cachea.w %a1, 510
# CHECK: encoding: [0x89,0x10,0x3e,0x7b]
.code32
cachea.w %a1, 510

# CHECK-INST: cachea.w %a1, 511
# CHECK: encoding: [0x89,0x10,0x3f,0x7b]
.code32
cachea.w %a1, 511

# CHECK-INST: cachea.w %a14, -512
# CHECK: encoding: [0x89,0xe0,0x00,0x8b]
.code32
cachea.w %a14, -512

# CHECK-INST: cachea.w %a14, -511
# CHECK: encoding: [0x89,0xe0,0x01,0x8b]
.code32
cachea.w %a14, -511

# CHECK-INST: cachea.w %a14, -2
# CHECK: encoding: [0x89,0xe0,0x3e,0xfb]
.code32
cachea.w %a14, -2

# CHECK-INST: cachea.w %a14, -1
# CHECK: encoding: [0x89,0xe0,0x3f,0xfb]
.code32
cachea.w %a14, -1

# CHECK-INST: cachea.w %a14, 0
# CHECK: encoding: [0x89,0xe0,0x00,0x0b]
.code32
cachea.w %a14, 0

# CHECK-INST: cachea.w %a14, 1
# CHECK: encoding: [0x89,0xe0,0x01,0x0b]
.code32
cachea.w %a14, 1

# CHECK-INST: cachea.w %a14, 510
# CHECK: encoding: [0x89,0xe0,0x3e,0x7b]
.code32
cachea.w %a14, 510

# CHECK-INST: cachea.w %a14, 511
# CHECK: encoding: [0x89,0xe0,0x3f,0x7b]
.code32
cachea.w %a14, 511

# CHECK-INST: cachea.w %a15, -512
# CHECK: encoding: [0x89,0xf0,0x00,0x8b]
.code32
cachea.w %a15, -512

# CHECK-INST: cachea.w %a15, -511
# CHECK: encoding: [0x89,0xf0,0x01,0x8b]
.code32
cachea.w %a15, -511

# CHECK-INST: cachea.w %a15, -2
# CHECK: encoding: [0x89,0xf0,0x3e,0xfb]
.code32
cachea.w %a15, -2

# CHECK-INST: cachea.w %a15, -1
# CHECK: encoding: [0x89,0xf0,0x3f,0xfb]
.code32
cachea.w %a15, -1

# CHECK-INST: cachea.w %a15, 0
# CHECK: encoding: [0x89,0xf0,0x00,0x0b]
.code32
cachea.w %a15, 0

# CHECK-INST: cachea.w %a15, 1
# CHECK: encoding: [0x89,0xf0,0x01,0x0b]
.code32
cachea.w %a15, 1

# CHECK-INST: cachea.w %a15, 510
# CHECK: encoding: [0x89,0xf0,0x3e,0x7b]
.code32
cachea.w %a15, 510

# CHECK-INST: cachea.w %a15, 511
# CHECK: encoding: [0x89,0xf0,0x3f,0x7b]
.code32
cachea.w %a15, 511

# CHECK-INST: cachea.w [%p0 + r]
# CHECK: encoding: [0xa9,0x00,0x00,0x03]
.code32
cachea.w [%p0 + r]

# CHECK-INST: cachea.w [%p2 + r]
# CHECK: encoding: [0xa9,0x20,0x00,0x03]
.code32
cachea.w [%p2 + r]

# CHECK-INST: cachea.w [%p4 + r]
# CHECK: encoding: [0xa9,0x40,0x00,0x03]
.code32
cachea.w [%p4 + r]

# CHECK-INST: cachea.w [%p8 + r]
# CHECK: encoding: [0xa9,0x80,0x00,0x03]
.code32
cachea.w [%p8 + r]

# CHECK-INST: cachea.w [%p0 + c], -512
# CHECK: encoding: [0xa9,0x00,0x00,0x87]
.code32
cachea.w [%p0 + c], -512

# CHECK-INST: cachea.w [%p0 + c], -511
# CHECK: encoding: [0xa9,0x00,0x01,0x87]
.code32
cachea.w [%p0 + c], -511

# CHECK-INST: cachea.w [%p0 + c], -2
# CHECK: encoding: [0xa9,0x00,0x3e,0xf7]
.code32
cachea.w [%p0 + c], -2

# CHECK-INST: cachea.w [%p0 + c], -1
# CHECK: encoding: [0xa9,0x00,0x3f,0xf7]
.code32
cachea.w [%p0 + c], -1

# CHECK-INST: cachea.w [%p0 + c], 0
# CHECK: encoding: [0xa9,0x00,0x00,0x07]
.code32
cachea.w [%p0 + c], 0

# CHECK-INST: cachea.w [%p0 + c], 1
# CHECK: encoding: [0xa9,0x00,0x01,0x07]
.code32
cachea.w [%p0 + c], 1

# CHECK-INST: cachea.w [%p0 + c], 510
# CHECK: encoding: [0xa9,0x00,0x3e,0x77]
.code32
cachea.w [%p0 + c], 510

# CHECK-INST: cachea.w [%p0 + c], 511
# CHECK: encoding: [0xa9,0x00,0x3f,0x77]
.code32
cachea.w [%p0 + c], 511

# CHECK-INST: cachea.w [%p2 + c], -512
# CHECK: encoding: [0xa9,0x20,0x00,0x87]
.code32
cachea.w [%p2 + c], -512

# CHECK-INST: cachea.w [%p2 + c], -511
# CHECK: encoding: [0xa9,0x20,0x01,0x87]
.code32
cachea.w [%p2 + c], -511

# CHECK-INST: cachea.w [%p2 + c], -2
# CHECK: encoding: [0xa9,0x20,0x3e,0xf7]
.code32
cachea.w [%p2 + c], -2

# CHECK-INST: cachea.w [%p2 + c], -1
# CHECK: encoding: [0xa9,0x20,0x3f,0xf7]
.code32
cachea.w [%p2 + c], -1

# CHECK-INST: cachea.w [%p2 + c], 0
# CHECK: encoding: [0xa9,0x20,0x00,0x07]
.code32
cachea.w [%p2 + c], 0

# CHECK-INST: cachea.w [%p2 + c], 1
# CHECK: encoding: [0xa9,0x20,0x01,0x07]
.code32
cachea.w [%p2 + c], 1

# CHECK-INST: cachea.w [%p2 + c], 510
# CHECK: encoding: [0xa9,0x20,0x3e,0x77]
.code32
cachea.w [%p2 + c], 510

# CHECK-INST: cachea.w [%p2 + c], 511
# CHECK: encoding: [0xa9,0x20,0x3f,0x77]
.code32
cachea.w [%p2 + c], 511

# CHECK-INST: cachea.w [%p4 + c], -512
# CHECK: encoding: [0xa9,0x40,0x00,0x87]
.code32
cachea.w [%p4 + c], -512

# CHECK-INST: cachea.w [%p4 + c], -511
# CHECK: encoding: [0xa9,0x40,0x01,0x87]
.code32
cachea.w [%p4 + c], -511

# CHECK-INST: cachea.w [%p4 + c], -2
# CHECK: encoding: [0xa9,0x40,0x3e,0xf7]
.code32
cachea.w [%p4 + c], -2

# CHECK-INST: cachea.w [%p4 + c], -1
# CHECK: encoding: [0xa9,0x40,0x3f,0xf7]
.code32
cachea.w [%p4 + c], -1

# CHECK-INST: cachea.w [%p4 + c], 0
# CHECK: encoding: [0xa9,0x40,0x00,0x07]
.code32
cachea.w [%p4 + c], 0

# CHECK-INST: cachea.w [%p4 + c], 1
# CHECK: encoding: [0xa9,0x40,0x01,0x07]
.code32
cachea.w [%p4 + c], 1

# CHECK-INST: cachea.w [%p4 + c], 510
# CHECK: encoding: [0xa9,0x40,0x3e,0x77]
.code32
cachea.w [%p4 + c], 510

# CHECK-INST: cachea.w [%p4 + c], 511
# CHECK: encoding: [0xa9,0x40,0x3f,0x77]
.code32
cachea.w [%p4 + c], 511

# CHECK-INST: cachea.w [%p8 + c], -512
# CHECK: encoding: [0xa9,0x80,0x00,0x87]
.code32
cachea.w [%p8 + c], -512

# CHECK-INST: cachea.w [%p8 + c], -511
# CHECK: encoding: [0xa9,0x80,0x01,0x87]
.code32
cachea.w [%p8 + c], -511

# CHECK-INST: cachea.w [%p8 + c], -2
# CHECK: encoding: [0xa9,0x80,0x3e,0xf7]
.code32
cachea.w [%p8 + c], -2

# CHECK-INST: cachea.w [%p8 + c], -1
# CHECK: encoding: [0xa9,0x80,0x3f,0xf7]
.code32
cachea.w [%p8 + c], -1

# CHECK-INST: cachea.w [%p8 + c], 0
# CHECK: encoding: [0xa9,0x80,0x00,0x07]
.code32
cachea.w [%p8 + c], 0

# CHECK-INST: cachea.w [%p8 + c], 1
# CHECK: encoding: [0xa9,0x80,0x01,0x07]
.code32
cachea.w [%p8 + c], 1

# CHECK-INST: cachea.w [%p8 + c], 510
# CHECK: encoding: [0xa9,0x80,0x3e,0x77]
.code32
cachea.w [%p8 + c], 510

# CHECK-INST: cachea.w [%p8 + c], 511
# CHECK: encoding: [0xa9,0x80,0x3f,0x77]
.code32
cachea.w [%p8 + c], 511

# CHECK-INST: cachea.w [%a0+], -512
# CHECK: encoding: [0x89,0x00,0x00,0x83]
.code32
cachea.w [%a0+], -512

# CHECK-INST: cachea.w [%a0+], -511
# CHECK: encoding: [0x89,0x00,0x01,0x83]
.code32
cachea.w [%a0+], -511

# CHECK-INST: cachea.w [%a0+], -2
# CHECK: encoding: [0x89,0x00,0x3e,0xf3]
.code32
cachea.w [%a0+], -2

# CHECK-INST: cachea.w [%a0+], -1
# CHECK: encoding: [0x89,0x00,0x3f,0xf3]
.code32
cachea.w [%a0+], -1

# CHECK-INST: cachea.w [%a0+], 0
# CHECK: encoding: [0x89,0x00,0x00,0x03]
.code32
cachea.w [%a0+], 0

# CHECK-INST: cachea.w [%a0+], 1
# CHECK: encoding: [0x89,0x00,0x01,0x03]
.code32
cachea.w [%a0+], 1

# CHECK-INST: cachea.w [%a0+], 510
# CHECK: encoding: [0x89,0x00,0x3e,0x73]
.code32
cachea.w [%a0+], 510

# CHECK-INST: cachea.w [%a0+], 511
# CHECK: encoding: [0x89,0x00,0x3f,0x73]
.code32
cachea.w [%a0+], 511

# CHECK-INST: cachea.w [%a1+], -512
# CHECK: encoding: [0x89,0x10,0x00,0x83]
.code32
cachea.w [%a1+], -512

# CHECK-INST: cachea.w [%a1+], -511
# CHECK: encoding: [0x89,0x10,0x01,0x83]
.code32
cachea.w [%a1+], -511

# CHECK-INST: cachea.w [%a1+], -2
# CHECK: encoding: [0x89,0x10,0x3e,0xf3]
.code32
cachea.w [%a1+], -2

# CHECK-INST: cachea.w [%a1+], -1
# CHECK: encoding: [0x89,0x10,0x3f,0xf3]
.code32
cachea.w [%a1+], -1

# CHECK-INST: cachea.w [%a1+], 0
# CHECK: encoding: [0x89,0x10,0x00,0x03]
.code32
cachea.w [%a1+], 0

# CHECK-INST: cachea.w [%a1+], 1
# CHECK: encoding: [0x89,0x10,0x01,0x03]
.code32
cachea.w [%a1+], 1

# CHECK-INST: cachea.w [%a1+], 510
# CHECK: encoding: [0x89,0x10,0x3e,0x73]
.code32
cachea.w [%a1+], 510

# CHECK-INST: cachea.w [%a1+], 511
# CHECK: encoding: [0x89,0x10,0x3f,0x73]
.code32
cachea.w [%a1+], 511

# CHECK-INST: cachea.w [%a14+], -512
# CHECK: encoding: [0x89,0xe0,0x00,0x83]
.code32
cachea.w [%a14+], -512

# CHECK-INST: cachea.w [%a14+], -511
# CHECK: encoding: [0x89,0xe0,0x01,0x83]
.code32
cachea.w [%a14+], -511

# CHECK-INST: cachea.w [%a14+], -2
# CHECK: encoding: [0x89,0xe0,0x3e,0xf3]
.code32
cachea.w [%a14+], -2

# CHECK-INST: cachea.w [%a14+], -1
# CHECK: encoding: [0x89,0xe0,0x3f,0xf3]
.code32
cachea.w [%a14+], -1

# CHECK-INST: cachea.w [%a14+], 0
# CHECK: encoding: [0x89,0xe0,0x00,0x03]
.code32
cachea.w [%a14+], 0

# CHECK-INST: cachea.w [%a14+], 1
# CHECK: encoding: [0x89,0xe0,0x01,0x03]
.code32
cachea.w [%a14+], 1

# CHECK-INST: cachea.w [%a14+], 510
# CHECK: encoding: [0x89,0xe0,0x3e,0x73]
.code32
cachea.w [%a14+], 510

# CHECK-INST: cachea.w [%a14+], 511
# CHECK: encoding: [0x89,0xe0,0x3f,0x73]
.code32
cachea.w [%a14+], 511

# CHECK-INST: cachea.w [%a15+], -512
# CHECK: encoding: [0x89,0xf0,0x00,0x83]
.code32
cachea.w [%a15+], -512

# CHECK-INST: cachea.w [%a15+], -511
# CHECK: encoding: [0x89,0xf0,0x01,0x83]
.code32
cachea.w [%a15+], -511

# CHECK-INST: cachea.w [%a15+], -2
# CHECK: encoding: [0x89,0xf0,0x3e,0xf3]
.code32
cachea.w [%a15+], -2

# CHECK-INST: cachea.w [%a15+], -1
# CHECK: encoding: [0x89,0xf0,0x3f,0xf3]
.code32
cachea.w [%a15+], -1

# CHECK-INST: cachea.w [%a15+], 0
# CHECK: encoding: [0x89,0xf0,0x00,0x03]
.code32
cachea.w [%a15+], 0

# CHECK-INST: cachea.w [%a15+], 1
# CHECK: encoding: [0x89,0xf0,0x01,0x03]
.code32
cachea.w [%a15+], 1

# CHECK-INST: cachea.w [%a15+], 510
# CHECK: encoding: [0x89,0xf0,0x3e,0x73]
.code32
cachea.w [%a15+], 510

# CHECK-INST: cachea.w [%a15+], 511
# CHECK: encoding: [0x89,0xf0,0x3f,0x73]
.code32
cachea.w [%a15+], 511

# CHECK-INST: cachea.w [+%a0], -512
# CHECK: encoding: [0x89,0x00,0x00,0x87]
.code32
cachea.w [+%a0], -512

# CHECK-INST: cachea.w [+%a0], -511
# CHECK: encoding: [0x89,0x00,0x01,0x87]
.code32
cachea.w [+%a0], -511

# CHECK-INST: cachea.w [+%a0], -2
# CHECK: encoding: [0x89,0x00,0x3e,0xf7]
.code32
cachea.w [+%a0], -2

# CHECK-INST: cachea.w [+%a0], -1
# CHECK: encoding: [0x89,0x00,0x3f,0xf7]
.code32
cachea.w [+%a0], -1

# CHECK-INST: cachea.w [+%a0], 0
# CHECK: encoding: [0x89,0x00,0x00,0x07]
.code32
cachea.w [+%a0], 0

# CHECK-INST: cachea.w [+%a0], 1
# CHECK: encoding: [0x89,0x00,0x01,0x07]
.code32
cachea.w [+%a0], 1

# CHECK-INST: cachea.w [+%a0], 510
# CHECK: encoding: [0x89,0x00,0x3e,0x77]
.code32
cachea.w [+%a0], 510

# CHECK-INST: cachea.w [+%a0], 511
# CHECK: encoding: [0x89,0x00,0x3f,0x77]
.code32
cachea.w [+%a0], 511

# CHECK-INST: cachea.w [+%a1], -512
# CHECK: encoding: [0x89,0x10,0x00,0x87]
.code32
cachea.w [+%a1], -512

# CHECK-INST: cachea.w [+%a1], -511
# CHECK: encoding: [0x89,0x10,0x01,0x87]
.code32
cachea.w [+%a1], -511

# CHECK-INST: cachea.w [+%a1], -2
# CHECK: encoding: [0x89,0x10,0x3e,0xf7]
.code32
cachea.w [+%a1], -2

# CHECK-INST: cachea.w [+%a1], -1
# CHECK: encoding: [0x89,0x10,0x3f,0xf7]
.code32
cachea.w [+%a1], -1

# CHECK-INST: cachea.w [+%a1], 0
# CHECK: encoding: [0x89,0x10,0x00,0x07]
.code32
cachea.w [+%a1], 0

# CHECK-INST: cachea.w [+%a1], 1
# CHECK: encoding: [0x89,0x10,0x01,0x07]
.code32
cachea.w [+%a1], 1

# CHECK-INST: cachea.w [+%a1], 510
# CHECK: encoding: [0x89,0x10,0x3e,0x77]
.code32
cachea.w [+%a1], 510

# CHECK-INST: cachea.w [+%a1], 511
# CHECK: encoding: [0x89,0x10,0x3f,0x77]
.code32
cachea.w [+%a1], 511

# CHECK-INST: cachea.w [+%a14], -512
# CHECK: encoding: [0x89,0xe0,0x00,0x87]
.code32
cachea.w [+%a14], -512

# CHECK-INST: cachea.w [+%a14], -511
# CHECK: encoding: [0x89,0xe0,0x01,0x87]
.code32
cachea.w [+%a14], -511

# CHECK-INST: cachea.w [+%a14], -2
# CHECK: encoding: [0x89,0xe0,0x3e,0xf7]
.code32
cachea.w [+%a14], -2

# CHECK-INST: cachea.w [+%a14], -1
# CHECK: encoding: [0x89,0xe0,0x3f,0xf7]
.code32
cachea.w [+%a14], -1

# CHECK-INST: cachea.w [+%a14], 0
# CHECK: encoding: [0x89,0xe0,0x00,0x07]
.code32
cachea.w [+%a14], 0

# CHECK-INST: cachea.w [+%a14], 1
# CHECK: encoding: [0x89,0xe0,0x01,0x07]
.code32
cachea.w [+%a14], 1

# CHECK-INST: cachea.w [+%a14], 510
# CHECK: encoding: [0x89,0xe0,0x3e,0x77]
.code32
cachea.w [+%a14], 510

# CHECK-INST: cachea.w [+%a14], 511
# CHECK: encoding: [0x89,0xe0,0x3f,0x77]
.code32
cachea.w [+%a14], 511

# CHECK-INST: cachea.w [+%a15], -512
# CHECK: encoding: [0x89,0xf0,0x00,0x87]
.code32
cachea.w [+%a15], -512

# CHECK-INST: cachea.w [+%a15], -511
# CHECK: encoding: [0x89,0xf0,0x01,0x87]
.code32
cachea.w [+%a15], -511

# CHECK-INST: cachea.w [+%a15], -2
# CHECK: encoding: [0x89,0xf0,0x3e,0xf7]
.code32
cachea.w [+%a15], -2

# CHECK-INST: cachea.w [+%a15], -1
# CHECK: encoding: [0x89,0xf0,0x3f,0xf7]
.code32
cachea.w [+%a15], -1

# CHECK-INST: cachea.w [+%a15], 0
# CHECK: encoding: [0x89,0xf0,0x00,0x07]
.code32
cachea.w [+%a15], 0

# CHECK-INST: cachea.w [+%a15], 1
# CHECK: encoding: [0x89,0xf0,0x01,0x07]
.code32
cachea.w [+%a15], 1

# CHECK-INST: cachea.w [+%a15], 510
# CHECK: encoding: [0x89,0xf0,0x3e,0x77]
.code32
cachea.w [+%a15], 510

# CHECK-INST: cachea.w [+%a15], 511
# CHECK: encoding: [0x89,0xf0,0x3f,0x77]
.code32
cachea.w [+%a15], 511

# CHECK-INST: cachea.wi %a0, -512
# CHECK: encoding: [0x89,0x00,0x40,0x8b]
.code32
cachea.wi %a0, -512

# CHECK-INST: cachea.wi %a0, -511
# CHECK: encoding: [0x89,0x00,0x41,0x8b]
.code32
cachea.wi %a0, -511

# CHECK-INST: cachea.wi %a0, -2
# CHECK: encoding: [0x89,0x00,0x7e,0xfb]
.code32
cachea.wi %a0, -2

# CHECK-INST: cachea.wi %a0, -1
# CHECK: encoding: [0x89,0x00,0x7f,0xfb]
.code32
cachea.wi %a0, -1

# CHECK-INST: cachea.wi %a0, 0
# CHECK: encoding: [0x89,0x00,0x40,0x0b]
.code32
cachea.wi %a0, 0

# CHECK-INST: cachea.wi %a0, 1
# CHECK: encoding: [0x89,0x00,0x41,0x0b]
.code32
cachea.wi %a0, 1

# CHECK-INST: cachea.wi %a0, 510
# CHECK: encoding: [0x89,0x00,0x7e,0x7b]
.code32
cachea.wi %a0, 510

# CHECK-INST: cachea.wi %a0, 511
# CHECK: encoding: [0x89,0x00,0x7f,0x7b]
.code32
cachea.wi %a0, 511

# CHECK-INST: cachea.wi %a1, -512
# CHECK: encoding: [0x89,0x10,0x40,0x8b]
.code32
cachea.wi %a1, -512

# CHECK-INST: cachea.wi %a1, -511
# CHECK: encoding: [0x89,0x10,0x41,0x8b]
.code32
cachea.wi %a1, -511

# CHECK-INST: cachea.wi %a1, -2
# CHECK: encoding: [0x89,0x10,0x7e,0xfb]
.code32
cachea.wi %a1, -2

# CHECK-INST: cachea.wi %a1, -1
# CHECK: encoding: [0x89,0x10,0x7f,0xfb]
.code32
cachea.wi %a1, -1

# CHECK-INST: cachea.wi %a1, 0
# CHECK: encoding: [0x89,0x10,0x40,0x0b]
.code32
cachea.wi %a1, 0

# CHECK-INST: cachea.wi %a1, 1
# CHECK: encoding: [0x89,0x10,0x41,0x0b]
.code32
cachea.wi %a1, 1

# CHECK-INST: cachea.wi %a1, 510
# CHECK: encoding: [0x89,0x10,0x7e,0x7b]
.code32
cachea.wi %a1, 510

# CHECK-INST: cachea.wi %a1, 511
# CHECK: encoding: [0x89,0x10,0x7f,0x7b]
.code32
cachea.wi %a1, 511

# CHECK-INST: cachea.wi %a14, -512
# CHECK: encoding: [0x89,0xe0,0x40,0x8b]
.code32
cachea.wi %a14, -512

# CHECK-INST: cachea.wi %a14, -511
# CHECK: encoding: [0x89,0xe0,0x41,0x8b]
.code32
cachea.wi %a14, -511

# CHECK-INST: cachea.wi %a14, -2
# CHECK: encoding: [0x89,0xe0,0x7e,0xfb]
.code32
cachea.wi %a14, -2

# CHECK-INST: cachea.wi %a14, -1
# CHECK: encoding: [0x89,0xe0,0x7f,0xfb]
.code32
cachea.wi %a14, -1

# CHECK-INST: cachea.wi %a14, 0
# CHECK: encoding: [0x89,0xe0,0x40,0x0b]
.code32
cachea.wi %a14, 0

# CHECK-INST: cachea.wi %a14, 1
# CHECK: encoding: [0x89,0xe0,0x41,0x0b]
.code32
cachea.wi %a14, 1

# CHECK-INST: cachea.wi %a14, 510
# CHECK: encoding: [0x89,0xe0,0x7e,0x7b]
.code32
cachea.wi %a14, 510

# CHECK-INST: cachea.wi %a14, 511
# CHECK: encoding: [0x89,0xe0,0x7f,0x7b]
.code32
cachea.wi %a14, 511

# CHECK-INST: cachea.wi %a15, -512
# CHECK: encoding: [0x89,0xf0,0x40,0x8b]
.code32
cachea.wi %a15, -512

# CHECK-INST: cachea.wi %a15, -511
# CHECK: encoding: [0x89,0xf0,0x41,0x8b]
.code32
cachea.wi %a15, -511

# CHECK-INST: cachea.wi %a15, -2
# CHECK: encoding: [0x89,0xf0,0x7e,0xfb]
.code32
cachea.wi %a15, -2

# CHECK-INST: cachea.wi %a15, -1
# CHECK: encoding: [0x89,0xf0,0x7f,0xfb]
.code32
cachea.wi %a15, -1

# CHECK-INST: cachea.wi %a15, 0
# CHECK: encoding: [0x89,0xf0,0x40,0x0b]
.code32
cachea.wi %a15, 0

# CHECK-INST: cachea.wi %a15, 1
# CHECK: encoding: [0x89,0xf0,0x41,0x0b]
.code32
cachea.wi %a15, 1

# CHECK-INST: cachea.wi %a15, 510
# CHECK: encoding: [0x89,0xf0,0x7e,0x7b]
.code32
cachea.wi %a15, 510

# CHECK-INST: cachea.wi %a15, 511
# CHECK: encoding: [0x89,0xf0,0x7f,0x7b]
.code32
cachea.wi %a15, 511

# CHECK-INST: cachea.wi [%p0 + r]
# CHECK: encoding: [0xa9,0x00,0x40,0x03]
.code32
cachea.wi [%p0 + r]

# CHECK-INST: cachea.wi [%p2 + r]
# CHECK: encoding: [0xa9,0x20,0x40,0x03]
.code32
cachea.wi [%p2 + r]

# CHECK-INST: cachea.wi [%p4 + r]
# CHECK: encoding: [0xa9,0x40,0x40,0x03]
.code32
cachea.wi [%p4 + r]

# CHECK-INST: cachea.wi [%p8 + r]
# CHECK: encoding: [0xa9,0x80,0x40,0x03]
.code32
cachea.wi [%p8 + r]

# CHECK-INST: cachea.wi [%p0 + c], -512
# CHECK: encoding: [0xa9,0x00,0x40,0x87]
.code32
cachea.wi [%p0 + c], -512

# CHECK-INST: cachea.wi [%p0 + c], -511
# CHECK: encoding: [0xa9,0x00,0x41,0x87]
.code32
cachea.wi [%p0 + c], -511

# CHECK-INST: cachea.wi [%p0 + c], -2
# CHECK: encoding: [0xa9,0x00,0x7e,0xf7]
.code32
cachea.wi [%p0 + c], -2

# CHECK-INST: cachea.wi [%p0 + c], -1
# CHECK: encoding: [0xa9,0x00,0x7f,0xf7]
.code32
cachea.wi [%p0 + c], -1

# CHECK-INST: cachea.wi [%p0 + c], 0
# CHECK: encoding: [0xa9,0x00,0x40,0x07]
.code32
cachea.wi [%p0 + c], 0

# CHECK-INST: cachea.wi [%p0 + c], 1
# CHECK: encoding: [0xa9,0x00,0x41,0x07]
.code32
cachea.wi [%p0 + c], 1

# CHECK-INST: cachea.wi [%p0 + c], 510
# CHECK: encoding: [0xa9,0x00,0x7e,0x77]
.code32
cachea.wi [%p0 + c], 510

# CHECK-INST: cachea.wi [%p0 + c], 511
# CHECK: encoding: [0xa9,0x00,0x7f,0x77]
.code32
cachea.wi [%p0 + c], 511

# CHECK-INST: cachea.wi [%p2 + c], -512
# CHECK: encoding: [0xa9,0x20,0x40,0x87]
.code32
cachea.wi [%p2 + c], -512

# CHECK-INST: cachea.wi [%p2 + c], -511
# CHECK: encoding: [0xa9,0x20,0x41,0x87]
.code32
cachea.wi [%p2 + c], -511

# CHECK-INST: cachea.wi [%p2 + c], -2
# CHECK: encoding: [0xa9,0x20,0x7e,0xf7]
.code32
cachea.wi [%p2 + c], -2

# CHECK-INST: cachea.wi [%p2 + c], -1
# CHECK: encoding: [0xa9,0x20,0x7f,0xf7]
.code32
cachea.wi [%p2 + c], -1

# CHECK-INST: cachea.wi [%p2 + c], 0
# CHECK: encoding: [0xa9,0x20,0x40,0x07]
.code32
cachea.wi [%p2 + c], 0

# CHECK-INST: cachea.wi [%p2 + c], 1
# CHECK: encoding: [0xa9,0x20,0x41,0x07]
.code32
cachea.wi [%p2 + c], 1

# CHECK-INST: cachea.wi [%p2 + c], 510
# CHECK: encoding: [0xa9,0x20,0x7e,0x77]
.code32
cachea.wi [%p2 + c], 510

# CHECK-INST: cachea.wi [%p2 + c], 511
# CHECK: encoding: [0xa9,0x20,0x7f,0x77]
.code32
cachea.wi [%p2 + c], 511

# CHECK-INST: cachea.wi [%p4 + c], -512
# CHECK: encoding: [0xa9,0x40,0x40,0x87]
.code32
cachea.wi [%p4 + c], -512

# CHECK-INST: cachea.wi [%p4 + c], -511
# CHECK: encoding: [0xa9,0x40,0x41,0x87]
.code32
cachea.wi [%p4 + c], -511

# CHECK-INST: cachea.wi [%p4 + c], -2
# CHECK: encoding: [0xa9,0x40,0x7e,0xf7]
.code32
cachea.wi [%p4 + c], -2

# CHECK-INST: cachea.wi [%p4 + c], -1
# CHECK: encoding: [0xa9,0x40,0x7f,0xf7]
.code32
cachea.wi [%p4 + c], -1

# CHECK-INST: cachea.wi [%p4 + c], 0
# CHECK: encoding: [0xa9,0x40,0x40,0x07]
.code32
cachea.wi [%p4 + c], 0

# CHECK-INST: cachea.wi [%p4 + c], 1
# CHECK: encoding: [0xa9,0x40,0x41,0x07]
.code32
cachea.wi [%p4 + c], 1

# CHECK-INST: cachea.wi [%p4 + c], 510
# CHECK: encoding: [0xa9,0x40,0x7e,0x77]
.code32
cachea.wi [%p4 + c], 510

# CHECK-INST: cachea.wi [%p4 + c], 511
# CHECK: encoding: [0xa9,0x40,0x7f,0x77]
.code32
cachea.wi [%p4 + c], 511

# CHECK-INST: cachea.wi [%p8 + c], -512
# CHECK: encoding: [0xa9,0x80,0x40,0x87]
.code32
cachea.wi [%p8 + c], -512

# CHECK-INST: cachea.wi [%p8 + c], -511
# CHECK: encoding: [0xa9,0x80,0x41,0x87]
.code32
cachea.wi [%p8 + c], -511

# CHECK-INST: cachea.wi [%p8 + c], -2
# CHECK: encoding: [0xa9,0x80,0x7e,0xf7]
.code32
cachea.wi [%p8 + c], -2

# CHECK-INST: cachea.wi [%p8 + c], -1
# CHECK: encoding: [0xa9,0x80,0x7f,0xf7]
.code32
cachea.wi [%p8 + c], -1

# CHECK-INST: cachea.wi [%p8 + c], 0
# CHECK: encoding: [0xa9,0x80,0x40,0x07]
.code32
cachea.wi [%p8 + c], 0

# CHECK-INST: cachea.wi [%p8 + c], 1
# CHECK: encoding: [0xa9,0x80,0x41,0x07]
.code32
cachea.wi [%p8 + c], 1

# CHECK-INST: cachea.wi [%p8 + c], 510
# CHECK: encoding: [0xa9,0x80,0x7e,0x77]
.code32
cachea.wi [%p8 + c], 510

# CHECK-INST: cachea.wi [%p8 + c], 511
# CHECK: encoding: [0xa9,0x80,0x7f,0x77]
.code32
cachea.wi [%p8 + c], 511

# CHECK-INST: cachea.wi [%a0+], -512
# CHECK: encoding: [0x89,0x00,0x40,0x83]
.code32
cachea.wi [%a0+], -512

# CHECK-INST: cachea.wi [%a0+], -511
# CHECK: encoding: [0x89,0x00,0x41,0x83]
.code32
cachea.wi [%a0+], -511

# CHECK-INST: cachea.wi [%a0+], -2
# CHECK: encoding: [0x89,0x00,0x7e,0xf3]
.code32
cachea.wi [%a0+], -2

# CHECK-INST: cachea.wi [%a0+], -1
# CHECK: encoding: [0x89,0x00,0x7f,0xf3]
.code32
cachea.wi [%a0+], -1

# CHECK-INST: cachea.wi [%a0+], 0
# CHECK: encoding: [0x89,0x00,0x40,0x03]
.code32
cachea.wi [%a0+], 0

# CHECK-INST: cachea.wi [%a0+], 1
# CHECK: encoding: [0x89,0x00,0x41,0x03]
.code32
cachea.wi [%a0+], 1

# CHECK-INST: cachea.wi [%a0+], 510
# CHECK: encoding: [0x89,0x00,0x7e,0x73]
.code32
cachea.wi [%a0+], 510

# CHECK-INST: cachea.wi [%a0+], 511
# CHECK: encoding: [0x89,0x00,0x7f,0x73]
.code32
cachea.wi [%a0+], 511

# CHECK-INST: cachea.wi [%a1+], -512
# CHECK: encoding: [0x89,0x10,0x40,0x83]
.code32
cachea.wi [%a1+], -512

# CHECK-INST: cachea.wi [%a1+], -511
# CHECK: encoding: [0x89,0x10,0x41,0x83]
.code32
cachea.wi [%a1+], -511

# CHECK-INST: cachea.wi [%a1+], -2
# CHECK: encoding: [0x89,0x10,0x7e,0xf3]
.code32
cachea.wi [%a1+], -2

# CHECK-INST: cachea.wi [%a1+], -1
# CHECK: encoding: [0x89,0x10,0x7f,0xf3]
.code32
cachea.wi [%a1+], -1

# CHECK-INST: cachea.wi [%a1+], 0
# CHECK: encoding: [0x89,0x10,0x40,0x03]
.code32
cachea.wi [%a1+], 0

# CHECK-INST: cachea.wi [%a1+], 1
# CHECK: encoding: [0x89,0x10,0x41,0x03]
.code32
cachea.wi [%a1+], 1

# CHECK-INST: cachea.wi [%a1+], 510
# CHECK: encoding: [0x89,0x10,0x7e,0x73]
.code32
cachea.wi [%a1+], 510

# CHECK-INST: cachea.wi [%a1+], 511
# CHECK: encoding: [0x89,0x10,0x7f,0x73]
.code32
cachea.wi [%a1+], 511

# CHECK-INST: cachea.wi [%a14+], -512
# CHECK: encoding: [0x89,0xe0,0x40,0x83]
.code32
cachea.wi [%a14+], -512

# CHECK-INST: cachea.wi [%a14+], -511
# CHECK: encoding: [0x89,0xe0,0x41,0x83]
.code32
cachea.wi [%a14+], -511

# CHECK-INST: cachea.wi [%a14+], -2
# CHECK: encoding: [0x89,0xe0,0x7e,0xf3]
.code32
cachea.wi [%a14+], -2

# CHECK-INST: cachea.wi [%a14+], -1
# CHECK: encoding: [0x89,0xe0,0x7f,0xf3]
.code32
cachea.wi [%a14+], -1

# CHECK-INST: cachea.wi [%a14+], 0
# CHECK: encoding: [0x89,0xe0,0x40,0x03]
.code32
cachea.wi [%a14+], 0

# CHECK-INST: cachea.wi [%a14+], 1
# CHECK: encoding: [0x89,0xe0,0x41,0x03]
.code32
cachea.wi [%a14+], 1

# CHECK-INST: cachea.wi [%a14+], 510
# CHECK: encoding: [0x89,0xe0,0x7e,0x73]
.code32
cachea.wi [%a14+], 510

# CHECK-INST: cachea.wi [%a14+], 511
# CHECK: encoding: [0x89,0xe0,0x7f,0x73]
.code32
cachea.wi [%a14+], 511

# CHECK-INST: cachea.wi [%a15+], -512
# CHECK: encoding: [0x89,0xf0,0x40,0x83]
.code32
cachea.wi [%a15+], -512

# CHECK-INST: cachea.wi [%a15+], -511
# CHECK: encoding: [0x89,0xf0,0x41,0x83]
.code32
cachea.wi [%a15+], -511

# CHECK-INST: cachea.wi [%a15+], -2
# CHECK: encoding: [0x89,0xf0,0x7e,0xf3]
.code32
cachea.wi [%a15+], -2

# CHECK-INST: cachea.wi [%a15+], -1
# CHECK: encoding: [0x89,0xf0,0x7f,0xf3]
.code32
cachea.wi [%a15+], -1

# CHECK-INST: cachea.wi [%a15+], 0
# CHECK: encoding: [0x89,0xf0,0x40,0x03]
.code32
cachea.wi [%a15+], 0

# CHECK-INST: cachea.wi [%a15+], 1
# CHECK: encoding: [0x89,0xf0,0x41,0x03]
.code32
cachea.wi [%a15+], 1

# CHECK-INST: cachea.wi [%a15+], 510
# CHECK: encoding: [0x89,0xf0,0x7e,0x73]
.code32
cachea.wi [%a15+], 510

# CHECK-INST: cachea.wi [%a15+], 511
# CHECK: encoding: [0x89,0xf0,0x7f,0x73]
.code32
cachea.wi [%a15+], 511

# CHECK-INST: cachea.wi [+%a0], -512
# CHECK: encoding: [0x89,0x00,0x40,0x87]
.code32
cachea.wi [+%a0], -512

# CHECK-INST: cachea.wi [+%a0], -511
# CHECK: encoding: [0x89,0x00,0x41,0x87]
.code32
cachea.wi [+%a0], -511

# CHECK-INST: cachea.wi [+%a0], -2
# CHECK: encoding: [0x89,0x00,0x7e,0xf7]
.code32
cachea.wi [+%a0], -2

# CHECK-INST: cachea.wi [+%a0], -1
# CHECK: encoding: [0x89,0x00,0x7f,0xf7]
.code32
cachea.wi [+%a0], -1

# CHECK-INST: cachea.wi [+%a0], 0
# CHECK: encoding: [0x89,0x00,0x40,0x07]
.code32
cachea.wi [+%a0], 0

# CHECK-INST: cachea.wi [+%a0], 1
# CHECK: encoding: [0x89,0x00,0x41,0x07]
.code32
cachea.wi [+%a0], 1

# CHECK-INST: cachea.wi [+%a0], 510
# CHECK: encoding: [0x89,0x00,0x7e,0x77]
.code32
cachea.wi [+%a0], 510

# CHECK-INST: cachea.wi [+%a0], 511
# CHECK: encoding: [0x89,0x00,0x7f,0x77]
.code32
cachea.wi [+%a0], 511

# CHECK-INST: cachea.wi [+%a1], -512
# CHECK: encoding: [0x89,0x10,0x40,0x87]
.code32
cachea.wi [+%a1], -512

# CHECK-INST: cachea.wi [+%a1], -511
# CHECK: encoding: [0x89,0x10,0x41,0x87]
.code32
cachea.wi [+%a1], -511

# CHECK-INST: cachea.wi [+%a1], -2
# CHECK: encoding: [0x89,0x10,0x7e,0xf7]
.code32
cachea.wi [+%a1], -2

# CHECK-INST: cachea.wi [+%a1], -1
# CHECK: encoding: [0x89,0x10,0x7f,0xf7]
.code32
cachea.wi [+%a1], -1

# CHECK-INST: cachea.wi [+%a1], 0
# CHECK: encoding: [0x89,0x10,0x40,0x07]
.code32
cachea.wi [+%a1], 0

# CHECK-INST: cachea.wi [+%a1], 1
# CHECK: encoding: [0x89,0x10,0x41,0x07]
.code32
cachea.wi [+%a1], 1

# CHECK-INST: cachea.wi [+%a1], 510
# CHECK: encoding: [0x89,0x10,0x7e,0x77]
.code32
cachea.wi [+%a1], 510

# CHECK-INST: cachea.wi [+%a1], 511
# CHECK: encoding: [0x89,0x10,0x7f,0x77]
.code32
cachea.wi [+%a1], 511

# CHECK-INST: cachea.wi [+%a14], -512
# CHECK: encoding: [0x89,0xe0,0x40,0x87]
.code32
cachea.wi [+%a14], -512

# CHECK-INST: cachea.wi [+%a14], -511
# CHECK: encoding: [0x89,0xe0,0x41,0x87]
.code32
cachea.wi [+%a14], -511

# CHECK-INST: cachea.wi [+%a14], -2
# CHECK: encoding: [0x89,0xe0,0x7e,0xf7]
.code32
cachea.wi [+%a14], -2

# CHECK-INST: cachea.wi [+%a14], -1
# CHECK: encoding: [0x89,0xe0,0x7f,0xf7]
.code32
cachea.wi [+%a14], -1

# CHECK-INST: cachea.wi [+%a14], 0
# CHECK: encoding: [0x89,0xe0,0x40,0x07]
.code32
cachea.wi [+%a14], 0

# CHECK-INST: cachea.wi [+%a14], 1
# CHECK: encoding: [0x89,0xe0,0x41,0x07]
.code32
cachea.wi [+%a14], 1

# CHECK-INST: cachea.wi [+%a14], 510
# CHECK: encoding: [0x89,0xe0,0x7e,0x77]
.code32
cachea.wi [+%a14], 510

# CHECK-INST: cachea.wi [+%a14], 511
# CHECK: encoding: [0x89,0xe0,0x7f,0x77]
.code32
cachea.wi [+%a14], 511

# CHECK-INST: cachea.wi [+%a15], -512
# CHECK: encoding: [0x89,0xf0,0x40,0x87]
.code32
cachea.wi [+%a15], -512

# CHECK-INST: cachea.wi [+%a15], -511
# CHECK: encoding: [0x89,0xf0,0x41,0x87]
.code32
cachea.wi [+%a15], -511

# CHECK-INST: cachea.wi [+%a15], -2
# CHECK: encoding: [0x89,0xf0,0x7e,0xf7]
.code32
cachea.wi [+%a15], -2

# CHECK-INST: cachea.wi [+%a15], -1
# CHECK: encoding: [0x89,0xf0,0x7f,0xf7]
.code32
cachea.wi [+%a15], -1

# CHECK-INST: cachea.wi [+%a15], 0
# CHECK: encoding: [0x89,0xf0,0x40,0x07]
.code32
cachea.wi [+%a15], 0

# CHECK-INST: cachea.wi [+%a15], 1
# CHECK: encoding: [0x89,0xf0,0x41,0x07]
.code32
cachea.wi [+%a15], 1

# CHECK-INST: cachea.wi [+%a15], 510
# CHECK: encoding: [0x89,0xf0,0x7e,0x77]
.code32
cachea.wi [+%a15], 510

# CHECK-INST: cachea.wi [+%a15], 511
# CHECK: encoding: [0x89,0xf0,0x7f,0x77]
.code32
cachea.wi [+%a15], 511

# CHECK-INST: cachei.i %a0, -512
# CHECK: encoding: [0x89,0x00,0x80,0x8a]
.code32
cachei.i %a0, -512

# CHECK-INST: cachei.i %a0, -511
# CHECK: encoding: [0x89,0x00,0x81,0x8a]
.code32
cachei.i %a0, -511

# CHECK-INST: cachei.i %a0, -2
# CHECK: encoding: [0x89,0x00,0xbe,0xfa]
.code32
cachei.i %a0, -2

# CHECK-INST: cachei.i %a0, -1
# CHECK: encoding: [0x89,0x00,0xbf,0xfa]
.code32
cachei.i %a0, -1

# CHECK-INST: cachei.i %a0, 0
# CHECK: encoding: [0x89,0x00,0x80,0x0a]
.code32
cachei.i %a0, 0

# CHECK-INST: cachei.i %a0, 1
# CHECK: encoding: [0x89,0x00,0x81,0x0a]
.code32
cachei.i %a0, 1

# CHECK-INST: cachei.i %a0, 510
# CHECK: encoding: [0x89,0x00,0xbe,0x7a]
.code32
cachei.i %a0, 510

# CHECK-INST: cachei.i %a0, 511
# CHECK: encoding: [0x89,0x00,0xbf,0x7a]
.code32
cachei.i %a0, 511

# CHECK-INST: cachei.i %a1, -512
# CHECK: encoding: [0x89,0x10,0x80,0x8a]
.code32
cachei.i %a1, -512

# CHECK-INST: cachei.i %a1, -511
# CHECK: encoding: [0x89,0x10,0x81,0x8a]
.code32
cachei.i %a1, -511

# CHECK-INST: cachei.i %a1, -2
# CHECK: encoding: [0x89,0x10,0xbe,0xfa]
.code32
cachei.i %a1, -2

# CHECK-INST: cachei.i %a1, -1
# CHECK: encoding: [0x89,0x10,0xbf,0xfa]
.code32
cachei.i %a1, -1

# CHECK-INST: cachei.i %a1, 0
# CHECK: encoding: [0x89,0x10,0x80,0x0a]
.code32
cachei.i %a1, 0

# CHECK-INST: cachei.i %a1, 1
# CHECK: encoding: [0x89,0x10,0x81,0x0a]
.code32
cachei.i %a1, 1

# CHECK-INST: cachei.i %a1, 510
# CHECK: encoding: [0x89,0x10,0xbe,0x7a]
.code32
cachei.i %a1, 510

# CHECK-INST: cachei.i %a1, 511
# CHECK: encoding: [0x89,0x10,0xbf,0x7a]
.code32
cachei.i %a1, 511

# CHECK-INST: cachei.i %a14, -512
# CHECK: encoding: [0x89,0xe0,0x80,0x8a]
.code32
cachei.i %a14, -512

# CHECK-INST: cachei.i %a14, -511
# CHECK: encoding: [0x89,0xe0,0x81,0x8a]
.code32
cachei.i %a14, -511

# CHECK-INST: cachei.i %a14, -2
# CHECK: encoding: [0x89,0xe0,0xbe,0xfa]
.code32
cachei.i %a14, -2

# CHECK-INST: cachei.i %a14, -1
# CHECK: encoding: [0x89,0xe0,0xbf,0xfa]
.code32
cachei.i %a14, -1

# CHECK-INST: cachei.i %a14, 0
# CHECK: encoding: [0x89,0xe0,0x80,0x0a]
.code32
cachei.i %a14, 0

# CHECK-INST: cachei.i %a14, 1
# CHECK: encoding: [0x89,0xe0,0x81,0x0a]
.code32
cachei.i %a14, 1

# CHECK-INST: cachei.i %a14, 510
# CHECK: encoding: [0x89,0xe0,0xbe,0x7a]
.code32
cachei.i %a14, 510

# CHECK-INST: cachei.i %a14, 511
# CHECK: encoding: [0x89,0xe0,0xbf,0x7a]
.code32
cachei.i %a14, 511

# CHECK-INST: cachei.i %a15, -512
# CHECK: encoding: [0x89,0xf0,0x80,0x8a]
.code32
cachei.i %a15, -512

# CHECK-INST: cachei.i %a15, -511
# CHECK: encoding: [0x89,0xf0,0x81,0x8a]
.code32
cachei.i %a15, -511

# CHECK-INST: cachei.i %a15, -2
# CHECK: encoding: [0x89,0xf0,0xbe,0xfa]
.code32
cachei.i %a15, -2

# CHECK-INST: cachei.i %a15, -1
# CHECK: encoding: [0x89,0xf0,0xbf,0xfa]
.code32
cachei.i %a15, -1

# CHECK-INST: cachei.i %a15, 0
# CHECK: encoding: [0x89,0xf0,0x80,0x0a]
.code32
cachei.i %a15, 0

# CHECK-INST: cachei.i %a15, 1
# CHECK: encoding: [0x89,0xf0,0x81,0x0a]
.code32
cachei.i %a15, 1

# CHECK-INST: cachei.i %a15, 510
# CHECK: encoding: [0x89,0xf0,0xbe,0x7a]
.code32
cachei.i %a15, 510

# CHECK-INST: cachei.i %a15, 511
# CHECK: encoding: [0x89,0xf0,0xbf,0x7a]
.code32
cachei.i %a15, 511

# CHECK-INST: cachei.i [%a0+], -512
# CHECK: encoding: [0x89,0x00,0x80,0x82]
.code32
cachei.i [%a0+], -512

# CHECK-INST: cachei.i [%a0+], -511
# CHECK: encoding: [0x89,0x00,0x81,0x82]
.code32
cachei.i [%a0+], -511

# CHECK-INST: cachei.i [%a0+], -2
# CHECK: encoding: [0x89,0x00,0xbe,0xf2]
.code32
cachei.i [%a0+], -2

# CHECK-INST: cachei.i [%a0+], -1
# CHECK: encoding: [0x89,0x00,0xbf,0xf2]
.code32
cachei.i [%a0+], -1

# CHECK-INST: cachei.i [%a0+], 0
# CHECK: encoding: [0x89,0x00,0x80,0x02]
.code32
cachei.i [%a0+], 0

# CHECK-INST: cachei.i [%a0+], 1
# CHECK: encoding: [0x89,0x00,0x81,0x02]
.code32
cachei.i [%a0+], 1

# CHECK-INST: cachei.i [%a0+], 510
# CHECK: encoding: [0x89,0x00,0xbe,0x72]
.code32
cachei.i [%a0+], 510

# CHECK-INST: cachei.i [%a0+], 511
# CHECK: encoding: [0x89,0x00,0xbf,0x72]
.code32
cachei.i [%a0+], 511

# CHECK-INST: cachei.i [%a1+], -512
# CHECK: encoding: [0x89,0x10,0x80,0x82]
.code32
cachei.i [%a1+], -512

# CHECK-INST: cachei.i [%a1+], -511
# CHECK: encoding: [0x89,0x10,0x81,0x82]
.code32
cachei.i [%a1+], -511

# CHECK-INST: cachei.i [%a1+], -2
# CHECK: encoding: [0x89,0x10,0xbe,0xf2]
.code32
cachei.i [%a1+], -2

# CHECK-INST: cachei.i [%a1+], -1
# CHECK: encoding: [0x89,0x10,0xbf,0xf2]
.code32
cachei.i [%a1+], -1

# CHECK-INST: cachei.i [%a1+], 0
# CHECK: encoding: [0x89,0x10,0x80,0x02]
.code32
cachei.i [%a1+], 0

# CHECK-INST: cachei.i [%a1+], 1
# CHECK: encoding: [0x89,0x10,0x81,0x02]
.code32
cachei.i [%a1+], 1

# CHECK-INST: cachei.i [%a1+], 510
# CHECK: encoding: [0x89,0x10,0xbe,0x72]
.code32
cachei.i [%a1+], 510

# CHECK-INST: cachei.i [%a1+], 511
# CHECK: encoding: [0x89,0x10,0xbf,0x72]
.code32
cachei.i [%a1+], 511

# CHECK-INST: cachei.i [%a14+], -512
# CHECK: encoding: [0x89,0xe0,0x80,0x82]
.code32
cachei.i [%a14+], -512

# CHECK-INST: cachei.i [%a14+], -511
# CHECK: encoding: [0x89,0xe0,0x81,0x82]
.code32
cachei.i [%a14+], -511

# CHECK-INST: cachei.i [%a14+], -2
# CHECK: encoding: [0x89,0xe0,0xbe,0xf2]
.code32
cachei.i [%a14+], -2

# CHECK-INST: cachei.i [%a14+], -1
# CHECK: encoding: [0x89,0xe0,0xbf,0xf2]
.code32
cachei.i [%a14+], -1

# CHECK-INST: cachei.i [%a14+], 0
# CHECK: encoding: [0x89,0xe0,0x80,0x02]
.code32
cachei.i [%a14+], 0

# CHECK-INST: cachei.i [%a14+], 1
# CHECK: encoding: [0x89,0xe0,0x81,0x02]
.code32
cachei.i [%a14+], 1

# CHECK-INST: cachei.i [%a14+], 510
# CHECK: encoding: [0x89,0xe0,0xbe,0x72]
.code32
cachei.i [%a14+], 510

# CHECK-INST: cachei.i [%a14+], 511
# CHECK: encoding: [0x89,0xe0,0xbf,0x72]
.code32
cachei.i [%a14+], 511

# CHECK-INST: cachei.i [%a15+], -512
# CHECK: encoding: [0x89,0xf0,0x80,0x82]
.code32
cachei.i [%a15+], -512

# CHECK-INST: cachei.i [%a15+], -511
# CHECK: encoding: [0x89,0xf0,0x81,0x82]
.code32
cachei.i [%a15+], -511

# CHECK-INST: cachei.i [%a15+], -2
# CHECK: encoding: [0x89,0xf0,0xbe,0xf2]
.code32
cachei.i [%a15+], -2

# CHECK-INST: cachei.i [%a15+], -1
# CHECK: encoding: [0x89,0xf0,0xbf,0xf2]
.code32
cachei.i [%a15+], -1

# CHECK-INST: cachei.i [%a15+], 0
# CHECK: encoding: [0x89,0xf0,0x80,0x02]
.code32
cachei.i [%a15+], 0

# CHECK-INST: cachei.i [%a15+], 1
# CHECK: encoding: [0x89,0xf0,0x81,0x02]
.code32
cachei.i [%a15+], 1

# CHECK-INST: cachei.i [%a15+], 510
# CHECK: encoding: [0x89,0xf0,0xbe,0x72]
.code32
cachei.i [%a15+], 510

# CHECK-INST: cachei.i [%a15+], 511
# CHECK: encoding: [0x89,0xf0,0xbf,0x72]
.code32
cachei.i [%a15+], 511

# CHECK-INST: cachei.i [+%a0], -512
# CHECK: encoding: [0x89,0x00,0x80,0x86]
.code32
cachei.i [+%a0], -512

# CHECK-INST: cachei.i [+%a0], -511
# CHECK: encoding: [0x89,0x00,0x81,0x86]
.code32
cachei.i [+%a0], -511

# CHECK-INST: cachei.i [+%a0], -2
# CHECK: encoding: [0x89,0x00,0xbe,0xf6]
.code32
cachei.i [+%a0], -2

# CHECK-INST: cachei.i [+%a0], -1
# CHECK: encoding: [0x89,0x00,0xbf,0xf6]
.code32
cachei.i [+%a0], -1

# CHECK-INST: cachei.i [+%a0], 0
# CHECK: encoding: [0x89,0x00,0x80,0x06]
.code32
cachei.i [+%a0], 0

# CHECK-INST: cachei.i [+%a0], 1
# CHECK: encoding: [0x89,0x00,0x81,0x06]
.code32
cachei.i [+%a0], 1

# CHECK-INST: cachei.i [+%a0], 510
# CHECK: encoding: [0x89,0x00,0xbe,0x76]
.code32
cachei.i [+%a0], 510

# CHECK-INST: cachei.i [+%a0], 511
# CHECK: encoding: [0x89,0x00,0xbf,0x76]
.code32
cachei.i [+%a0], 511

# CHECK-INST: cachei.i [+%a1], -512
# CHECK: encoding: [0x89,0x10,0x80,0x86]
.code32
cachei.i [+%a1], -512

# CHECK-INST: cachei.i [+%a1], -511
# CHECK: encoding: [0x89,0x10,0x81,0x86]
.code32
cachei.i [+%a1], -511

# CHECK-INST: cachei.i [+%a1], -2
# CHECK: encoding: [0x89,0x10,0xbe,0xf6]
.code32
cachei.i [+%a1], -2

# CHECK-INST: cachei.i [+%a1], -1
# CHECK: encoding: [0x89,0x10,0xbf,0xf6]
.code32
cachei.i [+%a1], -1

# CHECK-INST: cachei.i [+%a1], 0
# CHECK: encoding: [0x89,0x10,0x80,0x06]
.code32
cachei.i [+%a1], 0

# CHECK-INST: cachei.i [+%a1], 1
# CHECK: encoding: [0x89,0x10,0x81,0x06]
.code32
cachei.i [+%a1], 1

# CHECK-INST: cachei.i [+%a1], 510
# CHECK: encoding: [0x89,0x10,0xbe,0x76]
.code32
cachei.i [+%a1], 510

# CHECK-INST: cachei.i [+%a1], 511
# CHECK: encoding: [0x89,0x10,0xbf,0x76]
.code32
cachei.i [+%a1], 511

# CHECK-INST: cachei.i [+%a14], -512
# CHECK: encoding: [0x89,0xe0,0x80,0x86]
.code32
cachei.i [+%a14], -512

# CHECK-INST: cachei.i [+%a14], -511
# CHECK: encoding: [0x89,0xe0,0x81,0x86]
.code32
cachei.i [+%a14], -511

# CHECK-INST: cachei.i [+%a14], -2
# CHECK: encoding: [0x89,0xe0,0xbe,0xf6]
.code32
cachei.i [+%a14], -2

# CHECK-INST: cachei.i [+%a14], -1
# CHECK: encoding: [0x89,0xe0,0xbf,0xf6]
.code32
cachei.i [+%a14], -1

# CHECK-INST: cachei.i [+%a14], 0
# CHECK: encoding: [0x89,0xe0,0x80,0x06]
.code32
cachei.i [+%a14], 0

# CHECK-INST: cachei.i [+%a14], 1
# CHECK: encoding: [0x89,0xe0,0x81,0x06]
.code32
cachei.i [+%a14], 1

# CHECK-INST: cachei.i [+%a14], 510
# CHECK: encoding: [0x89,0xe0,0xbe,0x76]
.code32
cachei.i [+%a14], 510

# CHECK-INST: cachei.i [+%a14], 511
# CHECK: encoding: [0x89,0xe0,0xbf,0x76]
.code32
cachei.i [+%a14], 511

# CHECK-INST: cachei.i [+%a15], -512
# CHECK: encoding: [0x89,0xf0,0x80,0x86]
.code32
cachei.i [+%a15], -512

# CHECK-INST: cachei.i [+%a15], -511
# CHECK: encoding: [0x89,0xf0,0x81,0x86]
.code32
cachei.i [+%a15], -511

# CHECK-INST: cachei.i [+%a15], -2
# CHECK: encoding: [0x89,0xf0,0xbe,0xf6]
.code32
cachei.i [+%a15], -2

# CHECK-INST: cachei.i [+%a15], -1
# CHECK: encoding: [0x89,0xf0,0xbf,0xf6]
.code32
cachei.i [+%a15], -1

# CHECK-INST: cachei.i [+%a15], 0
# CHECK: encoding: [0x89,0xf0,0x80,0x06]
.code32
cachei.i [+%a15], 0

# CHECK-INST: cachei.i [+%a15], 1
# CHECK: encoding: [0x89,0xf0,0x81,0x06]
.code32
cachei.i [+%a15], 1

# CHECK-INST: cachei.i [+%a15], 510
# CHECK: encoding: [0x89,0xf0,0xbe,0x76]
.code32
cachei.i [+%a15], 510

# CHECK-INST: cachei.i [+%a15], 511
# CHECK: encoding: [0x89,0xf0,0xbf,0x76]
.code32
cachei.i [+%a15], 511

# CHECK-INST: cachei.w %a0, -512
# CHECK: encoding: [0x89,0x00,0xc0,0x8a]
.code32
cachei.w %a0, -512

# CHECK-INST: cachei.w %a0, -511
# CHECK: encoding: [0x89,0x00,0xc1,0x8a]
.code32
cachei.w %a0, -511

# CHECK-INST: cachei.w %a0, -2
# CHECK: encoding: [0x89,0x00,0xfe,0xfa]
.code32
cachei.w %a0, -2

# CHECK-INST: cachei.w %a0, -1
# CHECK: encoding: [0x89,0x00,0xff,0xfa]
.code32
cachei.w %a0, -1

# CHECK-INST: cachei.w %a0, 0
# CHECK: encoding: [0x89,0x00,0xc0,0x0a]
.code32
cachei.w %a0, 0

# CHECK-INST: cachei.w %a0, 1
# CHECK: encoding: [0x89,0x00,0xc1,0x0a]
.code32
cachei.w %a0, 1

# CHECK-INST: cachei.w %a0, 510
# CHECK: encoding: [0x89,0x00,0xfe,0x7a]
.code32
cachei.w %a0, 510

# CHECK-INST: cachei.w %a0, 511
# CHECK: encoding: [0x89,0x00,0xff,0x7a]
.code32
cachei.w %a0, 511

# CHECK-INST: cachei.w %a1, -512
# CHECK: encoding: [0x89,0x10,0xc0,0x8a]
.code32
cachei.w %a1, -512

# CHECK-INST: cachei.w %a1, -511
# CHECK: encoding: [0x89,0x10,0xc1,0x8a]
.code32
cachei.w %a1, -511

# CHECK-INST: cachei.w %a1, -2
# CHECK: encoding: [0x89,0x10,0xfe,0xfa]
.code32
cachei.w %a1, -2

# CHECK-INST: cachei.w %a1, -1
# CHECK: encoding: [0x89,0x10,0xff,0xfa]
.code32
cachei.w %a1, -1

# CHECK-INST: cachei.w %a1, 0
# CHECK: encoding: [0x89,0x10,0xc0,0x0a]
.code32
cachei.w %a1, 0

# CHECK-INST: cachei.w %a1, 1
# CHECK: encoding: [0x89,0x10,0xc1,0x0a]
.code32
cachei.w %a1, 1

# CHECK-INST: cachei.w %a1, 510
# CHECK: encoding: [0x89,0x10,0xfe,0x7a]
.code32
cachei.w %a1, 510

# CHECK-INST: cachei.w %a1, 511
# CHECK: encoding: [0x89,0x10,0xff,0x7a]
.code32
cachei.w %a1, 511

# CHECK-INST: cachei.w %a14, -512
# CHECK: encoding: [0x89,0xe0,0xc0,0x8a]
.code32
cachei.w %a14, -512

# CHECK-INST: cachei.w %a14, -511
# CHECK: encoding: [0x89,0xe0,0xc1,0x8a]
.code32
cachei.w %a14, -511

# CHECK-INST: cachei.w %a14, -2
# CHECK: encoding: [0x89,0xe0,0xfe,0xfa]
.code32
cachei.w %a14, -2

# CHECK-INST: cachei.w %a14, -1
# CHECK: encoding: [0x89,0xe0,0xff,0xfa]
.code32
cachei.w %a14, -1

# CHECK-INST: cachei.w %a14, 0
# CHECK: encoding: [0x89,0xe0,0xc0,0x0a]
.code32
cachei.w %a14, 0

# CHECK-INST: cachei.w %a14, 1
# CHECK: encoding: [0x89,0xe0,0xc1,0x0a]
.code32
cachei.w %a14, 1

# CHECK-INST: cachei.w %a14, 510
# CHECK: encoding: [0x89,0xe0,0xfe,0x7a]
.code32
cachei.w %a14, 510

# CHECK-INST: cachei.w %a14, 511
# CHECK: encoding: [0x89,0xe0,0xff,0x7a]
.code32
cachei.w %a14, 511

# CHECK-INST: cachei.w %a15, -512
# CHECK: encoding: [0x89,0xf0,0xc0,0x8a]
.code32
cachei.w %a15, -512

# CHECK-INST: cachei.w %a15, -511
# CHECK: encoding: [0x89,0xf0,0xc1,0x8a]
.code32
cachei.w %a15, -511

# CHECK-INST: cachei.w %a15, -2
# CHECK: encoding: [0x89,0xf0,0xfe,0xfa]
.code32
cachei.w %a15, -2

# CHECK-INST: cachei.w %a15, -1
# CHECK: encoding: [0x89,0xf0,0xff,0xfa]
.code32
cachei.w %a15, -1

# CHECK-INST: cachei.w %a15, 0
# CHECK: encoding: [0x89,0xf0,0xc0,0x0a]
.code32
cachei.w %a15, 0

# CHECK-INST: cachei.w %a15, 1
# CHECK: encoding: [0x89,0xf0,0xc1,0x0a]
.code32
cachei.w %a15, 1

# CHECK-INST: cachei.w %a15, 510
# CHECK: encoding: [0x89,0xf0,0xfe,0x7a]
.code32
cachei.w %a15, 510

# CHECK-INST: cachei.w %a15, 511
# CHECK: encoding: [0x89,0xf0,0xff,0x7a]
.code32
cachei.w %a15, 511

# CHECK-INST: cachei.w [%a0+], -512
# CHECK: encoding: [0x89,0x00,0xc0,0x82]
.code32
cachei.w [%a0+], -512

# CHECK-INST: cachei.w [%a0+], -511
# CHECK: encoding: [0x89,0x00,0xc1,0x82]
.code32
cachei.w [%a0+], -511

# CHECK-INST: cachei.w [%a0+], -2
# CHECK: encoding: [0x89,0x00,0xfe,0xf2]
.code32
cachei.w [%a0+], -2

# CHECK-INST: cachei.w [%a0+], -1
# CHECK: encoding: [0x89,0x00,0xff,0xf2]
.code32
cachei.w [%a0+], -1

# CHECK-INST: cachei.w [%a0+], 0
# CHECK: encoding: [0x89,0x00,0xc0,0x02]
.code32
cachei.w [%a0+], 0

# CHECK-INST: cachei.w [%a0+], 1
# CHECK: encoding: [0x89,0x00,0xc1,0x02]
.code32
cachei.w [%a0+], 1

# CHECK-INST: cachei.w [%a0+], 510
# CHECK: encoding: [0x89,0x00,0xfe,0x72]
.code32
cachei.w [%a0+], 510

# CHECK-INST: cachei.w [%a0+], 511
# CHECK: encoding: [0x89,0x00,0xff,0x72]
.code32
cachei.w [%a0+], 511

# CHECK-INST: cachei.w [%a1+], -512
# CHECK: encoding: [0x89,0x10,0xc0,0x82]
.code32
cachei.w [%a1+], -512

# CHECK-INST: cachei.w [%a1+], -511
# CHECK: encoding: [0x89,0x10,0xc1,0x82]
.code32
cachei.w [%a1+], -511

# CHECK-INST: cachei.w [%a1+], -2
# CHECK: encoding: [0x89,0x10,0xfe,0xf2]
.code32
cachei.w [%a1+], -2

# CHECK-INST: cachei.w [%a1+], -1
# CHECK: encoding: [0x89,0x10,0xff,0xf2]
.code32
cachei.w [%a1+], -1

# CHECK-INST: cachei.w [%a1+], 0
# CHECK: encoding: [0x89,0x10,0xc0,0x02]
.code32
cachei.w [%a1+], 0

# CHECK-INST: cachei.w [%a1+], 1
# CHECK: encoding: [0x89,0x10,0xc1,0x02]
.code32
cachei.w [%a1+], 1

# CHECK-INST: cachei.w [%a1+], 510
# CHECK: encoding: [0x89,0x10,0xfe,0x72]
.code32
cachei.w [%a1+], 510

# CHECK-INST: cachei.w [%a1+], 511
# CHECK: encoding: [0x89,0x10,0xff,0x72]
.code32
cachei.w [%a1+], 511

# CHECK-INST: cachei.w [%a14+], -512
# CHECK: encoding: [0x89,0xe0,0xc0,0x82]
.code32
cachei.w [%a14+], -512

# CHECK-INST: cachei.w [%a14+], -511
# CHECK: encoding: [0x89,0xe0,0xc1,0x82]
.code32
cachei.w [%a14+], -511

# CHECK-INST: cachei.w [%a14+], -2
# CHECK: encoding: [0x89,0xe0,0xfe,0xf2]
.code32
cachei.w [%a14+], -2

# CHECK-INST: cachei.w [%a14+], -1
# CHECK: encoding: [0x89,0xe0,0xff,0xf2]
.code32
cachei.w [%a14+], -1

# CHECK-INST: cachei.w [%a14+], 0
# CHECK: encoding: [0x89,0xe0,0xc0,0x02]
.code32
cachei.w [%a14+], 0

# CHECK-INST: cachei.w [%a14+], 1
# CHECK: encoding: [0x89,0xe0,0xc1,0x02]
.code32
cachei.w [%a14+], 1

# CHECK-INST: cachei.w [%a14+], 510
# CHECK: encoding: [0x89,0xe0,0xfe,0x72]
.code32
cachei.w [%a14+], 510

# CHECK-INST: cachei.w [%a14+], 511
# CHECK: encoding: [0x89,0xe0,0xff,0x72]
.code32
cachei.w [%a14+], 511

# CHECK-INST: cachei.w [%a15+], -512
# CHECK: encoding: [0x89,0xf0,0xc0,0x82]
.code32
cachei.w [%a15+], -512

# CHECK-INST: cachei.w [%a15+], -511
# CHECK: encoding: [0x89,0xf0,0xc1,0x82]
.code32
cachei.w [%a15+], -511

# CHECK-INST: cachei.w [%a15+], -2
# CHECK: encoding: [0x89,0xf0,0xfe,0xf2]
.code32
cachei.w [%a15+], -2

# CHECK-INST: cachei.w [%a15+], -1
# CHECK: encoding: [0x89,0xf0,0xff,0xf2]
.code32
cachei.w [%a15+], -1

# CHECK-INST: cachei.w [%a15+], 0
# CHECK: encoding: [0x89,0xf0,0xc0,0x02]
.code32
cachei.w [%a15+], 0

# CHECK-INST: cachei.w [%a15+], 1
# CHECK: encoding: [0x89,0xf0,0xc1,0x02]
.code32
cachei.w [%a15+], 1

# CHECK-INST: cachei.w [%a15+], 510
# CHECK: encoding: [0x89,0xf0,0xfe,0x72]
.code32
cachei.w [%a15+], 510

# CHECK-INST: cachei.w [%a15+], 511
# CHECK: encoding: [0x89,0xf0,0xff,0x72]
.code32
cachei.w [%a15+], 511

# CHECK-INST: cachei.w [+%a0], -512
# CHECK: encoding: [0x89,0x00,0xc0,0x86]
.code32
cachei.w [+%a0], -512

# CHECK-INST: cachei.w [+%a0], -511
# CHECK: encoding: [0x89,0x00,0xc1,0x86]
.code32
cachei.w [+%a0], -511

# CHECK-INST: cachei.w [+%a0], -2
# CHECK: encoding: [0x89,0x00,0xfe,0xf6]
.code32
cachei.w [+%a0], -2

# CHECK-INST: cachei.w [+%a0], -1
# CHECK: encoding: [0x89,0x00,0xff,0xf6]
.code32
cachei.w [+%a0], -1

# CHECK-INST: cachei.w [+%a0], 0
# CHECK: encoding: [0x89,0x00,0xc0,0x06]
.code32
cachei.w [+%a0], 0

# CHECK-INST: cachei.w [+%a0], 1
# CHECK: encoding: [0x89,0x00,0xc1,0x06]
.code32
cachei.w [+%a0], 1

# CHECK-INST: cachei.w [+%a0], 510
# CHECK: encoding: [0x89,0x00,0xfe,0x76]
.code32
cachei.w [+%a0], 510

# CHECK-INST: cachei.w [+%a0], 511
# CHECK: encoding: [0x89,0x00,0xff,0x76]
.code32
cachei.w [+%a0], 511

# CHECK-INST: cachei.w [+%a1], -512
# CHECK: encoding: [0x89,0x10,0xc0,0x86]
.code32
cachei.w [+%a1], -512

# CHECK-INST: cachei.w [+%a1], -511
# CHECK: encoding: [0x89,0x10,0xc1,0x86]
.code32
cachei.w [+%a1], -511

# CHECK-INST: cachei.w [+%a1], -2
# CHECK: encoding: [0x89,0x10,0xfe,0xf6]
.code32
cachei.w [+%a1], -2

# CHECK-INST: cachei.w [+%a1], -1
# CHECK: encoding: [0x89,0x10,0xff,0xf6]
.code32
cachei.w [+%a1], -1

# CHECK-INST: cachei.w [+%a1], 0
# CHECK: encoding: [0x89,0x10,0xc0,0x06]
.code32
cachei.w [+%a1], 0

# CHECK-INST: cachei.w [+%a1], 1
# CHECK: encoding: [0x89,0x10,0xc1,0x06]
.code32
cachei.w [+%a1], 1

# CHECK-INST: cachei.w [+%a1], 510
# CHECK: encoding: [0x89,0x10,0xfe,0x76]
.code32
cachei.w [+%a1], 510

# CHECK-INST: cachei.w [+%a1], 511
# CHECK: encoding: [0x89,0x10,0xff,0x76]
.code32
cachei.w [+%a1], 511

# CHECK-INST: cachei.w [+%a14], -512
# CHECK: encoding: [0x89,0xe0,0xc0,0x86]
.code32
cachei.w [+%a14], -512

# CHECK-INST: cachei.w [+%a14], -511
# CHECK: encoding: [0x89,0xe0,0xc1,0x86]
.code32
cachei.w [+%a14], -511

# CHECK-INST: cachei.w [+%a14], -2
# CHECK: encoding: [0x89,0xe0,0xfe,0xf6]
.code32
cachei.w [+%a14], -2

# CHECK-INST: cachei.w [+%a14], -1
# CHECK: encoding: [0x89,0xe0,0xff,0xf6]
.code32
cachei.w [+%a14], -1

# CHECK-INST: cachei.w [+%a14], 0
# CHECK: encoding: [0x89,0xe0,0xc0,0x06]
.code32
cachei.w [+%a14], 0

# CHECK-INST: cachei.w [+%a14], 1
# CHECK: encoding: [0x89,0xe0,0xc1,0x06]
.code32
cachei.w [+%a14], 1

# CHECK-INST: cachei.w [+%a14], 510
# CHECK: encoding: [0x89,0xe0,0xfe,0x76]
.code32
cachei.w [+%a14], 510

# CHECK-INST: cachei.w [+%a14], 511
# CHECK: encoding: [0x89,0xe0,0xff,0x76]
.code32
cachei.w [+%a14], 511

# CHECK-INST: cachei.w [+%a15], -512
# CHECK: encoding: [0x89,0xf0,0xc0,0x86]
.code32
cachei.w [+%a15], -512

# CHECK-INST: cachei.w [+%a15], -511
# CHECK: encoding: [0x89,0xf0,0xc1,0x86]
.code32
cachei.w [+%a15], -511

# CHECK-INST: cachei.w [+%a15], -2
# CHECK: encoding: [0x89,0xf0,0xfe,0xf6]
.code32
cachei.w [+%a15], -2

# CHECK-INST: cachei.w [+%a15], -1
# CHECK: encoding: [0x89,0xf0,0xff,0xf6]
.code32
cachei.w [+%a15], -1

# CHECK-INST: cachei.w [+%a15], 0
# CHECK: encoding: [0x89,0xf0,0xc0,0x06]
.code32
cachei.w [+%a15], 0

# CHECK-INST: cachei.w [+%a15], 1
# CHECK: encoding: [0x89,0xf0,0xc1,0x06]
.code32
cachei.w [+%a15], 1

# CHECK-INST: cachei.w [+%a15], 510
# CHECK: encoding: [0x89,0xf0,0xfe,0x76]
.code32
cachei.w [+%a15], 510

# CHECK-INST: cachei.w [+%a15], 511
# CHECK: encoding: [0x89,0xf0,0xff,0x76]
.code32
cachei.w [+%a15], 511

# CHECK-INST: cachei.wi %a0, -512
# CHECK: encoding: [0x89,0x00,0xc0,0x8b]
.code32
cachei.wi %a0, -512

# CHECK-INST: cachei.wi %a0, -511
# CHECK: encoding: [0x89,0x00,0xc1,0x8b]
.code32
cachei.wi %a0, -511

# CHECK-INST: cachei.wi %a0, -2
# CHECK: encoding: [0x89,0x00,0xfe,0xfb]
.code32
cachei.wi %a0, -2

# CHECK-INST: cachei.wi %a0, -1
# CHECK: encoding: [0x89,0x00,0xff,0xfb]
.code32
cachei.wi %a0, -1

# CHECK-INST: cachei.wi %a0, 0
# CHECK: encoding: [0x89,0x00,0xc0,0x0b]
.code32
cachei.wi %a0, 0

# CHECK-INST: cachei.wi %a0, 1
# CHECK: encoding: [0x89,0x00,0xc1,0x0b]
.code32
cachei.wi %a0, 1

# CHECK-INST: cachei.wi %a0, 510
# CHECK: encoding: [0x89,0x00,0xfe,0x7b]
.code32
cachei.wi %a0, 510

# CHECK-INST: cachei.wi %a0, 511
# CHECK: encoding: [0x89,0x00,0xff,0x7b]
.code32
cachei.wi %a0, 511

# CHECK-INST: cachei.wi %a1, -512
# CHECK: encoding: [0x89,0x10,0xc0,0x8b]
.code32
cachei.wi %a1, -512

# CHECK-INST: cachei.wi %a1, -511
# CHECK: encoding: [0x89,0x10,0xc1,0x8b]
.code32
cachei.wi %a1, -511

# CHECK-INST: cachei.wi %a1, -2
# CHECK: encoding: [0x89,0x10,0xfe,0xfb]
.code32
cachei.wi %a1, -2

# CHECK-INST: cachei.wi %a1, -1
# CHECK: encoding: [0x89,0x10,0xff,0xfb]
.code32
cachei.wi %a1, -1

# CHECK-INST: cachei.wi %a1, 0
# CHECK: encoding: [0x89,0x10,0xc0,0x0b]
.code32
cachei.wi %a1, 0

# CHECK-INST: cachei.wi %a1, 1
# CHECK: encoding: [0x89,0x10,0xc1,0x0b]
.code32
cachei.wi %a1, 1

# CHECK-INST: cachei.wi %a1, 510
# CHECK: encoding: [0x89,0x10,0xfe,0x7b]
.code32
cachei.wi %a1, 510

# CHECK-INST: cachei.wi %a1, 511
# CHECK: encoding: [0x89,0x10,0xff,0x7b]
.code32
cachei.wi %a1, 511

# CHECK-INST: cachei.wi %a14, -512
# CHECK: encoding: [0x89,0xe0,0xc0,0x8b]
.code32
cachei.wi %a14, -512

# CHECK-INST: cachei.wi %a14, -511
# CHECK: encoding: [0x89,0xe0,0xc1,0x8b]
.code32
cachei.wi %a14, -511

# CHECK-INST: cachei.wi %a14, -2
# CHECK: encoding: [0x89,0xe0,0xfe,0xfb]
.code32
cachei.wi %a14, -2

# CHECK-INST: cachei.wi %a14, -1
# CHECK: encoding: [0x89,0xe0,0xff,0xfb]
.code32
cachei.wi %a14, -1

# CHECK-INST: cachei.wi %a14, 0
# CHECK: encoding: [0x89,0xe0,0xc0,0x0b]
.code32
cachei.wi %a14, 0

# CHECK-INST: cachei.wi %a14, 1
# CHECK: encoding: [0x89,0xe0,0xc1,0x0b]
.code32
cachei.wi %a14, 1

# CHECK-INST: cachei.wi %a14, 510
# CHECK: encoding: [0x89,0xe0,0xfe,0x7b]
.code32
cachei.wi %a14, 510

# CHECK-INST: cachei.wi %a14, 511
# CHECK: encoding: [0x89,0xe0,0xff,0x7b]
.code32
cachei.wi %a14, 511

# CHECK-INST: cachei.wi %a15, -512
# CHECK: encoding: [0x89,0xf0,0xc0,0x8b]
.code32
cachei.wi %a15, -512

# CHECK-INST: cachei.wi %a15, -511
# CHECK: encoding: [0x89,0xf0,0xc1,0x8b]
.code32
cachei.wi %a15, -511

# CHECK-INST: cachei.wi %a15, -2
# CHECK: encoding: [0x89,0xf0,0xfe,0xfb]
.code32
cachei.wi %a15, -2

# CHECK-INST: cachei.wi %a15, -1
# CHECK: encoding: [0x89,0xf0,0xff,0xfb]
.code32
cachei.wi %a15, -1

# CHECK-INST: cachei.wi %a15, 0
# CHECK: encoding: [0x89,0xf0,0xc0,0x0b]
.code32
cachei.wi %a15, 0

# CHECK-INST: cachei.wi %a15, 1
# CHECK: encoding: [0x89,0xf0,0xc1,0x0b]
.code32
cachei.wi %a15, 1

# CHECK-INST: cachei.wi %a15, 510
# CHECK: encoding: [0x89,0xf0,0xfe,0x7b]
.code32
cachei.wi %a15, 510

# CHECK-INST: cachei.wi %a15, 511
# CHECK: encoding: [0x89,0xf0,0xff,0x7b]
.code32
cachei.wi %a15, 511

# CHECK-INST: cachei.wi [%a0+], -512
# CHECK: encoding: [0x89,0x00,0xc0,0x83]
.code32
cachei.wi [%a0+], -512

# CHECK-INST: cachei.wi [%a0+], -511
# CHECK: encoding: [0x89,0x00,0xc1,0x83]
.code32
cachei.wi [%a0+], -511

# CHECK-INST: cachei.wi [%a0+], -2
# CHECK: encoding: [0x89,0x00,0xfe,0xf3]
.code32
cachei.wi [%a0+], -2

# CHECK-INST: cachei.wi [%a0+], -1
# CHECK: encoding: [0x89,0x00,0xff,0xf3]
.code32
cachei.wi [%a0+], -1

# CHECK-INST: cachei.wi [%a0+], 0
# CHECK: encoding: [0x89,0x00,0xc0,0x03]
.code32
cachei.wi [%a0+], 0

# CHECK-INST: cachei.wi [%a0+], 1
# CHECK: encoding: [0x89,0x00,0xc1,0x03]
.code32
cachei.wi [%a0+], 1

# CHECK-INST: cachei.wi [%a0+], 510
# CHECK: encoding: [0x89,0x00,0xfe,0x73]
.code32
cachei.wi [%a0+], 510

# CHECK-INST: cachei.wi [%a0+], 511
# CHECK: encoding: [0x89,0x00,0xff,0x73]
.code32
cachei.wi [%a0+], 511

# CHECK-INST: cachei.wi [%a1+], -512
# CHECK: encoding: [0x89,0x10,0xc0,0x83]
.code32
cachei.wi [%a1+], -512

# CHECK-INST: cachei.wi [%a1+], -511
# CHECK: encoding: [0x89,0x10,0xc1,0x83]
.code32
cachei.wi [%a1+], -511

# CHECK-INST: cachei.wi [%a1+], -2
# CHECK: encoding: [0x89,0x10,0xfe,0xf3]
.code32
cachei.wi [%a1+], -2

# CHECK-INST: cachei.wi [%a1+], -1
# CHECK: encoding: [0x89,0x10,0xff,0xf3]
.code32
cachei.wi [%a1+], -1

# CHECK-INST: cachei.wi [%a1+], 0
# CHECK: encoding: [0x89,0x10,0xc0,0x03]
.code32
cachei.wi [%a1+], 0

# CHECK-INST: cachei.wi [%a1+], 1
# CHECK: encoding: [0x89,0x10,0xc1,0x03]
.code32
cachei.wi [%a1+], 1

# CHECK-INST: cachei.wi [%a1+], 510
# CHECK: encoding: [0x89,0x10,0xfe,0x73]
.code32
cachei.wi [%a1+], 510

# CHECK-INST: cachei.wi [%a1+], 511
# CHECK: encoding: [0x89,0x10,0xff,0x73]
.code32
cachei.wi [%a1+], 511

# CHECK-INST: cachei.wi [%a14+], -512
# CHECK: encoding: [0x89,0xe0,0xc0,0x83]
.code32
cachei.wi [%a14+], -512

# CHECK-INST: cachei.wi [%a14+], -511
# CHECK: encoding: [0x89,0xe0,0xc1,0x83]
.code32
cachei.wi [%a14+], -511

# CHECK-INST: cachei.wi [%a14+], -2
# CHECK: encoding: [0x89,0xe0,0xfe,0xf3]
.code32
cachei.wi [%a14+], -2

# CHECK-INST: cachei.wi [%a14+], -1
# CHECK: encoding: [0x89,0xe0,0xff,0xf3]
.code32
cachei.wi [%a14+], -1

# CHECK-INST: cachei.wi [%a14+], 0
# CHECK: encoding: [0x89,0xe0,0xc0,0x03]
.code32
cachei.wi [%a14+], 0

# CHECK-INST: cachei.wi [%a14+], 1
# CHECK: encoding: [0x89,0xe0,0xc1,0x03]
.code32
cachei.wi [%a14+], 1

# CHECK-INST: cachei.wi [%a14+], 510
# CHECK: encoding: [0x89,0xe0,0xfe,0x73]
.code32
cachei.wi [%a14+], 510

# CHECK-INST: cachei.wi [%a14+], 511
# CHECK: encoding: [0x89,0xe0,0xff,0x73]
.code32
cachei.wi [%a14+], 511

# CHECK-INST: cachei.wi [%a15+], -512
# CHECK: encoding: [0x89,0xf0,0xc0,0x83]
.code32
cachei.wi [%a15+], -512

# CHECK-INST: cachei.wi [%a15+], -511
# CHECK: encoding: [0x89,0xf0,0xc1,0x83]
.code32
cachei.wi [%a15+], -511

# CHECK-INST: cachei.wi [%a15+], -2
# CHECK: encoding: [0x89,0xf0,0xfe,0xf3]
.code32
cachei.wi [%a15+], -2

# CHECK-INST: cachei.wi [%a15+], -1
# CHECK: encoding: [0x89,0xf0,0xff,0xf3]
.code32
cachei.wi [%a15+], -1

# CHECK-INST: cachei.wi [%a15+], 0
# CHECK: encoding: [0x89,0xf0,0xc0,0x03]
.code32
cachei.wi [%a15+], 0

# CHECK-INST: cachei.wi [%a15+], 1
# CHECK: encoding: [0x89,0xf0,0xc1,0x03]
.code32
cachei.wi [%a15+], 1

# CHECK-INST: cachei.wi [%a15+], 510
# CHECK: encoding: [0x89,0xf0,0xfe,0x73]
.code32
cachei.wi [%a15+], 510

# CHECK-INST: cachei.wi [%a15+], 511
# CHECK: encoding: [0x89,0xf0,0xff,0x73]
.code32
cachei.wi [%a15+], 511

# CHECK-INST: cachei.wi [+%a0], -512
# CHECK: encoding: [0x89,0x00,0xc0,0x87]
.code32
cachei.wi [+%a0], -512

# CHECK-INST: cachei.wi [+%a0], -511
# CHECK: encoding: [0x89,0x00,0xc1,0x87]
.code32
cachei.wi [+%a0], -511

# CHECK-INST: cachei.wi [+%a0], -2
# CHECK: encoding: [0x89,0x00,0xfe,0xf7]
.code32
cachei.wi [+%a0], -2

# CHECK-INST: cachei.wi [+%a0], -1
# CHECK: encoding: [0x89,0x00,0xff,0xf7]
.code32
cachei.wi [+%a0], -1

# CHECK-INST: cachei.wi [+%a0], 0
# CHECK: encoding: [0x89,0x00,0xc0,0x07]
.code32
cachei.wi [+%a0], 0

# CHECK-INST: cachei.wi [+%a0], 1
# CHECK: encoding: [0x89,0x00,0xc1,0x07]
.code32
cachei.wi [+%a0], 1

# CHECK-INST: cachei.wi [+%a0], 510
# CHECK: encoding: [0x89,0x00,0xfe,0x77]
.code32
cachei.wi [+%a0], 510

# CHECK-INST: cachei.wi [+%a0], 511
# CHECK: encoding: [0x89,0x00,0xff,0x77]
.code32
cachei.wi [+%a0], 511

# CHECK-INST: cachei.wi [+%a1], -512
# CHECK: encoding: [0x89,0x10,0xc0,0x87]
.code32
cachei.wi [+%a1], -512

# CHECK-INST: cachei.wi [+%a1], -511
# CHECK: encoding: [0x89,0x10,0xc1,0x87]
.code32
cachei.wi [+%a1], -511

# CHECK-INST: cachei.wi [+%a1], -2
# CHECK: encoding: [0x89,0x10,0xfe,0xf7]
.code32
cachei.wi [+%a1], -2

# CHECK-INST: cachei.wi [+%a1], -1
# CHECK: encoding: [0x89,0x10,0xff,0xf7]
.code32
cachei.wi [+%a1], -1

# CHECK-INST: cachei.wi [+%a1], 0
# CHECK: encoding: [0x89,0x10,0xc0,0x07]
.code32
cachei.wi [+%a1], 0

# CHECK-INST: cachei.wi [+%a1], 1
# CHECK: encoding: [0x89,0x10,0xc1,0x07]
.code32
cachei.wi [+%a1], 1

# CHECK-INST: cachei.wi [+%a1], 510
# CHECK: encoding: [0x89,0x10,0xfe,0x77]
.code32
cachei.wi [+%a1], 510

# CHECK-INST: cachei.wi [+%a1], 511
# CHECK: encoding: [0x89,0x10,0xff,0x77]
.code32
cachei.wi [+%a1], 511

# CHECK-INST: cachei.wi [+%a14], -512
# CHECK: encoding: [0x89,0xe0,0xc0,0x87]
.code32
cachei.wi [+%a14], -512

# CHECK-INST: cachei.wi [+%a14], -511
# CHECK: encoding: [0x89,0xe0,0xc1,0x87]
.code32
cachei.wi [+%a14], -511

# CHECK-INST: cachei.wi [+%a14], -2
# CHECK: encoding: [0x89,0xe0,0xfe,0xf7]
.code32
cachei.wi [+%a14], -2

# CHECK-INST: cachei.wi [+%a14], -1
# CHECK: encoding: [0x89,0xe0,0xff,0xf7]
.code32
cachei.wi [+%a14], -1

# CHECK-INST: cachei.wi [+%a14], 0
# CHECK: encoding: [0x89,0xe0,0xc0,0x07]
.code32
cachei.wi [+%a14], 0

# CHECK-INST: cachei.wi [+%a14], 1
# CHECK: encoding: [0x89,0xe0,0xc1,0x07]
.code32
cachei.wi [+%a14], 1

# CHECK-INST: cachei.wi [+%a14], 510
# CHECK: encoding: [0x89,0xe0,0xfe,0x77]
.code32
cachei.wi [+%a14], 510

# CHECK-INST: cachei.wi [+%a14], 511
# CHECK: encoding: [0x89,0xe0,0xff,0x77]
.code32
cachei.wi [+%a14], 511

# CHECK-INST: cachei.wi [+%a15], -512
# CHECK: encoding: [0x89,0xf0,0xc0,0x87]
.code32
cachei.wi [+%a15], -512

# CHECK-INST: cachei.wi [+%a15], -511
# CHECK: encoding: [0x89,0xf0,0xc1,0x87]
.code32
cachei.wi [+%a15], -511

# CHECK-INST: cachei.wi [+%a15], -2
# CHECK: encoding: [0x89,0xf0,0xfe,0xf7]
.code32
cachei.wi [+%a15], -2

# CHECK-INST: cachei.wi [+%a15], -1
# CHECK: encoding: [0x89,0xf0,0xff,0xf7]
.code32
cachei.wi [+%a15], -1

# CHECK-INST: cachei.wi [+%a15], 0
# CHECK: encoding: [0x89,0xf0,0xc0,0x07]
.code32
cachei.wi [+%a15], 0

# CHECK-INST: cachei.wi [+%a15], 1
# CHECK: encoding: [0x89,0xf0,0xc1,0x07]
.code32
cachei.wi [+%a15], 1

# CHECK-INST: cachei.wi [+%a15], 510
# CHECK: encoding: [0x89,0xf0,0xfe,0x77]
.code32
cachei.wi [+%a15], 510

# CHECK-INST: cachei.wi [+%a15], 511
# CHECK: encoding: [0x89,0xf0,0xff,0x77]
.code32
cachei.wi [+%a15], 511
