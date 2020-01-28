# RUN: llvm-mc %s -triple=tricore -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK,CHECK-INST %s


# CHECK-INST: syscall 0
# CHECK: encoding: [0xad,0x00,0x80,0x00]
.code32
syscall 0

# CHECK-INST: syscall 1
# CHECK: encoding: [0xad,0x10,0x80,0x00]
.code32
syscall 1

# CHECK-INST: syscall 510
# CHECK: encoding: [0xad,0xe0,0x9f,0x00]
.code32
syscall 510

# CHECK-INST: syscall 511
# CHECK: encoding: [0xad,0xf0,0x9f,0x00]
.code32
syscall 511

# CHECK-INST: dsync
# CHECK: encoding: [0x0d,0x00,0x80,0x04]
.code32
dsync

# CHECK-INST: isync
# CHECK: encoding: [0x0d,0x00,0xc0,0x04]
.code32
isync

# CHECK-INST: disable
# CHECK: encoding: [0x0d,0x00,0x40,0x03]
.code32
disable

# CHECK-INST: disable %d0
# CHECK: encoding: [0x0d,0x00,0xc0,0x03]
.code32
disable %d0

# CHECK-INST: disable %d1
# CHECK: encoding: [0x0d,0x01,0xc0,0x03]
.code32
disable %d1

# CHECK-INST: disable %d14
# CHECK: encoding: [0x0d,0x0e,0xc0,0x03]
.code32
disable %d14

# CHECK-INST: disable %d15
# CHECK: encoding: [0x0d,0x0f,0xc0,0x03]
.code32
disable %d15

# CHECK-INST: enable
# CHECK: encoding: [0x0d,0x00,0x00,0x03]
.code32
enable

# CHECK-INST: trapsv
# CHECK: encoding: [0x0d,0x00,0x40,0x05]
.code32
trapsv

# CHECK-INST: trapv
# CHECK: encoding: [0x0d,0x00,0x00,0x05]
.code32
trapv

# CHECK-INST: nop
# CHECK: encoding: [0x00,0x00]
.code16
nop

# CHECK-INST: nop
# CHECK: encoding: [0x0d,0x00,0x00,0x00]
.code32
nop

# CHECK-INST: restore %d0
# CHECK: encoding: [0x0d,0x00,0x80,0x03]
.code32
restore %d0

# CHECK-INST: restore %d1
# CHECK: encoding: [0x0d,0x01,0x80,0x03]
.code32
restore %d1

# CHECK-INST: restore %d14
# CHECK: encoding: [0x0d,0x0e,0x80,0x03]
.code32
restore %d14

# CHECK-INST: restore %d15
# CHECK: encoding: [0x0d,0x0f,0x80,0x03]
.code32
restore %d15

# CHECK-INST: wait
# CHECK: encoding: [0x0d,0x00,0x80,0x05]
.code32
wait

# CHECK-INST: debug
# CHECK: encoding: [0x00,0xa0]
.code16
debug

# CHECK-INST: debug
# CHECK: encoding: [0x0d,0x00,0x00,0x01]
.code32
debug

# CHECK-INST: rfm
# CHECK: encoding: [0x0d,0x00,0x40,0x01]
.code32
rfm

# CHECK-INST: rstv
# CHECK: encoding: [0x2f,0x00,0x00,0x00]
.code32
rstv

# CHECK-INST: updfl %d0
# CHECK: encoding: [0x4b,0x00,0xc1,0x00]
.code32
updfl %d0

# CHECK-INST: updfl %d1
# CHECK: encoding: [0x4b,0x01,0xc1,0x00]
.code32
updfl %d1

# CHECK-INST: updfl %d14
# CHECK: encoding: [0x4b,0x0e,0xc1,0x00]
.code32
updfl %d14

# CHECK-INST: updfl %d15
# CHECK: encoding: [0x4b,0x0f,0xc1,0x00]
.code32
updfl %d15

# CHECK-INST: mfcr %d0, 0
# CHECK: encoding: [0x4d,0x00,0x00,0x00]
.code32
mfcr %d0, 0

# CHECK-INST: mfcr %d0, 4
# CHECK: encoding: [0x4d,0x40,0x00,0x00]
.code32
mfcr %d0, 4

# CHECK-INST: mfcr %d0, 65528
# CHECK: encoding: [0x4d,0x80,0xff,0x0f]
.code32
mfcr %d0, 65528

# CHECK-INST: mfcr %d0, 65532
# CHECK: encoding: [0x4d,0xc0,0xff,0x0f]
.code32
mfcr %d0, 65532

# CHECK-INST: mfcr %d1, 0
# CHECK: encoding: [0x4d,0x00,0x00,0x10]
.code32
mfcr %d1, 0

# CHECK-INST: mfcr %d1, 4
# CHECK: encoding: [0x4d,0x40,0x00,0x10]
.code32
mfcr %d1, 4

