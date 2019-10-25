# RUN: llvm-mc %s -triple=tricore -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK,CHECK-INST %s

# CHECK-INST: lducx 1
# CHECK: encoding: [0x15,0x00,0x01,0x0c]
.code32
lducx 1

# CHECK-INST: lducx 2
# CHECK: encoding: [0x15,0x00,0x02,0x0c]
.code32
lducx 2

# CHECK-INST: lducx 4
# CHECK: encoding: [0x15,0x00,0x04,0x0c]
.code32
lducx 4

# CHECK-INST: lducx 8
# CHECK: encoding: [0x15,0x00,0x08,0x0c]
.code32
lducx 8

# CHECK-INST: lducx 16
# CHECK: encoding: [0x15,0x00,0x10,0x0c]
.code32
lducx 16

# CHECK-INST: lducx 32
# CHECK: encoding: [0x15,0x00,0x20,0x0c]
.code32
lducx 32

# CHECK-INST: lducx 64
# CHECK: encoding: [0x15,0x00,0x00,0x1c]
.code32
lducx 64

# CHECK-INST: lducx 128
# CHECK: encoding: [0x15,0x00,0x00,0x2c]
.code32
lducx 128

# CHECK-INST: lducx 256
# CHECK: encoding: [0x15,0x00,0x00,0x4c]
.code32
lducx 256

# CHECK-INST: lducx 512
# CHECK: encoding: [0x15,0x00,0x00,0x8c]
.code32
lducx 512

# CHECK-INST: lducx 1024
# CHECK: encoding: [0x15,0x00,0x40,0x0c]
.code32
lducx 1024

# CHECK-INST: lducx 2048
# CHECK: encoding: [0x15,0x00,0x80,0x0c]
.code32
lducx 2048

# CHECK-INST: lducx 4096
# CHECK: encoding: [0x15,0x00,0x00,0x0d]
.code32
lducx 4096

# CHECK-INST: lducx 8192
# CHECK: encoding: [0x15,0x00,0x00,0x0e]
.code32
lducx 8192

# CHECK-INST: lducx 268435456
# CHECK: encoding: [0x15,0x10,0x00,0x0c]
.code32
lducx 268435456

# CHECK-INST: lducx 536870912
# CHECK: encoding: [0x15,0x20,0x00,0x0c]
.code32
lducx 536870912

# CHECK-INST: lducx 1073741824
# CHECK: encoding: [0x15,0x40,0x00,0x0c]
.code32
lducx 1073741824

# CHECK-INST: lducx 2147483648
# CHECK: encoding: [0x15,0x80,0x00,0x0c]
.code32
lducx 2147483648

# CHECK-INST: lducx 4026548223
# CHECK: encoding: [0x15,0xf0,0xff,0xff]
.code32
lducx 4026548223

# CHECK-INST: lducx [%a0], -512
# CHECK: encoding: [0x49,0x00,0x40,0x89]
.code32
lducx [%a0], -512

# CHECK-INST: lducx [%a0], -511
# CHECK: encoding: [0x49,0x00,0x41,0x89]
.code32
lducx [%a0], -511

# CHECK-INST: lducx [%a0], -2
# CHECK: encoding: [0x49,0x00,0x7e,0xf9]
.code32
lducx [%a0], -2

# CHECK-INST: lducx [%a0], -1
# CHECK: encoding: [0x49,0x00,0x7f,0xf9]
.code32
lducx [%a0], -1

# CHECK-INST: lducx [%a0], 0
# CHECK: encoding: [0x49,0x00,0x40,0x09]
.code32
lducx [%a0], 0

# CHECK-INST: lducx [%a0], 1
# CHECK: encoding: [0x49,0x00,0x41,0x09]
.code32
lducx [%a0], 1

# CHECK-INST: lducx [%a0], 510
# CHECK: encoding: [0x49,0x00,0x7e,0x79]
.code32
lducx [%a0], 510

# CHECK-INST: lducx [%a0], 511
# CHECK: encoding: [0x49,0x00,0x7f,0x79]
.code32
lducx [%a0], 511

