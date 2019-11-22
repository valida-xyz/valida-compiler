# RUN: llvm-mc %s -triple=tricore -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK,CHECK-INST %s
# RUN: llvm-mc -filetype=obj -triple=tricore < %s \
# RUN:     | llvm-objdump -d - | FileCheck -check-prefix=CHECK-INST %s

# CHECK-INST: cachea.i.vm [%a0], -512
# CHECK: encoding: [0x49,0x00,0x80,0x8b]
.code32
cachea.i.vm [%a0], -512

# CHECK-INST: cachea.i.vm [%a0], -511
# CHECK: encoding: [0x49,0x00,0x81,0x8b]
.code32
cachea.i.vm [%a0], -511

# CHECK-INST: cachea.i.vm [%a0], -2
# CHECK: encoding: [0x49,0x00,0xbe,0xfb]
.code32
cachea.i.vm [%a0], -2

# CHECK-INST: cachea.i.vm [%a0], -1
# CHECK: encoding: [0x49,0x00,0xbf,0xfb]
.code32
cachea.i.vm [%a0], -1

# CHECK-INST: cachea.i.vm [%a0], 0
# CHECK: encoding: [0x49,0x00,0x80,0x0b]
.code32
cachea.i.vm [%a0], 0

# CHECK-INST: cachea.i.vm [%a0], 1
# CHECK: encoding: [0x49,0x00,0x81,0x0b]
.code32
cachea.i.vm [%a0], 1

# CHECK-INST: cachea.i.vm [%a0], 510
# CHECK: encoding: [0x49,0x00,0xbe,0x7b]
.code32
cachea.i.vm [%a0], 510

# CHECK-INST: cachea.i.vm [%a0], 511
# CHECK: encoding: [0x49,0x00,0xbf,0x7b]
.code32
cachea.i.vm [%a0], 511

# CHECK-INST: cachea.i.vm [%a1], -512
# CHECK: encoding: [0x49,0x10,0x80,0x8b]
.code32
cachea.i.vm [%a1], -512

# CHECK-INST: cachea.i.vm [%a1], -511
# CHECK: encoding: [0x49,0x10,0x81,0x8b]
.code32
cachea.i.vm [%a1], -511

# CHECK-INST: cachea.i.vm [%a1], -2
# CHECK: encoding: [0x49,0x10,0xbe,0xfb]
.code32
cachea.i.vm [%a1], -2

# CHECK-INST: cachea.i.vm [%a1], -1
# CHECK: encoding: [0x49,0x10,0xbf,0xfb]
.code32
cachea.i.vm [%a1], -1

# CHECK-INST: cachea.i.vm [%a1], 0
# CHECK: encoding: [0x49,0x10,0x80,0x0b]
.code32
cachea.i.vm [%a1], 0

# CHECK-INST: cachea.i.vm [%a1], 1
# CHECK: encoding: [0x49,0x10,0x81,0x0b]
.code32
cachea.i.vm [%a1], 1

# CHECK-INST: cachea.i.vm [%a1], 510
# CHECK: encoding: [0x49,0x10,0xbe,0x7b]
.code32
cachea.i.vm [%a1], 510

# CHECK-INST: cachea.i.vm [%a1], 511
# CHECK: encoding: [0x49,0x10,0xbf,0x7b]
.code32
cachea.i.vm [%a1], 511

# CHECK-INST: cachea.i.vm [%a14], -512
# CHECK: encoding: [0x49,0xe0,0x80,0x8b]
.code32
cachea.i.vm [%a14], -512

# CHECK-INST: cachea.i.vm [%a14], -511
# CHECK: encoding: [0x49,0xe0,0x81,0x8b]
.code32
cachea.i.vm [%a14], -511

# CHECK-INST: cachea.i.vm [%a14], -2
# CHECK: encoding: [0x49,0xe0,0xbe,0xfb]
.code32
cachea.i.vm [%a14], -2

# CHECK-INST: cachea.i.vm [%a14], -1
# CHECK: encoding: [0x49,0xe0,0xbf,0xfb]
.code32
cachea.i.vm [%a14], -1

# CHECK-INST: cachea.i.vm [%a14], 0
# CHECK: encoding: [0x49,0xe0,0x80,0x0b]
.code32
cachea.i.vm [%a14], 0

# CHECK-INST: cachea.i.vm [%a14], 1
# CHECK: encoding: [0x49,0xe0,0x81,0x0b]
.code32
cachea.i.vm [%a14], 1

# CHECK-INST: cachea.i.vm [%a14], 510
# CHECK: encoding: [0x49,0xe0,0xbe,0x7b]
.code32
cachea.i.vm [%a14], 510

# CHECK-INST: cachea.i.vm [%a14], 511
# CHECK: encoding: [0x49,0xe0,0xbf,0x7b]
.code32
cachea.i.vm [%a14], 511

# CHECK-INST: cachea.i.vm [%a15], -512
# CHECK: encoding: [0x49,0xf0,0x80,0x8b]
.code32
cachea.i.vm [%a15], -512

# CHECK-INST: cachea.i.vm [%a15], -511
# CHECK: encoding: [0x49,0xf0,0x81,0x8b]
.code32
cachea.i.vm [%a15], -511

# CHECK-INST: cachea.i.vm [%a15], -2
# CHECK: encoding: [0x49,0xf0,0xbe,0xfb]
.code32
cachea.i.vm [%a15], -2

# CHECK-INST: cachea.i.vm [%a15], -1
# CHECK: encoding: [0x49,0xf0,0xbf,0xfb]
.code32
cachea.i.vm [%a15], -1

# CHECK-INST: cachea.i.vm [%a15], 0
# CHECK: encoding: [0x49,0xf0,0x80,0x0b]
.code32
cachea.i.vm [%a15], 0

# CHECK-INST: cachea.i.vm [%a15], 1
# CHECK: encoding: [0x49,0xf0,0x81,0x0b]
.code32
cachea.i.vm [%a15], 1

# CHECK-INST: cachea.i.vm [%a15], 510
# CHECK: encoding: [0x49,0xf0,0xbe,0x7b]
.code32
cachea.i.vm [%a15], 510

# CHECK-INST: cachea.i.vm [%a15], 511
# CHECK: encoding: [0x49,0xf0,0xbf,0x7b]
.code32
cachea.i.vm [%a15], 511

# CHECK-INST: cachea.i.vm [%a0+], -512
# CHECK: encoding: [0x49,0x00,0x80,0x83]
.code32
cachea.i.vm [%a0+], -512

# CHECK-INST: cachea.i.vm [%a0+], -511
# CHECK: encoding: [0x49,0x00,0x81,0x83]
.code32
cachea.i.vm [%a0+], -511

# CHECK-INST: cachea.i.vm [%a0+], -2
# CHECK: encoding: [0x49,0x00,0xbe,0xf3]
.code32
cachea.i.vm [%a0+], -2

# CHECK-INST: cachea.i.vm [%a0+], -1
# CHECK: encoding: [0x49,0x00,0xbf,0xf3]
.code32
cachea.i.vm [%a0+], -1

# CHECK-INST: cachea.i.vm [%a0+], 0
# CHECK: encoding: [0x49,0x00,0x80,0x03]
.code32
cachea.i.vm [%a0+], 0

# CHECK-INST: cachea.i.vm [%a0+], 1
# CHECK: encoding: [0x49,0x00,0x81,0x03]
.code32
cachea.i.vm [%a0+], 1

# CHECK-INST: cachea.i.vm [%a0+], 510
# CHECK: encoding: [0x49,0x00,0xbe,0x73]
.code32
cachea.i.vm [%a0+], 510

# CHECK-INST: cachea.i.vm [%a0+], 511
# CHECK: encoding: [0x49,0x00,0xbf,0x73]
.code32
cachea.i.vm [%a0+], 511

# CHECK-INST: cachea.i.vm [%a1+], -512
# CHECK: encoding: [0x49,0x10,0x80,0x83]
.code32
cachea.i.vm [%a1+], -512

# CHECK-INST: cachea.i.vm [%a1+], -511
# CHECK: encoding: [0x49,0x10,0x81,0x83]
.code32
cachea.i.vm [%a1+], -511

# CHECK-INST: cachea.i.vm [%a1+], -2
# CHECK: encoding: [0x49,0x10,0xbe,0xf3]
.code32
cachea.i.vm [%a1+], -2

# CHECK-INST: cachea.i.vm [%a1+], -1
# CHECK: encoding: [0x49,0x10,0xbf,0xf3]
.code32
cachea.i.vm [%a1+], -1

# CHECK-INST: cachea.i.vm [%a1+], 0
# CHECK: encoding: [0x49,0x10,0x80,0x03]
.code32
cachea.i.vm [%a1+], 0

# CHECK-INST: cachea.i.vm [%a1+], 1
# CHECK: encoding: [0x49,0x10,0x81,0x03]
.code32
cachea.i.vm [%a1+], 1

# CHECK-INST: cachea.i.vm [%a1+], 510
# CHECK: encoding: [0x49,0x10,0xbe,0x73]
.code32
cachea.i.vm [%a1+], 510

# CHECK-INST: cachea.i.vm [%a1+], 511
# CHECK: encoding: [0x49,0x10,0xbf,0x73]
.code32
cachea.i.vm [%a1+], 511

# CHECK-INST: cachea.i.vm [%a14+], -512
# CHECK: encoding: [0x49,0xe0,0x80,0x83]
.code32
cachea.i.vm [%a14+], -512

# CHECK-INST: cachea.i.vm [%a14+], -511
# CHECK: encoding: [0x49,0xe0,0x81,0x83]
.code32
cachea.i.vm [%a14+], -511

# CHECK-INST: cachea.i.vm [%a14+], -2
# CHECK: encoding: [0x49,0xe0,0xbe,0xf3]
.code32
cachea.i.vm [%a14+], -2

# CHECK-INST: cachea.i.vm [%a14+], -1
# CHECK: encoding: [0x49,0xe0,0xbf,0xf3]
.code32
cachea.i.vm [%a14+], -1

# CHECK-INST: cachea.i.vm [%a14+], 0
# CHECK: encoding: [0x49,0xe0,0x80,0x03]
.code32
cachea.i.vm [%a14+], 0

# CHECK-INST: cachea.i.vm [%a14+], 1
# CHECK: encoding: [0x49,0xe0,0x81,0x03]
.code32
cachea.i.vm [%a14+], 1

# CHECK-INST: cachea.i.vm [%a14+], 510
# CHECK: encoding: [0x49,0xe0,0xbe,0x73]
.code32
cachea.i.vm [%a14+], 510

# CHECK-INST: cachea.i.vm [%a14+], 511
# CHECK: encoding: [0x49,0xe0,0xbf,0x73]
.code32
cachea.i.vm [%a14+], 511

# CHECK-INST: cachea.i.vm [%a15+], -512
# CHECK: encoding: [0x49,0xf0,0x80,0x83]
.code32
cachea.i.vm [%a15+], -512

# CHECK-INST: cachea.i.vm [%a15+], -511
# CHECK: encoding: [0x49,0xf0,0x81,0x83]
.code32
cachea.i.vm [%a15+], -511

# CHECK-INST: cachea.i.vm [%a15+], -2
# CHECK: encoding: [0x49,0xf0,0xbe,0xf3]
.code32
cachea.i.vm [%a15+], -2

# CHECK-INST: cachea.i.vm [%a15+], -1
# CHECK: encoding: [0x49,0xf0,0xbf,0xf3]
.code32
cachea.i.vm [%a15+], -1

# CHECK-INST: cachea.i.vm [%a15+], 0
# CHECK: encoding: [0x49,0xf0,0x80,0x03]
.code32
cachea.i.vm [%a15+], 0

# CHECK-INST: cachea.i.vm [%a15+], 1
# CHECK: encoding: [0x49,0xf0,0x81,0x03]
.code32
cachea.i.vm [%a15+], 1

# CHECK-INST: cachea.i.vm [%a15+], 510
# CHECK: encoding: [0x49,0xf0,0xbe,0x73]
.code32
cachea.i.vm [%a15+], 510

# CHECK-INST: cachea.i.vm [%a15+], 511
# CHECK: encoding: [0x49,0xf0,0xbf,0x73]
.code32
cachea.i.vm [%a15+], 511

# CHECK-INST: cachea.i.vm [+%a0], -512
# CHECK: encoding: [0x49,0x00,0x80,0x87]
.code32
cachea.i.vm [+%a0], -512

# CHECK-INST: cachea.i.vm [+%a0], -511
# CHECK: encoding: [0x49,0x00,0x81,0x87]
.code32
cachea.i.vm [+%a0], -511

# CHECK-INST: cachea.i.vm [+%a0], -2
# CHECK: encoding: [0x49,0x00,0xbe,0xf7]
.code32
cachea.i.vm [+%a0], -2

# CHECK-INST: cachea.i.vm [+%a0], -1
# CHECK: encoding: [0x49,0x00,0xbf,0xf7]
.code32
cachea.i.vm [+%a0], -1

# CHECK-INST: cachea.i.vm [+%a0], 0
# CHECK: encoding: [0x49,0x00,0x80,0x07]
.code32
cachea.i.vm [+%a0], 0

# CHECK-INST: cachea.i.vm [+%a0], 1
# CHECK: encoding: [0x49,0x00,0x81,0x07]
.code32
cachea.i.vm [+%a0], 1

# CHECK-INST: cachea.i.vm [+%a0], 510
# CHECK: encoding: [0x49,0x00,0xbe,0x77]
.code32
cachea.i.vm [+%a0], 510

