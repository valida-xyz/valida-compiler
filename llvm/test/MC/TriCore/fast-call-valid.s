# RUN: llvm-mc %s -triple=tricore -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK,CHECK-INST %s

# CHECK-INST: fcall -16777216
# CHECK: encoding: [0x61,0x80,0x00,0x00]
.code32
fcall -16777216

# CHECK-INST: fcall -16777214
# CHECK: encoding: [0x61,0x80,0x01,0x00]
.code32
fcall -16777214

# CHECK-INST: fcall -4
# CHECK: encoding: [0x61,0xff,0xfe,0xff]
.code32
fcall -4

# CHECK-INST: fcall -2
# CHECK: encoding: [0x61,0xff,0xff,0xff]
.code32
fcall -2

# CHECK-INST: fcall 0
# CHECK: encoding: [0x61,0x00,0x00,0x00]
.code32
fcall 0

# CHECK-INST: fcall 2
# CHECK: encoding: [0x61,0x00,0x01,0x00]
.code32
fcall 2

# CHECK-INST: fcall 16777212
# CHECK: encoding: [0x61,0x7f,0xfe,0xff]
.code32
fcall 16777212

# CHECK-INST: fcall 16777214
# CHECK: encoding: [0x61,0x7f,0xff,0xff]
.code32
fcall 16777214

# CHECK-INST: fcalla 2
# CHECK: encoding: [0xe1,0x00,0x01,0x00]
.code32
fcalla 2

# CHECK-INST: fcalla 4
# CHECK: encoding: [0xe1,0x00,0x02,0x00]
.code32
fcalla 4

# CHECK-INST: fcalla 8
# CHECK: encoding: [0xe1,0x00,0x04,0x00]
.code32
fcalla 8

# CHECK-INST: fcalla 16
# CHECK: encoding: [0xe1,0x00,0x08,0x00]
.code32
fcalla 16

# CHECK-INST: fcalla 32
# CHECK: encoding: [0xe1,0x00,0x10,0x00]
.code32
fcalla 32

# CHECK-INST: fcalla 64
# CHECK: encoding: [0xe1,0x00,0x20,0x00]
.code32
fcalla 64

# CHECK-INST: fcalla 128
# CHECK: encoding: [0xe1,0x00,0x40,0x00]
.code32
fcalla 128

# CHECK-INST: fcalla 256
# CHECK: encoding: [0xe1,0x00,0x80,0x00]
.code32
fcalla 256

# CHECK-INST: fcalla 512
# CHECK: encoding: [0xe1,0x00,0x00,0x01]
.code32
fcalla 512

# CHECK-INST: fcalla 1024
# CHECK: encoding: [0xe1,0x00,0x00,0x02]
.code32
fcalla 1024

# CHECK-INST: fcalla 2048
# CHECK: encoding: [0xe1,0x00,0x00,0x04]
.code32
fcalla 2048

# CHECK-INST: fcalla 4096
# CHECK: encoding: [0xe1,0x00,0x00,0x08]
.code32
fcalla 4096

# CHECK-INST: fcalla 8192
# CHECK: encoding: [0xe1,0x00,0x00,0x10]
.code32
fcalla 8192

# CHECK-INST: fcalla 16384
# CHECK: encoding: [0xe1,0x00,0x00,0x20]
.code32
fcalla 16384

# CHECK-INST: fcalla 32768
# CHECK: encoding: [0xe1,0x00,0x00,0x40]
.code32
fcalla 32768

# CHECK-INST: fcalla 65536
# CHECK: encoding: [0xe1,0x00,0x00,0x80]
.code32
fcalla 65536

# CHECK-INST: fcalla 131072
# CHECK: encoding: [0xe1,0x01,0x00,0x00]
.code32
fcalla 131072

# CHECK-INST: fcalla 262144
# CHECK: encoding: [0xe1,0x02,0x00,0x00]
.code32
fcalla 262144

# CHECK-INST: fcalla 524288
# CHECK: encoding: [0xe1,0x04,0x00,0x00]
.code32
fcalla 524288

# CHECK-INST: fcalla 1048576
# CHECK: encoding: [0xe1,0x08,0x00,0x00]
.code32
fcalla 1048576

# CHECK-INST: fcalla 268435456
# CHECK: encoding: [0xe1,0x10,0x00,0x00]
.code32
fcalla 268435456

# CHECK-INST: fcalla 536870912
# CHECK: encoding: [0xe1,0x20,0x00,0x00]
.code32
fcalla 536870912

# CHECK-INST: fcalla 1073741824
# CHECK: encoding: [0xe1,0x40,0x00,0x00]
.code32
fcalla 1073741824

# CHECK-INST: fcalla 2147483648
# CHECK: encoding: [0xe1,0x80,0x00,0x00]
.code32
fcalla 2147483648

# CHECK-INST: fcalla 4028628990
# CHECK: encoding: [0xe1,0xff,0xff,0xff]
.code32
fcalla 4028628990

# CHECK-INST: fcalli %a0
# CHECK: encoding: [0x2d,0x00,0x10,0x00]
fcalli %a0

# CHECK-INST: fcalli %a1
# CHECK: encoding: [0x2d,0x01,0x10,0x00]
fcalli %a1

# CHECK-INST: fcalli %a14
# CHECK: encoding: [0x2d,0x0e,0x10,0x00]
fcalli %a14

# CHECK-INST: fcalli %a15
# CHECK: encoding: [0x2d,0x0f,0x10,0x00]
fcalli %a15

# CHECK-INST: fret
# CHECK: encoding: [0x00,0x70]
.code16
fret 

# CHECK-INST: fret
# CHECK: encoding: [0x0d,0x00,0xc0,0x00]
.code32
fret