# CHECK-INST: lducx [%a1], -512
# CHECK: encoding: [0x49,0x10,0x40,0x89]
.code32
lducx [%a1], -512

# CHECK-INST: lducx [%a1], -511
# CHECK: encoding: [0x49,0x10,0x41,0x89]
.code32
lducx [%a1], -511

# CHECK-INST: lducx [%a1], -2
# CHECK: encoding: [0x49,0x10,0x7e,0xf9]
.code32
lducx [%a1], -2

# CHECK-INST: lducx [%a1], -1
# CHECK: encoding: [0x49,0x10,0x7f,0xf9]
.code32
lducx [%a1], -1

# CHECK-INST: lducx [%a1], 0
# CHECK: encoding: [0x49,0x10,0x40,0x09]
.code32
lducx [%a1], 0

# CHECK-INST: lducx [%a1], 1
# CHECK: encoding: [0x49,0x10,0x41,0x09]
.code32
lducx [%a1], 1

# CHECK-INST: lducx [%a1], 510
# CHECK: encoding: [0x49,0x10,0x7e,0x79]
.code32
lducx [%a1], 510

# CHECK-INST: lducx [%a1], 511
# CHECK: encoding: [0x49,0x10,0x7f,0x79]
.code32
lducx [%a1], 511

# CHECK-INST: lducx [%a14], -512
# CHECK: encoding: [0x49,0xe0,0x40,0x89]
.code32
lducx [%a14], -512

# CHECK-INST: lducx [%a14], -511
# CHECK: encoding: [0x49,0xe0,0x41,0x89]
.code32
lducx [%a14], -511

# CHECK-INST: lducx [%a14], -2
# CHECK: encoding: [0x49,0xe0,0x7e,0xf9]
.code32
lducx [%a14], -2

# CHECK-INST: lducx [%a14], -1
# CHECK: encoding: [0x49,0xe0,0x7f,0xf9]
.code32
lducx [%a14], -1

# CHECK-INST: lducx [%a14], 0
# CHECK: encoding: [0x49,0xe0,0x40,0x09]
.code32
lducx [%a14], 0

# CHECK-INST: lducx [%a14], 1
# CHECK: encoding: [0x49,0xe0,0x41,0x09]
.code32
lducx [%a14], 1

# CHECK-INST: lducx [%a14], 510
# CHECK: encoding: [0x49,0xe0,0x7e,0x79]
.code32
lducx [%a14], 510

# CHECK-INST: lducx [%a14], 511
# CHECK: encoding: [0x49,0xe0,0x7f,0x79]
.code32
lducx [%a14], 511

# CHECK-INST: lducx [%a15], -512
# CHECK: encoding: [0x49,0xf0,0x40,0x89]
.code32
lducx [%a15], -512

# CHECK-INST: lducx [%a15], -511
# CHECK: encoding: [0x49,0xf0,0x41,0x89]
.code32
lducx [%a15], -511

# CHECK-INST: lducx [%a15], -2
# CHECK: encoding: [0x49,0xf0,0x7e,0xf9]
.code32
lducx [%a15], -2

# CHECK-INST: lducx [%a15], -1
# CHECK: encoding: [0x49,0xf0,0x7f,0xf9]
.code32
lducx [%a15], -1

# CHECK-INST: lducx [%a15], 0
# CHECK: encoding: [0x49,0xf0,0x40,0x09]
.code32
lducx [%a15], 0

# CHECK-INST: lducx [%a15], 1
# CHECK: encoding: [0x49,0xf0,0x41,0x09]
.code32
lducx [%a15], 1

# CHECK-INST: lducx [%a15], 510
# CHECK: encoding: [0x49,0xf0,0x7e,0x79]
.code32
lducx [%a15], 510

# CHECK-INST: lducx [%a15], 511
# CHECK: encoding: [0x49,0xf0,0x7f,0x79]
.code32
lducx [%a15], 511

# CHECK-INST: ldlcx 1
# CHECK: encoding: [0x15,0x00,0x01,0x08]
.code32
ldlcx 1