# CHECK-INST: cachea.i.vm [+%a0], 511
# CHECK: encoding: [0x49,0x00,0xbf,0x77]
.code32
cachea.i.vm [+%a0], 511

# CHECK-INST: cachea.i.vm [+%a1], -512
# CHECK: encoding: [0x49,0x10,0x80,0x87]
.code32
cachea.i.vm [+%a1], -512

# CHECK-INST: cachea.i.vm [+%a1], -511
# CHECK: encoding: [0x49,0x10,0x81,0x87]
.code32
cachea.i.vm [+%a1], -511

# CHECK-INST: cachea.i.vm [+%a1], -2
# CHECK: encoding: [0x49,0x10,0xbe,0xf7]
.code32
cachea.i.vm [+%a1], -2

# CHECK-INST: cachea.i.vm [+%a1], -1
# CHECK: encoding: [0x49,0x10,0xbf,0xf7]
.code32
cachea.i.vm [+%a1], -1

# CHECK-INST: cachea.i.vm [+%a1], 0
# CHECK: encoding: [0x49,0x10,0x80,0x07]
.code32
cachea.i.vm [+%a1], 0

# CHECK-INST: cachea.i.vm [+%a1], 1
# CHECK: encoding: [0x49,0x10,0x81,0x07]
.code32
cachea.i.vm [+%a1], 1

# CHECK-INST: cachea.i.vm [+%a1], 510
# CHECK: encoding: [0x49,0x10,0xbe,0x77]
.code32
cachea.i.vm [+%a1], 510

# CHECK-INST: cachea.i.vm [+%a1], 511
# CHECK: encoding: [0x49,0x10,0xbf,0x77]
.code32
cachea.i.vm [+%a1], 511

# CHECK-INST: cachea.i.vm [+%a14], -512
# CHECK: encoding: [0x49,0xe0,0x80,0x87]
.code32
cachea.i.vm [+%a14], -512

# CHECK-INST: cachea.i.vm [+%a14], -511
# CHECK: encoding: [0x49,0xe0,0x81,0x87]
.code32
cachea.i.vm [+%a14], -511

# CHECK-INST: cachea.i.vm [+%a14], -2
# CHECK: encoding: [0x49,0xe0,0xbe,0xf7]
.code32
cachea.i.vm [+%a14], -2

# CHECK-INST: cachea.i.vm [+%a14], -1
# CHECK: encoding: [0x49,0xe0,0xbf,0xf7]
.code32
cachea.i.vm [+%a14], -1

# CHECK-INST: cachea.i.vm [+%a14], 0
# CHECK: encoding: [0x49,0xe0,0x80,0x07]
.code32
cachea.i.vm [+%a14], 0

# CHECK-INST: cachea.i.vm [+%a14], 1
# CHECK: encoding: [0x49,0xe0,0x81,0x07]
.code32
cachea.i.vm [+%a14], 1

# CHECK-INST: cachea.i.vm [+%a14], 510
# CHECK: encoding: [0x49,0xe0,0xbe,0x77]
.code32
cachea.i.vm [+%a14], 510

# CHECK-INST: cachea.i.vm [+%a14], 511
# CHECK: encoding: [0x49,0xe0,0xbf,0x77]
.code32
cachea.i.vm [+%a14], 511

# CHECK-INST: cachea.i.vm [+%a15], -512
# CHECK: encoding: [0x49,0xf0,0x80,0x87]
.code32
cachea.i.vm [+%a15], -512

# CHECK-INST: cachea.i.vm [+%a15], -511
# CHECK: encoding: [0x49,0xf0,0x81,0x87]
.code32
cachea.i.vm [+%a15], -511

# CHECK-INST: cachea.i.vm [+%a15], -2
# CHECK: encoding: [0x49,0xf0,0xbe,0xf7]
.code32
cachea.i.vm [+%a15], -2

# CHECK-INST: cachea.i.vm [+%a15], -1
# CHECK: encoding: [0x49,0xf0,0xbf,0xf7]
.code32
cachea.i.vm [+%a15], -1

# CHECK-INST: cachea.i.vm [+%a15], 0
# CHECK: encoding: [0x49,0xf0,0x80,0x07]
.code32
cachea.i.vm [+%a15], 0

# CHECK-INST: cachea.i.vm [+%a15], 1
# CHECK: encoding: [0x49,0xf0,0x81,0x07]
.code32
cachea.i.vm [+%a15], 1

# CHECK-INST: cachea.i.vm [+%a15], 510
# CHECK: encoding: [0x49,0xf0,0xbe,0x77]
.code32
cachea.i.vm [+%a15], 510

# CHECK-INST: cachea.i.vm [+%a15], 511
# CHECK: encoding: [0x49,0xf0,0xbf,0x77]
.code32
cachea.i.vm [+%a15], 511

# CHECK-INST: cachea.w.vm [%a0], -512
# CHECK: encoding: [0x49,0x00,0x00,0x8b]
.code32
cachea.w.vm [%a0], -512

# CHECK-INST: cachea.w.vm [%a0], -511
# CHECK: encoding: [0x49,0x00,0x01,0x8b]
.code32
cachea.w.vm [%a0], -511

# CHECK-INST: cachea.w.vm [%a0], -2
# CHECK: encoding: [0x49,0x00,0x3e,0xfb]
.code32
cachea.w.vm [%a0], -2

# CHECK-INST: cachea.w.vm [%a0], -1
# CHECK: encoding: [0x49,0x00,0x3f,0xfb]
.code32
cachea.w.vm [%a0], -1

# CHECK-INST: cachea.w.vm [%a0], 0
# CHECK: encoding: [0x49,0x00,0x00,0x0b]
.code32
cachea.w.vm [%a0], 0

# CHECK-INST: cachea.w.vm [%a0], 1
# CHECK: encoding: [0x49,0x00,0x01,0x0b]
.code32
cachea.w.vm [%a0], 1

# CHECK-INST: cachea.w.vm [%a0], 510
# CHECK: encoding: [0x49,0x00,0x3e,0x7b]
.code32
cachea.w.vm [%a0], 510

# CHECK-INST: cachea.w.vm [%a0], 511
# CHECK: encoding: [0x49,0x00,0x3f,0x7b]
.code32
cachea.w.vm [%a0], 511

# CHECK-INST: cachea.w.vm [%a1], -512
# CHECK: encoding: [0x49,0x10,0x00,0x8b]
.code32
cachea.w.vm [%a1], -512

# CHECK-INST: cachea.w.vm [%a1], -511
# CHECK: encoding: [0x49,0x10,0x01,0x8b]
.code32
cachea.w.vm [%a1], -511

# CHECK-INST: cachea.w.vm [%a1], -2
# CHECK: encoding: [0x49,0x10,0x3e,0xfb]
.code32
cachea.w.vm [%a1], -2

# CHECK-INST: cachea.w.vm [%a1], -1
# CHECK: encoding: [0x49,0x10,0x3f,0xfb]
.code32
cachea.w.vm [%a1], -1

# CHECK-INST: cachea.w.vm [%a1], 0
# CHECK: encoding: [0x49,0x10,0x00,0x0b]
.code32
cachea.w.vm [%a1], 0

# CHECK-INST: cachea.w.vm [%a1], 1
# CHECK: encoding: [0x49,0x10,0x01,0x0b]
.code32
cachea.w.vm [%a1], 1

# CHECK-INST: cachea.w.vm [%a1], 510
# CHECK: encoding: [0x49,0x10,0x3e,0x7b]
.code32
cachea.w.vm [%a1], 510

# CHECK-INST: cachea.w.vm [%a1], 511
# CHECK: encoding: [0x49,0x10,0x3f,0x7b]
.code32
cachea.w.vm [%a1], 511

# CHECK-INST: cachea.w.vm [%a14], -512
# CHECK: encoding: [0x49,0xe0,0x00,0x8b]
.code32
cachea.w.vm [%a14], -512

# CHECK-INST: cachea.w.vm [%a14], -511
# CHECK: encoding: [0x49,0xe0,0x01,0x8b]
.code32
cachea.w.vm [%a14], -511

# CHECK-INST: cachea.w.vm [%a14], -2
# CHECK: encoding: [0x49,0xe0,0x3e,0xfb]
.code32
cachea.w.vm [%a14], -2

# CHECK-INST: cachea.w.vm [%a14], -1
# CHECK: encoding: [0x49,0xe0,0x3f,0xfb]
.code32
cachea.w.vm [%a14], -1

# CHECK-INST: cachea.w.vm [%a14], 0
# CHECK: encoding: [0x49,0xe0,0x00,0x0b]
.code32
cachea.w.vm [%a14], 0

# CHECK-INST: cachea.w.vm [%a14], 1
# CHECK: encoding: [0x49,0xe0,0x01,0x0b]
.code32
cachea.w.vm [%a14], 1

# CHECK-INST: cachea.w.vm [%a14], 510
# CHECK: encoding: [0x49,0xe0,0x3e,0x7b]
.code32
cachea.w.vm [%a14], 510

# CHECK-INST: cachea.w.vm [%a14], 511
# CHECK: encoding: [0x49,0xe0,0x3f,0x7b]
.code32
cachea.w.vm [%a14], 511

# CHECK-INST: cachea.w.vm [%a15], -512
# CHECK: encoding: [0x49,0xf0,0x00,0x8b]
.code32
cachea.w.vm [%a15], -512

# CHECK-INST: cachea.w.vm [%a15], -511
# CHECK: encoding: [0x49,0xf0,0x01,0x8b]
.code32
cachea.w.vm [%a15], -511

# CHECK-INST: cachea.w.vm [%a15], -2
# CHECK: encoding: [0x49,0xf0,0x3e,0xfb]
.code32
cachea.w.vm [%a15], -2

# CHECK-INST: cachea.w.vm [%a15], -1
# CHECK: encoding: [0x49,0xf0,0x3f,0xfb]
.code32
cachea.w.vm [%a15], -1

# CHECK-INST: cachea.w.vm [%a15], 0
# CHECK: encoding: [0x49,0xf0,0x00,0x0b]
.code32
cachea.w.vm [%a15], 0

# CHECK-INST: cachea.w.vm [%a15], 1
# CHECK: encoding: [0x49,0xf0,0x01,0x0b]
.code32
cachea.w.vm [%a15], 1

# CHECK-INST: cachea.w.vm [%a15], 510
# CHECK: encoding: [0x49,0xf0,0x3e,0x7b]
.code32
cachea.w.vm [%a15], 510

# CHECK-INST: cachea.w.vm [%a15], 511
# CHECK: encoding: [0x49,0xf0,0x3f,0x7b]
.code32
cachea.w.vm [%a15], 511

# CHECK-INST: cachea.w.vm [%a0+], -512
# CHECK: encoding: [0x49,0x00,0x00,0x83]
.code32
cachea.w.vm [%a0+], -512

# CHECK-INST: cachea.w.vm [%a0+], -511
# CHECK: encoding: [0x49,0x00,0x01,0x83]
.code32
cachea.w.vm [%a0+], -511

# CHECK-INST: cachea.w.vm [%a0+], -2
# CHECK: encoding: [0x49,0x00,0x3e,0xf3]
.code32
cachea.w.vm [%a0+], -2

# CHECK-INST: cachea.w.vm [%a0+], -1
# CHECK: encoding: [0x49,0x00,0x3f,0xf3]
.code32
cachea.w.vm [%a0+], -1

# CHECK-INST: cachea.w.vm [%a0+], 0
# CHECK: encoding: [0x49,0x00,0x00,0x03]
.code32
cachea.w.vm [%a0+], 0

# CHECK-INST: cachea.w.vm [%a0+], 1
# CHECK: encoding: [0x49,0x00,0x01,0x03]
.code32
cachea.w.vm [%a0+], 1

# CHECK-INST: cachea.w.vm [%a0+], 510
# CHECK: encoding: [0x49,0x00,0x3e,0x73]
.code32
cachea.w.vm [%a0+], 510

# CHECK-INST: cachea.w.vm [%a0+], 511
# CHECK: encoding: [0x49,0x00,0x3f,0x73]
.code32
cachea.w.vm [%a0+], 511

# CHECK-INST: cachea.w.vm [%a1+], -512
# CHECK: encoding: [0x49,0x10,0x00,0x83]
.code32
cachea.w.vm [%a1+], -512

# CHECK-INST: cachea.w.vm [%a1+], -511
# CHECK: encoding: [0x49,0x10,0x01,0x83]
.code32
cachea.w.vm [%a1+], -511

# CHECK-INST: cachea.w.vm [%a1+], -2
# CHECK: encoding: [0x49,0x10,0x3e,0xf3]
.code32
cachea.w.vm [%a1+], -2

# CHECK-INST: cachea.w.vm [%a1+], -1
# CHECK: encoding: [0x49,0x10,0x3f,0xf3]
.code32
cachea.w.vm [%a1+], -1

# CHECK-INST: cachea.w.vm [%a1+], 0
# CHECK: encoding: [0x49,0x10,0x00,0x03]
.code32
cachea.w.vm [%a1+], 0

# CHECK-INST: cachea.w.vm [%a1+], 1
# CHECK: encoding: [0x49,0x10,0x01,0x03]
.code32
cachea.w.vm [%a1+], 1

# CHECK-INST: cachea.w.vm [%a1+], 510
# CHECK: encoding: [0x49,0x10,0x3e,0x73]
.code32
cachea.w.vm [%a1+], 510

# CHECK-INST: cachea.w.vm [%a1+], 511
# CHECK: encoding: [0x49,0x10,0x3f,0x73]
.code32
cachea.w.vm [%a1+], 511

# CHECK-INST: cachea.w.vm [%a14+], -512
# CHECK: encoding: [0x49,0xe0,0x00,0x83]
.code32
cachea.w.vm [%a14+], -512