# CHECK-INST: mfcr %d1, 65528
# CHECK: encoding: [0x4d,0x80,0xff,0x1f]
.code32
mfcr %d1, 65528

# CHECK-INST: mfcr %d1, 65532
# CHECK: encoding: [0x4d,0xc0,0xff,0x1f]
.code32
mfcr %d1, 65532

# CHECK-INST: mfcr %d14, 0
# CHECK: encoding: [0x4d,0x00,0x00,0xe0]
.code32
mfcr %d14, 0

# CHECK-INST: mfcr %d14, 4
# CHECK: encoding: [0x4d,0x40,0x00,0xe0]
.code32
mfcr %d14, 4

# CHECK-INST: mfcr %d14, 65528
# CHECK: encoding: [0x4d,0x80,0xff,0xef]
.code32
mfcr %d14, 65528

# CHECK-INST: mfcr %d14, 65532
# CHECK: encoding: [0x4d,0xc0,0xff,0xef]
.code32
mfcr %d14, 65532

# CHECK-INST: mfcr %d15, 0
# CHECK: encoding: [0x4d,0x00,0x00,0xf0]
.code32
mfcr %d15, 0

# CHECK-INST: mfcr %d15, 4
# CHECK: encoding: [0x4d,0x40,0x00,0xf0]
.code32
mfcr %d15, 4

# CHECK-INST: mfcr %d15, 65528
# CHECK: encoding: [0x4d,0x80,0xff,0xff]
.code32
mfcr %d15, 65528

# CHECK-INST: mfcr %d15, 65532
# CHECK: encoding: [0x4d,0xc0,0xff,0xff]
.code32
mfcr %d15, 65532

# CHECK-INST: mfcr %d0, $psw
# CHECK: encoding: [0x4d,0x40,0xe0,0x0f]
.code32
mfcr %d0, $psw

# CHECK-INST: mfcr %d0, $psw
# CHECK: encoding: [0x4d,0x40,0xe0,0x0f]
.code32
mfcr %d0, 0xFE04

# CHECK-INST: mtcr 0, %d0
# CHECK: encoding: [0xcd,0x00,0x00,0x00]
.code32
mtcr 0, %d0

# CHECK-INST: mtcr 0, %d1
# CHECK: encoding: [0xcd,0x01,0x00,0x00]
.code32
mtcr 0, %d1

# CHECK-INST: mtcr 0, %d14
# CHECK: encoding: [0xcd,0x0e,0x00,0x00]
.code32
mtcr 0, %d14

# CHECK-INST: mtcr 0, %d15
# CHECK: encoding: [0xcd,0x0f,0x00,0x00]
.code32
mtcr 0, %d15

# CHECK-INST: mtcr 4, %d0
# CHECK: encoding: [0xcd,0x40,0x00,0x00]
.code32
mtcr 4, %d0

# CHECK-INST: mtcr 4, %d1
# CHECK: encoding: [0xcd,0x41,0x00,0x00]
.code32
mtcr 4, %d1

# CHECK-INST: mtcr 4, %d14
# CHECK: encoding: [0xcd,0x4e,0x00,0x00]
.code32
mtcr 4, %d14

# CHECK-INST: mtcr 4, %d15
# CHECK: encoding: [0xcd,0x4f,0x00,0x00]
.code32
mtcr 4, %d15

# CHECK-INST: mtcr 65528, %d0
# CHECK: encoding: [0xcd,0x80,0xff,0x0f]
.code32
mtcr 65528, %d0

# CHECK-INST: mtcr 65528, %d1
# CHECK: encoding: [0xcd,0x81,0xff,0x0f]
.code32
mtcr 65528, %d1

# CHECK-INST: mtcr 65528, %d14
# CHECK: encoding: [0xcd,0x8e,0xff,0x0f]
.code32
mtcr 65528, %d14

# CHECK-INST: mtcr 65528, %d15
# CHECK: encoding: [0xcd,0x8f,0xff,0x0f]
.code32
mtcr 65528, %d15

# CHECK-INST: mtcr 65532, %d0
# CHECK: encoding: [0xcd,0xc0,0xff,0x0f]
.code32
mtcr 65532, %d0

# CHECK-INST: mtcr 65532, %d1
# CHECK: encoding: [0xcd,0xc1,0xff,0x0f]
.code32
mtcr 65532, %d1

# CHECK-INST: mtcr 65532, %d14
# CHECK: encoding: [0xcd,0xce,0xff,0x0f]
.code32
mtcr 65532, %d14

# CHECK-INST: mtcr 65532, %d15
# CHECK: encoding: [0xcd,0xcf,0xff,0x0f]
.code32
mtcr 65532, %d15

# CHECK-INST: mtcr $psw, %d0
# CHECK: encoding: [0xcd,0x40,0xe0,0x0f]
.code32
mtcr $psw, %d0

# CHECK-INST: mtcr $psw, %d0
# CHECK: encoding: [0xcd,0x40,0xe0,0x0f]
.code32
mtcr 0xfe04, %d0