# CHECK-INST: ldlcx 2
# CHECK: encoding: [0x15,0x00,0x02,0x08]
.code32
ldlcx 2

# CHECK-INST: ldlcx 4
# CHECK: encoding: [0x15,0x00,0x04,0x08]
.code32
ldlcx 4

# CHECK-INST: ldlcx 8
# CHECK: encoding: [0x15,0x00,0x08,0x08]
.code32
ldlcx 8

# CHECK-INST: ldlcx 16
# CHECK: encoding: [0x15,0x00,0x10,0x08]
.code32
ldlcx 16

# CHECK-INST: ldlcx 32
# CHECK: encoding: [0x15,0x00,0x20,0x08]
.code32
ldlcx 32

# CHECK-INST: ldlcx 64
# CHECK: encoding: [0x15,0x00,0x00,0x18]
.code32
ldlcx 64

# CHECK-INST: ldlcx 128
# CHECK: encoding: [0x15,0x00,0x00,0x28]
.code32
ldlcx 128

# CHECK-INST: ldlcx 256
# CHECK: encoding: [0x15,0x00,0x00,0x48]
.code32
ldlcx 256

# CHECK-INST: ldlcx 512
# CHECK: encoding: [0x15,0x00,0x00,0x88]
.code32
ldlcx 512

# CHECK-INST: ldlcx 1024
# CHECK: encoding: [0x15,0x00,0x40,0x08]
.code32
ldlcx 1024

# CHECK-INST: ldlcx 2048
# CHECK: encoding: [0x15,0x00,0x80,0x08]
.code32
ldlcx 2048

# CHECK-INST: ldlcx 4096
# CHECK: encoding: [0x15,0x00,0x00,0x09]
.code32
ldlcx 4096

# CHECK-INST: ldlcx 8192
# CHECK: encoding: [0x15,0x00,0x00,0x0a]
.code32
ldlcx 8192

# CHECK-INST: ldlcx 268435456
# CHECK: encoding: [0x15,0x10,0x00,0x08]
.code32
ldlcx 268435456

# CHECK-INST: ldlcx 536870912
# CHECK: encoding: [0x15,0x20,0x00,0x08]
.code32
ldlcx 536870912

# CHECK-INST: ldlcx 1073741824
# CHECK: encoding: [0x15,0x40,0x00,0x08]
.code32
ldlcx 1073741824

# CHECK-INST: ldlcx 2147483648
# CHECK: encoding: [0x15,0x80,0x00,0x08]
.code32
ldlcx 2147483648

# CHECK-INST: ldlcx 4026548223
# CHECK: encoding: [0x15,0xf0,0xff,0xfb]
.code32
ldlcx 4026548223

# CHECK-INST: ldlcx [%a0], -512
# CHECK: encoding: [0x49,0x00,0x00,0x89]
.code32
ldlcx [%a0], -512

# CHECK-INST: ldlcx [%a0], -511
# CHECK: encoding: [0x49,0x00,0x01,0x89]
.code32
ldlcx [%a0], -511

# CHECK-INST: ldlcx [%a0], -2
# CHECK: encoding: [0x49,0x00,0x3e,0xf9]
.code32
ldlcx [%a0], -2

# CHECK-INST: ldlcx [%a0], -1
# CHECK: encoding: [0x49,0x00,0x3f,0xf9]
.code32
ldlcx [%a0], -1

# CHECK-INST: ldlcx [%a0], 0
# CHECK: encoding: [0x49,0x00,0x00,0x09]
.code32
ldlcx [%a0], 0

# CHECK-INST: ldlcx [%a0], 1
# CHECK: encoding: [0x49,0x00,0x01,0x09]
.code32
ldlcx [%a0], 1

# CHECK-INST: ldlcx [%a0], 510
# CHECK: encoding: [0x49,0x00,0x3e,0x79]
.code32
ldlcx [%a0], 510

# CHECK-INST: ldlcx [%a0], 511
# CHECK: encoding: [0x49,0x00,0x3f,0x79]
.code32
ldlcx [%a0], 511