# CHECK-INST: cachea.w.vm [%a14+], -511
# CHECK: encoding: [0x49,0xe0,0x01,0x83]
.code32
cachea.w.vm [%a14+], -511

# CHECK-INST: cachea.w.vm [%a14+], -2
# CHECK: encoding: [0x49,0xe0,0x3e,0xf3]
.code32
cachea.w.vm [%a14+], -2

# CHECK-INST: cachea.w.vm [%a14+], -1
# CHECK: encoding: [0x49,0xe0,0x3f,0xf3]
.code32
cachea.w.vm [%a14+], -1

# CHECK-INST: cachea.w.vm [%a14+], 0
# CHECK: encoding: [0x49,0xe0,0x00,0x03]
.code32
cachea.w.vm [%a14+], 0

# CHECK-INST: cachea.w.vm [%a14+], 1
# CHECK: encoding: [0x49,0xe0,0x01,0x03]
.code32
cachea.w.vm [%a14+], 1

# CHECK-INST: cachea.w.vm [%a14+], 510
# CHECK: encoding: [0x49,0xe0,0x3e,0x73]
.code32
cachea.w.vm [%a14+], 510

# CHECK-INST: cachea.w.vm [%a14+], 511
# CHECK: encoding: [0x49,0xe0,0x3f,0x73]
.code32
cachea.w.vm [%a14+], 511

# CHECK-INST: cachea.w.vm [%a15+], -512
# CHECK: encoding: [0x49,0xf0,0x00,0x83]
.code32
cachea.w.vm [%a15+], -512

# CHECK-INST: cachea.w.vm [%a15+], -511
# CHECK: encoding: [0x49,0xf0,0x01,0x83]
.code32
cachea.w.vm [%a15+], -511

# CHECK-INST: cachea.w.vm [%a15+], -2
# CHECK: encoding: [0x49,0xf0,0x3e,0xf3]
.code32
cachea.w.vm [%a15+], -2

# CHECK-INST: cachea.w.vm [%a15+], -1
# CHECK: encoding: [0x49,0xf0,0x3f,0xf3]
.code32
cachea.w.vm [%a15+], -1

# CHECK-INST: cachea.w.vm [%a15+], 0
# CHECK: encoding: [0x49,0xf0,0x00,0x03]
.code32
cachea.w.vm [%a15+], 0

# CHECK-INST: cachea.w.vm [%a15+], 1
# CHECK: encoding: [0x49,0xf0,0x01,0x03]
.code32
cachea.w.vm [%a15+], 1

# CHECK-INST: cachea.w.vm [%a15+], 510
# CHECK: encoding: [0x49,0xf0,0x3e,0x73]
.code32
cachea.w.vm [%a15+], 510

# CHECK-INST: cachea.w.vm [%a15+], 511
# CHECK: encoding: [0x49,0xf0,0x3f,0x73]
.code32
cachea.w.vm [%a15+], 511

# CHECK-INST: cachea.w.vm [+%a0], -512
# CHECK: encoding: [0x49,0x00,0x00,0x87]
.code32
cachea.w.vm [+%a0], -512

# CHECK-INST: cachea.w.vm [+%a0], -511
# CHECK: encoding: [0x49,0x00,0x01,0x87]
.code32
cachea.w.vm [+%a0], -511

# CHECK-INST: cachea.w.vm [+%a0], -2
# CHECK: encoding: [0x49,0x00,0x3e,0xf7]
.code32
cachea.w.vm [+%a0], -2

# CHECK-INST: cachea.w.vm [+%a0], -1
# CHECK: encoding: [0x49,0x00,0x3f,0xf7]
.code32
cachea.w.vm [+%a0], -1

# CHECK-INST: cachea.w.vm [+%a0], 0
# CHECK: encoding: [0x49,0x00,0x00,0x07]
.code32
cachea.w.vm [+%a0], 0

# CHECK-INST: cachea.w.vm [+%a0], 1
# CHECK: encoding: [0x49,0x00,0x01,0x07]
.code32
cachea.w.vm [+%a0], 1

# CHECK-INST: cachea.w.vm [+%a0], 510
# CHECK: encoding: [0x49,0x00,0x3e,0x77]
.code32
cachea.w.vm [+%a0], 510

# CHECK-INST: cachea.w.vm [+%a0], 511
# CHECK: encoding: [0x49,0x00,0x3f,0x77]
.code32
cachea.w.vm [+%a0], 511

# CHECK-INST: cachea.w.vm [+%a1], -512
# CHECK: encoding: [0x49,0x10,0x00,0x87]
.code32
cachea.w.vm [+%a1], -512

# CHECK-INST: cachea.w.vm [+%a1], -511
# CHECK: encoding: [0x49,0x10,0x01,0x87]
.code32
cachea.w.vm [+%a1], -511

# CHECK-INST: cachea.w.vm [+%a1], -2
# CHECK: encoding: [0x49,0x10,0x3e,0xf7]
.code32
cachea.w.vm [+%a1], -2

# CHECK-INST: cachea.w.vm [+%a1], -1
# CHECK: encoding: [0x49,0x10,0x3f,0xf7]
.code32
cachea.w.vm [+%a1], -1

# CHECK-INST: cachea.w.vm [+%a1], 0
# CHECK: encoding: [0x49,0x10,0x00,0x07]
.code32
cachea.w.vm [+%a1], 0

# CHECK-INST: cachea.w.vm [+%a1], 1
# CHECK: encoding: [0x49,0x10,0x01,0x07]
.code32
cachea.w.vm [+%a1], 1

# CHECK-INST: cachea.w.vm [+%a1], 510
# CHECK: encoding: [0x49,0x10,0x3e,0x77]
.code32
cachea.w.vm [+%a1], 510

# CHECK-INST: cachea.w.vm [+%a1], 511
# CHECK: encoding: [0x49,0x10,0x3f,0x77]
.code32
cachea.w.vm [+%a1], 511

# CHECK-INST: cachea.w.vm [+%a14], -512
# CHECK: encoding: [0x49,0xe0,0x00,0x87]
.code32
cachea.w.vm [+%a14], -512

# CHECK-INST: cachea.w.vm [+%a14], -511
# CHECK: encoding: [0x49,0xe0,0x01,0x87]
.code32
cachea.w.vm [+%a14], -511

# CHECK-INST: cachea.w.vm [+%a14], -2
# CHECK: encoding: [0x49,0xe0,0x3e,0xf7]
.code32
cachea.w.vm [+%a14], -2

# CHECK-INST: cachea.w.vm [+%a14], -1
# CHECK: encoding: [0x49,0xe0,0x3f,0xf7]
.code32
cachea.w.vm [+%a14], -1

# CHECK-INST: cachea.w.vm [+%a14], 0
# CHECK: encoding: [0x49,0xe0,0x00,0x07]
.code32
cachea.w.vm [+%a14], 0

# CHECK-INST: cachea.w.vm [+%a14], 1
# CHECK: encoding: [0x49,0xe0,0x01,0x07]
.code32
cachea.w.vm [+%a14], 1

# CHECK-INST: cachea.w.vm [+%a14], 510
# CHECK: encoding: [0x49,0xe0,0x3e,0x77]
.code32
cachea.w.vm [+%a14], 510

# CHECK-INST: cachea.w.vm [+%a14], 511
# CHECK: encoding: [0x49,0xe0,0x3f,0x77]
.code32
cachea.w.vm [+%a14], 511

# CHECK-INST: cachea.w.vm [+%a15], -512
# CHECK: encoding: [0x49,0xf0,0x00,0x87]
.code32
cachea.w.vm [+%a15], -512

# CHECK-INST: cachea.w.vm [+%a15], -511
# CHECK: encoding: [0x49,0xf0,0x01,0x87]
.code32
cachea.w.vm [+%a15], -511

# CHECK-INST: cachea.w.vm [+%a15], -2
# CHECK: encoding: [0x49,0xf0,0x3e,0xf7]
.code32
cachea.w.vm [+%a15], -2

# CHECK-INST: cachea.w.vm [+%a15], -1
# CHECK: encoding: [0x49,0xf0,0x3f,0xf7]
.code32
cachea.w.vm [+%a15], -1

# CHECK-INST: cachea.w.vm [+%a15], 0
# CHECK: encoding: [0x49,0xf0,0x00,0x07]
.code32
cachea.w.vm [+%a15], 0

# CHECK-INST: cachea.w.vm [+%a15], 1
# CHECK: encoding: [0x49,0xf0,0x01,0x07]
.code32
cachea.w.vm [+%a15], 1

# CHECK-INST: cachea.w.vm [+%a15], 510
# CHECK: encoding: [0x49,0xf0,0x3e,0x77]
.code32
cachea.w.vm [+%a15], 510

# CHECK-INST: cachea.w.vm [+%a15], 511
# CHECK: encoding: [0x49,0xf0,0x3f,0x77]
.code32
cachea.w.vm [+%a15], 511

# CHECK-INST: cachea.wi.vm [%a0], -512
# CHECK: encoding: [0x49,0x00,0x40,0x8b]
.code32
cachea.wi.vm [%a0], -512

# CHECK-INST: cachea.wi.vm [%a0], -511
# CHECK: encoding: [0x49,0x00,0x41,0x8b]
.code32
cachea.wi.vm [%a0], -511

# CHECK-INST: cachea.wi.vm [%a0], -2
# CHECK: encoding: [0x49,0x00,0x7e,0xfb]
.code32
cachea.wi.vm [%a0], -2

# CHECK-INST: cachea.wi.vm [%a0], -1
# CHECK: encoding: [0x49,0x00,0x7f,0xfb]
.code32
cachea.wi.vm [%a0], -1

# CHECK-INST: cachea.wi.vm [%a0], 0
# CHECK: encoding: [0x49,0x00,0x40,0x0b]
.code32
cachea.wi.vm [%a0], 0

# CHECK-INST: cachea.wi.vm [%a0], 1
# CHECK: encoding: [0x49,0x00,0x41,0x0b]
.code32
cachea.wi.vm [%a0], 1

# CHECK-INST: cachea.wi.vm [%a0], 510
# CHECK: encoding: [0x49,0x00,0x7e,0x7b]
.code32
cachea.wi.vm [%a0], 510

# CHECK-INST: cachea.wi.vm [%a0], 511
# CHECK: encoding: [0x49,0x00,0x7f,0x7b]
.code32
cachea.wi.vm [%a0], 511

# CHECK-INST: cachea.wi.vm [%a1], -512
# CHECK: encoding: [0x49,0x10,0x40,0x8b]
.code32
cachea.wi.vm [%a1], -512

# CHECK-INST: cachea.wi.vm [%a1], -511
# CHECK: encoding: [0x49,0x10,0x41,0x8b]
.code32
cachea.wi.vm [%a1], -511

# CHECK-INST: cachea.wi.vm [%a1], -2
# CHECK: encoding: [0x49,0x10,0x7e,0xfb]
.code32
cachea.wi.vm [%a1], -2

# CHECK-INST: cachea.wi.vm [%a1], -1
# CHECK: encoding: [0x49,0x10,0x7f,0xfb]
.code32
cachea.wi.vm [%a1], -1

# CHECK-INST: cachea.wi.vm [%a1], 0
# CHECK: encoding: [0x49,0x10,0x40,0x0b]
.code32
cachea.wi.vm [%a1], 0

# CHECK-INST: cachea.wi.vm [%a1], 1
# CHECK: encoding: [0x49,0x10,0x41,0x0b]
.code32
cachea.wi.vm [%a1], 1

# CHECK-INST: cachea.wi.vm [%a1], 510
# CHECK: encoding: [0x49,0x10,0x7e,0x7b]
.code32
cachea.wi.vm [%a1], 510

# CHECK-INST: cachea.wi.vm [%a1], 511
# CHECK: encoding: [0x49,0x10,0x7f,0x7b]
.code32
cachea.wi.vm [%a1], 511

# CHECK-INST: cachea.wi.vm [%a14], -512
# CHECK: encoding: [0x49,0xe0,0x40,0x8b]
.code32
cachea.wi.vm [%a14], -512

# CHECK-INST: cachea.wi.vm [%a14], -511
# CHECK: encoding: [0x49,0xe0,0x41,0x8b]
.code32
cachea.wi.vm [%a14], -511

# CHECK-INST: cachea.wi.vm [%a14], -2
# CHECK: encoding: [0x49,0xe0,0x7e,0xfb]
.code32
cachea.wi.vm [%a14], -2

# CHECK-INST: cachea.wi.vm [%a14], -1
# CHECK: encoding: [0x49,0xe0,0x7f,0xfb]
.code32
cachea.wi.vm [%a14], -1

# CHECK-INST: cachea.wi.vm [%a14], 0
# CHECK: encoding: [0x49,0xe0,0x40,0x0b]
.code32
cachea.wi.vm [%a14], 0

# CHECK-INST: cachea.wi.vm [%a14], 1
# CHECK: encoding: [0x49,0xe0,0x41,0x0b]
.code32
cachea.wi.vm [%a14], 1

# CHECK-INST: cachea.wi.vm [%a14], 510
# CHECK: encoding: [0x49,0xe0,0x7e,0x7b]
.code32
cachea.wi.vm [%a14], 510

# CHECK-INST: cachea.wi.vm [%a14], 511
# CHECK: encoding: [0x49,0xe0,0x7f,0x7b]
.code32
cachea.wi.vm [%a14], 511

# CHECK-INST: cachea.wi.vm [%a15], -512
# CHECK: encoding: [0x49,0xf0,0x40,0x8b]
.code32
cachea.wi.vm [%a15], -512

# CHECK-INST: cachea.wi.vm [%a15], -511
# CHECK: encoding: [0x49,0xf0,0x41,0x8b]
.code32
cachea.wi.vm [%a15], -511

# CHECK-INST: cachea.wi.vm [%a15], -2
# CHECK: encoding: [0x49,0xf0,0x7e,0xfb]
.code32
cachea.wi.vm [%a15], -2

# CHECK-INST: cachea.wi.vm [%a15], -1
# CHECK: encoding: [0x49,0xf0,0x7f,0xfb]
.code32
cachea.wi.vm [%a15], -1

# CHECK-INST: cachea.wi.vm [%a15], 0
# CHECK: encoding: [0x49,0xf0,0x40,0x0b]
.code32
cachea.wi.vm [%a15], 0

# CHECK-INST: cachea.wi.vm [%a15], 1
# CHECK: encoding: [0x49,0xf0,0x41,0x0b]
.code32
cachea.wi.vm [%a15], 1

# CHECK-INST: cachea.wi.vm [%a15], 510
# CHECK: encoding: [0x49,0xf0,0x7e,0x7b]
.code32
cachea.wi.vm [%a15], 510

# CHECK-INST: cachea.wi.vm [%a15], 511
# CHECK: encoding: [0x49,0xf0,0x7f,0x7b]
.code32
cachea.wi.vm [%a15], 511

# CHECK-INST: cachea.wi.vm [%a0+], -512
# CHECK: encoding: [0x49,0x00,0x40,0x83]
.code32
cachea.wi.vm [%a0+], -512

# CHECK-INST: cachea.wi.vm [%a0+], -511
# CHECK: encoding: [0x49,0x00,0x41,0x83]
.code32
cachea.wi.vm [%a0+], -511

# CHECK-INST: cachea.wi.vm [%a0+], -2
# CHECK: encoding: [0x49,0x00,0x7e,0xf3]
.code32
cachea.wi.vm [%a0+], -2

# CHECK-INST: cachea.wi.vm [%a0+], -1
# CHECK: encoding: [0x49,0x00,0x7f,0xf3]
.code32
cachea.wi.vm [%a0+], -1

# CHECK-INST: cachea.wi.vm [%a0+], 0
# CHECK: encoding: [0x49,0x00,0x40,0x03]
.code32
cachea.wi.vm [%a0+], 0

# CHECK-INST: cachea.wi.vm [%a0+], 1
# CHECK: encoding: [0x49,0x00,0x41,0x03]
.code32
cachea.wi.vm [%a0+], 1

# CHECK-INST: cachea.wi.vm [%a0+], 510
# CHECK: encoding: [0x49,0x00,0x7e,0x73]
.code32
cachea.wi.vm [%a0+], 510

# CHECK-INST: cachea.wi.vm [%a0+], 511
# CHECK: encoding: [0x49,0x00,0x7f,0x73]
.code32
cachea.wi.vm [%a0+], 511

# CHECK-INST: cachea.wi.vm [%a1+], -512
# CHECK: encoding: [0x49,0x10,0x40,0x83]
.code32
cachea.wi.vm [%a1+], -512

# CHECK-INST: cachea.wi.vm [%a1+], -511
# CHECK: encoding: [0x49,0x10,0x41,0x83]
.code32
cachea.wi.vm [%a1+], -511

# CHECK-INST: cachea.wi.vm [%a1+], -2
# CHECK: encoding: [0x49,0x10,0x7e,0xf3]
.code32
cachea.wi.vm [%a1+], -2

# CHECK-INST: cachea.wi.vm [%a1+], -1
# CHECK: encoding: [0x49,0x10,0x7f,0xf3]
.code32
cachea.wi.vm [%a1+], -1

# CHECK-INST: cachea.wi.vm [%a1+], 0
# CHECK: encoding: [0x49,0x10,0x40,0x03]
.code32
cachea.wi.vm [%a1+], 0

# CHECK-INST: cachea.wi.vm [%a1+], 1
# CHECK: encoding: [0x49,0x10,0x41,0x03]
.code32
cachea.wi.vm [%a1+], 1

# CHECK-INST: cachea.wi.vm [%a1+], 510
# CHECK: encoding: [0x49,0x10,0x7e,0x73]
.code32
cachea.wi.vm [%a1+], 510

# CHECK-INST: cachea.wi.vm [%a1+], 511
# CHECK: encoding: [0x49,0x10,0x7f,0x73]
.code32
cachea.wi.vm [%a1+], 511

# CHECK-INST: cachea.wi.vm [%a14+], -512
# CHECK: encoding: [0x49,0xe0,0x40,0x83]
.code32
cachea.wi.vm [%a14+], -512

# CHECK-INST: cachea.wi.vm [%a14+], -511
# CHECK: encoding: [0x49,0xe0,0x41,0x83]
.code32
cachea.wi.vm [%a14+], -511

# CHECK-INST: cachea.wi.vm [%a14+], -2
# CHECK: encoding: [0x49,0xe0,0x7e,0xf3]
.code32
cachea.wi.vm [%a14+], -2

# CHECK-INST: cachea.wi.vm [%a14+], -1
# CHECK: encoding: [0x49,0xe0,0x7f,0xf3]
.code32
cachea.wi.vm [%a14+], -1

# CHECK-INST: cachea.wi.vm [%a14+], 0
# CHECK: encoding: [0x49,0xe0,0x40,0x03]
.code32
cachea.wi.vm [%a14+], 0

# CHECK-INST: cachea.wi.vm [%a14+], 1
# CHECK: encoding: [0x49,0xe0,0x41,0x03]
.code32
cachea.wi.vm [%a14+], 1

# CHECK-INST: cachea.wi.vm [%a14+], 510
# CHECK: encoding: [0x49,0xe0,0x7e,0x73]
.code32
cachea.wi.vm [%a14+], 510

# CHECK-INST: cachea.wi.vm [%a14+], 511
# CHECK: encoding: [0x49,0xe0,0x7f,0x73]
.code32
cachea.wi.vm [%a14+], 511

# CHECK-INST: cachea.wi.vm [%a15+], -512
# CHECK: encoding: [0x49,0xf0,0x40,0x83]
.code32
cachea.wi.vm [%a15+], -512

# CHECK-INST: cachea.wi.vm [%a15+], -511
# CHECK: encoding: [0x49,0xf0,0x41,0x83]
.code32
cachea.wi.vm [%a15+], -511

# CHECK-INST: cachea.wi.vm [%a15+], -2
# CHECK: encoding: [0x49,0xf0,0x7e,0xf3]
.code32
cachea.wi.vm [%a15+], -2

# CHECK-INST: cachea.wi.vm [%a15+], -1
# CHECK: encoding: [0x49,0xf0,0x7f,0xf3]
.code32
cachea.wi.vm [%a15+], -1

# CHECK-INST: cachea.wi.vm [%a15+], 0
# CHECK: encoding: [0x49,0xf0,0x40,0x03]
.code32
cachea.wi.vm [%a15+], 0

# CHECK-INST: cachea.wi.vm [%a15+], 1
# CHECK: encoding: [0x49,0xf0,0x41,0x03]
.code32
cachea.wi.vm [%a15+], 1

# CHECK-INST: cachea.wi.vm [%a15+], 510
# CHECK: encoding: [0x49,0xf0,0x7e,0x73]
.code32
cachea.wi.vm [%a15+], 510

# CHECK-INST: cachea.wi.vm [%a15+], 511
# CHECK: encoding: [0x49,0xf0,0x7f,0x73]
.code32
cachea.wi.vm [%a15+], 511

# CHECK-INST: cachea.wi.vm [+%a0], -512
# CHECK: encoding: [0x49,0x00,0x40,0x87]
.code32
cachea.wi.vm [+%a0], -512

# CHECK-INST: cachea.wi.vm [+%a0], -511
# CHECK: encoding: [0x49,0x00,0x41,0x87]
.code32
cachea.wi.vm [+%a0], -511

# CHECK-INST: cachea.wi.vm [+%a0], -2
# CHECK: encoding: [0x49,0x00,0x7e,0xf7]
.code32
cachea.wi.vm [+%a0], -2

# CHECK-INST: cachea.wi.vm [+%a0], -1
# CHECK: encoding: [0x49,0x00,0x7f,0xf7]
.code32
cachea.wi.vm [+%a0], -1

# CHECK-INST: cachea.wi.vm [+%a0], 0
# CHECK: encoding: [0x49,0x00,0x40,0x07]
.code32
cachea.wi.vm [+%a0], 0

# CHECK-INST: cachea.wi.vm [+%a0], 1
# CHECK: encoding: [0x49,0x00,0x41,0x07]
.code32
cachea.wi.vm [+%a0], 1

# CHECK-INST: cachea.wi.vm [+%a0], 510
# CHECK: encoding: [0x49,0x00,0x7e,0x77]
.code32
cachea.wi.vm [+%a0], 510

# CHECK-INST: cachea.wi.vm [+%a0], 511
# CHECK: encoding: [0x49,0x00,0x7f,0x77]
.code32
cachea.wi.vm [+%a0], 511

# CHECK-INST: cachea.wi.vm [+%a1], -512
# CHECK: encoding: [0x49,0x10,0x40,0x87]
.code32
cachea.wi.vm [+%a1], -512

# CHECK-INST: cachea.wi.vm [+%a1], -511
# CHECK: encoding: [0x49,0x10,0x41,0x87]
.code32
cachea.wi.vm [+%a1], -511

# CHECK-INST: cachea.wi.vm [+%a1], -2
# CHECK: encoding: [0x49,0x10,0x7e,0xf7]
.code32
cachea.wi.vm [+%a1], -2

# CHECK-INST: cachea.wi.vm [+%a1], -1
# CHECK: encoding: [0x49,0x10,0x7f,0xf7]
.code32
cachea.wi.vm [+%a1], -1

# CHECK-INST: cachea.wi.vm [+%a1], 0
# CHECK: encoding: [0x49,0x10,0x40,0x07]
.code32
cachea.wi.vm [+%a1], 0

# CHECK-INST: cachea.wi.vm [+%a1], 1
# CHECK: encoding: [0x49,0x10,0x41,0x07]
.code32
cachea.wi.vm [+%a1], 1

# CHECK-INST: cachea.wi.vm [+%a1], 510
# CHECK: encoding: [0x49,0x10,0x7e,0x77]
.code32
cachea.wi.vm [+%a1], 510

# CHECK-INST: cachea.wi.vm [+%a1], 511
# CHECK: encoding: [0x49,0x10,0x7f,0x77]
.code32
cachea.wi.vm [+%a1], 511

# CHECK-INST: cachea.wi.vm [+%a14], -512
# CHECK: encoding: [0x49,0xe0,0x40,0x87]
.code32
cachea.wi.vm [+%a14], -512

# CHECK-INST: cachea.wi.vm [+%a14], -511
# CHECK: encoding: [0x49,0xe0,0x41,0x87]
.code32
cachea.wi.vm [+%a14], -511

# CHECK-INST: cachea.wi.vm [+%a14], -2
# CHECK: encoding: [0x49,0xe0,0x7e,0xf7]
.code32
cachea.wi.vm [+%a14], -2

# CHECK-INST: cachea.wi.vm [+%a14], -1
# CHECK: encoding: [0x49,0xe0,0x7f,0xf7]
.code32
cachea.wi.vm [+%a14], -1

# CHECK-INST: cachea.wi.vm [+%a14], 0
# CHECK: encoding: [0x49,0xe0,0x40,0x07]
.code32
cachea.wi.vm [+%a14], 0

# CHECK-INST: cachea.wi.vm [+%a14], 1
# CHECK: encoding: [0x49,0xe0,0x41,0x07]
.code32
cachea.wi.vm [+%a14], 1

# CHECK-INST: cachea.wi.vm [+%a14], 510
# CHECK: encoding: [0x49,0xe0,0x7e,0x77]
.code32
cachea.wi.vm [+%a14], 510

# CHECK-INST: cachea.wi.vm [+%a14], 511
# CHECK: encoding: [0x49,0xe0,0x7f,0x77]
.code32
cachea.wi.vm [+%a14], 511

# CHECK-INST: cachea.wi.vm [+%a15], -512
# CHECK: encoding: [0x49,0xf0,0x40,0x87]
.code32
cachea.wi.vm [+%a15], -512

# CHECK-INST: cachea.wi.vm [+%a15], -511
# CHECK: encoding: [0x49,0xf0,0x41,0x87]
.code32
cachea.wi.vm [+%a15], -511

# CHECK-INST: cachea.wi.vm [+%a15], -2
# CHECK: encoding: [0x49,0xf0,0x7e,0xf7]
.code32
cachea.wi.vm [+%a15], -2

# CHECK-INST: cachea.wi.vm [+%a15], -1
# CHECK: encoding: [0x49,0xf0,0x7f,0xf7]
.code32
cachea.wi.vm [+%a15], -1

# CHECK-INST: cachea.wi.vm [+%a15], 0
# CHECK: encoding: [0x49,0xf0,0x40,0x07]
.code32
cachea.wi.vm [+%a15], 0

# CHECK-INST: cachea.wi.vm [+%a15], 1
# CHECK: encoding: [0x49,0xf0,0x41,0x07]
.code32
cachea.wi.vm [+%a15], 1

# CHECK-INST: cachea.wi.vm [+%a15], 510
# CHECK: encoding: [0x49,0xf0,0x7e,0x77]
.code32
cachea.wi.vm [+%a15], 510