# CHECK-INST: ldlcx [%a1], -512
# CHECK: encoding: [0x49,0x10,0x00,0x89]
.code32
ldlcx [%a1], -512

# CHECK-INST: ldlcx [%a1], -511
# CHECK: encoding: [0x49,0x10,0x01,0x89]
.code32
ldlcx [%a1], -511

# CHECK-INST: ldlcx [%a1], -2
# CHECK: encoding: [0x49,0x10,0x3e,0xf9]
.code32
ldlcx [%a1], -2

# CHECK-INST: ldlcx [%a1], -1
# CHECK: encoding: [0x49,0x10,0x3f,0xf9]
.code32
ldlcx [%a1], -1

# CHECK-INST: ldlcx [%a1], 0
# CHECK: encoding: [0x49,0x10,0x00,0x09]
.code32
ldlcx [%a1], 0

# CHECK-INST: ldlcx [%a1], 1
# CHECK: encoding: [0x49,0x10,0x01,0x09]
.code32
ldlcx [%a1], 1

# CHECK-INST: ldlcx [%a1], 510
# CHECK: encoding: [0x49,0x10,0x3e,0x79]
.code32
ldlcx [%a1], 510

# CHECK-INST: ldlcx [%a1], 511
# CHECK: encoding: [0x49,0x10,0x3f,0x79]
.code32
ldlcx [%a1], 511

# CHECK-INST: ldlcx [%a14], -512
# CHECK: encoding: [0x49,0xe0,0x00,0x89]
.code32
ldlcx [%a14], -512

# CHECK-INST: ldlcx [%a14], -511
# CHECK: encoding: [0x49,0xe0,0x01,0x89]
.code32
ldlcx [%a14], -511

# CHECK-INST: ldlcx [%a14], -2
# CHECK: encoding: [0x49,0xe0,0x3e,0xf9]
.code32
ldlcx [%a14], -2

# CHECK-INST: ldlcx [%a14], -1
# CHECK: encoding: [0x49,0xe0,0x3f,0xf9]
.code32
ldlcx [%a14], -1

# CHECK-INST: ldlcx [%a14], 0
# CHECK: encoding: [0x49,0xe0,0x00,0x09]
.code32
ldlcx [%a14], 0

# CHECK-INST: ldlcx [%a14], 1
# CHECK: encoding: [0x49,0xe0,0x01,0x09]
.code32
ldlcx [%a14], 1

# CHECK-INST: ldlcx [%a14], 510
# CHECK: encoding: [0x49,0xe0,0x3e,0x79]
.code32
ldlcx [%a14], 510

# CHECK-INST: ldlcx [%a14], 511
# CHECK: encoding: [0x49,0xe0,0x3f,0x79]
.code32
ldlcx [%a14], 511

# CHECK-INST: ldlcx [%a15], -512
# CHECK: encoding: [0x49,0xf0,0x00,0x89]
.code32
ldlcx [%a15], -512

# CHECK-INST: ldlcx [%a15], -511
# CHECK: encoding: [0x49,0xf0,0x01,0x89]
.code32
ldlcx [%a15], -511

# CHECK-INST: ldlcx [%a15], -2
# CHECK: encoding: [0x49,0xf0,0x3e,0xf9]
.code32
ldlcx [%a15], -2

# CHECK-INST: ldlcx [%a15], -1
# CHECK: encoding: [0x49,0xf0,0x3f,0xf9]
.code32
ldlcx [%a15], -1

# CHECK-INST: ldlcx [%a15], 0
# CHECK: encoding: [0x49,0xf0,0x00,0x09]
.code32
ldlcx [%a15], 0

# CHECK-INST: ldlcx [%a15], 1
# CHECK: encoding: [0x49,0xf0,0x01,0x09]
.code32
ldlcx [%a15], 1

# CHECK-INST: ldlcx [%a15], 510
# CHECK: encoding: [0x49,0xf0,0x3e,0x79]
.code32
ldlcx [%a15], 510

# CHECK-INST: ldlcx [%a15], 511
# CHECK: encoding: [0x49,0xf0,0x3f,0x79]
.code32
ldlcx [%a15], 511

# CHECK-INST: stucx 1
# CHECK: encoding: [0x15,0x00,0x01,0x04]
.code32
stucx 1

# CHECK-INST: stucx 2
# CHECK: encoding: [0x15,0x00,0x02,0x04]
.code32
stucx 2

# CHECK-INST: stucx 4
# CHECK: encoding: [0x15,0x00,0x04,0x04]
.code32
stucx 4

# CHECK-INST: stucx 8
# CHECK: encoding: [0x15,0x00,0x08,0x04]
.code32
stucx 8

# CHECK-INST: stucx 16
# CHECK: encoding: [0x15,0x00,0x10,0x04]
.code32
stucx 16

# CHECK-INST: stucx 32
# CHECK: encoding: [0x15,0x00,0x20,0x04]
.code32
stucx 32

# CHECK-INST: stucx 64
# CHECK: encoding: [0x15,0x00,0x00,0x14]
.code32
stucx 64

# CHECK-INST: stucx 128
# CHECK: encoding: [0x15,0x00,0x00,0x24]
.code32
stucx 128

# CHECK-INST: stucx 256
# CHECK: encoding: [0x15,0x00,0x00,0x44]
.code32
stucx 256

# CHECK-INST: stucx 512
# CHECK: encoding: [0x15,0x00,0x00,0x84]
.code32
stucx 512

# CHECK-INST: stucx 1024
# CHECK: encoding: [0x15,0x00,0x40,0x04]
.code32
stucx 1024

# CHECK-INST: stucx 2048
# CHECK: encoding: [0x15,0x00,0x80,0x04]
.code32
stucx 2048

# CHECK-INST: stucx 4096
# CHECK: encoding: [0x15,0x00,0x00,0x05]
.code32
stucx 4096

# CHECK-INST: stucx 8192
# CHECK: encoding: [0x15,0x00,0x00,0x06]
.code32
stucx 8192

# CHECK-INST: stucx 268435456
# CHECK: encoding: [0x15,0x10,0x00,0x04]
.code32
stucx 268435456

# CHECK-INST: stucx 536870912
# CHECK: encoding: [0x15,0x20,0x00,0x04]
.code32
stucx 536870912

# CHECK-INST: stucx 1073741824
# CHECK: encoding: [0x15,0x40,0x00,0x04]
.code32
stucx 1073741824

# CHECK-INST: stucx 2147483648
# CHECK: encoding: [0x15,0x80,0x00,0x04]
.code32
stucx 2147483648

# CHECK-INST: stucx 4026548223
# CHECK: encoding: [0x15,0xf0,0xff,0xf7]
.code32
stucx 4026548223

# CHECK-INST: stucx [%a0], -512
# CHECK: encoding: [0x49,0x00,0xc0,0x89]
.code32
stucx [%a0], -512

# CHECK-INST: stucx [%a0], -511
# CHECK: encoding: [0x49,0x00,0xc1,0x89]
.code32
stucx [%a0], -511

# CHECK-INST: stucx [%a0], -2
# CHECK: encoding: [0x49,0x00,0xfe,0xf9]
.code32
stucx [%a0], -2

# CHECK-INST: stucx [%a0], -1
# CHECK: encoding: [0x49,0x00,0xff,0xf9]
.code32
stucx [%a0], -1

# CHECK-INST: stucx [%a0], 0
# CHECK: encoding: [0x49,0x00,0xc0,0x09]
.code32
stucx [%a0], 0

# CHECK-INST: stucx [%a0], 1
# CHECK: encoding: [0x49,0x00,0xc1,0x09]
.code32
stucx [%a0], 1

# CHECK-INST: stucx [%a0], 510
# CHECK: encoding: [0x49,0x00,0xfe,0x79]
.code32
stucx [%a0], 510