# CHECK-INST: cachea.wi.vm [+%a15], 511
# CHECK: encoding: [0x49,0xf0,0x7f,0x77]
.code32
cachea.wi.vm [+%a15], 511

# CHECK-INST: cachei.i.vm [%a0], -512
# CHECK: encoding: [0x49,0x00,0x80,0x8a]
.code32
cachei.i.vm [%a0], -512

# CHECK-INST: cachei.i.vm [%a0], -511
# CHECK: encoding: [0x49,0x00,0x81,0x8a]
.code32
cachei.i.vm [%a0], -511

# CHECK-INST: cachei.i.vm [%a0], -2
# CHECK: encoding: [0x49,0x00,0xbe,0xfa]
.code32
cachei.i.vm [%a0], -2

# CHECK-INST: cachei.i.vm [%a0], -1
# CHECK: encoding: [0x49,0x00,0xbf,0xfa]
.code32
cachei.i.vm [%a0], -1

# CHECK-INST: cachei.i.vm [%a0], 0
# CHECK: encoding: [0x49,0x00,0x80,0x0a]
.code32
cachei.i.vm [%a0], 0

# CHECK-INST: cachei.i.vm [%a0], 1
# CHECK: encoding: [0x49,0x00,0x81,0x0a]
.code32
cachei.i.vm [%a0], 1

# CHECK-INST: cachei.i.vm [%a0], 510
# CHECK: encoding: [0x49,0x00,0xbe,0x7a]
.code32
cachei.i.vm [%a0], 510

# CHECK-INST: cachei.i.vm [%a0], 511
# CHECK: encoding: [0x49,0x00,0xbf,0x7a]
.code32
cachei.i.vm [%a0], 511

# CHECK-INST: cachei.i.vm [%a1], -512
# CHECK: encoding: [0x49,0x10,0x80,0x8a]
.code32
cachei.i.vm [%a1], -512

# CHECK-INST: cachei.i.vm [%a1], -511
# CHECK: encoding: [0x49,0x10,0x81,0x8a]
.code32
cachei.i.vm [%a1], -511

# CHECK-INST: cachei.i.vm [%a1], -2
# CHECK: encoding: [0x49,0x10,0xbe,0xfa]
.code32
cachei.i.vm [%a1], -2

# CHECK-INST: cachei.i.vm [%a1], -1
# CHECK: encoding: [0x49,0x10,0xbf,0xfa]
.code32
cachei.i.vm [%a1], -1

# CHECK-INST: cachei.i.vm [%a1], 0
# CHECK: encoding: [0x49,0x10,0x80,0x0a]
.code32
cachei.i.vm [%a1], 0

# CHECK-INST: cachei.i.vm [%a1], 1
# CHECK: encoding: [0x49,0x10,0x81,0x0a]
.code32
cachei.i.vm [%a1], 1

# CHECK-INST: cachei.i.vm [%a1], 510
# CHECK: encoding: [0x49,0x10,0xbe,0x7a]
.code32
cachei.i.vm [%a1], 510

# CHECK-INST: cachei.i.vm [%a1], 511
# CHECK: encoding: [0x49,0x10,0xbf,0x7a]
.code32
cachei.i.vm [%a1], 511

# CHECK-INST: cachei.i.vm [%a14], -512
# CHECK: encoding: [0x49,0xe0,0x80,0x8a]
.code32
cachei.i.vm [%a14], -512

# CHECK-INST: cachei.i.vm [%a14], -511
# CHECK: encoding: [0x49,0xe0,0x81,0x8a]
.code32
cachei.i.vm [%a14], -511

# CHECK-INST: cachei.i.vm [%a14], -2
# CHECK: encoding: [0x49,0xe0,0xbe,0xfa]
.code32
cachei.i.vm [%a14], -2

# CHECK-INST: cachei.i.vm [%a14], -1
# CHECK: encoding: [0x49,0xe0,0xbf,0xfa]
.code32
cachei.i.vm [%a14], -1

# CHECK-INST: cachei.i.vm [%a14], 0
# CHECK: encoding: [0x49,0xe0,0x80,0x0a]
.code32
cachei.i.vm [%a14], 0

# CHECK-INST: cachei.i.vm [%a14], 1
# CHECK: encoding: [0x49,0xe0,0x81,0x0a]
.code32
cachei.i.vm [%a14], 1

# CHECK-INST: cachei.i.vm [%a14], 510
# CHECK: encoding: [0x49,0xe0,0xbe,0x7a]
.code32
cachei.i.vm [%a14], 510

# CHECK-INST: cachei.i.vm [%a14], 511
# CHECK: encoding: [0x49,0xe0,0xbf,0x7a]
.code32
cachei.i.vm [%a14], 511

# CHECK-INST: cachei.i.vm [%a15], -512
# CHECK: encoding: [0x49,0xf0,0x80,0x8a]
.code32
cachei.i.vm [%a15], -512

# CHECK-INST: cachei.i.vm [%a15], -511
# CHECK: encoding: [0x49,0xf0,0x81,0x8a]
.code32
cachei.i.vm [%a15], -511

# CHECK-INST: cachei.i.vm [%a15], -2
# CHECK: encoding: [0x49,0xf0,0xbe,0xfa]
.code32
cachei.i.vm [%a15], -2

# CHECK-INST: cachei.i.vm [%a15], -1
# CHECK: encoding: [0x49,0xf0,0xbf,0xfa]
.code32
cachei.i.vm [%a15], -1

# CHECK-INST: cachei.i.vm [%a15], 0
# CHECK: encoding: [0x49,0xf0,0x80,0x0a]
.code32
cachei.i.vm [%a15], 0

# CHECK-INST: cachei.i.vm [%a15], 1
# CHECK: encoding: [0x49,0xf0,0x81,0x0a]
.code32
cachei.i.vm [%a15], 1

# CHECK-INST: cachei.i.vm [%a15], 510
# CHECK: encoding: [0x49,0xf0,0xbe,0x7a]
.code32
cachei.i.vm [%a15], 510

# CHECK-INST: cachei.i.vm [%a15], 511
# CHECK: encoding: [0x49,0xf0,0xbf,0x7a]
.code32
cachei.i.vm [%a15], 511

# CHECK-INST: cachei.i.vm [%a0+], -512
# CHECK: encoding: [0x49,0x00,0x80,0x82]
.code32
cachei.i.vm [%a0+], -512

# CHECK-INST: cachei.i.vm [%a0+], -511
# CHECK: encoding: [0x49,0x00,0x81,0x82]
.code32
cachei.i.vm [%a0+], -511

# CHECK-INST: cachei.i.vm [%a0+], -2
# CHECK: encoding: [0x49,0x00,0xbe,0xf2]
.code32
cachei.i.vm [%a0+], -2

# CHECK-INST: cachei.i.vm [%a0+], -1
# CHECK: encoding: [0x49,0x00,0xbf,0xf2]
.code32
cachei.i.vm [%a0+], -1

# CHECK-INST: cachei.i.vm [%a0+], 0
# CHECK: encoding: [0x49,0x00,0x80,0x02]
.code32
cachei.i.vm [%a0+], 0

# CHECK-INST: cachei.i.vm [%a0+], 1
# CHECK: encoding: [0x49,0x00,0x81,0x02]
.code32
cachei.i.vm [%a0+], 1

# CHECK-INST: cachei.i.vm [%a0+], 510
# CHECK: encoding: [0x49,0x00,0xbe,0x72]
.code32
cachei.i.vm [%a0+], 510

# CHECK-INST: cachei.i.vm [%a0+], 511
# CHECK: encoding: [0x49,0x00,0xbf,0x72]
.code32
cachei.i.vm [%a0+], 511

# CHECK-INST: cachei.i.vm [%a1+], -512
# CHECK: encoding: [0x49,0x10,0x80,0x82]
.code32
cachei.i.vm [%a1+], -512

# CHECK-INST: cachei.i.vm [%a1+], -511
# CHECK: encoding: [0x49,0x10,0x81,0x82]
.code32
cachei.i.vm [%a1+], -511

# CHECK-INST: cachei.i.vm [%a1+], -2
# CHECK: encoding: [0x49,0x10,0xbe,0xf2]
.code32
cachei.i.vm [%a1+], -2

# CHECK-INST: cachei.i.vm [%a1+], -1
# CHECK: encoding: [0x49,0x10,0xbf,0xf2]
.code32
cachei.i.vm [%a1+], -1

# CHECK-INST: cachei.i.vm [%a1+], 0
# CHECK: encoding: [0x49,0x10,0x80,0x02]
.code32
cachei.i.vm [%a1+], 0

# CHECK-INST: cachei.i.vm [%a1+], 1
# CHECK: encoding: [0x49,0x10,0x81,0x02]
.code32
cachei.i.vm [%a1+], 1

# CHECK-INST: cachei.i.vm [%a1+], 510
# CHECK: encoding: [0x49,0x10,0xbe,0x72]
.code32
cachei.i.vm [%a1+], 510

# CHECK-INST: cachei.i.vm [%a1+], 511
# CHECK: encoding: [0x49,0x10,0xbf,0x72]
.code32
cachei.i.vm [%a1+], 511

# CHECK-INST: cachei.i.vm [%a14+], -512
# CHECK: encoding: [0x49,0xe0,0x80,0x82]
.code32
cachei.i.vm [%a14+], -512

# CHECK-INST: cachei.i.vm [%a14+], -511
# CHECK: encoding: [0x49,0xe0,0x81,0x82]
.code32
cachei.i.vm [%a14+], -511

# CHECK-INST: cachei.i.vm [%a14+], -2
# CHECK: encoding: [0x49,0xe0,0xbe,0xf2]
.code32
cachei.i.vm [%a14+], -2

# CHECK-INST: cachei.i.vm [%a14+], -1
# CHECK: encoding: [0x49,0xe0,0xbf,0xf2]
.code32
cachei.i.vm [%a14+], -1

# CHECK-INST: cachei.i.vm [%a14+], 0
# CHECK: encoding: [0x49,0xe0,0x80,0x02]
.code32
cachei.i.vm [%a14+], 0

# CHECK-INST: cachei.i.vm [%a14+], 1
# CHECK: encoding: [0x49,0xe0,0x81,0x02]
.code32
cachei.i.vm [%a14+], 1

# CHECK-INST: cachei.i.vm [%a14+], 510
# CHECK: encoding: [0x49,0xe0,0xbe,0x72]
.code32
cachei.i.vm [%a14+], 510

# CHECK-INST: cachei.i.vm [%a14+], 511
# CHECK: encoding: [0x49,0xe0,0xbf,0x72]
.code32
cachei.i.vm [%a14+], 511

# CHECK-INST: cachei.i.vm [%a15+], -512
# CHECK: encoding: [0x49,0xf0,0x80,0x82]
.code32
cachei.i.vm [%a15+], -512

# CHECK-INST: cachei.i.vm [%a15+], -511
# CHECK: encoding: [0x49,0xf0,0x81,0x82]
.code32
cachei.i.vm [%a15+], -511

# CHECK-INST: cachei.i.vm [%a15+], -2
# CHECK: encoding: [0x49,0xf0,0xbe,0xf2]
.code32
cachei.i.vm [%a15+], -2

# CHECK-INST: cachei.i.vm [%a15+], -1
# CHECK: encoding: [0x49,0xf0,0xbf,0xf2]
.code32
cachei.i.vm [%a15+], -1

# CHECK-INST: cachei.i.vm [%a15+], 0
# CHECK: encoding: [0x49,0xf0,0x80,0x02]
.code32
cachei.i.vm [%a15+], 0

# CHECK-INST: cachei.i.vm [%a15+], 1
# CHECK: encoding: [0x49,0xf0,0x81,0x02]
.code32
cachei.i.vm [%a15+], 1

# CHECK-INST: cachei.i.vm [%a15+], 510
# CHECK: encoding: [0x49,0xf0,0xbe,0x72]
.code32
cachei.i.vm [%a15+], 510

# CHECK-INST: cachei.i.vm [%a15+], 511
# CHECK: encoding: [0x49,0xf0,0xbf,0x72]
.code32
cachei.i.vm [%a15+], 511

# CHECK-INST: cachei.i.vm [+%a0], -512
# CHECK: encoding: [0x49,0x00,0x80,0x86]
.code32
cachei.i.vm [+%a0], -512

# CHECK-INST: cachei.i.vm [+%a0], -511
# CHECK: encoding: [0x49,0x00,0x81,0x86]
.code32
cachei.i.vm [+%a0], -511

# CHECK-INST: cachei.i.vm [+%a0], -2
# CHECK: encoding: [0x49,0x00,0xbe,0xf6]
.code32
cachei.i.vm [+%a0], -2

# CHECK-INST: cachei.i.vm [+%a0], -1
# CHECK: encoding: [0x49,0x00,0xbf,0xf6]
.code32
cachei.i.vm [+%a0], -1

# CHECK-INST: cachei.i.vm [+%a0], 0
# CHECK: encoding: [0x49,0x00,0x80,0x06]
.code32
cachei.i.vm [+%a0], 0

# CHECK-INST: cachei.i.vm [+%a0], 1
# CHECK: encoding: [0x49,0x00,0x81,0x06]
.code32
cachei.i.vm [+%a0], 1

# CHECK-INST: cachei.i.vm [+%a0], 510
# CHECK: encoding: [0x49,0x00,0xbe,0x76]
.code32
cachei.i.vm [+%a0], 510

# CHECK-INST: cachei.i.vm [+%a0], 511
# CHECK: encoding: [0x49,0x00,0xbf,0x76]
.code32
cachei.i.vm [+%a0], 511

# CHECK-INST: cachei.i.vm [+%a1], -512
# CHECK: encoding: [0x49,0x10,0x80,0x86]
.code32
cachei.i.vm [+%a1], -512