# CHECK-INST: stucx [%a0], 511
# CHECK: encoding: [0x49,0x00,0xff,0x79]
.code32
stucx [%a0], 511

# CHECK-INST: stucx [%a1], -512
# CHECK: encoding: [0x49,0x10,0xc0,0x89]
.code32
stucx [%a1], -512

# CHECK-INST: stucx [%a1], -511
# CHECK: encoding: [0x49,0x10,0xc1,0x89]
.code32
stucx [%a1], -511

# CHECK-INST: stucx [%a1], -2
# CHECK: encoding: [0x49,0x10,0xfe,0xf9]
.code32
stucx [%a1], -2

# CHECK-INST: stucx [%a1], -1
# CHECK: encoding: [0x49,0x10,0xff,0xf9]
.code32
stucx [%a1], -1

# CHECK-INST: stucx [%a1], 0
# CHECK: encoding: [0x49,0x10,0xc0,0x09]
.code32
stucx [%a1], 0

# CHECK-INST: stucx [%a1], 1
# CHECK: encoding: [0x49,0x10,0xc1,0x09]
.code32
stucx [%a1], 1

# CHECK-INST: stucx [%a1], 510
# CHECK: encoding: [0x49,0x10,0xfe,0x79]
.code32
stucx [%a1], 510

# CHECK-INST: stucx [%a1], 511
# CHECK: encoding: [0x49,0x10,0xff,0x79]
.code32
stucx [%a1], 511

# CHECK-INST: stucx [%a14], -512
# CHECK: encoding: [0x49,0xe0,0xc0,0x89]
.code32
stucx [%a14], -512

# CHECK-INST: stucx [%a14], -511
# CHECK: encoding: [0x49,0xe0,0xc1,0x89]
.code32
stucx [%a14], -511

# CHECK-INST: stucx [%a14], -2
# CHECK: encoding: [0x49,0xe0,0xfe,0xf9]
.code32
stucx [%a14], -2

# CHECK-INST: stucx [%a14], -1
# CHECK: encoding: [0x49,0xe0,0xff,0xf9]
.code32
stucx [%a14], -1

# CHECK-INST: stucx [%a14], 0
# CHECK: encoding: [0x49,0xe0,0xc0,0x09]
.code32
stucx [%a14], 0

# CHECK-INST: stucx [%a14], 1
# CHECK: encoding: [0x49,0xe0,0xc1,0x09]
.code32
stucx [%a14], 1

# CHECK-INST: stucx [%a14], 510
# CHECK: encoding: [0x49,0xe0,0xfe,0x79]
.code32
stucx [%a14], 510

# CHECK-INST: stucx [%a14], 511
# CHECK: encoding: [0x49,0xe0,0xff,0x79]
.code32
stucx [%a14], 511

# CHECK-INST: stucx [%a15], -512
# CHECK: encoding: [0x49,0xf0,0xc0,0x89]
.code32
stucx [%a15], -512

# CHECK-INST: stucx [%a15], -511
# CHECK: encoding: [0x49,0xf0,0xc1,0x89]
.code32
stucx [%a15], -511

# CHECK-INST: stucx [%a15], -2
# CHECK: encoding: [0x49,0xf0,0xfe,0xf9]
.code32
stucx [%a15], -2

# CHECK-INST: stucx [%a15], -1
# CHECK: encoding: [0x49,0xf0,0xff,0xf9]
.code32
stucx [%a15], -1

# CHECK-INST: stucx [%a15], 0
# CHECK: encoding: [0x49,0xf0,0xc0,0x09]
.code32
stucx [%a15], 0

# CHECK-INST: stucx [%a15], 1
# CHECK: encoding: [0x49,0xf0,0xc1,0x09]
.code32
stucx [%a15], 1

# CHECK-INST: stucx [%a15], 510
# CHECK: encoding: [0x49,0xf0,0xfe,0x79]
.code32
stucx [%a15], 510

# CHECK-INST: stucx [%a15], 511
# CHECK: encoding: [0x49,0xf0,0xff,0x79]
.code32
stucx [%a15], 511