# CHECK-INST: cachei.i.vm [+%a1], -511
# CHECK: encoding: [0x49,0x10,0x81,0x86]
.code32
cachei.i.vm [+%a1], -511

# CHECK-INST: cachei.i.vm [+%a1], -2
# CHECK: encoding: [0x49,0x10,0xbe,0xf6]
.code32
cachei.i.vm [+%a1], -2

# CHECK-INST: cachei.i.vm [+%a1], -1
# CHECK: encoding: [0x49,0x10,0xbf,0xf6]
.code32
cachei.i.vm [+%a1], -1

# CHECK-INST: cachei.i.vm [+%a1], 0
# CHECK: encoding: [0x49,0x10,0x80,0x06]
.code32
cachei.i.vm [+%a1], 0

# CHECK-INST: cachei.i.vm [+%a1], 1
# CHECK: encoding: [0x49,0x10,0x81,0x06]
.code32
cachei.i.vm [+%a1], 1

# CHECK-INST: cachei.i.vm [+%a1], 510
# CHECK: encoding: [0x49,0x10,0xbe,0x76]
.code32
cachei.i.vm [+%a1], 510

# CHECK-INST: cachei.i.vm [+%a1], 511
# CHECK: encoding: [0x49,0x10,0xbf,0x76]
.code32
cachei.i.vm [+%a1], 511

# CHECK-INST: cachei.i.vm [+%a14], -512
# CHECK: encoding: [0x49,0xe0,0x80,0x86]
.code32
cachei.i.vm [+%a14], -512

# CHECK-INST: cachei.i.vm [+%a14], -511
# CHECK: encoding: [0x49,0xe0,0x81,0x86]
.code32
cachei.i.vm [+%a14], -511

# CHECK-INST: cachei.i.vm [+%a14], -2
# CHECK: encoding: [0x49,0xe0,0xbe,0xf6]
.code32
cachei.i.vm [+%a14], -2

# CHECK-INST: cachei.i.vm [+%a14], -1
# CHECK: encoding: [0x49,0xe0,0xbf,0xf6]
.code32
cachei.i.vm [+%a14], -1

# CHECK-INST: cachei.i.vm [+%a14], 0
# CHECK: encoding: [0x49,0xe0,0x80,0x06]
.code32
cachei.i.vm [+%a14], 0

# CHECK-INST: cachei.i.vm [+%a14], 1
# CHECK: encoding: [0x49,0xe0,0x81,0x06]
.code32
cachei.i.vm [+%a14], 1

# CHECK-INST: cachei.i.vm [+%a14], 510
# CHECK: encoding: [0x49,0xe0,0xbe,0x76]
.code32
cachei.i.vm [+%a14], 510

# CHECK-INST: cachei.i.vm [+%a14], 511
# CHECK: encoding: [0x49,0xe0,0xbf,0x76]
.code32
cachei.i.vm [+%a14], 511

# CHECK-INST: cachei.i.vm [+%a15], -512
# CHECK: encoding: [0x49,0xf0,0x80,0x86]
.code32
cachei.i.vm [+%a15], -512

# CHECK-INST: cachei.i.vm [+%a15], -511
# CHECK: encoding: [0x49,0xf0,0x81,0x86]
.code32
cachei.i.vm [+%a15], -511

# CHECK-INST: cachei.i.vm [+%a15], -2
# CHECK: encoding: [0x49,0xf0,0xbe,0xf6]
.code32
cachei.i.vm [+%a15], -2

# CHECK-INST: cachei.i.vm [+%a15], -1
# CHECK: encoding: [0x49,0xf0,0xbf,0xf6]
.code32
cachei.i.vm [+%a15], -1

# CHECK-INST: cachei.i.vm [+%a15], 0
# CHECK: encoding: [0x49,0xf0,0x80,0x06]
.code32
cachei.i.vm [+%a15], 0

# CHECK-INST: cachei.i.vm [+%a15], 1
# CHECK: encoding: [0x49,0xf0,0x81,0x06]
.code32
cachei.i.vm [+%a15], 1

# CHECK-INST: cachei.i.vm [+%a15], 510
# CHECK: encoding: [0x49,0xf0,0xbe,0x76]
.code32
cachei.i.vm [+%a15], 510

# CHECK-INST: cachei.i.vm [+%a15], 511
# CHECK: encoding: [0x49,0xf0,0xbf,0x76]
.code32
cachei.i.vm [+%a15], 511

# CHECK-INST: cachei.w.vm [%a0], -512
# CHECK: encoding: [0x49,0x00,0xc0,0x8a]
.code32
cachei.w.vm [%a0], -512

# CHECK-INST: cachei.w.vm [%a0], -511
# CHECK: encoding: [0x49,0x00,0xc1,0x8a]
.code32
cachei.w.vm [%a0], -511

# CHECK-INST: cachei.w.vm [%a0], -2
# CHECK: encoding: [0x49,0x00,0xfe,0xfa]
.code32
cachei.w.vm [%a0], -2

# CHECK-INST: cachei.w.vm [%a0], -1
# CHECK: encoding: [0x49,0x00,0xff,0xfa]
.code32
cachei.w.vm [%a0], -1

# CHECK-INST: cachei.w.vm [%a0], 0
# CHECK: encoding: [0x49,0x00,0xc0,0x0a]
.code32
cachei.w.vm [%a0], 0

# CHECK-INST: cachei.w.vm [%a0], 1
# CHECK: encoding: [0x49,0x00,0xc1,0x0a]
.code32
cachei.w.vm [%a0], 1

# CHECK-INST: cachei.w.vm [%a0], 510
# CHECK: encoding: [0x49,0x00,0xfe,0x7a]
.code32
cachei.w.vm [%a0], 510

# CHECK-INST: cachei.w.vm [%a0], 511
# CHECK: encoding: [0x49,0x00,0xff,0x7a]
.code32
cachei.w.vm [%a0], 511

# CHECK-INST: cachei.w.vm [%a1], -512
# CHECK: encoding: [0x49,0x10,0xc0,0x8a]
.code32
cachei.w.vm [%a1], -512

# CHECK-INST: cachei.w.vm [%a1], -511
# CHECK: encoding: [0x49,0x10,0xc1,0x8a]
.code32
cachei.w.vm [%a1], -511

# CHECK-INST: cachei.w.vm [%a1], -2
# CHECK: encoding: [0x49,0x10,0xfe,0xfa]
.code32
cachei.w.vm [%a1], -2

# CHECK-INST: cachei.w.vm [%a1], -1
# CHECK: encoding: [0x49,0x10,0xff,0xfa]
.code32
cachei.w.vm [%a1], -1

# CHECK-INST: cachei.w.vm [%a1], 0
# CHECK: encoding: [0x49,0x10,0xc0,0x0a]
.code32
cachei.w.vm [%a1], 0

# CHECK-INST: cachei.w.vm [%a1], 1
# CHECK: encoding: [0x49,0x10,0xc1,0x0a]
.code32
cachei.w.vm [%a1], 1

# CHECK-INST: cachei.w.vm [%a1], 510
# CHECK: encoding: [0x49,0x10,0xfe,0x7a]
.code32
cachei.w.vm [%a1], 510

# CHECK-INST: cachei.w.vm [%a1], 511
# CHECK: encoding: [0x49,0x10,0xff,0x7a]
.code32
cachei.w.vm [%a1], 511

# CHECK-INST: cachei.w.vm [%a14], -512
# CHECK: encoding: [0x49,0xe0,0xc0,0x8a]
.code32
cachei.w.vm [%a14], -512

# CHECK-INST: cachei.w.vm [%a14], -511
# CHECK: encoding: [0x49,0xe0,0xc1,0x8a]
.code32
cachei.w.vm [%a14], -511

# CHECK-INST: cachei.w.vm [%a14], -2
# CHECK: encoding: [0x49,0xe0,0xfe,0xfa]
.code32
cachei.w.vm [%a14], -2

# CHECK-INST: cachei.w.vm [%a14], -1
# CHECK: encoding: [0x49,0xe0,0xff,0xfa]
.code32
cachei.w.vm [%a14], -1

# CHECK-INST: cachei.w.vm [%a14], 0
# CHECK: encoding: [0x49,0xe0,0xc0,0x0a]
.code32
cachei.w.vm [%a14], 0

# CHECK-INST: cachei.w.vm [%a14], 1
# CHECK: encoding: [0x49,0xe0,0xc1,0x0a]
.code32
cachei.w.vm [%a14], 1

# CHECK-INST: cachei.w.vm [%a14], 510
# CHECK: encoding: [0x49,0xe0,0xfe,0x7a]
.code32
cachei.w.vm [%a14], 510

# CHECK-INST: cachei.w.vm [%a14], 511
# CHECK: encoding: [0x49,0xe0,0xff,0x7a]
.code32
cachei.w.vm [%a14], 511

# CHECK-INST: cachei.w.vm [%a15], -512
# CHECK: encoding: [0x49,0xf0,0xc0,0x8a]
.code32
cachei.w.vm [%a15], -512

# CHECK-INST: cachei.w.vm [%a15], -511
# CHECK: encoding: [0x49,0xf0,0xc1,0x8a]
.code32
cachei.w.vm [%a15], -511

# CHECK-INST: cachei.w.vm [%a15], -2
# CHECK: encoding: [0x49,0xf0,0xfe,0xfa]
.code32
cachei.w.vm [%a15], -2

# CHECK-INST: cachei.w.vm [%a15], -1
# CHECK: encoding: [0x49,0xf0,0xff,0xfa]
.code32
cachei.w.vm [%a15], -1

# CHECK-INST: cachei.w.vm [%a15], 0
# CHECK: encoding: [0x49,0xf0,0xc0,0x0a]
.code32
cachei.w.vm [%a15], 0

# CHECK-INST: cachei.w.vm [%a15], 1
# CHECK: encoding: [0x49,0xf0,0xc1,0x0a]
.code32
cachei.w.vm [%a15], 1

# CHECK-INST: cachei.w.vm [%a15], 510
# CHECK: encoding: [0x49,0xf0,0xfe,0x7a]
.code32
cachei.w.vm [%a15], 510

# CHECK-INST: cachei.w.vm [%a15], 511
# CHECK: encoding: [0x49,0xf0,0xff,0x7a]
.code32
cachei.w.vm [%a15], 511

# CHECK-INST: cachei.w.vm [%a0+], -512
# CHECK: encoding: [0x49,0x00,0xc0,0x82]
.code32
cachei.w.vm [%a0+], -512

# CHECK-INST: cachei.w.vm [%a0+], -511
# CHECK: encoding: [0x49,0x00,0xc1,0x82]
.code32
cachei.w.vm [%a0+], -511

# CHECK-INST: cachei.w.vm [%a0+], -2
# CHECK: encoding: [0x49,0x00,0xfe,0xf2]
.code32
cachei.w.vm [%a0+], -2

# CHECK-INST: cachei.w.vm [%a0+], -1
# CHECK: encoding: [0x49,0x00,0xff,0xf2]
.code32
cachei.w.vm [%a0+], -1

# CHECK-INST: cachei.w.vm [%a0+], 0
# CHECK: encoding: [0x49,0x00,0xc0,0x02]
.code32
cachei.w.vm [%a0+], 0

# CHECK-INST: cachei.w.vm [%a0+], 1
# CHECK: encoding: [0x49,0x00,0xc1,0x02]
.code32
cachei.w.vm [%a0+], 1

# CHECK-INST: cachei.w.vm [%a0+], 510
# CHECK: encoding: [0x49,0x00,0xfe,0x72]
.code32
cachei.w.vm [%a0+], 510

# CHECK-INST: cachei.w.vm [%a0+], 511
# CHECK: encoding: [0x49,0x00,0xff,0x72]
.code32
cachei.w.vm [%a0+], 511

# CHECK-INST: cachei.w.vm [%a1+], -512
# CHECK: encoding: [0x49,0x10,0xc0,0x82]
.code32
cachei.w.vm [%a1+], -512

# CHECK-INST: cachei.w.vm [%a1+], -511
# CHECK: encoding: [0x49,0x10,0xc1,0x82]
.code32
cachei.w.vm [%a1+], -511

# CHECK-INST: cachei.w.vm [%a1+], -2
# CHECK: encoding: [0x49,0x10,0xfe,0xf2]
.code32
cachei.w.vm [%a1+], -2

# CHECK-INST: cachei.w.vm [%a1+], -1
# CHECK: encoding: [0x49,0x10,0xff,0xf2]
.code32
cachei.w.vm [%a1+], -1

# CHECK-INST: cachei.w.vm [%a1+], 0
# CHECK: encoding: [0x49,0x10,0xc0,0x02]
.code32
cachei.w.vm [%a1+], 0

# CHECK-INST: cachei.w.vm [%a1+], 1
# CHECK: encoding: [0x49,0x10,0xc1,0x02]
.code32
cachei.w.vm [%a1+], 1

# CHECK-INST: cachei.w.vm [%a1+], 510
# CHECK: encoding: [0x49,0x10,0xfe,0x72]
.code32
cachei.w.vm [%a1+], 510

# CHECK-INST: cachei.w.vm [%a1+], 511
# CHECK: encoding: [0x49,0x10,0xff,0x72]
.code32
cachei.w.vm [%a1+], 511

# CHECK-INST: cachei.w.vm [%a14+], -512
# CHECK: encoding: [0x49,0xe0,0xc0,0x82]
.code32
cachei.w.vm [%a14+], -512

# CHECK-INST: cachei.w.vm [%a14+], -511
# CHECK: encoding: [0x49,0xe0,0xc1,0x82]
.code32
cachei.w.vm [%a14+], -511

# CHECK-INST: cachei.w.vm [%a14+], -2
# CHECK: encoding: [0x49,0xe0,0xfe,0xf2]
.code32
cachei.w.vm [%a14+], -2

# CHECK-INST: cachei.w.vm [%a14+], -1
# CHECK: encoding: [0x49,0xe0,0xff,0xf2]
.code32
cachei.w.vm [%a14+], -1

# CHECK-INST: cachei.w.vm [%a14+], 0
# CHECK: encoding: [0x49,0xe0,0xc0,0x02]
.code32
cachei.w.vm [%a14+], 0

# CHECK-INST: cachei.w.vm [%a14+], 1
# CHECK: encoding: [0x49,0xe0,0xc1,0x02]
.code32
cachei.w.vm [%a14+], 1

# CHECK-INST: cachei.w.vm [%a14+], 510
# CHECK: encoding: [0x49,0xe0,0xfe,0x72]
.code32
cachei.w.vm [%a14+], 510

# CHECK-INST: cachei.w.vm [%a14+], 511
# CHECK: encoding: [0x49,0xe0,0xff,0x72]
.code32
cachei.w.vm [%a14+], 511

# CHECK-INST: cachei.w.vm [%a15+], -512
# CHECK: encoding: [0x49,0xf0,0xc0,0x82]
.code32
cachei.w.vm [%a15+], -512

# CHECK-INST: cachei.w.vm [%a15+], -511
# CHECK: encoding: [0x49,0xf0,0xc1,0x82]
.code32
cachei.w.vm [%a15+], -511

# CHECK-INST: cachei.w.vm [%a15+], -2
# CHECK: encoding: [0x49,0xf0,0xfe,0xf2]
.code32
cachei.w.vm [%a15+], -2

# CHECK-INST: cachei.w.vm [%a15+], -1
# CHECK: encoding: [0x49,0xf0,0xff,0xf2]
.code32
cachei.w.vm [%a15+], -1

# CHECK-INST: cachei.w.vm [%a15+], 0
# CHECK: encoding: [0x49,0xf0,0xc0,0x02]
.code32
cachei.w.vm [%a15+], 0

# CHECK-INST: cachei.w.vm [%a15+], 1
# CHECK: encoding: [0x49,0xf0,0xc1,0x02]
.code32
cachei.w.vm [%a15+], 1

# CHECK-INST: cachei.w.vm [%a15+], 510
# CHECK: encoding: [0x49,0xf0,0xfe,0x72]
.code32
cachei.w.vm [%a15+], 510

# CHECK-INST: cachei.w.vm [%a15+], 511
# CHECK: encoding: [0x49,0xf0,0xff,0x72]
.code32
cachei.w.vm [%a15+], 511

# CHECK-INST: cachei.w.vm [+%a0], -512
# CHECK: encoding: [0x49,0x00,0xc0,0x86]
.code32
cachei.w.vm [+%a0], -512

# CHECK-INST: cachei.w.vm [+%a0], -511
# CHECK: encoding: [0x49,0x00,0xc1,0x86]
.code32
cachei.w.vm [+%a0], -511

# CHECK-INST: cachei.w.vm [+%a0], -2
# CHECK: encoding: [0x49,0x00,0xfe,0xf6]
.code32
cachei.w.vm [+%a0], -2

# CHECK-INST: cachei.w.vm [+%a0], -1
# CHECK: encoding: [0x49,0x00,0xff,0xf6]
.code32
cachei.w.vm [+%a0], -1

# CHECK-INST: cachei.w.vm [+%a0], 0
# CHECK: encoding: [0x49,0x00,0xc0,0x06]
.code32
cachei.w.vm [+%a0], 0

# CHECK-INST: cachei.w.vm [+%a0], 1
# CHECK: encoding: [0x49,0x00,0xc1,0x06]
.code32
cachei.w.vm [+%a0], 1

# CHECK-INST: cachei.w.vm [+%a0], 510
# CHECK: encoding: [0x49,0x00,0xfe,0x76]
.code32
cachei.w.vm [+%a0], 510

# CHECK-INST: cachei.w.vm [+%a0], 511
# CHECK: encoding: [0x49,0x00,0xff,0x76]
.code32
cachei.w.vm [+%a0], 511

# CHECK-INST: cachei.w.vm [+%a1], -512
# CHECK: encoding: [0x49,0x10,0xc0,0x86]
.code32
cachei.w.vm [+%a1], -512

# CHECK-INST: cachei.w.vm [+%a1], -511
# CHECK: encoding: [0x49,0x10,0xc1,0x86]
.code32
cachei.w.vm [+%a1], -511

# CHECK-INST: cachei.w.vm [+%a1], -2
# CHECK: encoding: [0x49,0x10,0xfe,0xf6]
.code32
cachei.w.vm [+%a1], -2

# CHECK-INST: cachei.w.vm [+%a1], -1
# CHECK: encoding: [0x49,0x10,0xff,0xf6]
.code32
cachei.w.vm [+%a1], -1

# CHECK-INST: cachei.w.vm [+%a1], 0
# CHECK: encoding: [0x49,0x10,0xc0,0x06]
.code32
cachei.w.vm [+%a1], 0

# CHECK-INST: cachei.w.vm [+%a1], 1
# CHECK: encoding: [0x49,0x10,0xc1,0x06]
.code32
cachei.w.vm [+%a1], 1

# CHECK-INST: cachei.w.vm [+%a1], 510
# CHECK: encoding: [0x49,0x10,0xfe,0x76]
.code32
cachei.w.vm [+%a1], 510

# CHECK-INST: cachei.w.vm [+%a1], 511
# CHECK: encoding: [0x49,0x10,0xff,0x76]
.code32
cachei.w.vm [+%a1], 511

# CHECK-INST: cachei.w.vm [+%a14], -512
# CHECK: encoding: [0x49,0xe0,0xc0,0x86]
.code32
cachei.w.vm [+%a14], -512

# CHECK-INST: cachei.w.vm [+%a14], -511
# CHECK: encoding: [0x49,0xe0,0xc1,0x86]
.code32
cachei.w.vm [+%a14], -511

# CHECK-INST: cachei.w.vm [+%a14], -2
# CHECK: encoding: [0x49,0xe0,0xfe,0xf6]
.code32
cachei.w.vm [+%a14], -2

# CHECK-INST: cachei.w.vm [+%a14], -1
# CHECK: encoding: [0x49,0xe0,0xff,0xf6]
.code32
cachei.w.vm [+%a14], -1

# CHECK-INST: cachei.w.vm [+%a14], 0
# CHECK: encoding: [0x49,0xe0,0xc0,0x06]
.code32
cachei.w.vm [+%a14], 0

# CHECK-INST: cachei.w.vm [+%a14], 1
# CHECK: encoding: [0x49,0xe0,0xc1,0x06]
.code32
cachei.w.vm [+%a14], 1

# CHECK-INST: cachei.w.vm [+%a14], 510
# CHECK: encoding: [0x49,0xe0,0xfe,0x76]
.code32
cachei.w.vm [+%a14], 510

# CHECK-INST: cachei.w.vm [+%a14], 511
# CHECK: encoding: [0x49,0xe0,0xff,0x76]
.code32
cachei.w.vm [+%a14], 511

# CHECK-INST: cachei.w.vm [+%a15], -512
# CHECK: encoding: [0x49,0xf0,0xc0,0x86]
.code32
cachei.w.vm [+%a15], -512

# CHECK-INST: cachei.w.vm [+%a15], -511
# CHECK: encoding: [0x49,0xf0,0xc1,0x86]
.code32
cachei.w.vm [+%a15], -511

# CHECK-INST: cachei.w.vm [+%a15], -2
# CHECK: encoding: [0x49,0xf0,0xfe,0xf6]
.code32
cachei.w.vm [+%a15], -2

# CHECK-INST: cachei.w.vm [+%a15], -1
# CHECK: encoding: [0x49,0xf0,0xff,0xf6]
.code32
cachei.w.vm [+%a15], -1

# CHECK-INST: cachei.w.vm [+%a15], 0
# CHECK: encoding: [0x49,0xf0,0xc0,0x06]
.code32
cachei.w.vm [+%a15], 0

# CHECK-INST: cachei.w.vm [+%a15], 1
# CHECK: encoding: [0x49,0xf0,0xc1,0x06]
.code32
cachei.w.vm [+%a15], 1

# CHECK-INST: cachei.w.vm [+%a15], 510
# CHECK: encoding: [0x49,0xf0,0xfe,0x76]
.code32
cachei.w.vm [+%a15], 510

# CHECK-INST: cachei.w.vm [+%a15], 511
# CHECK: encoding: [0x49,0xf0,0xff,0x76]
.code32
cachei.w.vm [+%a15], 511

# CHECK-INST: cachei.wi.vm [%a0], -512
# CHECK: encoding: [0x49,0x00,0xc0,0x8b]
.code32
cachei.wi.vm [%a0], -512

# CHECK-INST: cachei.wi.vm [%a0], -511
# CHECK: encoding: [0x49,0x00,0xc1,0x8b]
.code32
cachei.wi.vm [%a0], -511

# CHECK-INST: cachei.wi.vm [%a0], -2
# CHECK: encoding: [0x49,0x00,0xfe,0xfb]
.code32
cachei.wi.vm [%a0], -2

# CHECK-INST: cachei.wi.vm [%a0], -1
# CHECK: encoding: [0x49,0x00,0xff,0xfb]
.code32
cachei.wi.vm [%a0], -1

# CHECK-INST: cachei.wi.vm [%a0], 0
# CHECK: encoding: [0x49,0x00,0xc0,0x0b]
.code32
cachei.wi.vm [%a0], 0

# CHECK-INST: cachei.wi.vm [%a0], 1
# CHECK: encoding: [0x49,0x00,0xc1,0x0b]
.code32
cachei.wi.vm [%a0], 1

# CHECK-INST: cachei.wi.vm [%a0], 510
# CHECK: encoding: [0x49,0x00,0xfe,0x7b]
.code32
cachei.wi.vm [%a0], 510

# CHECK-INST: cachei.wi.vm [%a0], 511
# CHECK: encoding: [0x49,0x00,0xff,0x7b]
.code32
cachei.wi.vm [%a0], 511

# CHECK-INST: cachei.wi.vm [%a1], -512
# CHECK: encoding: [0x49,0x10,0xc0,0x8b]
.code32
cachei.wi.vm [%a1], -512

# CHECK-INST: cachei.wi.vm [%a1], -511
# CHECK: encoding: [0x49,0x10,0xc1,0x8b]
.code32
cachei.wi.vm [%a1], -511

# CHECK-INST: cachei.wi.vm [%a1], -2
# CHECK: encoding: [0x49,0x10,0xfe,0xfb]
.code32
cachei.wi.vm [%a1], -2

# CHECK-INST: cachei.wi.vm [%a1], -1
# CHECK: encoding: [0x49,0x10,0xff,0xfb]
.code32
cachei.wi.vm [%a1], -1

# CHECK-INST: cachei.wi.vm [%a1], 0
# CHECK: encoding: [0x49,0x10,0xc0,0x0b]
.code32
cachei.wi.vm [%a1], 0

# CHECK-INST: cachei.wi.vm [%a1], 1
# CHECK: encoding: [0x49,0x10,0xc1,0x0b]
.code32
cachei.wi.vm [%a1], 1

# CHECK-INST: cachei.wi.vm [%a1], 510
# CHECK: encoding: [0x49,0x10,0xfe,0x7b]
.code32
cachei.wi.vm [%a1], 510

# CHECK-INST: cachei.wi.vm [%a1], 511
# CHECK: encoding: [0x49,0x10,0xff,0x7b]
.code32
cachei.wi.vm [%a1], 511

# CHECK-INST: cachei.wi.vm [%a14], -512
# CHECK: encoding: [0x49,0xe0,0xc0,0x8b]
.code32
cachei.wi.vm [%a14], -512

# CHECK-INST: cachei.wi.vm [%a14], -511
# CHECK: encoding: [0x49,0xe0,0xc1,0x8b]
.code32
cachei.wi.vm [%a14], -511

# CHECK-INST: cachei.wi.vm [%a14], -2
# CHECK: encoding: [0x49,0xe0,0xfe,0xfb]
.code32
cachei.wi.vm [%a14], -2

# CHECK-INST: cachei.wi.vm [%a14], -1
# CHECK: encoding: [0x49,0xe0,0xff,0xfb]
.code32
cachei.wi.vm [%a14], -1

# CHECK-INST: cachei.wi.vm [%a14], 0
# CHECK: encoding: [0x49,0xe0,0xc0,0x0b]
.code32
cachei.wi.vm [%a14], 0

# CHECK-INST: cachei.wi.vm [%a14], 1
# CHECK: encoding: [0x49,0xe0,0xc1,0x0b]
.code32
cachei.wi.vm [%a14], 1

# CHECK-INST: cachei.wi.vm [%a14], 510
# CHECK: encoding: [0x49,0xe0,0xfe,0x7b]
.code32
cachei.wi.vm [%a14], 510

# CHECK-INST: cachei.wi.vm [%a14], 511
# CHECK: encoding: [0x49,0xe0,0xff,0x7b]
.code32
cachei.wi.vm [%a14], 511

# CHECK-INST: cachei.wi.vm [%a15], -512
# CHECK: encoding: [0x49,0xf0,0xc0,0x8b]
.code32
cachei.wi.vm [%a15], -512