# CHECK-INST: stlcx 1
# CHECK: encoding: [0x15,0x00,0x01,0x00]
.code32
stlcx 1

# CHECK-INST: stlcx 2
# CHECK: encoding: [0x15,0x00,0x02,0x00]
.code32
stlcx 2

# CHECK-INST: stlcx 4
# CHECK: encoding: [0x15,0x00,0x04,0x00]
.code32
stlcx 4

# CHECK-INST: stlcx 8
# CHECK: encoding: [0x15,0x00,0x08,0x00]
.code32
stlcx 8

# CHECK-INST: stlcx 16
# CHECK: encoding: [0x15,0x00,0x10,0x00]
.code32
stlcx 16

# CHECK-INST: stlcx 32
# CHECK: encoding: [0x15,0x00,0x20,0x00]
.code32
stlcx 32

# CHECK-INST: stlcx 64
# CHECK: encoding: [0x15,0x00,0x00,0x10]
.code32
stlcx 64

# CHECK-INST: stlcx 128
# CHECK: encoding: [0x15,0x00,0x00,0x20]
.code32
stlcx 128

# CHECK-INST: stlcx 256
# CHECK: encoding: [0x15,0x00,0x00,0x40]
.code32
stlcx 256

# CHECK-INST: stlcx 512
# CHECK: encoding: [0x15,0x00,0x00,0x80]
.code32
stlcx 512

# CHECK-INST: stlcx 1024
# CHECK: encoding: [0x15,0x00,0x40,0x00]
.code32
stlcx 1024

# CHECK-INST: stlcx 2048
# CHECK: encoding: [0x15,0x00,0x80,0x00]
.code32
stlcx 2048

# CHECK-INST: stlcx 4096
# CHECK: encoding: [0x15,0x00,0x00,0x01]
.code32
stlcx 4096

# CHECK-INST: stlcx 8192
# CHECK: encoding: [0x15,0x00,0x00,0x02]
.code32
stlcx 8192

# CHECK-INST: stlcx 268435456
# CHECK: encoding: [0x15,0x10,0x00,0x00]
.code32
stlcx 268435456

# CHECK-INST: stlcx 536870912
# CHECK: encoding: [0x15,0x20,0x00,0x00]
.code32
stlcx 536870912

# CHECK-INST: stlcx 1073741824
# CHECK: encoding: [0x15,0x40,0x00,0x00]
.code32
stlcx 1073741824

# CHECK-INST: stlcx 2147483648
# CHECK: encoding: [0x15,0x80,0x00,0x00]
.code32
stlcx 2147483648

# CHECK-INST: stlcx 4026548223
# CHECK: encoding: [0x15,0xf0,0xff,0xf3]
.code32
stlcx 4026548223

# CHECK-INST: stlcx [%a0], -512
# CHECK: encoding: [0x49,0x00,0x80,0x89]
.code32
stlcx [%a0], -512

# CHECK-INST: stlcx [%a0], -511
# CHECK: encoding: [0x49,0x00,0x81,0x89]
.code32
stlcx [%a0], -511

# CHECK-INST: stlcx [%a0], -2
# CHECK: encoding: [0x49,0x00,0xbe,0xf9]
.code32
stlcx [%a0], -2

# CHECK-INST: stlcx [%a0], -1
# CHECK: encoding: [0x49,0x00,0xbf,0xf9]
.code32
stlcx [%a0], -1

# CHECK-INST: stlcx [%a0], 0
# CHECK: encoding: [0x49,0x00,0x80,0x09]
.code32
stlcx [%a0], 0

# CHECK-INST: stlcx [%a0], 1
# CHECK: encoding: [0x49,0x00,0x81,0x09]
.code32
stlcx [%a0], 1

# CHECK-INST: stlcx [%a0], 510
# CHECK: encoding: [0x49,0x00,0xbe,0x79]
.code32
stlcx [%a0], 510

# CHECK-INST: stlcx [%a0], 511
# CHECK: encoding: [0x49,0x00,0xbf,0x79]
.code32
stlcx [%a0], 511

# CHECK-INST: stlcx [%a1], -512
# CHECK: encoding: [0x49,0x10,0x80,0x89]
.code32
stlcx [%a1], -512

# CHECK-INST: stlcx [%a1], -511
# CHECK: encoding: [0x49,0x10,0x81,0x89]
.code32
stlcx [%a1], -511

# CHECK-INST: stlcx [%a1], -2
# CHECK: encoding: [0x49,0x10,0xbe,0xf9]
.code32
stlcx [%a1], -2

# CHECK-INST: stlcx [%a1], -1
# CHECK: encoding: [0x49,0x10,0xbf,0xf9]
.code32
stlcx [%a1], -1

# CHECK-INST: stlcx [%a1], 0
# CHECK: encoding: [0x49,0x10,0x80,0x09]
.code32
stlcx [%a1], 0

# CHECK-INST: stlcx [%a1], 1
# CHECK: encoding: [0x49,0x10,0x81,0x09]
.code32
stlcx [%a1], 1

# CHECK-INST: stlcx [%a1], 510
# CHECK: encoding: [0x49,0x10,0xbe,0x79]
.code32
stlcx [%a1], 510

# CHECK-INST: stlcx [%a1], 511
# CHECK: encoding: [0x49,0x10,0xbf,0x79]
.code32
stlcx [%a1], 511

# CHECK-INST: stlcx [%a14], -512
# CHECK: encoding: [0x49,0xe0,0x80,0x89]
.code32
stlcx [%a14], -512

# CHECK-INST: stlcx [%a14], -511
# CHECK: encoding: [0x49,0xe0,0x81,0x89]
.code32
stlcx [%a14], -511

# CHECK-INST: stlcx [%a14], -2
# CHECK: encoding: [0x49,0xe0,0xbe,0xf9]
.code32
stlcx [%a14], -2

# CHECK-INST: stlcx [%a14], -1
# CHECK: encoding: [0x49,0xe0,0xbf,0xf9]
.code32
stlcx [%a14], -1

# CHECK-INST: stlcx [%a14], 0
# CHECK: encoding: [0x49,0xe0,0x80,0x09]
.code32
stlcx [%a14], 0

# CHECK-INST: stlcx [%a14], 1
# CHECK: encoding: [0x49,0xe0,0x81,0x09]
.code32
stlcx [%a14], 1

# CHECK-INST: stlcx [%a14], 510
# CHECK: encoding: [0x49,0xe0,0xbe,0x79]
.code32
stlcx [%a14], 510

# CHECK-INST: stlcx [%a14], 511
# CHECK: encoding: [0x49,0xe0,0xbf,0x79]
.code32
stlcx [%a14], 511

# CHECK-INST: stlcx [%a15], -512
# CHECK: encoding: [0x49,0xf0,0x80,0x89]
.code32
stlcx [%a15], -512

# CHECK-INST: stlcx [%a15], -511
# CHECK: encoding: [0x49,0xf0,0x81,0x89]
.code32
stlcx [%a15], -511

# CHECK-INST: stlcx [%a15], -2
# CHECK: encoding: [0x49,0xf0,0xbe,0xf9]
.code32
stlcx [%a15], -2

# CHECK-INST: stlcx [%a15], -1
# CHECK: encoding: [0x49,0xf0,0xbf,0xf9]
.code32
stlcx [%a15], -1

# CHECK-INST: stlcx [%a15], 0
# CHECK: encoding: [0x49,0xf0,0x80,0x09]
.code32
stlcx [%a15], 0

# CHECK-INST: stlcx [%a15], 1
# CHECK: encoding: [0x49,0xf0,0x81,0x09]
.code32
stlcx [%a15], 1

# CHECK-INST: stlcx [%a15], 510
# CHECK: encoding: [0x49,0xf0,0xbe,0x79]
.code32
stlcx [%a15], 510

# CHECK-INST: stlcx [%a15], 511
# CHECK: encoding: [0x49,0xf0,0xbf,0x79]
.code32
stlcx [%a15], 511