# CHECK-INST: cachei.wi.vm [%a15], -511
# CHECK: encoding: [0x49,0xf0,0xc1,0x8b]
.code32
cachei.wi.vm [%a15], -511

# CHECK-INST: cachei.wi.vm [%a15], -2
# CHECK: encoding: [0x49,0xf0,0xfe,0xfb]
.code32
cachei.wi.vm [%a15], -2

# CHECK-INST: cachei.wi.vm [%a15], -1
# CHECK: encoding: [0x49,0xf0,0xff,0xfb]
.code32
cachei.wi.vm [%a15], -1

# CHECK-INST: cachei.wi.vm [%a15], 0
# CHECK: encoding: [0x49,0xf0,0xc0,0x0b]
.code32
cachei.wi.vm [%a15], 0

# CHECK-INST: cachei.wi.vm [%a15], 1
# CHECK: encoding: [0x49,0xf0,0xc1,0x0b]
.code32
cachei.wi.vm [%a15], 1

# CHECK-INST: cachei.wi.vm [%a15], 510
# CHECK: encoding: [0x49,0xf0,0xfe,0x7b]
.code32
cachei.wi.vm [%a15], 510

# CHECK-INST: cachei.wi.vm [%a15], 511
# CHECK: encoding: [0x49,0xf0,0xff,0x7b]
.code32
cachei.wi.vm [%a15], 511

# CHECK-INST: cachei.wi.vm [%a0+], -512
# CHECK: encoding: [0x49,0x00,0xc0,0x83]
.code32
cachei.wi.vm [%a0+], -512

# CHECK-INST: cachei.wi.vm [%a0+], -511
# CHECK: encoding: [0x49,0x00,0xc1,0x83]
.code32
cachei.wi.vm [%a0+], -511

# CHECK-INST: cachei.wi.vm [%a0+], -2
# CHECK: encoding: [0x49,0x00,0xfe,0xf3]
.code32
cachei.wi.vm [%a0+], -2

# CHECK-INST: cachei.wi.vm [%a0+], -1
# CHECK: encoding: [0x49,0x00,0xff,0xf3]
.code32
cachei.wi.vm [%a0+], -1

# CHECK-INST: cachei.wi.vm [%a0+], 0
# CHECK: encoding: [0x49,0x00,0xc0,0x03]
.code32
cachei.wi.vm [%a0+], 0

# CHECK-INST: cachei.wi.vm [%a0+], 1
# CHECK: encoding: [0x49,0x00,0xc1,0x03]
.code32
cachei.wi.vm [%a0+], 1

# CHECK-INST: cachei.wi.vm [%a0+], 510
# CHECK: encoding: [0x49,0x00,0xfe,0x73]
.code32
cachei.wi.vm [%a0+], 510

# CHECK-INST: cachei.wi.vm [%a0+], 511
# CHECK: encoding: [0x49,0x00,0xff,0x73]
.code32
cachei.wi.vm [%a0+], 511

# CHECK-INST: cachei.wi.vm [%a1+], -512
# CHECK: encoding: [0x49,0x10,0xc0,0x83]
.code32
cachei.wi.vm [%a1+], -512

# CHECK-INST: cachei.wi.vm [%a1+], -511
# CHECK: encoding: [0x49,0x10,0xc1,0x83]
.code32
cachei.wi.vm [%a1+], -511

# CHECK-INST: cachei.wi.vm [%a1+], -2
# CHECK: encoding: [0x49,0x10,0xfe,0xf3]
.code32
cachei.wi.vm [%a1+], -2

# CHECK-INST: cachei.wi.vm [%a1+], -1
# CHECK: encoding: [0x49,0x10,0xff,0xf3]
.code32
cachei.wi.vm [%a1+], -1

# CHECK-INST: cachei.wi.vm [%a1+], 0
# CHECK: encoding: [0x49,0x10,0xc0,0x03]
.code32
cachei.wi.vm [%a1+], 0

# CHECK-INST: cachei.wi.vm [%a1+], 1
# CHECK: encoding: [0x49,0x10,0xc1,0x03]
.code32
cachei.wi.vm [%a1+], 1

# CHECK-INST: cachei.wi.vm [%a1+], 510
# CHECK: encoding: [0x49,0x10,0xfe,0x73]
.code32
cachei.wi.vm [%a1+], 510

# CHECK-INST: cachei.wi.vm [%a1+], 511
# CHECK: encoding: [0x49,0x10,0xff,0x73]
.code32
cachei.wi.vm [%a1+], 511

# CHECK-INST: cachei.wi.vm [%a14+], -512
# CHECK: encoding: [0x49,0xe0,0xc0,0x83]
.code32
cachei.wi.vm [%a14+], -512

# CHECK-INST: cachei.wi.vm [%a14+], -511
# CHECK: encoding: [0x49,0xe0,0xc1,0x83]
.code32
cachei.wi.vm [%a14+], -511

# CHECK-INST: cachei.wi.vm [%a14+], -2
# CHECK: encoding: [0x49,0xe0,0xfe,0xf3]
.code32
cachei.wi.vm [%a14+], -2

# CHECK-INST: cachei.wi.vm [%a14+], -1
# CHECK: encoding: [0x49,0xe0,0xff,0xf3]
.code32
cachei.wi.vm [%a14+], -1

# CHECK-INST: cachei.wi.vm [%a14+], 0
# CHECK: encoding: [0x49,0xe0,0xc0,0x03]
.code32
cachei.wi.vm [%a14+], 0

# CHECK-INST: cachei.wi.vm [%a14+], 1
# CHECK: encoding: [0x49,0xe0,0xc1,0x03]
.code32
cachei.wi.vm [%a14+], 1

# CHECK-INST: cachei.wi.vm [%a14+], 510
# CHECK: encoding: [0x49,0xe0,0xfe,0x73]
.code32
cachei.wi.vm [%a14+], 510

# CHECK-INST: cachei.wi.vm [%a14+], 511
# CHECK: encoding: [0x49,0xe0,0xff,0x73]
.code32
cachei.wi.vm [%a14+], 511

# CHECK-INST: cachei.wi.vm [%a15+], -512
# CHECK: encoding: [0x49,0xf0,0xc0,0x83]
.code32
cachei.wi.vm [%a15+], -512

# CHECK-INST: cachei.wi.vm [%a15+], -511
# CHECK: encoding: [0x49,0xf0,0xc1,0x83]
.code32
cachei.wi.vm [%a15+], -511

# CHECK-INST: cachei.wi.vm [%a15+], -2
# CHECK: encoding: [0x49,0xf0,0xfe,0xf3]
.code32
cachei.wi.vm [%a15+], -2

# CHECK-INST: cachei.wi.vm [%a15+], -1
# CHECK: encoding: [0x49,0xf0,0xff,0xf3]
.code32
cachei.wi.vm [%a15+], -1

# CHECK-INST: cachei.wi.vm [%a15+], 0
# CHECK: encoding: [0x49,0xf0,0xc0,0x03]
.code32
cachei.wi.vm [%a15+], 0

# CHECK-INST: cachei.wi.vm [%a15+], 1
# CHECK: encoding: [0x49,0xf0,0xc1,0x03]
.code32
cachei.wi.vm [%a15+], 1

# CHECK-INST: cachei.wi.vm [%a15+], 510
# CHECK: encoding: [0x49,0xf0,0xfe,0x73]
.code32
cachei.wi.vm [%a15+], 510

# CHECK-INST: cachei.wi.vm [%a15+], 511
# CHECK: encoding: [0x49,0xf0,0xff,0x73]
.code32
cachei.wi.vm [%a15+], 511

# CHECK-INST: cachei.wi.vm [+%a0], -512
# CHECK: encoding: [0x49,0x00,0xc0,0x87]
.code32
cachei.wi.vm [+%a0], -512

# CHECK-INST: cachei.wi.vm [+%a0], -511
# CHECK: encoding: [0x49,0x00,0xc1,0x87]
.code32
cachei.wi.vm [+%a0], -511

# CHECK-INST: cachei.wi.vm [+%a0], -2
# CHECK: encoding: [0x49,0x00,0xfe,0xf7]
.code32
cachei.wi.vm [+%a0], -2

# CHECK-INST: cachei.wi.vm [+%a0], -1
# CHECK: encoding: [0x49,0x00,0xff,0xf7]
.code32
cachei.wi.vm [+%a0], -1

# CHECK-INST: cachei.wi.vm [+%a0], 0
# CHECK: encoding: [0x49,0x00,0xc0,0x07]
.code32
cachei.wi.vm [+%a0], 0

# CHECK-INST: cachei.wi.vm [+%a0], 1
# CHECK: encoding: [0x49,0x00,0xc1,0x07]
.code32
cachei.wi.vm [+%a0], 1

# CHECK-INST: cachei.wi.vm [+%a0], 510
# CHECK: encoding: [0x49,0x00,0xfe,0x77]
.code32
cachei.wi.vm [+%a0], 510

# CHECK-INST: cachei.wi.vm [+%a0], 511
# CHECK: encoding: [0x49,0x00,0xff,0x77]
.code32
cachei.wi.vm [+%a0], 511

# CHECK-INST: cachei.wi.vm [+%a1], -512
# CHECK: encoding: [0x49,0x10,0xc0,0x87]
.code32
cachei.wi.vm [+%a1], -512

# CHECK-INST: cachei.wi.vm [+%a1], -511
# CHECK: encoding: [0x49,0x10,0xc1,0x87]
.code32
cachei.wi.vm [+%a1], -511

# CHECK-INST: cachei.wi.vm [+%a1], -2
# CHECK: encoding: [0x49,0x10,0xfe,0xf7]
.code32
cachei.wi.vm [+%a1], -2

# CHECK-INST: cachei.wi.vm [+%a1], -1
# CHECK: encoding: [0x49,0x10,0xff,0xf7]
.code32
cachei.wi.vm [+%a1], -1

# CHECK-INST: cachei.wi.vm [+%a1], 0
# CHECK: encoding: [0x49,0x10,0xc0,0x07]
.code32
cachei.wi.vm [+%a1], 0

# CHECK-INST: cachei.wi.vm [+%a1], 1
# CHECK: encoding: [0x49,0x10,0xc1,0x07]
.code32
cachei.wi.vm [+%a1], 1

# CHECK-INST: cachei.wi.vm [+%a1], 510
# CHECK: encoding: [0x49,0x10,0xfe,0x77]
.code32
cachei.wi.vm [+%a1], 510

# CHECK-INST: cachei.wi.vm [+%a1], 511
# CHECK: encoding: [0x49,0x10,0xff,0x77]
.code32
cachei.wi.vm [+%a1], 511

# CHECK-INST: cachei.wi.vm [+%a14], -512
# CHECK: encoding: [0x49,0xe0,0xc0,0x87]
.code32
cachei.wi.vm [+%a14], -512

# CHECK-INST: cachei.wi.vm [+%a14], -511
# CHECK: encoding: [0x49,0xe0,0xc1,0x87]
.code32
cachei.wi.vm [+%a14], -511

# CHECK-INST: cachei.wi.vm [+%a14], -2
# CHECK: encoding: [0x49,0xe0,0xfe,0xf7]
.code32
cachei.wi.vm [+%a14], -2

# CHECK-INST: cachei.wi.vm [+%a14], -1
# CHECK: encoding: [0x49,0xe0,0xff,0xf7]
.code32
cachei.wi.vm [+%a14], -1

# CHECK-INST: cachei.wi.vm [+%a14], 0
# CHECK: encoding: [0x49,0xe0,0xc0,0x07]
.code32
cachei.wi.vm [+%a14], 0

# CHECK-INST: cachei.wi.vm [+%a14], 1
# CHECK: encoding: [0x49,0xe0,0xc1,0x07]
.code32
cachei.wi.vm [+%a14], 1

# CHECK-INST: cachei.wi.vm [+%a14], 510
# CHECK: encoding: [0x49,0xe0,0xfe,0x77]
.code32
cachei.wi.vm [+%a14], 510

# CHECK-INST: cachei.wi.vm [+%a14], 511
# CHECK: encoding: [0x49,0xe0,0xff,0x77]
.code32
cachei.wi.vm [+%a14], 511

# CHECK-INST: cachei.wi.vm [+%a15], -512
# CHECK: encoding: [0x49,0xf0,0xc0,0x87]
.code32
cachei.wi.vm [+%a15], -512

# CHECK-INST: cachei.wi.vm [+%a15], -511
# CHECK: encoding: [0x49,0xf0,0xc1,0x87]
.code32
cachei.wi.vm [+%a15], -511

# CHECK-INST: cachei.wi.vm [+%a15], -2
# CHECK: encoding: [0x49,0xf0,0xfe,0xf7]
.code32
cachei.wi.vm [+%a15], -2

# CHECK-INST: cachei.wi.vm [+%a15], -1
# CHECK: encoding: [0x49,0xf0,0xff,0xf7]
.code32
cachei.wi.vm [+%a15], -1

# CHECK-INST: cachei.wi.vm [+%a15], 0
# CHECK: encoding: [0x49,0xf0,0xc0,0x07]
.code32
cachei.wi.vm [+%a15], 0

# CHECK-INST: cachei.wi.vm [+%a15], 1
# CHECK: encoding: [0x49,0xf0,0xc1,0x07]
.code32
cachei.wi.vm [+%a15], 1

# CHECK-INST: cachei.wi.vm [+%a15], 510
# CHECK: encoding: [0x49,0xf0,0xfe,0x77]
.code32
cachei.wi.vm [+%a15], 510

# CHECK-INST: cachei.wi.vm [+%a15], 511
# CHECK: encoding: [0x49,0xf0,0xff,0x77]
.code32
cachei.wi.vm [+%a15], 511

