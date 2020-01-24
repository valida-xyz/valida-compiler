# RUN: llvm-mc %s -triple=tricore -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK,CHECK-INST %s
# RUN: llvm-mc -filetype=obj -triple=tricore < %s \
# RUN:     | llvm-objdump -d - | FileCheck -check-prefix=CHECK-INST %s


# CHECK-INST: jeq %d15, %d0, 0
# CHECK: encoding: [0x3e,0x00]
.code16
jeq %d15, %d0, 0

# CHECK-INST: jeq %d15, %d0, 2
# CHECK: encoding: [0x3e,0x01]
.code16
jeq %d15, %d0, 2

# CHECK-INST: jeq %d15, %d0, 28
# CHECK: encoding: [0x3e,0x0e]
.code16
jeq %d15, %d0, 28

# CHECK-INST: jeq %d15, %d0, 30
# CHECK: encoding: [0x3e,0x0f]
.code16
jeq %d15, %d0, 30

# CHECK-INST: jeq %d15, %d1, 0
# CHECK: encoding: [0x3e,0x10]
.code16
jeq %d15, %d1, 0

# CHECK-INST: jeq %d15, %d1, 2
# CHECK: encoding: [0x3e,0x11]
.code16
jeq %d15, %d1, 2

# CHECK-INST: jeq %d15, %d1, 28
# CHECK: encoding: [0x3e,0x1e]
.code16
jeq %d15, %d1, 28

# CHECK-INST: jeq %d15, %d1, 30
# CHECK: encoding: [0x3e,0x1f]
.code16
jeq %d15, %d1, 30

# CHECK-INST: jeq %d15, %d14, 0
# CHECK: encoding: [0x3e,0xe0]
.code16
jeq %d15, %d14, 0

# CHECK-INST: jeq %d15, %d14, 2
# CHECK: encoding: [0x3e,0xe1]
.code16
jeq %d15, %d14, 2

# CHECK-INST: jeq %d15, %d14, 28
# CHECK: encoding: [0x3e,0xee]
.code16
jeq %d15, %d14, 28

# CHECK-INST: jeq %d15, %d14, 30
# CHECK: encoding: [0x3e,0xef]
.code16
jeq %d15, %d14, 30

# CHECK-INST: jeq %d15, %d15, 0
# CHECK: encoding: [0x3e,0xf0]
.code16
jeq %d15, %d15, 0

# CHECK-INST: jeq %d15, %d15, 2
# CHECK: encoding: [0x3e,0xf1]
.code16
jeq %d15, %d15, 2

# CHECK-INST: jeq %d15, %d15, 28
# CHECK: encoding: [0x3e,0xfe]
.code16
jeq %d15, %d15, 28

# CHECK-INST: jeq %d15, %d15, 30
# CHECK: encoding: [0x3e,0xff]
.code16
jeq %d15, %d15, 30 

# CHECK-INST: jeq %d15, %d0, 32
# CHECK: encoding: [0xbe,0x00]
.code16
jeq %d15, %d0, 32

# CHECK-INST: jeq %d15, %d0, 34
# CHECK: encoding: [0xbe,0x01]
.code16
jeq %d15, %d0, 34

# CHECK-INST: jeq %d15, %d0, 60
# CHECK: encoding: [0xbe,0x0e]
.code16
jeq %d15, %d0, 60

# CHECK-INST: jeq %d15, %d0, 62
# CHECK: encoding: [0xbe,0x0f]
.code16
jeq %d15, %d0, 62

# CHECK-INST: jeq %d15, %d1, 32
# CHECK: encoding: [0xbe,0x10]
.code16
jeq %d15, %d1, 32

# CHECK-INST: jeq %d15, %d1, 34
# CHECK: encoding: [0xbe,0x11]
.code16
jeq %d15, %d1, 34

# CHECK-INST: jeq %d15, %d1, 60
# CHECK: encoding: [0xbe,0x1e]
.code16
jeq %d15, %d1, 60

# CHECK-INST: jeq %d15, %d1, 62
# CHECK: encoding: [0xbe,0x1f]
.code16
jeq %d15, %d1, 62

# CHECK-INST: jeq %d15, %d14, 32
# CHECK: encoding: [0xbe,0xe0]
.code16
jeq %d15, %d14, 32

# CHECK-INST: jeq %d15, %d14, 34
# CHECK: encoding: [0xbe,0xe1]
.code16
jeq %d15, %d14, 34

# CHECK-INST: jeq %d15, %d14, 60
# CHECK: encoding: [0xbe,0xee]
.code16
jeq %d15, %d14, 60

# CHECK-INST: jeq %d15, %d14, 62
# CHECK: encoding: [0xbe,0xef]
.code16
jeq %d15, %d14, 62

# CHECK-INST: jeq %d15, %d15, 32
# CHECK: encoding: [0xbe,0xf0]
.code16
jeq %d15, %d15, 32

# CHECK-INST: jeq %d15, %d15, 34
# CHECK: encoding: [0xbe,0xf1]
.code16
jeq %d15, %d15, 34

# CHECK-INST: jeq %d15, %d15, 60
# CHECK: encoding: [0xbe,0xfe]
.code16
jeq %d15, %d15, 60

# CHECK-INST: jeq %d15, %d15, 62
# CHECK: encoding: [0xbe,0xff]
.code16
jeq %d15, %d15, 62
  
# CHECK-INST: jeq %d15, -8, 0
# CHECK: encoding: [0x1e,0x80]
.code16
jeq %d15, -8, 0

# CHECK-INST: jeq %d15, -8, 2
# CHECK: encoding: [0x1e,0x81]
.code16
jeq %d15, -8, 2

# CHECK-INST: jeq %d15, -8, 28
# CHECK: encoding: [0x1e,0x8e]
.code16
jeq %d15, -8, 28

# CHECK-INST: jeq %d15, -8, 30
# CHECK: encoding: [0x1e,0x8f]
.code16
jeq %d15, -8, 30

# CHECK-INST: jeq %d15, -1, 0
# CHECK: encoding: [0x1e,0xf0]
.code16
jeq %d15, -1, 0

# CHECK-INST: jeq %d15, -1, 2
# CHECK: encoding: [0x1e,0xf1]
.code16
jeq %d15, -1, 2

# CHECK-INST: jeq %d15, -1, 28
# CHECK: encoding: [0x1e,0xfe]
.code16
jeq %d15, -1, 28

# CHECK-INST: jeq %d15, -1, 30
# CHECK: encoding: [0x1e,0xff]
.code16
jeq %d15, -1, 30

# CHECK-INST: jeq %d15, 0, 0
# CHECK: encoding: [0x1e,0x00]
.code16
jeq %d15, 0, 0

# CHECK-INST: jeq %d15, 0, 2
# CHECK: encoding: [0x1e,0x01]
.code16
jeq %d15, 0, 2

# CHECK-INST: jeq %d15, 0, 28
# CHECK: encoding: [0x1e,0x0e]
.code16
jeq %d15, 0, 28

# CHECK-INST: jeq %d15, 0, 30
# CHECK: encoding: [0x1e,0x0f]
.code16
jeq %d15, 0, 30

# CHECK-INST: jeq %d15, 1, 0
# CHECK: encoding: [0x1e,0x10]
.code16
jeq %d15, 1, 0

# CHECK-INST: jeq %d15, 1, 2
# CHECK: encoding: [0x1e,0x11]
.code16
jeq %d15, 1, 2

# CHECK-INST: jeq %d15, 1, 28
# CHECK: encoding: [0x1e,0x1e]
.code16
jeq %d15, 1, 28

# CHECK-INST: jeq %d15, 1, 30
# CHECK: encoding: [0x1e,0x1f]
.code16
jeq %d15, 1, 30

# CHECK-INST: jeq %d15, 7, 0
# CHECK: encoding: [0x1e,0x70]
.code16
jeq %d15, 7, 0

# CHECK-INST: jeq %d15, 7, 2
# CHECK: encoding: [0x1e,0x71]
.code16
jeq %d15, 7, 2

# CHECK-INST: jeq %d15, 7, 28
# CHECK: encoding: [0x1e,0x7e]
.code16
jeq %d15, 7, 28

# CHECK-INST: jeq %d15, 7, 30
# CHECK: encoding: [0x1e,0x7f]
.code16
jeq %d15, 7, 30

# CHECK-INST: jeq %d15, -8, 32
# CHECK: encoding: [0x9e,0x80]
.code16
jeq %d15, -8, 32

# CHECK-INST: jeq %d15, -8, 34
# CHECK: encoding: [0x9e,0x81]
.code16
jeq %d15, -8, 34

# CHECK-INST: jeq %d15, -8, 60
# CHECK: encoding: [0x9e,0x8e]
.code16
jeq %d15, -8, 60

# CHECK-INST: jeq %d15, -8, 62
# CHECK: encoding: [0x9e,0x8f]
.code16
jeq %d15, -8, 62

# CHECK-INST: jeq %d15, -1, 32
# CHECK: encoding: [0x9e,0xf0]
.code16
jeq %d15, -1, 32

# CHECK-INST: jeq %d15, -1, 34
# CHECK: encoding: [0x9e,0xf1]
.code16
jeq %d15, -1, 34

# CHECK-INST: jeq %d15, -1, 60
# CHECK: encoding: [0x9e,0xfe]
.code16
jeq %d15, -1, 60

# CHECK-INST: jeq %d15, -1, 62
# CHECK: encoding: [0x9e,0xff]
.code16
jeq %d15, -1, 62

# CHECK-INST: jeq %d15, 0, 32
# CHECK: encoding: [0x9e,0x00]
.code16
jeq %d15, 0, 32

# CHECK-INST: jeq %d15, 0, 34
# CHECK: encoding: [0x9e,0x01]
.code16
jeq %d15, 0, 34

# CHECK-INST: jeq %d15, 0, 60
# CHECK: encoding: [0x9e,0x0e]
.code16
jeq %d15, 0, 60

# CHECK-INST: jeq %d15, 0, 62
# CHECK: encoding: [0x9e,0x0f]
.code16
jeq %d15, 0, 62

# CHECK-INST: jeq %d15, 1, 32
# CHECK: encoding: [0x9e,0x10]
.code16
jeq %d15, 1, 32

# CHECK-INST: jeq %d15, 1, 34
# CHECK: encoding: [0x9e,0x11]
.code16
jeq %d15, 1, 34

# CHECK-INST: jeq %d15, 1, 60
# CHECK: encoding: [0x9e,0x1e]
.code16
jeq %d15, 1, 60

# CHECK-INST: jeq %d15, 1, 62
# CHECK: encoding: [0x9e,0x1f]
.code16
jeq %d15, 1, 62

# CHECK-INST: jeq %d15, 7, 32
# CHECK: encoding: [0x9e,0x70]
.code16
jeq %d15, 7, 32

# CHECK-INST: jeq %d15, 7, 34
# CHECK: encoding: [0x9e,0x71]
.code16
jeq %d15, 7, 34

# CHECK-INST: jeq %d15, 7, 60
# CHECK: encoding: [0x9e,0x7e]
.code16
jeq %d15, 7, 60

# CHECK-INST: jeq %d15, 7, 62
# CHECK: encoding: [0x9e,0x7f]
.code16
jeq %d15, 7, 62


# CHECK-INST: jeq %d0, %d0, 256
# CHECK: encoding: [0x5f,0x00,0x80,0x00]
.code32
jeq %d0, %d0, 256

# CHECK-INST: jeq %d0, %d0, 32512
# CHECK: encoding: [0x5f,0x00,0x80,0x3f]
.code32
jeq %d0, %d0, 32512

# CHECK-INST: jeq %d0, %d0, 16638
# CHECK: encoding: [0x5f,0x00,0x7f,0x20]
.code32
jeq %d0, %d0, 16638

# CHECK-INST: jeq %d0, %d0, 32766
# CHECK: encoding: [0x5f,0x00,0xff,0x3f]
.code32
jeq %d0, %d0, 32766

# CHECK-INST: jeq %d0, %d1, 256
# CHECK: encoding: [0x5f,0x10,0x80,0x00]
.code32
jeq %d0, %d1, 256

# CHECK-INST: jeq %d0, %d1, 32512
# CHECK: encoding: [0x5f,0x10,0x80,0x3f]
.code32
jeq %d0, %d1, 32512

# CHECK-INST: jeq %d0, %d1, 16638
# CHECK: encoding: [0x5f,0x10,0x7f,0x20]
.code32
jeq %d0, %d1, 16638

# CHECK-INST: jeq %d0, %d1, 32766
# CHECK: encoding: [0x5f,0x10,0xff,0x3f]
.code32
jeq %d0, %d1, 32766

# CHECK-INST: jeq %d0, %d14, 256
# CHECK: encoding: [0x5f,0xe0,0x80,0x00]
.code32
jeq %d0, %d14, 256

# CHECK-INST: jeq %d0, %d14, 32512
# CHECK: encoding: [0x5f,0xe0,0x80,0x3f]
.code32
jeq %d0, %d14, 32512

# CHECK-INST: jeq %d0, %d14, 16638
# CHECK: encoding: [0x5f,0xe0,0x7f,0x20]
.code32
jeq %d0, %d14, 16638

# CHECK-INST: jeq %d0, %d14, 32766
# CHECK: encoding: [0x5f,0xe0,0xff,0x3f]
.code32
jeq %d0, %d14, 32766

# CHECK-INST: jeq %d0, %d15, 256
# CHECK: encoding: [0x5f,0xf0,0x80,0x00]
.code32
jeq %d0, %d15, 256

# CHECK-INST: jeq %d0, %d15, 32512
# CHECK: encoding: [0x5f,0xf0,0x80,0x3f]
.code32
jeq %d0, %d15, 32512

# CHECK-INST: jeq %d0, %d15, 16638
# CHECK: encoding: [0x5f,0xf0,0x7f,0x20]
.code32
jeq %d0, %d15, 16638

# CHECK-INST: jeq %d0, %d15, 32766
# CHECK: encoding: [0x5f,0xf0,0xff,0x3f]
.code32
jeq %d0, %d15, 32766

# CHECK-INST: jeq %d1, %d0, 256
# CHECK: encoding: [0x5f,0x01,0x80,0x00]
.code32
jeq %d1, %d0, 256

# CHECK-INST: jeq %d1, %d0, 32512
# CHECK: encoding: [0x5f,0x01,0x80,0x3f]
.code32
jeq %d1, %d0, 32512

# CHECK-INST: jeq %d1, %d0, 16638
# CHECK: encoding: [0x5f,0x01,0x7f,0x20]
.code32
jeq %d1, %d0, 16638

# CHECK-INST: jeq %d1, %d0, 32766
# CHECK: encoding: [0x5f,0x01,0xff,0x3f]
.code32
jeq %d1, %d0, 32766

# CHECK-INST: jeq %d1, %d1, 256
# CHECK: encoding: [0x5f,0x11,0x80,0x00]
.code32
jeq %d1, %d1, 256

# CHECK-INST: jeq %d1, %d1, 32512
# CHECK: encoding: [0x5f,0x11,0x80,0x3f]
.code32
jeq %d1, %d1, 32512

# CHECK-INST: jeq %d1, %d1, 16638
# CHECK: encoding: [0x5f,0x11,0x7f,0x20]
.code32
jeq %d1, %d1, 16638

# CHECK-INST: jeq %d1, %d1, 32766
# CHECK: encoding: [0x5f,0x11,0xff,0x3f]
.code32
jeq %d1, %d1, 32766

# CHECK-INST: jeq %d1, %d14, 256
# CHECK: encoding: [0x5f,0xe1,0x80,0x00]
.code32
jeq %d1, %d14, 256

# CHECK-INST: jeq %d1, %d14, 32512
# CHECK: encoding: [0x5f,0xe1,0x80,0x3f]
.code32
jeq %d1, %d14, 32512

# CHECK-INST: jeq %d1, %d14, 16638
# CHECK: encoding: [0x5f,0xe1,0x7f,0x20]
.code32
jeq %d1, %d14, 16638

# CHECK-INST: jeq %d1, %d14, 32766
# CHECK: encoding: [0x5f,0xe1,0xff,0x3f]
.code32
jeq %d1, %d14, 32766

# CHECK-INST: jeq %d1, %d15, 256
# CHECK: encoding: [0x5f,0xf1,0x80,0x00]
.code32
jeq %d1, %d15, 256

# CHECK-INST: jeq %d1, %d15, 32512
# CHECK: encoding: [0x5f,0xf1,0x80,0x3f]
.code32
jeq %d1, %d15, 32512

# CHECK-INST: jeq %d1, %d15, 16638
# CHECK: encoding: [0x5f,0xf1,0x7f,0x20]
.code32
jeq %d1, %d15, 16638

# CHECK-INST: jeq %d1, %d15, 32766
# CHECK: encoding: [0x5f,0xf1,0xff,0x3f]
.code32
jeq %d1, %d15, 32766

# CHECK-INST: jeq %d14, %d0, 256
# CHECK: encoding: [0x5f,0x0e,0x80,0x00]
.code32
jeq %d14, %d0, 256

# CHECK-INST: jeq %d14, %d0, 32512
# CHECK: encoding: [0x5f,0x0e,0x80,0x3f]
.code32
jeq %d14, %d0, 32512

# CHECK-INST: jeq %d14, %d0, 16638
# CHECK: encoding: [0x5f,0x0e,0x7f,0x20]
.code32
jeq %d14, %d0, 16638

# CHECK-INST: jeq %d14, %d0, 32766
# CHECK: encoding: [0x5f,0x0e,0xff,0x3f]
.code32
jeq %d14, %d0, 32766

# CHECK-INST: jeq %d14, %d1, 256
# CHECK: encoding: [0x5f,0x1e,0x80,0x00]
.code32
jeq %d14, %d1, 256

# CHECK-INST: jeq %d14, %d1, 32512
# CHECK: encoding: [0x5f,0x1e,0x80,0x3f]
.code32
jeq %d14, %d1, 32512

# CHECK-INST: jeq %d14, %d1, 16638
# CHECK: encoding: [0x5f,0x1e,0x7f,0x20]
.code32
jeq %d14, %d1, 16638

# CHECK-INST: jeq %d14, %d1, 32766
# CHECK: encoding: [0x5f,0x1e,0xff,0x3f]
.code32
jeq %d14, %d1, 32766

# CHECK-INST: jeq %d14, %d14, 256
# CHECK: encoding: [0x5f,0xee,0x80,0x00]
.code32
jeq %d14, %d14, 256

# CHECK-INST: jeq %d14, %d14, 32512
# CHECK: encoding: [0x5f,0xee,0x80,0x3f]
.code32
jeq %d14, %d14, 32512

# CHECK-INST: jeq %d14, %d14, 16638
# CHECK: encoding: [0x5f,0xee,0x7f,0x20]
.code32
jeq %d14, %d14, 16638

# CHECK-INST: jeq %d14, %d14, 32766
# CHECK: encoding: [0x5f,0xee,0xff,0x3f]
.code32
jeq %d14, %d14, 32766

# CHECK-INST: jeq %d14, %d15, 256
# CHECK: encoding: [0x5f,0xfe,0x80,0x00]
.code32
jeq %d14, %d15, 256

# CHECK-INST: jeq %d14, %d15, 32512
# CHECK: encoding: [0x5f,0xfe,0x80,0x3f]
.code32
jeq %d14, %d15, 32512

# CHECK-INST: jeq %d14, %d15, 16638
# CHECK: encoding: [0x5f,0xfe,0x7f,0x20]
.code32
jeq %d14, %d15, 16638

# CHECK-INST: jeq %d14, %d15, 32766
# CHECK: encoding: [0x5f,0xfe,0xff,0x3f]
.code32
jeq %d14, %d15, 32766

# CHECK-INST: jeq %d15, %d0, 256
# CHECK: encoding: [0x5f,0x0f,0x80,0x00]
.code32
jeq %d15, %d0, 256

# CHECK-INST: jeq %d15, %d0, 32512
# CHECK: encoding: [0x5f,0x0f,0x80,0x3f]
.code32
jeq %d15, %d0, 32512

# CHECK-INST: jeq %d15, %d0, 16638
# CHECK: encoding: [0x5f,0x0f,0x7f,0x20]
.code32
jeq %d15, %d0, 16638

# CHECK-INST: jeq %d15, %d0, 32766
# CHECK: encoding: [0x5f,0x0f,0xff,0x3f]
.code32
jeq %d15, %d0, 32766

# CHECK-INST: jeq %d15, %d1, 256
# CHECK: encoding: [0x5f,0x1f,0x80,0x00]
.code32
jeq %d15, %d1, 256

# CHECK-INST: jeq %d15, %d1, 32512
# CHECK: encoding: [0x5f,0x1f,0x80,0x3f]
.code32
jeq %d15, %d1, 32512

# CHECK-INST: jeq %d15, %d1, 16638
# CHECK: encoding: [0x5f,0x1f,0x7f,0x20]
.code32
jeq %d15, %d1, 16638

# CHECK-INST: jeq %d15, %d1, 32766
# CHECK: encoding: [0x5f,0x1f,0xff,0x3f]
.code32
jeq %d15, %d1, 32766

# CHECK-INST: jeq %d15, %d14, 256
# CHECK: encoding: [0x5f,0xef,0x80,0x00]
.code32
jeq %d15, %d14, 256

# CHECK-INST: jeq %d15, %d14, 32512
# CHECK: encoding: [0x5f,0xef,0x80,0x3f]
.code32
jeq %d15, %d14, 32512

# CHECK-INST: jeq %d15, %d14, 16638
# CHECK: encoding: [0x5f,0xef,0x7f,0x20]
.code32
jeq %d15, %d14, 16638

# CHECK-INST: jeq %d15, %d14, 32766
# CHECK: encoding: [0x5f,0xef,0xff,0x3f]
.code32
jeq %d15, %d14, 32766

# CHECK-INST: jeq %d15, %d15, 256
# CHECK: encoding: [0x5f,0xff,0x80,0x00]
.code32
jeq %d15, %d15, 256

# CHECK-INST: jeq %d15, %d15, 32512
# CHECK: encoding: [0x5f,0xff,0x80,0x3f]
.code32
jeq %d15, %d15, 32512

# CHECK-INST: jeq %d15, %d15, 16638
# CHECK: encoding: [0x5f,0xff,0x7f,0x20]
.code32
jeq %d15, %d15, 16638

# CHECK-INST: jeq %d15, %d15, 32766
# CHECK: encoding: [0x5f,0xff,0xff,0x3f]
.code32
jeq %d15, %d15, 32766
# CHECK-INST: jeq %d0, -8, 256
# CHECK: encoding: [0xdf,0x80,0x80,0x00]
.code32
jeq %d0, -8, 256

# CHECK-INST: jeq %d0, -8, 32512
# CHECK: encoding: [0xdf,0x80,0x80,0x3f]
.code32
jeq %d0, -8, 32512

# CHECK-INST: jeq %d0, -8, 16638
# CHECK: encoding: [0xdf,0x80,0x7f,0x20]
.code32
jeq %d0, -8, 16638

# CHECK-INST: jeq %d0, -8, 32766
# CHECK: encoding: [0xdf,0x80,0xff,0x3f]
.code32
jeq %d0, -8, 32766

# CHECK-INST: jeq %d0, -1, 256
# CHECK: encoding: [0xdf,0xf0,0x80,0x00]
.code32
jeq %d0, -1, 256

# CHECK-INST: jeq %d0, -1, 32512
# CHECK: encoding: [0xdf,0xf0,0x80,0x3f]
.code32
jeq %d0, -1, 32512

# CHECK-INST: jeq %d0, -1, 16638
# CHECK: encoding: [0xdf,0xf0,0x7f,0x20]
.code32
jeq %d0, -1, 16638

# CHECK-INST: jeq %d0, -1, 32766
# CHECK: encoding: [0xdf,0xf0,0xff,0x3f]
.code32
jeq %d0, -1, 32766

# CHECK-INST: jeq %d0, 0, 256
# CHECK: encoding: [0xdf,0x00,0x80,0x00]
.code32
jeq %d0, 0, 256

# CHECK-INST: jeq %d0, 0, 32512
# CHECK: encoding: [0xdf,0x00,0x80,0x3f]
.code32
jeq %d0, 0, 32512

# CHECK-INST: jeq %d0, 0, 16638
# CHECK: encoding: [0xdf,0x00,0x7f,0x20]
.code32
jeq %d0, 0, 16638

# CHECK-INST: jeq %d0, 0, 32766
# CHECK: encoding: [0xdf,0x00,0xff,0x3f]
.code32
jeq %d0, 0, 32766

# CHECK-INST: jeq %d0, 1, 256
# CHECK: encoding: [0xdf,0x10,0x80,0x00]
.code32
jeq %d0, 1, 256

# CHECK-INST: jeq %d0, 1, 32512
# CHECK: encoding: [0xdf,0x10,0x80,0x3f]
.code32
jeq %d0, 1, 32512

# CHECK-INST: jeq %d0, 1, 16638
# CHECK: encoding: [0xdf,0x10,0x7f,0x20]
.code32
jeq %d0, 1, 16638

# CHECK-INST: jeq %d0, 1, 32766
# CHECK: encoding: [0xdf,0x10,0xff,0x3f]
.code32
jeq %d0, 1, 32766

# CHECK-INST: jeq %d0, 7, 256
# CHECK: encoding: [0xdf,0x70,0x80,0x00]
.code32
jeq %d0, 7, 256

# CHECK-INST: jeq %d0, 7, 32512
# CHECK: encoding: [0xdf,0x70,0x80,0x3f]
.code32
jeq %d0, 7, 32512

# CHECK-INST: jeq %d0, 7, 16638
# CHECK: encoding: [0xdf,0x70,0x7f,0x20]
.code32
jeq %d0, 7, 16638

# CHECK-INST: jeq %d0, 7, 32766
# CHECK: encoding: [0xdf,0x70,0xff,0x3f]
.code32
jeq %d0, 7, 32766

# CHECK-INST: jeq %d1, -8, 256
# CHECK: encoding: [0xdf,0x81,0x80,0x00]
.code32
jeq %d1, -8, 256

# CHECK-INST: jeq %d1, -8, 32512
# CHECK: encoding: [0xdf,0x81,0x80,0x3f]
.code32
jeq %d1, -8, 32512

# CHECK-INST: jeq %d1, -8, 16638
# CHECK: encoding: [0xdf,0x81,0x7f,0x20]
.code32
jeq %d1, -8, 16638

# CHECK-INST: jeq %d1, -8, 32766
# CHECK: encoding: [0xdf,0x81,0xff,0x3f]
.code32
jeq %d1, -8, 32766

# CHECK-INST: jeq %d1, -1, 256
# CHECK: encoding: [0xdf,0xf1,0x80,0x00]
.code32
jeq %d1, -1, 256

# CHECK-INST: jeq %d1, -1, 32512
# CHECK: encoding: [0xdf,0xf1,0x80,0x3f]
.code32
jeq %d1, -1, 32512

# CHECK-INST: jeq %d1, -1, 16638
# CHECK: encoding: [0xdf,0xf1,0x7f,0x20]
.code32
jeq %d1, -1, 16638

# CHECK-INST: jeq %d1, -1, 32766
# CHECK: encoding: [0xdf,0xf1,0xff,0x3f]
.code32
jeq %d1, -1, 32766

# CHECK-INST: jeq %d1, 0, 256
# CHECK: encoding: [0xdf,0x01,0x80,0x00]
.code32
jeq %d1, 0, 256

# CHECK-INST: jeq %d1, 0, 32512
# CHECK: encoding: [0xdf,0x01,0x80,0x3f]
.code32
jeq %d1, 0, 32512

# CHECK-INST: jeq %d1, 0, 16638
# CHECK: encoding: [0xdf,0x01,0x7f,0x20]
.code32
jeq %d1, 0, 16638

# CHECK-INST: jeq %d1, 0, 32766
# CHECK: encoding: [0xdf,0x01,0xff,0x3f]
.code32
jeq %d1, 0, 32766

# CHECK-INST: jeq %d1, 1, 256
# CHECK: encoding: [0xdf,0x11,0x80,0x00]
.code32
jeq %d1, 1, 256

# CHECK-INST: jeq %d1, 1, 32512
# CHECK: encoding: [0xdf,0x11,0x80,0x3f]
.code32
jeq %d1, 1, 32512

# CHECK-INST: jeq %d1, 1, 16638
# CHECK: encoding: [0xdf,0x11,0x7f,0x20]
.code32
jeq %d1, 1, 16638

# CHECK-INST: jeq %d1, 1, 32766
# CHECK: encoding: [0xdf,0x11,0xff,0x3f]
.code32
jeq %d1, 1, 32766

# CHECK-INST: jeq %d1, 7, 256
# CHECK: encoding: [0xdf,0x71,0x80,0x00]
.code32
jeq %d1, 7, 256

# CHECK-INST: jeq %d1, 7, 32512
# CHECK: encoding: [0xdf,0x71,0x80,0x3f]
.code32
jeq %d1, 7, 32512

# CHECK-INST: jeq %d1, 7, 16638
# CHECK: encoding: [0xdf,0x71,0x7f,0x20]
.code32
jeq %d1, 7, 16638

# CHECK-INST: jeq %d1, 7, 32766
# CHECK: encoding: [0xdf,0x71,0xff,0x3f]
.code32
jeq %d1, 7, 32766

# CHECK-INST: jeq %d14, -8, 256
# CHECK: encoding: [0xdf,0x8e,0x80,0x00]
.code32
jeq %d14, -8, 256

# CHECK-INST: jeq %d14, -8, 32512
# CHECK: encoding: [0xdf,0x8e,0x80,0x3f]
.code32
jeq %d14, -8, 32512

# CHECK-INST: jeq %d14, -8, 16638
# CHECK: encoding: [0xdf,0x8e,0x7f,0x20]
.code32
jeq %d14, -8, 16638

# CHECK-INST: jeq %d14, -8, 32766
# CHECK: encoding: [0xdf,0x8e,0xff,0x3f]
.code32
jeq %d14, -8, 32766

# CHECK-INST: jeq %d14, -1, 256
# CHECK: encoding: [0xdf,0xfe,0x80,0x00]
.code32
jeq %d14, -1, 256

# CHECK-INST: jeq %d14, -1, 32512
# CHECK: encoding: [0xdf,0xfe,0x80,0x3f]
.code32
jeq %d14, -1, 32512

# CHECK-INST: jeq %d14, -1, 16638
# CHECK: encoding: [0xdf,0xfe,0x7f,0x20]
.code32
jeq %d14, -1, 16638

# CHECK-INST: jeq %d14, -1, 32766
# CHECK: encoding: [0xdf,0xfe,0xff,0x3f]
.code32
jeq %d14, -1, 32766

# CHECK-INST: jeq %d14, 0, 256
# CHECK: encoding: [0xdf,0x0e,0x80,0x00]
.code32
jeq %d14, 0, 256

# CHECK-INST: jeq %d14, 0, 32512
# CHECK: encoding: [0xdf,0x0e,0x80,0x3f]
.code32
jeq %d14, 0, 32512

# CHECK-INST: jeq %d14, 0, 16638
# CHECK: encoding: [0xdf,0x0e,0x7f,0x20]
.code32
jeq %d14, 0, 16638

# CHECK-INST: jeq %d14, 0, 32766
# CHECK: encoding: [0xdf,0x0e,0xff,0x3f]
.code32
jeq %d14, 0, 32766

# CHECK-INST: jeq %d14, 1, 256
# CHECK: encoding: [0xdf,0x1e,0x80,0x00]
.code32
jeq %d14, 1, 256

# CHECK-INST: jeq %d14, 1, 32512
# CHECK: encoding: [0xdf,0x1e,0x80,0x3f]
.code32
jeq %d14, 1, 32512

# CHECK-INST: jeq %d14, 1, 16638
# CHECK: encoding: [0xdf,0x1e,0x7f,0x20]
.code32
jeq %d14, 1, 16638

# CHECK-INST: jeq %d14, 1, 32766
# CHECK: encoding: [0xdf,0x1e,0xff,0x3f]
.code32
jeq %d14, 1, 32766

# CHECK-INST: jeq %d14, 7, 256
# CHECK: encoding: [0xdf,0x7e,0x80,0x00]
.code32
jeq %d14, 7, 256

# CHECK-INST: jeq %d14, 7, 32512
# CHECK: encoding: [0xdf,0x7e,0x80,0x3f]
.code32
jeq %d14, 7, 32512

# CHECK-INST: jeq %d14, 7, 16638
# CHECK: encoding: [0xdf,0x7e,0x7f,0x20]
.code32
jeq %d14, 7, 16638

# CHECK-INST: jeq %d14, 7, 32766
# CHECK: encoding: [0xdf,0x7e,0xff,0x3f]
.code32
jeq %d14, 7, 32766

# CHECK-INST: jeq %d15, -8, 256
# CHECK: encoding: [0xdf,0x8f,0x80,0x00]
.code32
jeq %d15, -8, 256

# CHECK-INST: jeq %d15, -8, 32512
# CHECK: encoding: [0xdf,0x8f,0x80,0x3f]
.code32
jeq %d15, -8, 32512

# CHECK-INST: jeq %d15, -8, 16638
# CHECK: encoding: [0xdf,0x8f,0x7f,0x20]
.code32
jeq %d15, -8, 16638

# CHECK-INST: jeq %d15, -8, 32766
# CHECK: encoding: [0xdf,0x8f,0xff,0x3f]
.code32
jeq %d15, -8, 32766

# CHECK-INST: jeq %d15, -1, 256
# CHECK: encoding: [0xdf,0xff,0x80,0x00]
.code32
jeq %d15, -1, 256

# CHECK-INST: jeq %d15, -1, 32512
# CHECK: encoding: [0xdf,0xff,0x80,0x3f]
.code32
jeq %d15, -1, 32512

# CHECK-INST: jeq %d15, -1, 16638
# CHECK: encoding: [0xdf,0xff,0x7f,0x20]
.code32
jeq %d15, -1, 16638

# CHECK-INST: jeq %d15, -1, 32766
# CHECK: encoding: [0xdf,0xff,0xff,0x3f]
.code32
jeq %d15, -1, 32766

# CHECK-INST: jeq %d15, 0, 256
# CHECK: encoding: [0xdf,0x0f,0x80,0x00]
.code32
jeq %d15, 0, 256

# CHECK-INST: jeq %d15, 0, 32512
# CHECK: encoding: [0xdf,0x0f,0x80,0x3f]
.code32
jeq %d15, 0, 32512

# CHECK-INST: jeq %d15, 0, 16638
# CHECK: encoding: [0xdf,0x0f,0x7f,0x20]
.code32
jeq %d15, 0, 16638

# CHECK-INST: jeq %d15, 0, 32766
# CHECK: encoding: [0xdf,0x0f,0xff,0x3f]
.code32
jeq %d15, 0, 32766

# CHECK-INST: jeq %d15, 1, 256
# CHECK: encoding: [0xdf,0x1f,0x80,0x00]
.code32
jeq %d15, 1, 256

# CHECK-INST: jeq %d15, 1, 32512
# CHECK: encoding: [0xdf,0x1f,0x80,0x3f]
.code32
jeq %d15, 1, 32512

# CHECK-INST: jeq %d15, 1, 16638
# CHECK: encoding: [0xdf,0x1f,0x7f,0x20]
.code32
jeq %d15, 1, 16638

# CHECK-INST: jeq %d15, 1, 32766
# CHECK: encoding: [0xdf,0x1f,0xff,0x3f]
.code32
jeq %d15, 1, 32766

# CHECK-INST: jeq %d15, 7, 256
# CHECK: encoding: [0xdf,0x7f,0x80,0x00]
.code32
jeq %d15, 7, 256

# CHECK-INST: jeq %d15, 7, 32512
# CHECK: encoding: [0xdf,0x7f,0x80,0x3f]
.code32
jeq %d15, 7, 32512

# CHECK-INST: jeq %d15, 7, 16638
# CHECK: encoding: [0xdf,0x7f,0x7f,0x20]
.code32
jeq %d15, 7, 16638

# CHECK-INST: jeq %d15, 7, 32766
# CHECK: encoding: [0xdf,0x7f,0xff,0x3f]
.code32
jeq %d15, 7, 32766
# CHECK-INST: jeq.a %a0, %a0, 256
# CHECK: encoding: [0x7d,0x00,0x80,0x00]
.code32
jeq.a %a0, %a0, 256

# CHECK-INST: jeq.a %a0, %a0, 32512
# CHECK: encoding: [0x7d,0x00,0x80,0x3f]
.code32
jeq.a %a0, %a0, 32512

# CHECK-INST: jeq.a %a0, %a0, 16638
# CHECK: encoding: [0x7d,0x00,0x7f,0x20]
.code32
jeq.a %a0, %a0, 16638

# CHECK-INST: jeq.a %a0, %a0, 32766
# CHECK: encoding: [0x7d,0x00,0xff,0x3f]
.code32
jeq.a %a0, %a0, 32766

# CHECK-INST: jeq.a %a0, %a1, 256
# CHECK: encoding: [0x7d,0x10,0x80,0x00]
.code32
jeq.a %a0, %a1, 256

# CHECK-INST: jeq.a %a0, %a1, 32512
# CHECK: encoding: [0x7d,0x10,0x80,0x3f]
.code32
jeq.a %a0, %a1, 32512

# CHECK-INST: jeq.a %a0, %a1, 16638
# CHECK: encoding: [0x7d,0x10,0x7f,0x20]
.code32
jeq.a %a0, %a1, 16638

# CHECK-INST: jeq.a %a0, %a1, 32766
# CHECK: encoding: [0x7d,0x10,0xff,0x3f]
.code32
jeq.a %a0, %a1, 32766

# CHECK-INST: jeq.a %a0, %a14, 256
# CHECK: encoding: [0x7d,0xe0,0x80,0x00]
.code32
jeq.a %a0, %a14, 256

# CHECK-INST: jeq.a %a0, %a14, 32512
# CHECK: encoding: [0x7d,0xe0,0x80,0x3f]
.code32
jeq.a %a0, %a14, 32512

# CHECK-INST: jeq.a %a0, %a14, 16638
# CHECK: encoding: [0x7d,0xe0,0x7f,0x20]
.code32
jeq.a %a0, %a14, 16638

# CHECK-INST: jeq.a %a0, %a14, 32766
# CHECK: encoding: [0x7d,0xe0,0xff,0x3f]
.code32
jeq.a %a0, %a14, 32766

# CHECK-INST: jeq.a %a0, %a15, 256
# CHECK: encoding: [0x7d,0xf0,0x80,0x00]
.code32
jeq.a %a0, %a15, 256

# CHECK-INST: jeq.a %a0, %a15, 32512
# CHECK: encoding: [0x7d,0xf0,0x80,0x3f]
.code32
jeq.a %a0, %a15, 32512

# CHECK-INST: jeq.a %a0, %a15, 16638
# CHECK: encoding: [0x7d,0xf0,0x7f,0x20]
.code32
jeq.a %a0, %a15, 16638

# CHECK-INST: jeq.a %a0, %a15, 32766
# CHECK: encoding: [0x7d,0xf0,0xff,0x3f]
.code32
jeq.a %a0, %a15, 32766

# CHECK-INST: jeq.a %a1, %a0, 256
# CHECK: encoding: [0x7d,0x01,0x80,0x00]
.code32
jeq.a %a1, %a0, 256

# CHECK-INST: jeq.a %a1, %a0, 32512
# CHECK: encoding: [0x7d,0x01,0x80,0x3f]
.code32
jeq.a %a1, %a0, 32512

# CHECK-INST: jeq.a %a1, %a0, 16638
# CHECK: encoding: [0x7d,0x01,0x7f,0x20]
.code32
jeq.a %a1, %a0, 16638

# CHECK-INST: jeq.a %a1, %a0, 32766
# CHECK: encoding: [0x7d,0x01,0xff,0x3f]
.code32
jeq.a %a1, %a0, 32766

# CHECK-INST: jeq.a %a1, %a1, 256
# CHECK: encoding: [0x7d,0x11,0x80,0x00]
.code32
jeq.a %a1, %a1, 256

# CHECK-INST: jeq.a %a1, %a1, 32512
# CHECK: encoding: [0x7d,0x11,0x80,0x3f]
.code32
jeq.a %a1, %a1, 32512

# CHECK-INST: jeq.a %a1, %a1, 16638
# CHECK: encoding: [0x7d,0x11,0x7f,0x20]
.code32
jeq.a %a1, %a1, 16638

# CHECK-INST: jeq.a %a1, %a1, 32766
# CHECK: encoding: [0x7d,0x11,0xff,0x3f]
.code32
jeq.a %a1, %a1, 32766

# CHECK-INST: jeq.a %a1, %a14, 256
# CHECK: encoding: [0x7d,0xe1,0x80,0x00]
.code32
jeq.a %a1, %a14, 256

# CHECK-INST: jeq.a %a1, %a14, 32512
# CHECK: encoding: [0x7d,0xe1,0x80,0x3f]
.code32
jeq.a %a1, %a14, 32512

# CHECK-INST: jeq.a %a1, %a14, 16638
# CHECK: encoding: [0x7d,0xe1,0x7f,0x20]
.code32
jeq.a %a1, %a14, 16638

# CHECK-INST: jeq.a %a1, %a14, 32766
# CHECK: encoding: [0x7d,0xe1,0xff,0x3f]
.code32
jeq.a %a1, %a14, 32766

# CHECK-INST: jeq.a %a1, %a15, 256
# CHECK: encoding: [0x7d,0xf1,0x80,0x00]
.code32
jeq.a %a1, %a15, 256

# CHECK-INST: jeq.a %a1, %a15, 32512
# CHECK: encoding: [0x7d,0xf1,0x80,0x3f]
.code32
jeq.a %a1, %a15, 32512

# CHECK-INST: jeq.a %a1, %a15, 16638
# CHECK: encoding: [0x7d,0xf1,0x7f,0x20]
.code32
jeq.a %a1, %a15, 16638

# CHECK-INST: jeq.a %a1, %a15, 32766
# CHECK: encoding: [0x7d,0xf1,0xff,0x3f]
.code32
jeq.a %a1, %a15, 32766

# CHECK-INST: jeq.a %a14, %a0, 256
# CHECK: encoding: [0x7d,0x0e,0x80,0x00]
.code32
jeq.a %a14, %a0, 256

# CHECK-INST: jeq.a %a14, %a0, 32512
# CHECK: encoding: [0x7d,0x0e,0x80,0x3f]
.code32
jeq.a %a14, %a0, 32512

# CHECK-INST: jeq.a %a14, %a0, 16638
# CHECK: encoding: [0x7d,0x0e,0x7f,0x20]
.code32
jeq.a %a14, %a0, 16638

# CHECK-INST: jeq.a %a14, %a0, 32766
# CHECK: encoding: [0x7d,0x0e,0xff,0x3f]
.code32
jeq.a %a14, %a0, 32766

# CHECK-INST: jeq.a %a14, %a1, 256
# CHECK: encoding: [0x7d,0x1e,0x80,0x00]
.code32
jeq.a %a14, %a1, 256

# CHECK-INST: jeq.a %a14, %a1, 32512
# CHECK: encoding: [0x7d,0x1e,0x80,0x3f]
.code32
jeq.a %a14, %a1, 32512

# CHECK-INST: jeq.a %a14, %a1, 16638
# CHECK: encoding: [0x7d,0x1e,0x7f,0x20]
.code32
jeq.a %a14, %a1, 16638

# CHECK-INST: jeq.a %a14, %a1, 32766
# CHECK: encoding: [0x7d,0x1e,0xff,0x3f]
.code32
jeq.a %a14, %a1, 32766

# CHECK-INST: jeq.a %a14, %a14, 256
# CHECK: encoding: [0x7d,0xee,0x80,0x00]
.code32
jeq.a %a14, %a14, 256

# CHECK-INST: jeq.a %a14, %a14, 32512
# CHECK: encoding: [0x7d,0xee,0x80,0x3f]
.code32
jeq.a %a14, %a14, 32512

# CHECK-INST: jeq.a %a14, %a14, 16638
# CHECK: encoding: [0x7d,0xee,0x7f,0x20]
.code32
jeq.a %a14, %a14, 16638

# CHECK-INST: jeq.a %a14, %a14, 32766
# CHECK: encoding: [0x7d,0xee,0xff,0x3f]
.code32
jeq.a %a14, %a14, 32766

# CHECK-INST: jeq.a %a14, %a15, 256
# CHECK: encoding: [0x7d,0xfe,0x80,0x00]
.code32
jeq.a %a14, %a15, 256

# CHECK-INST: jeq.a %a14, %a15, 32512
# CHECK: encoding: [0x7d,0xfe,0x80,0x3f]
.code32
jeq.a %a14, %a15, 32512

# CHECK-INST: jeq.a %a14, %a15, 16638
# CHECK: encoding: [0x7d,0xfe,0x7f,0x20]
.code32
jeq.a %a14, %a15, 16638

# CHECK-INST: jeq.a %a14, %a15, 32766
# CHECK: encoding: [0x7d,0xfe,0xff,0x3f]
.code32
jeq.a %a14, %a15, 32766

# CHECK-INST: jeq.a %a15, %a0, 256
# CHECK: encoding: [0x7d,0x0f,0x80,0x00]
.code32
jeq.a %a15, %a0, 256

# CHECK-INST: jeq.a %a15, %a0, 32512
# CHECK: encoding: [0x7d,0x0f,0x80,0x3f]
.code32
jeq.a %a15, %a0, 32512

# CHECK-INST: jeq.a %a15, %a0, 16638
# CHECK: encoding: [0x7d,0x0f,0x7f,0x20]
.code32
jeq.a %a15, %a0, 16638

# CHECK-INST: jeq.a %a15, %a0, 32766
# CHECK: encoding: [0x7d,0x0f,0xff,0x3f]
.code32
jeq.a %a15, %a0, 32766

# CHECK-INST: jeq.a %a15, %a1, 256
# CHECK: encoding: [0x7d,0x1f,0x80,0x00]
.code32
jeq.a %a15, %a1, 256

# CHECK-INST: jeq.a %a15, %a1, 32512
# CHECK: encoding: [0x7d,0x1f,0x80,0x3f]
.code32
jeq.a %a15, %a1, 32512

# CHECK-INST: jeq.a %a15, %a1, 16638
# CHECK: encoding: [0x7d,0x1f,0x7f,0x20]
.code32
jeq.a %a15, %a1, 16638

# CHECK-INST: jeq.a %a15, %a1, 32766
# CHECK: encoding: [0x7d,0x1f,0xff,0x3f]
.code32
jeq.a %a15, %a1, 32766

# CHECK-INST: jeq.a %a15, %a14, 256
# CHECK: encoding: [0x7d,0xef,0x80,0x00]
.code32
jeq.a %a15, %a14, 256

# CHECK-INST: jeq.a %a15, %a14, 32512
# CHECK: encoding: [0x7d,0xef,0x80,0x3f]
.code32
jeq.a %a15, %a14, 32512

# CHECK-INST: jeq.a %a15, %a14, 16638
# CHECK: encoding: [0x7d,0xef,0x7f,0x20]
.code32
jeq.a %a15, %a14, 16638

# CHECK-INST: jeq.a %a15, %a14, 32766
# CHECK: encoding: [0x7d,0xef,0xff,0x3f]
.code32
jeq.a %a15, %a14, 32766

# CHECK-INST: jeq.a %a15, %a15, 256
# CHECK: encoding: [0x7d,0xff,0x80,0x00]
.code32
jeq.a %a15, %a15, 256

# CHECK-INST: jeq.a %a15, %a15, 32512
# CHECK: encoding: [0x7d,0xff,0x80,0x3f]
.code32
jeq.a %a15, %a15, 32512

# CHECK-INST: jeq.a %a15, %a15, 16638
# CHECK: encoding: [0x7d,0xff,0x7f,0x20]
.code32
jeq.a %a15, %a15, 16638

# CHECK-INST: jeq.a %a15, %a15, 32766
# CHECK: encoding: [0x7d,0xff,0xff,0x3f]
.code32
jeq.a %a15, %a15, 32766


# CHECK-INST: jge %d0, %d0, 256
# CHECK: encoding: [0x7f,0x00,0x80,0x00]
.code32
jge %d0, %d0, 256

# CHECK-INST: jge %d0, %d0, 32512
# CHECK: encoding: [0x7f,0x00,0x80,0x3f]
.code32
jge %d0, %d0, 32512

# CHECK-INST: jge %d0, %d0, 16638
# CHECK: encoding: [0x7f,0x00,0x7f,0x20]
.code32
jge %d0, %d0, 16638

# CHECK-INST: jge %d0, %d0, 32766
# CHECK: encoding: [0x7f,0x00,0xff,0x3f]
.code32
jge %d0, %d0, 32766

# CHECK-INST: jge %d0, %d1, 256
# CHECK: encoding: [0x7f,0x10,0x80,0x00]
.code32
jge %d0, %d1, 256

# CHECK-INST: jge %d0, %d1, 32512
# CHECK: encoding: [0x7f,0x10,0x80,0x3f]
.code32
jge %d0, %d1, 32512

# CHECK-INST: jge %d0, %d1, 16638
# CHECK: encoding: [0x7f,0x10,0x7f,0x20]
.code32
jge %d0, %d1, 16638

# CHECK-INST: jge %d0, %d1, 32766
# CHECK: encoding: [0x7f,0x10,0xff,0x3f]
.code32
jge %d0, %d1, 32766

# CHECK-INST: jge %d0, %d14, 256
# CHECK: encoding: [0x7f,0xe0,0x80,0x00]
.code32
jge %d0, %d14, 256

# CHECK-INST: jge %d0, %d14, 32512
# CHECK: encoding: [0x7f,0xe0,0x80,0x3f]
.code32
jge %d0, %d14, 32512

# CHECK-INST: jge %d0, %d14, 16638
# CHECK: encoding: [0x7f,0xe0,0x7f,0x20]
.code32
jge %d0, %d14, 16638

# CHECK-INST: jge %d0, %d14, 32766
# CHECK: encoding: [0x7f,0xe0,0xff,0x3f]
.code32
jge %d0, %d14, 32766

# CHECK-INST: jge %d0, %d15, 256
# CHECK: encoding: [0x7f,0xf0,0x80,0x00]
.code32
jge %d0, %d15, 256

# CHECK-INST: jge %d0, %d15, 32512
# CHECK: encoding: [0x7f,0xf0,0x80,0x3f]
.code32
jge %d0, %d15, 32512

# CHECK-INST: jge %d0, %d15, 16638
# CHECK: encoding: [0x7f,0xf0,0x7f,0x20]
.code32
jge %d0, %d15, 16638

# CHECK-INST: jge %d0, %d15, 32766
# CHECK: encoding: [0x7f,0xf0,0xff,0x3f]
.code32
jge %d0, %d15, 32766

# CHECK-INST: jge %d1, %d0, 256
# CHECK: encoding: [0x7f,0x01,0x80,0x00]
.code32
jge %d1, %d0, 256

# CHECK-INST: jge %d1, %d0, 32512
# CHECK: encoding: [0x7f,0x01,0x80,0x3f]
.code32
jge %d1, %d0, 32512

# CHECK-INST: jge %d1, %d0, 16638
# CHECK: encoding: [0x7f,0x01,0x7f,0x20]
.code32
jge %d1, %d0, 16638

# CHECK-INST: jge %d1, %d0, 32766
# CHECK: encoding: [0x7f,0x01,0xff,0x3f]
.code32
jge %d1, %d0, 32766

# CHECK-INST: jge %d1, %d1, 256
# CHECK: encoding: [0x7f,0x11,0x80,0x00]
.code32
jge %d1, %d1, 256

# CHECK-INST: jge %d1, %d1, 32512
# CHECK: encoding: [0x7f,0x11,0x80,0x3f]
.code32
jge %d1, %d1, 32512

# CHECK-INST: jge %d1, %d1, 16638
# CHECK: encoding: [0x7f,0x11,0x7f,0x20]
.code32
jge %d1, %d1, 16638

# CHECK-INST: jge %d1, %d1, 32766
# CHECK: encoding: [0x7f,0x11,0xff,0x3f]
.code32
jge %d1, %d1, 32766

# CHECK-INST: jge %d1, %d14, 256
# CHECK: encoding: [0x7f,0xe1,0x80,0x00]
.code32
jge %d1, %d14, 256

# CHECK-INST: jge %d1, %d14, 32512
# CHECK: encoding: [0x7f,0xe1,0x80,0x3f]
.code32
jge %d1, %d14, 32512

# CHECK-INST: jge %d1, %d14, 16638
# CHECK: encoding: [0x7f,0xe1,0x7f,0x20]
.code32
jge %d1, %d14, 16638

# CHECK-INST: jge %d1, %d14, 32766
# CHECK: encoding: [0x7f,0xe1,0xff,0x3f]
.code32
jge %d1, %d14, 32766

# CHECK-INST: jge %d1, %d15, 256
# CHECK: encoding: [0x7f,0xf1,0x80,0x00]
.code32
jge %d1, %d15, 256

# CHECK-INST: jge %d1, %d15, 32512
# CHECK: encoding: [0x7f,0xf1,0x80,0x3f]
.code32
jge %d1, %d15, 32512

# CHECK-INST: jge %d1, %d15, 16638
# CHECK: encoding: [0x7f,0xf1,0x7f,0x20]
.code32
jge %d1, %d15, 16638

# CHECK-INST: jge %d1, %d15, 32766
# CHECK: encoding: [0x7f,0xf1,0xff,0x3f]
.code32
jge %d1, %d15, 32766

# CHECK-INST: jge %d14, %d0, 256
# CHECK: encoding: [0x7f,0x0e,0x80,0x00]
.code32
jge %d14, %d0, 256

# CHECK-INST: jge %d14, %d0, 32512
# CHECK: encoding: [0x7f,0x0e,0x80,0x3f]
.code32
jge %d14, %d0, 32512

# CHECK-INST: jge %d14, %d0, 16638
# CHECK: encoding: [0x7f,0x0e,0x7f,0x20]
.code32
jge %d14, %d0, 16638

# CHECK-INST: jge %d14, %d0, 32766
# CHECK: encoding: [0x7f,0x0e,0xff,0x3f]
.code32
jge %d14, %d0, 32766

# CHECK-INST: jge %d14, %d1, 256
# CHECK: encoding: [0x7f,0x1e,0x80,0x00]
.code32
jge %d14, %d1, 256

# CHECK-INST: jge %d14, %d1, 32512
# CHECK: encoding: [0x7f,0x1e,0x80,0x3f]
.code32
jge %d14, %d1, 32512

# CHECK-INST: jge %d14, %d1, 16638
# CHECK: encoding: [0x7f,0x1e,0x7f,0x20]
.code32
jge %d14, %d1, 16638

# CHECK-INST: jge %d14, %d1, 32766
# CHECK: encoding: [0x7f,0x1e,0xff,0x3f]
.code32
jge %d14, %d1, 32766

# CHECK-INST: jge %d14, %d14, 256
# CHECK: encoding: [0x7f,0xee,0x80,0x00]
.code32
jge %d14, %d14, 256

# CHECK-INST: jge %d14, %d14, 32512
# CHECK: encoding: [0x7f,0xee,0x80,0x3f]
.code32
jge %d14, %d14, 32512

# CHECK-INST: jge %d14, %d14, 16638
# CHECK: encoding: [0x7f,0xee,0x7f,0x20]
.code32
jge %d14, %d14, 16638

# CHECK-INST: jge %d14, %d14, 32766
# CHECK: encoding: [0x7f,0xee,0xff,0x3f]
.code32
jge %d14, %d14, 32766

# CHECK-INST: jge %d14, %d15, 256
# CHECK: encoding: [0x7f,0xfe,0x80,0x00]
.code32
jge %d14, %d15, 256

# CHECK-INST: jge %d14, %d15, 32512
# CHECK: encoding: [0x7f,0xfe,0x80,0x3f]
.code32
jge %d14, %d15, 32512

# CHECK-INST: jge %d14, %d15, 16638
# CHECK: encoding: [0x7f,0xfe,0x7f,0x20]
.code32
jge %d14, %d15, 16638

# CHECK-INST: jge %d14, %d15, 32766
# CHECK: encoding: [0x7f,0xfe,0xff,0x3f]
.code32
jge %d14, %d15, 32766

# CHECK-INST: jge %d15, %d0, 256
# CHECK: encoding: [0x7f,0x0f,0x80,0x00]
.code32
jge %d15, %d0, 256

# CHECK-INST: jge %d15, %d0, 32512
# CHECK: encoding: [0x7f,0x0f,0x80,0x3f]
.code32
jge %d15, %d0, 32512

# CHECK-INST: jge %d15, %d0, 16638
# CHECK: encoding: [0x7f,0x0f,0x7f,0x20]
.code32
jge %d15, %d0, 16638

# CHECK-INST: jge %d15, %d0, 32766
# CHECK: encoding: [0x7f,0x0f,0xff,0x3f]
.code32
jge %d15, %d0, 32766

# CHECK-INST: jge %d15, %d1, 256
# CHECK: encoding: [0x7f,0x1f,0x80,0x00]
.code32
jge %d15, %d1, 256

# CHECK-INST: jge %d15, %d1, 32512
# CHECK: encoding: [0x7f,0x1f,0x80,0x3f]
.code32
jge %d15, %d1, 32512

# CHECK-INST: jge %d15, %d1, 16638
# CHECK: encoding: [0x7f,0x1f,0x7f,0x20]
.code32
jge %d15, %d1, 16638

# CHECK-INST: jge %d15, %d1, 32766
# CHECK: encoding: [0x7f,0x1f,0xff,0x3f]
.code32
jge %d15, %d1, 32766

# CHECK-INST: jge %d15, %d14, 256
# CHECK: encoding: [0x7f,0xef,0x80,0x00]
.code32
jge %d15, %d14, 256

# CHECK-INST: jge %d15, %d14, 32512
# CHECK: encoding: [0x7f,0xef,0x80,0x3f]
.code32
jge %d15, %d14, 32512

# CHECK-INST: jge %d15, %d14, 16638
# CHECK: encoding: [0x7f,0xef,0x7f,0x20]
.code32
jge %d15, %d14, 16638

# CHECK-INST: jge %d15, %d14, 32766
# CHECK: encoding: [0x7f,0xef,0xff,0x3f]
.code32
jge %d15, %d14, 32766

# CHECK-INST: jge %d15, %d15, 256
# CHECK: encoding: [0x7f,0xff,0x80,0x00]
.code32
jge %d15, %d15, 256

# CHECK-INST: jge %d15, %d15, 32512
# CHECK: encoding: [0x7f,0xff,0x80,0x3f]
.code32
jge %d15, %d15, 32512

# CHECK-INST: jge %d15, %d15, 16638
# CHECK: encoding: [0x7f,0xff,0x7f,0x20]
.code32
jge %d15, %d15, 16638

# CHECK-INST: jge %d15, %d15, 32766
# CHECK: encoding: [0x7f,0xff,0xff,0x3f]
.code32
jge %d15, %d15, 32766


# CHECK-INST: jge %d0, -8, 256
# CHECK: encoding: [0xff,0x80,0x80,0x00]
.code32
jge %d0, -8, 256

# CHECK-INST: jge %d0, -8, 32512
# CHECK: encoding: [0xff,0x80,0x80,0x3f]
.code32
jge %d0, -8, 32512

# CHECK-INST: jge %d0, -8, 16638
# CHECK: encoding: [0xff,0x80,0x7f,0x20]
.code32
jge %d0, -8, 16638

# CHECK-INST: jge %d0, -8, 32766
# CHECK: encoding: [0xff,0x80,0xff,0x3f]
.code32
jge %d0, -8, 32766

# CHECK-INST: jge %d0, -1, 256
# CHECK: encoding: [0xff,0xf0,0x80,0x00]
.code32
jge %d0, -1, 256

# CHECK-INST: jge %d0, -1, 32512
# CHECK: encoding: [0xff,0xf0,0x80,0x3f]
.code32
jge %d0, -1, 32512

# CHECK-INST: jge %d0, -1, 16638
# CHECK: encoding: [0xff,0xf0,0x7f,0x20]
.code32
jge %d0, -1, 16638

# CHECK-INST: jge %d0, -1, 32766
# CHECK: encoding: [0xff,0xf0,0xff,0x3f]
.code32
jge %d0, -1, 32766

# CHECK-INST: jge %d0, 0, 256
# CHECK: encoding: [0xff,0x00,0x80,0x00]
.code32
jge %d0, 0, 256

# CHECK-INST: jge %d0, 0, 32512
# CHECK: encoding: [0xff,0x00,0x80,0x3f]
.code32
jge %d0, 0, 32512

# CHECK-INST: jge %d0, 0, 16638
# CHECK: encoding: [0xff,0x00,0x7f,0x20]
.code32
jge %d0, 0, 16638

# CHECK-INST: jge %d0, 0, 32766
# CHECK: encoding: [0xff,0x00,0xff,0x3f]
.code32
jge %d0, 0, 32766

# CHECK-INST: jge %d0, 1, 256
# CHECK: encoding: [0xff,0x10,0x80,0x00]
.code32
jge %d0, 1, 256

# CHECK-INST: jge %d0, 1, 32512
# CHECK: encoding: [0xff,0x10,0x80,0x3f]
.code32
jge %d0, 1, 32512

# CHECK-INST: jge %d0, 1, 16638
# CHECK: encoding: [0xff,0x10,0x7f,0x20]
.code32
jge %d0, 1, 16638

# CHECK-INST: jge %d0, 1, 32766
# CHECK: encoding: [0xff,0x10,0xff,0x3f]
.code32
jge %d0, 1, 32766

# CHECK-INST: jge %d0, 7, 256
# CHECK: encoding: [0xff,0x70,0x80,0x00]
.code32
jge %d0, 7, 256

# CHECK-INST: jge %d0, 7, 32512
# CHECK: encoding: [0xff,0x70,0x80,0x3f]
.code32
jge %d0, 7, 32512

# CHECK-INST: jge %d0, 7, 16638
# CHECK: encoding: [0xff,0x70,0x7f,0x20]
.code32
jge %d0, 7, 16638

# CHECK-INST: jge %d0, 7, 32766
# CHECK: encoding: [0xff,0x70,0xff,0x3f]
.code32
jge %d0, 7, 32766

# CHECK-INST: jge %d1, -8, 256
# CHECK: encoding: [0xff,0x81,0x80,0x00]
.code32
jge %d1, -8, 256

# CHECK-INST: jge %d1, -8, 32512
# CHECK: encoding: [0xff,0x81,0x80,0x3f]
.code32
jge %d1, -8, 32512

# CHECK-INST: jge %d1, -8, 16638
# CHECK: encoding: [0xff,0x81,0x7f,0x20]
.code32
jge %d1, -8, 16638

# CHECK-INST: jge %d1, -8, 32766
# CHECK: encoding: [0xff,0x81,0xff,0x3f]
.code32
jge %d1, -8, 32766

# CHECK-INST: jge %d1, -1, 256
# CHECK: encoding: [0xff,0xf1,0x80,0x00]
.code32
jge %d1, -1, 256

# CHECK-INST: jge %d1, -1, 32512
# CHECK: encoding: [0xff,0xf1,0x80,0x3f]
.code32
jge %d1, -1, 32512

# CHECK-INST: jge %d1, -1, 16638
# CHECK: encoding: [0xff,0xf1,0x7f,0x20]
.code32
jge %d1, -1, 16638

# CHECK-INST: jge %d1, -1, 32766
# CHECK: encoding: [0xff,0xf1,0xff,0x3f]
.code32
jge %d1, -1, 32766

# CHECK-INST: jge %d1, 0, 256
# CHECK: encoding: [0xff,0x01,0x80,0x00]
.code32
jge %d1, 0, 256

# CHECK-INST: jge %d1, 0, 32512
# CHECK: encoding: [0xff,0x01,0x80,0x3f]
.code32
jge %d1, 0, 32512

# CHECK-INST: jge %d1, 0, 16638
# CHECK: encoding: [0xff,0x01,0x7f,0x20]
.code32
jge %d1, 0, 16638

# CHECK-INST: jge %d1, 0, 32766
# CHECK: encoding: [0xff,0x01,0xff,0x3f]
.code32
jge %d1, 0, 32766

# CHECK-INST: jge %d1, 1, 256
# CHECK: encoding: [0xff,0x11,0x80,0x00]
.code32
jge %d1, 1, 256

# CHECK-INST: jge %d1, 1, 32512
# CHECK: encoding: [0xff,0x11,0x80,0x3f]
.code32
jge %d1, 1, 32512

# CHECK-INST: jge %d1, 1, 16638
# CHECK: encoding: [0xff,0x11,0x7f,0x20]
.code32
jge %d1, 1, 16638

# CHECK-INST: jge %d1, 1, 32766
# CHECK: encoding: [0xff,0x11,0xff,0x3f]
.code32
jge %d1, 1, 32766

# CHECK-INST: jge %d1, 7, 256
# CHECK: encoding: [0xff,0x71,0x80,0x00]
.code32
jge %d1, 7, 256

# CHECK-INST: jge %d1, 7, 32512
# CHECK: encoding: [0xff,0x71,0x80,0x3f]
.code32
jge %d1, 7, 32512

# CHECK-INST: jge %d1, 7, 16638
# CHECK: encoding: [0xff,0x71,0x7f,0x20]
.code32
jge %d1, 7, 16638

# CHECK-INST: jge %d1, 7, 32766
# CHECK: encoding: [0xff,0x71,0xff,0x3f]
.code32
jge %d1, 7, 32766

# CHECK-INST: jge %d14, -8, 256
# CHECK: encoding: [0xff,0x8e,0x80,0x00]
.code32
jge %d14, -8, 256

# CHECK-INST: jge %d14, -8, 32512
# CHECK: encoding: [0xff,0x8e,0x80,0x3f]
.code32
jge %d14, -8, 32512

# CHECK-INST: jge %d14, -8, 16638
# CHECK: encoding: [0xff,0x8e,0x7f,0x20]
.code32
jge %d14, -8, 16638

# CHECK-INST: jge %d14, -8, 32766
# CHECK: encoding: [0xff,0x8e,0xff,0x3f]
.code32
jge %d14, -8, 32766

# CHECK-INST: jge %d14, -1, 256
# CHECK: encoding: [0xff,0xfe,0x80,0x00]
.code32
jge %d14, -1, 256

# CHECK-INST: jge %d14, -1, 32512
# CHECK: encoding: [0xff,0xfe,0x80,0x3f]
.code32
jge %d14, -1, 32512

# CHECK-INST: jge %d14, -1, 16638
# CHECK: encoding: [0xff,0xfe,0x7f,0x20]
.code32
jge %d14, -1, 16638

# CHECK-INST: jge %d14, -1, 32766
# CHECK: encoding: [0xff,0xfe,0xff,0x3f]
.code32
jge %d14, -1, 32766

# CHECK-INST: jge %d14, 0, 256
# CHECK: encoding: [0xff,0x0e,0x80,0x00]
.code32
jge %d14, 0, 256

# CHECK-INST: jge %d14, 0, 32512
# CHECK: encoding: [0xff,0x0e,0x80,0x3f]
.code32
jge %d14, 0, 32512

# CHECK-INST: jge %d14, 0, 16638
# CHECK: encoding: [0xff,0x0e,0x7f,0x20]
.code32
jge %d14, 0, 16638

# CHECK-INST: jge %d14, 0, 32766
# CHECK: encoding: [0xff,0x0e,0xff,0x3f]
.code32
jge %d14, 0, 32766

# CHECK-INST: jge %d14, 1, 256
# CHECK: encoding: [0xff,0x1e,0x80,0x00]
.code32
jge %d14, 1, 256

# CHECK-INST: jge %d14, 1, 32512
# CHECK: encoding: [0xff,0x1e,0x80,0x3f]
.code32
jge %d14, 1, 32512

# CHECK-INST: jge %d14, 1, 16638
# CHECK: encoding: [0xff,0x1e,0x7f,0x20]
.code32
jge %d14, 1, 16638

# CHECK-INST: jge %d14, 1, 32766
# CHECK: encoding: [0xff,0x1e,0xff,0x3f]
.code32
jge %d14, 1, 32766

# CHECK-INST: jge %d14, 7, 256
# CHECK: encoding: [0xff,0x7e,0x80,0x00]
.code32
jge %d14, 7, 256

# CHECK-INST: jge %d14, 7, 32512
# CHECK: encoding: [0xff,0x7e,0x80,0x3f]
.code32
jge %d14, 7, 32512

# CHECK-INST: jge %d14, 7, 16638
# CHECK: encoding: [0xff,0x7e,0x7f,0x20]
.code32
jge %d14, 7, 16638

# CHECK-INST: jge %d14, 7, 32766
# CHECK: encoding: [0xff,0x7e,0xff,0x3f]
.code32
jge %d14, 7, 32766

# CHECK-INST: jge %d15, -8, 256
# CHECK: encoding: [0xff,0x8f,0x80,0x00]
.code32
jge %d15, -8, 256

# CHECK-INST: jge %d15, -8, 32512
# CHECK: encoding: [0xff,0x8f,0x80,0x3f]
.code32
jge %d15, -8, 32512

# CHECK-INST: jge %d15, -8, 16638
# CHECK: encoding: [0xff,0x8f,0x7f,0x20]
.code32
jge %d15, -8, 16638

# CHECK-INST: jge %d15, -8, 32766
# CHECK: encoding: [0xff,0x8f,0xff,0x3f]
.code32
jge %d15, -8, 32766

# CHECK-INST: jge %d15, -1, 256
# CHECK: encoding: [0xff,0xff,0x80,0x00]
.code32
jge %d15, -1, 256

# CHECK-INST: jge %d15, -1, 32512
# CHECK: encoding: [0xff,0xff,0x80,0x3f]
.code32
jge %d15, -1, 32512

# CHECK-INST: jge %d15, -1, 16638
# CHECK: encoding: [0xff,0xff,0x7f,0x20]
.code32
jge %d15, -1, 16638

# CHECK-INST: jge %d15, -1, 32766
# CHECK: encoding: [0xff,0xff,0xff,0x3f]
.code32
jge %d15, -1, 32766

# CHECK-INST: jge %d15, 0, 256
# CHECK: encoding: [0xff,0x0f,0x80,0x00]
.code32
jge %d15, 0, 256

# CHECK-INST: jge %d15, 0, 32512
# CHECK: encoding: [0xff,0x0f,0x80,0x3f]
.code32
jge %d15, 0, 32512

# CHECK-INST: jge %d15, 0, 16638
# CHECK: encoding: [0xff,0x0f,0x7f,0x20]
.code32
jge %d15, 0, 16638

# CHECK-INST: jge %d15, 0, 32766
# CHECK: encoding: [0xff,0x0f,0xff,0x3f]
.code32
jge %d15, 0, 32766

# CHECK-INST: jge %d15, 1, 256
# CHECK: encoding: [0xff,0x1f,0x80,0x00]
.code32
jge %d15, 1, 256

# CHECK-INST: jge %d15, 1, 32512
# CHECK: encoding: [0xff,0x1f,0x80,0x3f]
.code32
jge %d15, 1, 32512

# CHECK-INST: jge %d15, 1, 16638
# CHECK: encoding: [0xff,0x1f,0x7f,0x20]
.code32
jge %d15, 1, 16638

# CHECK-INST: jge %d15, 1, 32766
# CHECK: encoding: [0xff,0x1f,0xff,0x3f]
.code32
jge %d15, 1, 32766

# CHECK-INST: jge %d15, 7, 256
# CHECK: encoding: [0xff,0x7f,0x80,0x00]
.code32
jge %d15, 7, 256

# CHECK-INST: jge %d15, 7, 32512
# CHECK: encoding: [0xff,0x7f,0x80,0x3f]
.code32
jge %d15, 7, 32512

# CHECK-INST: jge %d15, 7, 16638
# CHECK: encoding: [0xff,0x7f,0x7f,0x20]
.code32
jge %d15, 7, 16638

# CHECK-INST: jge %d15, 7, 32766
# CHECK: encoding: [0xff,0x7f,0xff,0x3f]
.code32
jge %d15, 7, 32766


# CHECK-INST: jge.u %d0, %d0, 256
# CHECK: encoding: [0x7f,0x00,0x80,0x80]
.code32
jge.u %d0, %d0, 256

# CHECK-INST: jge.u %d0, %d0, 32512
# CHECK: encoding: [0x7f,0x00,0x80,0xbf]
.code32
jge.u %d0, %d0, 32512

# CHECK-INST: jge.u %d0, %d0, 16638
# CHECK: encoding: [0x7f,0x00,0x7f,0xa0]
.code32
jge.u %d0, %d0, 16638

# CHECK-INST: jge.u %d0, %d0, 32766
# CHECK: encoding: [0x7f,0x00,0xff,0xbf]
.code32
jge.u %d0, %d0, 32766

# CHECK-INST: jge.u %d0, %d1, 256
# CHECK: encoding: [0x7f,0x10,0x80,0x80]
.code32
jge.u %d0, %d1, 256

# CHECK-INST: jge.u %d0, %d1, 32512
# CHECK: encoding: [0x7f,0x10,0x80,0xbf]
.code32
jge.u %d0, %d1, 32512

# CHECK-INST: jge.u %d0, %d1, 16638
# CHECK: encoding: [0x7f,0x10,0x7f,0xa0]
.code32
jge.u %d0, %d1, 16638

# CHECK-INST: jge.u %d0, %d1, 32766
# CHECK: encoding: [0x7f,0x10,0xff,0xbf]
.code32
jge.u %d0, %d1, 32766

# CHECK-INST: jge.u %d0, %d14, 256
# CHECK: encoding: [0x7f,0xe0,0x80,0x80]
.code32
jge.u %d0, %d14, 256

# CHECK-INST: jge.u %d0, %d14, 32512
# CHECK: encoding: [0x7f,0xe0,0x80,0xbf]
.code32
jge.u %d0, %d14, 32512

# CHECK-INST: jge.u %d0, %d14, 16638
# CHECK: encoding: [0x7f,0xe0,0x7f,0xa0]
.code32
jge.u %d0, %d14, 16638

# CHECK-INST: jge.u %d0, %d14, 32766
# CHECK: encoding: [0x7f,0xe0,0xff,0xbf]
.code32
jge.u %d0, %d14, 32766

# CHECK-INST: jge.u %d0, %d15, 256
# CHECK: encoding: [0x7f,0xf0,0x80,0x80]
.code32
jge.u %d0, %d15, 256

# CHECK-INST: jge.u %d0, %d15, 32512
# CHECK: encoding: [0x7f,0xf0,0x80,0xbf]
.code32
jge.u %d0, %d15, 32512

# CHECK-INST: jge.u %d0, %d15, 16638
# CHECK: encoding: [0x7f,0xf0,0x7f,0xa0]
.code32
jge.u %d0, %d15, 16638

# CHECK-INST: jge.u %d0, %d15, 32766
# CHECK: encoding: [0x7f,0xf0,0xff,0xbf]
.code32
jge.u %d0, %d15, 32766

# CHECK-INST: jge.u %d1, %d0, 256
# CHECK: encoding: [0x7f,0x01,0x80,0x80]
.code32
jge.u %d1, %d0, 256

# CHECK-INST: jge.u %d1, %d0, 32512
# CHECK: encoding: [0x7f,0x01,0x80,0xbf]
.code32
jge.u %d1, %d0, 32512

# CHECK-INST: jge.u %d1, %d0, 16638
# CHECK: encoding: [0x7f,0x01,0x7f,0xa0]
.code32
jge.u %d1, %d0, 16638

# CHECK-INST: jge.u %d1, %d0, 32766
# CHECK: encoding: [0x7f,0x01,0xff,0xbf]
.code32
jge.u %d1, %d0, 32766

# CHECK-INST: jge.u %d1, %d1, 256
# CHECK: encoding: [0x7f,0x11,0x80,0x80]
.code32
jge.u %d1, %d1, 256

# CHECK-INST: jge.u %d1, %d1, 32512
# CHECK: encoding: [0x7f,0x11,0x80,0xbf]
.code32
jge.u %d1, %d1, 32512

# CHECK-INST: jge.u %d1, %d1, 16638
# CHECK: encoding: [0x7f,0x11,0x7f,0xa0]
.code32
jge.u %d1, %d1, 16638

# CHECK-INST: jge.u %d1, %d1, 32766
# CHECK: encoding: [0x7f,0x11,0xff,0xbf]
.code32
jge.u %d1, %d1, 32766

# CHECK-INST: jge.u %d1, %d14, 256
# CHECK: encoding: [0x7f,0xe1,0x80,0x80]
.code32
jge.u %d1, %d14, 256

# CHECK-INST: jge.u %d1, %d14, 32512
# CHECK: encoding: [0x7f,0xe1,0x80,0xbf]
.code32
jge.u %d1, %d14, 32512

# CHECK-INST: jge.u %d1, %d14, 16638
# CHECK: encoding: [0x7f,0xe1,0x7f,0xa0]
.code32
jge.u %d1, %d14, 16638

# CHECK-INST: jge.u %d1, %d14, 32766
# CHECK: encoding: [0x7f,0xe1,0xff,0xbf]
.code32
jge.u %d1, %d14, 32766

# CHECK-INST: jge.u %d1, %d15, 256
# CHECK: encoding: [0x7f,0xf1,0x80,0x80]
.code32
jge.u %d1, %d15, 256

# CHECK-INST: jge.u %d1, %d15, 32512
# CHECK: encoding: [0x7f,0xf1,0x80,0xbf]
.code32
jge.u %d1, %d15, 32512

# CHECK-INST: jge.u %d1, %d15, 16638
# CHECK: encoding: [0x7f,0xf1,0x7f,0xa0]
.code32
jge.u %d1, %d15, 16638

# CHECK-INST: jge.u %d1, %d15, 32766
# CHECK: encoding: [0x7f,0xf1,0xff,0xbf]
.code32
jge.u %d1, %d15, 32766

# CHECK-INST: jge.u %d14, %d0, 256
# CHECK: encoding: [0x7f,0x0e,0x80,0x80]
.code32
jge.u %d14, %d0, 256

# CHECK-INST: jge.u %d14, %d0, 32512
# CHECK: encoding: [0x7f,0x0e,0x80,0xbf]
.code32
jge.u %d14, %d0, 32512

# CHECK-INST: jge.u %d14, %d0, 16638
# CHECK: encoding: [0x7f,0x0e,0x7f,0xa0]
.code32
jge.u %d14, %d0, 16638

# CHECK-INST: jge.u %d14, %d0, 32766
# CHECK: encoding: [0x7f,0x0e,0xff,0xbf]
.code32
jge.u %d14, %d0, 32766

# CHECK-INST: jge.u %d14, %d1, 256
# CHECK: encoding: [0x7f,0x1e,0x80,0x80]
.code32
jge.u %d14, %d1, 256

# CHECK-INST: jge.u %d14, %d1, 32512
# CHECK: encoding: [0x7f,0x1e,0x80,0xbf]
.code32
jge.u %d14, %d1, 32512

# CHECK-INST: jge.u %d14, %d1, 16638
# CHECK: encoding: [0x7f,0x1e,0x7f,0xa0]
.code32
jge.u %d14, %d1, 16638

# CHECK-INST: jge.u %d14, %d1, 32766
# CHECK: encoding: [0x7f,0x1e,0xff,0xbf]
.code32
jge.u %d14, %d1, 32766

# CHECK-INST: jge.u %d14, %d14, 256
# CHECK: encoding: [0x7f,0xee,0x80,0x80]
.code32
jge.u %d14, %d14, 256

# CHECK-INST: jge.u %d14, %d14, 32512
# CHECK: encoding: [0x7f,0xee,0x80,0xbf]
.code32
jge.u %d14, %d14, 32512

# CHECK-INST: jge.u %d14, %d14, 16638
# CHECK: encoding: [0x7f,0xee,0x7f,0xa0]
.code32
jge.u %d14, %d14, 16638

# CHECK-INST: jge.u %d14, %d14, 32766
# CHECK: encoding: [0x7f,0xee,0xff,0xbf]
.code32
jge.u %d14, %d14, 32766

# CHECK-INST: jge.u %d14, %d15, 256
# CHECK: encoding: [0x7f,0xfe,0x80,0x80]
.code32
jge.u %d14, %d15, 256

# CHECK-INST: jge.u %d14, %d15, 32512
# CHECK: encoding: [0x7f,0xfe,0x80,0xbf]
.code32
jge.u %d14, %d15, 32512

# CHECK-INST: jge.u %d14, %d15, 16638
# CHECK: encoding: [0x7f,0xfe,0x7f,0xa0]
.code32
jge.u %d14, %d15, 16638

# CHECK-INST: jge.u %d14, %d15, 32766
# CHECK: encoding: [0x7f,0xfe,0xff,0xbf]
.code32
jge.u %d14, %d15, 32766

# CHECK-INST: jge.u %d15, %d0, 256
# CHECK: encoding: [0x7f,0x0f,0x80,0x80]
.code32
jge.u %d15, %d0, 256

# CHECK-INST: jge.u %d15, %d0, 32512
# CHECK: encoding: [0x7f,0x0f,0x80,0xbf]
.code32
jge.u %d15, %d0, 32512

# CHECK-INST: jge.u %d15, %d0, 16638
# CHECK: encoding: [0x7f,0x0f,0x7f,0xa0]
.code32
jge.u %d15, %d0, 16638

# CHECK-INST: jge.u %d15, %d0, 32766
# CHECK: encoding: [0x7f,0x0f,0xff,0xbf]
.code32
jge.u %d15, %d0, 32766

# CHECK-INST: jge.u %d15, %d1, 256
# CHECK: encoding: [0x7f,0x1f,0x80,0x80]
.code32
jge.u %d15, %d1, 256

# CHECK-INST: jge.u %d15, %d1, 32512
# CHECK: encoding: [0x7f,0x1f,0x80,0xbf]
.code32
jge.u %d15, %d1, 32512

# CHECK-INST: jge.u %d15, %d1, 16638
# CHECK: encoding: [0x7f,0x1f,0x7f,0xa0]
.code32
jge.u %d15, %d1, 16638

# CHECK-INST: jge.u %d15, %d1, 32766
# CHECK: encoding: [0x7f,0x1f,0xff,0xbf]
.code32
jge.u %d15, %d1, 32766

# CHECK-INST: jge.u %d15, %d14, 256
# CHECK: encoding: [0x7f,0xef,0x80,0x80]
.code32
jge.u %d15, %d14, 256

# CHECK-INST: jge.u %d15, %d14, 32512
# CHECK: encoding: [0x7f,0xef,0x80,0xbf]
.code32
jge.u %d15, %d14, 32512

# CHECK-INST: jge.u %d15, %d14, 16638
# CHECK: encoding: [0x7f,0xef,0x7f,0xa0]
.code32
jge.u %d15, %d14, 16638

# CHECK-INST: jge.u %d15, %d14, 32766
# CHECK: encoding: [0x7f,0xef,0xff,0xbf]
.code32
jge.u %d15, %d14, 32766

# CHECK-INST: jge.u %d15, %d15, 256
# CHECK: encoding: [0x7f,0xff,0x80,0x80]
.code32
jge.u %d15, %d15, 256

# CHECK-INST: jge.u %d15, %d15, 32512
# CHECK: encoding: [0x7f,0xff,0x80,0xbf]
.code32
jge.u %d15, %d15, 32512

# CHECK-INST: jge.u %d15, %d15, 16638
# CHECK: encoding: [0x7f,0xff,0x7f,0xa0]
.code32
jge.u %d15, %d15, 16638

# CHECK-INST: jge.u %d15, %d15, 32766
# CHECK: encoding: [0x7f,0xff,0xff,0xbf]
.code32
jge.u %d15, %d15, 32766


# CHECK-INST: jge.u %d0, 0, 256
# CHECK: encoding: [0xff,0x00,0x80,0x80]
.code32
jge.u %d0, 0, 256

# CHECK-INST: jge.u %d0, 0, 32512
# CHECK: encoding: [0xff,0x00,0x80,0xbf]
.code32
jge.u %d0, 0, 32512

# CHECK-INST: jge.u %d0, 0, 16638
# CHECK: encoding: [0xff,0x00,0x7f,0xa0]
.code32
jge.u %d0, 0, 16638

# CHECK-INST: jge.u %d0, 0, 32766
# CHECK: encoding: [0xff,0x00,0xff,0xbf]
.code32
jge.u %d0, 0, 32766

# CHECK-INST: jge.u %d0, 1, 256
# CHECK: encoding: [0xff,0x10,0x80,0x80]
.code32
jge.u %d0, 1, 256

# CHECK-INST: jge.u %d0, 1, 32512
# CHECK: encoding: [0xff,0x10,0x80,0xbf]
.code32
jge.u %d0, 1, 32512

# CHECK-INST: jge.u %d0, 1, 16638
# CHECK: encoding: [0xff,0x10,0x7f,0xa0]
.code32
jge.u %d0, 1, 16638

# CHECK-INST: jge.u %d0, 1, 32766
# CHECK: encoding: [0xff,0x10,0xff,0xbf]
.code32
jge.u %d0, 1, 32766

# CHECK-INST: jge.u %d0, 14, 256
# CHECK: encoding: [0xff,0xe0,0x80,0x80]
.code32
jge.u %d0, 14, 256

# CHECK-INST: jge.u %d0, 14, 32512
# CHECK: encoding: [0xff,0xe0,0x80,0xbf]
.code32
jge.u %d0, 14, 32512

# CHECK-INST: jge.u %d0, 14, 16638
# CHECK: encoding: [0xff,0xe0,0x7f,0xa0]
.code32
jge.u %d0, 14, 16638

# CHECK-INST: jge.u %d0, 14, 32766
# CHECK: encoding: [0xff,0xe0,0xff,0xbf]
.code32
jge.u %d0, 14, 32766

# CHECK-INST: jge.u %d0, 15, 256
# CHECK: encoding: [0xff,0xf0,0x80,0x80]
.code32
jge.u %d0, 15, 256

# CHECK-INST: jge.u %d0, 15, 32512
# CHECK: encoding: [0xff,0xf0,0x80,0xbf]
.code32
jge.u %d0, 15, 32512

# CHECK-INST: jge.u %d0, 15, 16638
# CHECK: encoding: [0xff,0xf0,0x7f,0xa0]
.code32
jge.u %d0, 15, 16638

# CHECK-INST: jge.u %d0, 15, 32766
# CHECK: encoding: [0xff,0xf0,0xff,0xbf]
.code32
jge.u %d0, 15, 32766

# CHECK-INST: jge.u %d1, 0, 256
# CHECK: encoding: [0xff,0x01,0x80,0x80]
.code32
jge.u %d1, 0, 256

# CHECK-INST: jge.u %d1, 0, 32512
# CHECK: encoding: [0xff,0x01,0x80,0xbf]
.code32
jge.u %d1, 0, 32512

# CHECK-INST: jge.u %d1, 0, 16638
# CHECK: encoding: [0xff,0x01,0x7f,0xa0]
.code32
jge.u %d1, 0, 16638

# CHECK-INST: jge.u %d1, 0, 32766
# CHECK: encoding: [0xff,0x01,0xff,0xbf]
.code32
jge.u %d1, 0, 32766

# CHECK-INST: jge.u %d1, 1, 256
# CHECK: encoding: [0xff,0x11,0x80,0x80]
.code32
jge.u %d1, 1, 256

# CHECK-INST: jge.u %d1, 1, 32512
# CHECK: encoding: [0xff,0x11,0x80,0xbf]
.code32
jge.u %d1, 1, 32512

# CHECK-INST: jge.u %d1, 1, 16638
# CHECK: encoding: [0xff,0x11,0x7f,0xa0]
.code32
jge.u %d1, 1, 16638

# CHECK-INST: jge.u %d1, 1, 32766
# CHECK: encoding: [0xff,0x11,0xff,0xbf]
.code32
jge.u %d1, 1, 32766

# CHECK-INST: jge.u %d1, 14, 256
# CHECK: encoding: [0xff,0xe1,0x80,0x80]
.code32
jge.u %d1, 14, 256

# CHECK-INST: jge.u %d1, 14, 32512
# CHECK: encoding: [0xff,0xe1,0x80,0xbf]
.code32
jge.u %d1, 14, 32512

# CHECK-INST: jge.u %d1, 14, 16638
# CHECK: encoding: [0xff,0xe1,0x7f,0xa0]
.code32
jge.u %d1, 14, 16638

# CHECK-INST: jge.u %d1, 14, 32766
# CHECK: encoding: [0xff,0xe1,0xff,0xbf]
.code32
jge.u %d1, 14, 32766

# CHECK-INST: jge.u %d1, 15, 256
# CHECK: encoding: [0xff,0xf1,0x80,0x80]
.code32
jge.u %d1, 15, 256

# CHECK-INST: jge.u %d1, 15, 32512
# CHECK: encoding: [0xff,0xf1,0x80,0xbf]
.code32
jge.u %d1, 15, 32512

# CHECK-INST: jge.u %d1, 15, 16638
# CHECK: encoding: [0xff,0xf1,0x7f,0xa0]
.code32
jge.u %d1, 15, 16638

# CHECK-INST: jge.u %d1, 15, 32766
# CHECK: encoding: [0xff,0xf1,0xff,0xbf]
.code32
jge.u %d1, 15, 32766

# CHECK-INST: jge.u %d14, 0, 256
# CHECK: encoding: [0xff,0x0e,0x80,0x80]
.code32
jge.u %d14, 0, 256

# CHECK-INST: jge.u %d14, 0, 32512
# CHECK: encoding: [0xff,0x0e,0x80,0xbf]
.code32
jge.u %d14, 0, 32512

# CHECK-INST: jge.u %d14, 0, 16638
# CHECK: encoding: [0xff,0x0e,0x7f,0xa0]
.code32
jge.u %d14, 0, 16638

# CHECK-INST: jge.u %d14, 0, 32766
# CHECK: encoding: [0xff,0x0e,0xff,0xbf]
.code32
jge.u %d14, 0, 32766

# CHECK-INST: jge.u %d14, 1, 256
# CHECK: encoding: [0xff,0x1e,0x80,0x80]
.code32
jge.u %d14, 1, 256

# CHECK-INST: jge.u %d14, 1, 32512
# CHECK: encoding: [0xff,0x1e,0x80,0xbf]
.code32
jge.u %d14, 1, 32512

# CHECK-INST: jge.u %d14, 1, 16638
# CHECK: encoding: [0xff,0x1e,0x7f,0xa0]
.code32
jge.u %d14, 1, 16638

# CHECK-INST: jge.u %d14, 1, 32766
# CHECK: encoding: [0xff,0x1e,0xff,0xbf]
.code32
jge.u %d14, 1, 32766

# CHECK-INST: jge.u %d14, 14, 256
# CHECK: encoding: [0xff,0xee,0x80,0x80]
.code32
jge.u %d14, 14, 256

# CHECK-INST: jge.u %d14, 14, 32512
# CHECK: encoding: [0xff,0xee,0x80,0xbf]
.code32
jge.u %d14, 14, 32512

# CHECK-INST: jge.u %d14, 14, 16638
# CHECK: encoding: [0xff,0xee,0x7f,0xa0]
.code32
jge.u %d14, 14, 16638

# CHECK-INST: jge.u %d14, 14, 32766
# CHECK: encoding: [0xff,0xee,0xff,0xbf]
.code32
jge.u %d14, 14, 32766

# CHECK-INST: jge.u %d14, 15, 256
# CHECK: encoding: [0xff,0xfe,0x80,0x80]
.code32
jge.u %d14, 15, 256

# CHECK-INST: jge.u %d14, 15, 32512
# CHECK: encoding: [0xff,0xfe,0x80,0xbf]
.code32
jge.u %d14, 15, 32512

# CHECK-INST: jge.u %d14, 15, 16638
# CHECK: encoding: [0xff,0xfe,0x7f,0xa0]
.code32
jge.u %d14, 15, 16638

# CHECK-INST: jge.u %d14, 15, 32766
# CHECK: encoding: [0xff,0xfe,0xff,0xbf]
.code32
jge.u %d14, 15, 32766

# CHECK-INST: jge.u %d15, 0, 256
# CHECK: encoding: [0xff,0x0f,0x80,0x80]
.code32
jge.u %d15, 0, 256

# CHECK-INST: jge.u %d15, 0, 32512
# CHECK: encoding: [0xff,0x0f,0x80,0xbf]
.code32
jge.u %d15, 0, 32512

# CHECK-INST: jge.u %d15, 0, 16638
# CHECK: encoding: [0xff,0x0f,0x7f,0xa0]
.code32
jge.u %d15, 0, 16638

# CHECK-INST: jge.u %d15, 0, 32766
# CHECK: encoding: [0xff,0x0f,0xff,0xbf]
.code32
jge.u %d15, 0, 32766

# CHECK-INST: jge.u %d15, 1, 256
# CHECK: encoding: [0xff,0x1f,0x80,0x80]
.code32
jge.u %d15, 1, 256

# CHECK-INST: jge.u %d15, 1, 32512
# CHECK: encoding: [0xff,0x1f,0x80,0xbf]
.code32
jge.u %d15, 1, 32512

# CHECK-INST: jge.u %d15, 1, 16638
# CHECK: encoding: [0xff,0x1f,0x7f,0xa0]
.code32
jge.u %d15, 1, 16638

# CHECK-INST: jge.u %d15, 1, 32766
# CHECK: encoding: [0xff,0x1f,0xff,0xbf]
.code32
jge.u %d15, 1, 32766

# CHECK-INST: jge.u %d15, 14, 256
# CHECK: encoding: [0xff,0xef,0x80,0x80]
.code32
jge.u %d15, 14, 256

# CHECK-INST: jge.u %d15, 14, 32512
# CHECK: encoding: [0xff,0xef,0x80,0xbf]
.code32
jge.u %d15, 14, 32512

# CHECK-INST: jge.u %d15, 14, 16638
# CHECK: encoding: [0xff,0xef,0x7f,0xa0]
.code32
jge.u %d15, 14, 16638

# CHECK-INST: jge.u %d15, 14, 32766
# CHECK: encoding: [0xff,0xef,0xff,0xbf]
.code32
jge.u %d15, 14, 32766

# CHECK-INST: jge.u %d15, 15, 256
# CHECK: encoding: [0xff,0xff,0x80,0x80]
.code32
jge.u %d15, 15, 256

# CHECK-INST: jge.u %d15, 15, 32512
# CHECK: encoding: [0xff,0xff,0x80,0xbf]
.code32
jge.u %d15, 15, 32512

# CHECK-INST: jge.u %d15, 15, 16638
# CHECK: encoding: [0xff,0xff,0x7f,0xa0]
.code32
jge.u %d15, 15, 16638

# CHECK-INST: jge.u %d15, 15, 32766
# CHECK: encoding: [0xff,0xff,0xff,0xbf]
.code32
jge.u %d15, 15, 32766


# CHECK-INST: jgez %d0, 0
# CHECK: encoding: [0xce,0x00]
.code16
jgez %d0, 0

# CHECK-INST: jgez %d0, 2
# CHECK: encoding: [0xce,0x01]
.code16
jgez %d0, 2

# CHECK-INST: jgez %d0, 28
# CHECK: encoding: [0xce,0x0e]
.code16
jgez %d0, 28

# CHECK-INST: jgez %d0, 30
# CHECK: encoding: [0xce,0x0f]
.code16
jgez %d0, 30

# CHECK-INST: jgez %d1, 0
# CHECK: encoding: [0xce,0x10]
.code16
jgez %d1, 0

# CHECK-INST: jgez %d1, 2
# CHECK: encoding: [0xce,0x11]
.code16
jgez %d1, 2

# CHECK-INST: jgez %d1, 28
# CHECK: encoding: [0xce,0x1e]
.code16
jgez %d1, 28

# CHECK-INST: jgez %d1, 30
# CHECK: encoding: [0xce,0x1f]
.code16
jgez %d1, 30

# CHECK-INST: jgez %d14, 0
# CHECK: encoding: [0xce,0xe0]
.code16
jgez %d14, 0

# CHECK-INST: jgez %d14, 2
# CHECK: encoding: [0xce,0xe1]
.code16
jgez %d14, 2

# CHECK-INST: jgez %d14, 28
# CHECK: encoding: [0xce,0xee]
.code16
jgez %d14, 28

# CHECK-INST: jgez %d14, 30
# CHECK: encoding: [0xce,0xef]
.code16
jgez %d14, 30

# CHECK-INST: jgez %d15, 0
# CHECK: encoding: [0xce,0xf0]
.code16
jgez %d15, 0

# CHECK-INST: jgez %d15, 2
# CHECK: encoding: [0xce,0xf1]
.code16
jgez %d15, 2

# CHECK-INST: jgez %d15, 28
# CHECK: encoding: [0xce,0xfe]
.code16
jgez %d15, 28

# CHECK-INST: jgez %d15, 30
# CHECK: encoding: [0xce,0xff]
.code16
jgez %d15, 30
 
# CHECK-INST: jgtz %d0, 0
# CHECK: encoding: [0x4e,0x00]
.code16
jgtz %d0, 0

# CHECK-INST: jgtz %d0, 2
# CHECK: encoding: [0x4e,0x01]
.code16
jgtz %d0, 2

# CHECK-INST: jgtz %d0, 28
# CHECK: encoding: [0x4e,0x0e]
.code16
jgtz %d0, 28

# CHECK-INST: jgtz %d0, 30
# CHECK: encoding: [0x4e,0x0f]
.code16
jgtz %d0, 30

# CHECK-INST: jgtz %d1, 0
# CHECK: encoding: [0x4e,0x10]
.code16
jgtz %d1, 0

# CHECK-INST: jgtz %d1, 2
# CHECK: encoding: [0x4e,0x11]
.code16
jgtz %d1, 2

# CHECK-INST: jgtz %d1, 28
# CHECK: encoding: [0x4e,0x1e]
.code16
jgtz %d1, 28

# CHECK-INST: jgtz %d1, 30
# CHECK: encoding: [0x4e,0x1f]
.code16
jgtz %d1, 30

# CHECK-INST: jgtz %d14, 0
# CHECK: encoding: [0x4e,0xe0]
.code16
jgtz %d14, 0

# CHECK-INST: jgtz %d14, 2
# CHECK: encoding: [0x4e,0xe1]
.code16
jgtz %d14, 2

# CHECK-INST: jgtz %d14, 28
# CHECK: encoding: [0x4e,0xee]
.code16
jgtz %d14, 28

# CHECK-INST: jgtz %d14, 30
# CHECK: encoding: [0x4e,0xef]
.code16
jgtz %d14, 30

# CHECK-INST: jgtz %d15, 0
# CHECK: encoding: [0x4e,0xf0]
.code16
jgtz %d15, 0

# CHECK-INST: jgtz %d15, 2
# CHECK: encoding: [0x4e,0xf1]
.code16
jgtz %d15, 2

# CHECK-INST: jgtz %d15, 28
# CHECK: encoding: [0x4e,0xfe]
.code16
jgtz %d15, 28

# CHECK-INST: jgtz %d15, 30
# CHECK: encoding: [0x4e,0xff]
.code16
jgtz %d15, 30


# CHECK-INST: jlez %d0, 0
# CHECK: encoding: [0x8e,0x00]
.code16
jlez %d0, 0

# CHECK-INST: jlez %d0, 2
# CHECK: encoding: [0x8e,0x01]
.code16
jlez %d0, 2

# CHECK-INST: jlez %d0, 28
# CHECK: encoding: [0x8e,0x0e]
.code16
jlez %d0, 28

# CHECK-INST: jlez %d0, 30
# CHECK: encoding: [0x8e,0x0f]
.code16
jlez %d0, 30

# CHECK-INST: jlez %d1, 0
# CHECK: encoding: [0x8e,0x10]
.code16
jlez %d1, 0

# CHECK-INST: jlez %d1, 2
# CHECK: encoding: [0x8e,0x11]
.code16
jlez %d1, 2

# CHECK-INST: jlez %d1, 28
# CHECK: encoding: [0x8e,0x1e]
.code16
jlez %d1, 28

# CHECK-INST: jlez %d1, 30
# CHECK: encoding: [0x8e,0x1f]
.code16
jlez %d1, 30

# CHECK-INST: jlez %d14, 0
# CHECK: encoding: [0x8e,0xe0]
.code16
jlez %d14, 0

# CHECK-INST: jlez %d14, 2
# CHECK: encoding: [0x8e,0xe1]
.code16
jlez %d14, 2

# CHECK-INST: jlez %d14, 28
# CHECK: encoding: [0x8e,0xee]
.code16
jlez %d14, 28

# CHECK-INST: jlez %d14, 30
# CHECK: encoding: [0x8e,0xef]
.code16
jlez %d14, 30

# CHECK-INST: jlez %d15, 0
# CHECK: encoding: [0x8e,0xf0]
.code16
jlez %d15, 0

# CHECK-INST: jlez %d15, 2
# CHECK: encoding: [0x8e,0xf1]
.code16
jlez %d15, 2

# CHECK-INST: jlez %d15, 28
# CHECK: encoding: [0x8e,0xfe]
.code16
jlez %d15, 28

# CHECK-INST: jlez %d15, 30
# CHECK: encoding: [0x8e,0xff]
.code16
jlez %d15, 30


# CHECK-INST: jlt %d0, %d0, 256
# CHECK: encoding: [0x3f,0x00,0x80,0x00]
.code32
jlt %d0, %d0, 256

# CHECK-INST: jlt %d0, %d0, 32512
# CHECK: encoding: [0x3f,0x00,0x80,0x3f]
.code32
jlt %d0, %d0, 32512

# CHECK-INST: jlt %d0, %d0, 16638
# CHECK: encoding: [0x3f,0x00,0x7f,0x20]
.code32
jlt %d0, %d0, 16638

# CHECK-INST: jlt %d0, %d0, 32766
# CHECK: encoding: [0x3f,0x00,0xff,0x3f]
.code32
jlt %d0, %d0, 32766

# CHECK-INST: jlt %d0, %d1, 256
# CHECK: encoding: [0x3f,0x10,0x80,0x00]
.code32
jlt %d0, %d1, 256

# CHECK-INST: jlt %d0, %d1, 32512
# CHECK: encoding: [0x3f,0x10,0x80,0x3f]
.code32
jlt %d0, %d1, 32512

# CHECK-INST: jlt %d0, %d1, 16638
# CHECK: encoding: [0x3f,0x10,0x7f,0x20]
.code32
jlt %d0, %d1, 16638

# CHECK-INST: jlt %d0, %d1, 32766
# CHECK: encoding: [0x3f,0x10,0xff,0x3f]
.code32
jlt %d0, %d1, 32766

# CHECK-INST: jlt %d0, %d14, 256
# CHECK: encoding: [0x3f,0xe0,0x80,0x00]
.code32
jlt %d0, %d14, 256

# CHECK-INST: jlt %d0, %d14, 32512
# CHECK: encoding: [0x3f,0xe0,0x80,0x3f]
.code32
jlt %d0, %d14, 32512

# CHECK-INST: jlt %d0, %d14, 16638
# CHECK: encoding: [0x3f,0xe0,0x7f,0x20]
.code32
jlt %d0, %d14, 16638

# CHECK-INST: jlt %d0, %d14, 32766
# CHECK: encoding: [0x3f,0xe0,0xff,0x3f]
.code32
jlt %d0, %d14, 32766

# CHECK-INST: jlt %d0, %d15, 256
# CHECK: encoding: [0x3f,0xf0,0x80,0x00]
.code32
jlt %d0, %d15, 256

# CHECK-INST: jlt %d0, %d15, 32512
# CHECK: encoding: [0x3f,0xf0,0x80,0x3f]
.code32
jlt %d0, %d15, 32512

# CHECK-INST: jlt %d0, %d15, 16638
# CHECK: encoding: [0x3f,0xf0,0x7f,0x20]
.code32
jlt %d0, %d15, 16638

# CHECK-INST: jlt %d0, %d15, 32766
# CHECK: encoding: [0x3f,0xf0,0xff,0x3f]
.code32
jlt %d0, %d15, 32766

# CHECK-INST: jlt %d1, %d0, 256
# CHECK: encoding: [0x3f,0x01,0x80,0x00]
.code32
jlt %d1, %d0, 256

# CHECK-INST: jlt %d1, %d0, 32512
# CHECK: encoding: [0x3f,0x01,0x80,0x3f]
.code32
jlt %d1, %d0, 32512

# CHECK-INST: jlt %d1, %d0, 16638
# CHECK: encoding: [0x3f,0x01,0x7f,0x20]
.code32
jlt %d1, %d0, 16638

# CHECK-INST: jlt %d1, %d0, 32766
# CHECK: encoding: [0x3f,0x01,0xff,0x3f]
.code32
jlt %d1, %d0, 32766

# CHECK-INST: jlt %d1, %d1, 256
# CHECK: encoding: [0x3f,0x11,0x80,0x00]
.code32
jlt %d1, %d1, 256

# CHECK-INST: jlt %d1, %d1, 32512
# CHECK: encoding: [0x3f,0x11,0x80,0x3f]
.code32
jlt %d1, %d1, 32512

# CHECK-INST: jlt %d1, %d1, 16638
# CHECK: encoding: [0x3f,0x11,0x7f,0x20]
.code32
jlt %d1, %d1, 16638

# CHECK-INST: jlt %d1, %d1, 32766
# CHECK: encoding: [0x3f,0x11,0xff,0x3f]
.code32
jlt %d1, %d1, 32766

# CHECK-INST: jlt %d1, %d14, 256
# CHECK: encoding: [0x3f,0xe1,0x80,0x00]
.code32
jlt %d1, %d14, 256

# CHECK-INST: jlt %d1, %d14, 32512
# CHECK: encoding: [0x3f,0xe1,0x80,0x3f]
.code32
jlt %d1, %d14, 32512

# CHECK-INST: jlt %d1, %d14, 16638
# CHECK: encoding: [0x3f,0xe1,0x7f,0x20]
.code32
jlt %d1, %d14, 16638

# CHECK-INST: jlt %d1, %d14, 32766
# CHECK: encoding: [0x3f,0xe1,0xff,0x3f]
.code32
jlt %d1, %d14, 32766

# CHECK-INST: jlt %d1, %d15, 256
# CHECK: encoding: [0x3f,0xf1,0x80,0x00]
.code32
jlt %d1, %d15, 256

# CHECK-INST: jlt %d1, %d15, 32512
# CHECK: encoding: [0x3f,0xf1,0x80,0x3f]
.code32
jlt %d1, %d15, 32512

# CHECK-INST: jlt %d1, %d15, 16638
# CHECK: encoding: [0x3f,0xf1,0x7f,0x20]
.code32
jlt %d1, %d15, 16638

# CHECK-INST: jlt %d1, %d15, 32766
# CHECK: encoding: [0x3f,0xf1,0xff,0x3f]
.code32
jlt %d1, %d15, 32766

# CHECK-INST: jlt %d14, %d0, 256
# CHECK: encoding: [0x3f,0x0e,0x80,0x00]
.code32
jlt %d14, %d0, 256

# CHECK-INST: jlt %d14, %d0, 32512
# CHECK: encoding: [0x3f,0x0e,0x80,0x3f]
.code32
jlt %d14, %d0, 32512

# CHECK-INST: jlt %d14, %d0, 16638
# CHECK: encoding: [0x3f,0x0e,0x7f,0x20]
.code32
jlt %d14, %d0, 16638

# CHECK-INST: jlt %d14, %d0, 32766
# CHECK: encoding: [0x3f,0x0e,0xff,0x3f]
.code32
jlt %d14, %d0, 32766

# CHECK-INST: jlt %d14, %d1, 256
# CHECK: encoding: [0x3f,0x1e,0x80,0x00]
.code32
jlt %d14, %d1, 256

# CHECK-INST: jlt %d14, %d1, 32512
# CHECK: encoding: [0x3f,0x1e,0x80,0x3f]
.code32
jlt %d14, %d1, 32512

# CHECK-INST: jlt %d14, %d1, 16638
# CHECK: encoding: [0x3f,0x1e,0x7f,0x20]
.code32
jlt %d14, %d1, 16638

# CHECK-INST: jlt %d14, %d1, 32766
# CHECK: encoding: [0x3f,0x1e,0xff,0x3f]
.code32
jlt %d14, %d1, 32766

# CHECK-INST: jlt %d14, %d14, 256
# CHECK: encoding: [0x3f,0xee,0x80,0x00]
.code32
jlt %d14, %d14, 256

# CHECK-INST: jlt %d14, %d14, 32512
# CHECK: encoding: [0x3f,0xee,0x80,0x3f]
.code32
jlt %d14, %d14, 32512

# CHECK-INST: jlt %d14, %d14, 16638
# CHECK: encoding: [0x3f,0xee,0x7f,0x20]
.code32
jlt %d14, %d14, 16638

# CHECK-INST: jlt %d14, %d14, 32766
# CHECK: encoding: [0x3f,0xee,0xff,0x3f]
.code32
jlt %d14, %d14, 32766

# CHECK-INST: jlt %d14, %d15, 256
# CHECK: encoding: [0x3f,0xfe,0x80,0x00]
.code32
jlt %d14, %d15, 256

# CHECK-INST: jlt %d14, %d15, 32512
# CHECK: encoding: [0x3f,0xfe,0x80,0x3f]
.code32
jlt %d14, %d15, 32512

# CHECK-INST: jlt %d14, %d15, 16638
# CHECK: encoding: [0x3f,0xfe,0x7f,0x20]
.code32
jlt %d14, %d15, 16638

# CHECK-INST: jlt %d14, %d15, 32766
# CHECK: encoding: [0x3f,0xfe,0xff,0x3f]
.code32
jlt %d14, %d15, 32766

# CHECK-INST: jlt %d15, %d0, 256
# CHECK: encoding: [0x3f,0x0f,0x80,0x00]
.code32
jlt %d15, %d0, 256

# CHECK-INST: jlt %d15, %d0, 32512
# CHECK: encoding: [0x3f,0x0f,0x80,0x3f]
.code32
jlt %d15, %d0, 32512

# CHECK-INST: jlt %d15, %d0, 16638
# CHECK: encoding: [0x3f,0x0f,0x7f,0x20]
.code32
jlt %d15, %d0, 16638

# CHECK-INST: jlt %d15, %d0, 32766
# CHECK: encoding: [0x3f,0x0f,0xff,0x3f]
.code32
jlt %d15, %d0, 32766

# CHECK-INST: jlt %d15, %d1, 256
# CHECK: encoding: [0x3f,0x1f,0x80,0x00]
.code32
jlt %d15, %d1, 256

# CHECK-INST: jlt %d15, %d1, 32512
# CHECK: encoding: [0x3f,0x1f,0x80,0x3f]
.code32
jlt %d15, %d1, 32512

# CHECK-INST: jlt %d15, %d1, 16638
# CHECK: encoding: [0x3f,0x1f,0x7f,0x20]
.code32
jlt %d15, %d1, 16638

# CHECK-INST: jlt %d15, %d1, 32766
# CHECK: encoding: [0x3f,0x1f,0xff,0x3f]
.code32
jlt %d15, %d1, 32766

# CHECK-INST: jlt %d15, %d14, 256
# CHECK: encoding: [0x3f,0xef,0x80,0x00]
.code32
jlt %d15, %d14, 256

# CHECK-INST: jlt %d15, %d14, 32512
# CHECK: encoding: [0x3f,0xef,0x80,0x3f]
.code32
jlt %d15, %d14, 32512

# CHECK-INST: jlt %d15, %d14, 16638
# CHECK: encoding: [0x3f,0xef,0x7f,0x20]
.code32
jlt %d15, %d14, 16638

# CHECK-INST: jlt %d15, %d14, 32766
# CHECK: encoding: [0x3f,0xef,0xff,0x3f]
.code32
jlt %d15, %d14, 32766

# CHECK-INST: jlt %d15, %d15, 256
# CHECK: encoding: [0x3f,0xff,0x80,0x00]
.code32
jlt %d15, %d15, 256

# CHECK-INST: jlt %d15, %d15, 32512
# CHECK: encoding: [0x3f,0xff,0x80,0x3f]
.code32
jlt %d15, %d15, 32512

# CHECK-INST: jlt %d15, %d15, 16638
# CHECK: encoding: [0x3f,0xff,0x7f,0x20]
.code32
jlt %d15, %d15, 16638

# CHECK-INST: jlt %d15, %d15, 32766
# CHECK: encoding: [0x3f,0xff,0xff,0x3f]
.code32
jlt %d15, %d15, 32766


# CHECK-INST: jlt %d0, -8, 256
# CHECK: encoding: [0xbf,0x80,0x80,0x00]
.code32
jlt %d0, -8, 256

# CHECK-INST: jlt %d0, -8, 32512
# CHECK: encoding: [0xbf,0x80,0x80,0x3f]
.code32
jlt %d0, -8, 32512

# CHECK-INST: jlt %d0, -8, 16638
# CHECK: encoding: [0xbf,0x80,0x7f,0x20]
.code32
jlt %d0, -8, 16638

# CHECK-INST: jlt %d0, -8, 32766
# CHECK: encoding: [0xbf,0x80,0xff,0x3f]
.code32
jlt %d0, -8, 32766

# CHECK-INST: jlt %d0, -1, 256
# CHECK: encoding: [0xbf,0xf0,0x80,0x00]
.code32
jlt %d0, -1, 256

# CHECK-INST: jlt %d0, -1, 32512
# CHECK: encoding: [0xbf,0xf0,0x80,0x3f]
.code32
jlt %d0, -1, 32512

# CHECK-INST: jlt %d0, -1, 16638
# CHECK: encoding: [0xbf,0xf0,0x7f,0x20]
.code32
jlt %d0, -1, 16638

# CHECK-INST: jlt %d0, -1, 32766
# CHECK: encoding: [0xbf,0xf0,0xff,0x3f]
.code32
jlt %d0, -1, 32766

# CHECK-INST: jlt %d0, 0, 256
# CHECK: encoding: [0xbf,0x00,0x80,0x00]
.code32
jlt %d0, 0, 256

# CHECK-INST: jlt %d0, 0, 32512
# CHECK: encoding: [0xbf,0x00,0x80,0x3f]
.code32
jlt %d0, 0, 32512

# CHECK-INST: jlt %d0, 0, 16638
# CHECK: encoding: [0xbf,0x00,0x7f,0x20]
.code32
jlt %d0, 0, 16638

# CHECK-INST: jlt %d0, 0, 32766
# CHECK: encoding: [0xbf,0x00,0xff,0x3f]
.code32
jlt %d0, 0, 32766

# CHECK-INST: jlt %d0, 1, 256
# CHECK: encoding: [0xbf,0x10,0x80,0x00]
.code32
jlt %d0, 1, 256

# CHECK-INST: jlt %d0, 1, 32512
# CHECK: encoding: [0xbf,0x10,0x80,0x3f]
.code32
jlt %d0, 1, 32512

# CHECK-INST: jlt %d0, 1, 16638
# CHECK: encoding: [0xbf,0x10,0x7f,0x20]
.code32
jlt %d0, 1, 16638

# CHECK-INST: jlt %d0, 1, 32766
# CHECK: encoding: [0xbf,0x10,0xff,0x3f]
.code32
jlt %d0, 1, 32766

# CHECK-INST: jlt %d0, 7, 256
# CHECK: encoding: [0xbf,0x70,0x80,0x00]
.code32
jlt %d0, 7, 256

# CHECK-INST: jlt %d0, 7, 32512
# CHECK: encoding: [0xbf,0x70,0x80,0x3f]
.code32
jlt %d0, 7, 32512

# CHECK-INST: jlt %d0, 7, 16638
# CHECK: encoding: [0xbf,0x70,0x7f,0x20]
.code32
jlt %d0, 7, 16638

# CHECK-INST: jlt %d0, 7, 32766
# CHECK: encoding: [0xbf,0x70,0xff,0x3f]
.code32
jlt %d0, 7, 32766

# CHECK-INST: jlt %d1, -8, 256
# CHECK: encoding: [0xbf,0x81,0x80,0x00]
.code32
jlt %d1, -8, 256

# CHECK-INST: jlt %d1, -8, 32512
# CHECK: encoding: [0xbf,0x81,0x80,0x3f]
.code32
jlt %d1, -8, 32512

# CHECK-INST: jlt %d1, -8, 16638
# CHECK: encoding: [0xbf,0x81,0x7f,0x20]
.code32
jlt %d1, -8, 16638

# CHECK-INST: jlt %d1, -8, 32766
# CHECK: encoding: [0xbf,0x81,0xff,0x3f]
.code32
jlt %d1, -8, 32766

# CHECK-INST: jlt %d1, -1, 256
# CHECK: encoding: [0xbf,0xf1,0x80,0x00]
.code32
jlt %d1, -1, 256

# CHECK-INST: jlt %d1, -1, 32512
# CHECK: encoding: [0xbf,0xf1,0x80,0x3f]
.code32
jlt %d1, -1, 32512

# CHECK-INST: jlt %d1, -1, 16638
# CHECK: encoding: [0xbf,0xf1,0x7f,0x20]
.code32
jlt %d1, -1, 16638

# CHECK-INST: jlt %d1, -1, 32766
# CHECK: encoding: [0xbf,0xf1,0xff,0x3f]
.code32
jlt %d1, -1, 32766

# CHECK-INST: jlt %d1, 0, 256
# CHECK: encoding: [0xbf,0x01,0x80,0x00]
.code32
jlt %d1, 0, 256

# CHECK-INST: jlt %d1, 0, 32512
# CHECK: encoding: [0xbf,0x01,0x80,0x3f]
.code32
jlt %d1, 0, 32512

# CHECK-INST: jlt %d1, 0, 16638
# CHECK: encoding: [0xbf,0x01,0x7f,0x20]
.code32
jlt %d1, 0, 16638

# CHECK-INST: jlt %d1, 0, 32766
# CHECK: encoding: [0xbf,0x01,0xff,0x3f]
.code32
jlt %d1, 0, 32766

# CHECK-INST: jlt %d1, 1, 256
# CHECK: encoding: [0xbf,0x11,0x80,0x00]
.code32
jlt %d1, 1, 256

# CHECK-INST: jlt %d1, 1, 32512
# CHECK: encoding: [0xbf,0x11,0x80,0x3f]
.code32
jlt %d1, 1, 32512

# CHECK-INST: jlt %d1, 1, 16638
# CHECK: encoding: [0xbf,0x11,0x7f,0x20]
.code32
jlt %d1, 1, 16638

# CHECK-INST: jlt %d1, 1, 32766
# CHECK: encoding: [0xbf,0x11,0xff,0x3f]
.code32
jlt %d1, 1, 32766

# CHECK-INST: jlt %d1, 7, 256
# CHECK: encoding: [0xbf,0x71,0x80,0x00]
.code32
jlt %d1, 7, 256

# CHECK-INST: jlt %d1, 7, 32512
# CHECK: encoding: [0xbf,0x71,0x80,0x3f]
.code32
jlt %d1, 7, 32512

# CHECK-INST: jlt %d1, 7, 16638
# CHECK: encoding: [0xbf,0x71,0x7f,0x20]
.code32
jlt %d1, 7, 16638

# CHECK-INST: jlt %d1, 7, 32766
# CHECK: encoding: [0xbf,0x71,0xff,0x3f]
.code32
jlt %d1, 7, 32766

# CHECK-INST: jlt %d14, -8, 256
# CHECK: encoding: [0xbf,0x8e,0x80,0x00]
.code32
jlt %d14, -8, 256

# CHECK-INST: jlt %d14, -8, 32512
# CHECK: encoding: [0xbf,0x8e,0x80,0x3f]
.code32
jlt %d14, -8, 32512

# CHECK-INST: jlt %d14, -8, 16638
# CHECK: encoding: [0xbf,0x8e,0x7f,0x20]
.code32
jlt %d14, -8, 16638

# CHECK-INST: jlt %d14, -8, 32766
# CHECK: encoding: [0xbf,0x8e,0xff,0x3f]
.code32
jlt %d14, -8, 32766

# CHECK-INST: jlt %d14, -1, 256
# CHECK: encoding: [0xbf,0xfe,0x80,0x00]
.code32
jlt %d14, -1, 256

# CHECK-INST: jlt %d14, -1, 32512
# CHECK: encoding: [0xbf,0xfe,0x80,0x3f]
.code32
jlt %d14, -1, 32512

# CHECK-INST: jlt %d14, -1, 16638
# CHECK: encoding: [0xbf,0xfe,0x7f,0x20]
.code32
jlt %d14, -1, 16638

# CHECK-INST: jlt %d14, -1, 32766
# CHECK: encoding: [0xbf,0xfe,0xff,0x3f]
.code32
jlt %d14, -1, 32766

# CHECK-INST: jlt %d14, 0, 256
# CHECK: encoding: [0xbf,0x0e,0x80,0x00]
.code32
jlt %d14, 0, 256

# CHECK-INST: jlt %d14, 0, 32512
# CHECK: encoding: [0xbf,0x0e,0x80,0x3f]
.code32
jlt %d14, 0, 32512

# CHECK-INST: jlt %d14, 0, 16638
# CHECK: encoding: [0xbf,0x0e,0x7f,0x20]
.code32
jlt %d14, 0, 16638

# CHECK-INST: jlt %d14, 0, 32766
# CHECK: encoding: [0xbf,0x0e,0xff,0x3f]
.code32
jlt %d14, 0, 32766

# CHECK-INST: jlt %d14, 1, 256
# CHECK: encoding: [0xbf,0x1e,0x80,0x00]
.code32
jlt %d14, 1, 256

# CHECK-INST: jlt %d14, 1, 32512
# CHECK: encoding: [0xbf,0x1e,0x80,0x3f]
.code32
jlt %d14, 1, 32512

# CHECK-INST: jlt %d14, 1, 16638
# CHECK: encoding: [0xbf,0x1e,0x7f,0x20]
.code32
jlt %d14, 1, 16638

# CHECK-INST: jlt %d14, 1, 32766
# CHECK: encoding: [0xbf,0x1e,0xff,0x3f]
.code32
jlt %d14, 1, 32766

# CHECK-INST: jlt %d14, 7, 256
# CHECK: encoding: [0xbf,0x7e,0x80,0x00]
.code32
jlt %d14, 7, 256

# CHECK-INST: jlt %d14, 7, 32512
# CHECK: encoding: [0xbf,0x7e,0x80,0x3f]
.code32
jlt %d14, 7, 32512

# CHECK-INST: jlt %d14, 7, 16638
# CHECK: encoding: [0xbf,0x7e,0x7f,0x20]
.code32
jlt %d14, 7, 16638

# CHECK-INST: jlt %d14, 7, 32766
# CHECK: encoding: [0xbf,0x7e,0xff,0x3f]
.code32
jlt %d14, 7, 32766

# CHECK-INST: jlt %d15, -8, 256
# CHECK: encoding: [0xbf,0x8f,0x80,0x00]
.code32
jlt %d15, -8, 256

# CHECK-INST: jlt %d15, -8, 32512
# CHECK: encoding: [0xbf,0x8f,0x80,0x3f]
.code32
jlt %d15, -8, 32512

# CHECK-INST: jlt %d15, -8, 16638
# CHECK: encoding: [0xbf,0x8f,0x7f,0x20]
.code32
jlt %d15, -8, 16638

# CHECK-INST: jlt %d15, -8, 32766
# CHECK: encoding: [0xbf,0x8f,0xff,0x3f]
.code32
jlt %d15, -8, 32766

# CHECK-INST: jlt %d15, -1, 256
# CHECK: encoding: [0xbf,0xff,0x80,0x00]
.code32
jlt %d15, -1, 256

# CHECK-INST: jlt %d15, -1, 32512
# CHECK: encoding: [0xbf,0xff,0x80,0x3f]
.code32
jlt %d15, -1, 32512

# CHECK-INST: jlt %d15, -1, 16638
# CHECK: encoding: [0xbf,0xff,0x7f,0x20]
.code32
jlt %d15, -1, 16638

# CHECK-INST: jlt %d15, -1, 32766
# CHECK: encoding: [0xbf,0xff,0xff,0x3f]
.code32
jlt %d15, -1, 32766

# CHECK-INST: jlt %d15, 0, 256
# CHECK: encoding: [0xbf,0x0f,0x80,0x00]
.code32
jlt %d15, 0, 256

# CHECK-INST: jlt %d15, 0, 32512
# CHECK: encoding: [0xbf,0x0f,0x80,0x3f]
.code32
jlt %d15, 0, 32512

# CHECK-INST: jlt %d15, 0, 16638
# CHECK: encoding: [0xbf,0x0f,0x7f,0x20]
.code32
jlt %d15, 0, 16638

# CHECK-INST: jlt %d15, 0, 32766
# CHECK: encoding: [0xbf,0x0f,0xff,0x3f]
.code32
jlt %d15, 0, 32766

# CHECK-INST: jlt %d15, 1, 256
# CHECK: encoding: [0xbf,0x1f,0x80,0x00]
.code32
jlt %d15, 1, 256

# CHECK-INST: jlt %d15, 1, 32512
# CHECK: encoding: [0xbf,0x1f,0x80,0x3f]
.code32
jlt %d15, 1, 32512

# CHECK-INST: jlt %d15, 1, 16638
# CHECK: encoding: [0xbf,0x1f,0x7f,0x20]
.code32
jlt %d15, 1, 16638

# CHECK-INST: jlt %d15, 1, 32766
# CHECK: encoding: [0xbf,0x1f,0xff,0x3f]
.code32
jlt %d15, 1, 32766

# CHECK-INST: jlt %d15, 7, 256
# CHECK: encoding: [0xbf,0x7f,0x80,0x00]
.code32
jlt %d15, 7, 256

# CHECK-INST: jlt %d15, 7, 32512
# CHECK: encoding: [0xbf,0x7f,0x80,0x3f]
.code32
jlt %d15, 7, 32512

# CHECK-INST: jlt %d15, 7, 16638
# CHECK: encoding: [0xbf,0x7f,0x7f,0x20]
.code32
jlt %d15, 7, 16638

# CHECK-INST: jlt %d15, 7, 32766
# CHECK: encoding: [0xbf,0x7f,0xff,0x3f]
.code32
jlt %d15, 7, 32766


# CHECK-INST: jlt.u %d0, %d0, 256
# CHECK: encoding: [0x3f,0x00,0x80,0x80]
.code32
jlt.u %d0, %d0, 256

# CHECK-INST: jlt.u %d0, %d0, 32512
# CHECK: encoding: [0x3f,0x00,0x80,0xbf]
.code32
jlt.u %d0, %d0, 32512

# CHECK-INST: jlt.u %d0, %d0, 16638
# CHECK: encoding: [0x3f,0x00,0x7f,0xa0]
.code32
jlt.u %d0, %d0, 16638

# CHECK-INST: jlt.u %d0, %d0, 32766
# CHECK: encoding: [0x3f,0x00,0xff,0xbf]
.code32
jlt.u %d0, %d0, 32766

# CHECK-INST: jlt.u %d0, %d1, 256
# CHECK: encoding: [0x3f,0x10,0x80,0x80]
.code32
jlt.u %d0, %d1, 256

# CHECK-INST: jlt.u %d0, %d1, 32512
# CHECK: encoding: [0x3f,0x10,0x80,0xbf]
.code32
jlt.u %d0, %d1, 32512

# CHECK-INST: jlt.u %d0, %d1, 16638
# CHECK: encoding: [0x3f,0x10,0x7f,0xa0]
.code32
jlt.u %d0, %d1, 16638

# CHECK-INST: jlt.u %d0, %d1, 32766
# CHECK: encoding: [0x3f,0x10,0xff,0xbf]
.code32
jlt.u %d0, %d1, 32766

# CHECK-INST: jlt.u %d0, %d14, 256
# CHECK: encoding: [0x3f,0xe0,0x80,0x80]
.code32
jlt.u %d0, %d14, 256

# CHECK-INST: jlt.u %d0, %d14, 32512
# CHECK: encoding: [0x3f,0xe0,0x80,0xbf]
.code32
jlt.u %d0, %d14, 32512

# CHECK-INST: jlt.u %d0, %d14, 16638
# CHECK: encoding: [0x3f,0xe0,0x7f,0xa0]
.code32
jlt.u %d0, %d14, 16638

# CHECK-INST: jlt.u %d0, %d14, 32766
# CHECK: encoding: [0x3f,0xe0,0xff,0xbf]
.code32
jlt.u %d0, %d14, 32766

# CHECK-INST: jlt.u %d0, %d15, 256
# CHECK: encoding: [0x3f,0xf0,0x80,0x80]
.code32
jlt.u %d0, %d15, 256

# CHECK-INST: jlt.u %d0, %d15, 32512
# CHECK: encoding: [0x3f,0xf0,0x80,0xbf]
.code32
jlt.u %d0, %d15, 32512

# CHECK-INST: jlt.u %d0, %d15, 16638
# CHECK: encoding: [0x3f,0xf0,0x7f,0xa0]
.code32
jlt.u %d0, %d15, 16638

# CHECK-INST: jlt.u %d0, %d15, 32766
# CHECK: encoding: [0x3f,0xf0,0xff,0xbf]
.code32
jlt.u %d0, %d15, 32766

# CHECK-INST: jlt.u %d1, %d0, 256
# CHECK: encoding: [0x3f,0x01,0x80,0x80]
.code32
jlt.u %d1, %d0, 256

# CHECK-INST: jlt.u %d1, %d0, 32512
# CHECK: encoding: [0x3f,0x01,0x80,0xbf]
.code32
jlt.u %d1, %d0, 32512

# CHECK-INST: jlt.u %d1, %d0, 16638
# CHECK: encoding: [0x3f,0x01,0x7f,0xa0]
.code32
jlt.u %d1, %d0, 16638

# CHECK-INST: jlt.u %d1, %d0, 32766
# CHECK: encoding: [0x3f,0x01,0xff,0xbf]
.code32
jlt.u %d1, %d0, 32766

# CHECK-INST: jlt.u %d1, %d1, 256
# CHECK: encoding: [0x3f,0x11,0x80,0x80]
.code32
jlt.u %d1, %d1, 256

# CHECK-INST: jlt.u %d1, %d1, 32512
# CHECK: encoding: [0x3f,0x11,0x80,0xbf]
.code32
jlt.u %d1, %d1, 32512

# CHECK-INST: jlt.u %d1, %d1, 16638
# CHECK: encoding: [0x3f,0x11,0x7f,0xa0]
.code32
jlt.u %d1, %d1, 16638

# CHECK-INST: jlt.u %d1, %d1, 32766
# CHECK: encoding: [0x3f,0x11,0xff,0xbf]
.code32
jlt.u %d1, %d1, 32766

# CHECK-INST: jlt.u %d1, %d14, 256
# CHECK: encoding: [0x3f,0xe1,0x80,0x80]
.code32
jlt.u %d1, %d14, 256

# CHECK-INST: jlt.u %d1, %d14, 32512
# CHECK: encoding: [0x3f,0xe1,0x80,0xbf]
.code32
jlt.u %d1, %d14, 32512

# CHECK-INST: jlt.u %d1, %d14, 16638
# CHECK: encoding: [0x3f,0xe1,0x7f,0xa0]
.code32
jlt.u %d1, %d14, 16638

# CHECK-INST: jlt.u %d1, %d14, 32766
# CHECK: encoding: [0x3f,0xe1,0xff,0xbf]
.code32
jlt.u %d1, %d14, 32766

# CHECK-INST: jlt.u %d1, %d15, 256
# CHECK: encoding: [0x3f,0xf1,0x80,0x80]
.code32
jlt.u %d1, %d15, 256

# CHECK-INST: jlt.u %d1, %d15, 32512
# CHECK: encoding: [0x3f,0xf1,0x80,0xbf]
.code32
jlt.u %d1, %d15, 32512

# CHECK-INST: jlt.u %d1, %d15, 16638
# CHECK: encoding: [0x3f,0xf1,0x7f,0xa0]
.code32
jlt.u %d1, %d15, 16638

# CHECK-INST: jlt.u %d1, %d15, 32766
# CHECK: encoding: [0x3f,0xf1,0xff,0xbf]
.code32
jlt.u %d1, %d15, 32766

# CHECK-INST: jlt.u %d14, %d0, 256
# CHECK: encoding: [0x3f,0x0e,0x80,0x80]
.code32
jlt.u %d14, %d0, 256

# CHECK-INST: jlt.u %d14, %d0, 32512
# CHECK: encoding: [0x3f,0x0e,0x80,0xbf]
.code32
jlt.u %d14, %d0, 32512

# CHECK-INST: jlt.u %d14, %d0, 16638
# CHECK: encoding: [0x3f,0x0e,0x7f,0xa0]
.code32
jlt.u %d14, %d0, 16638

# CHECK-INST: jlt.u %d14, %d0, 32766
# CHECK: encoding: [0x3f,0x0e,0xff,0xbf]
.code32
jlt.u %d14, %d0, 32766

# CHECK-INST: jlt.u %d14, %d1, 256
# CHECK: encoding: [0x3f,0x1e,0x80,0x80]
.code32
jlt.u %d14, %d1, 256

# CHECK-INST: jlt.u %d14, %d1, 32512
# CHECK: encoding: [0x3f,0x1e,0x80,0xbf]
.code32
jlt.u %d14, %d1, 32512

# CHECK-INST: jlt.u %d14, %d1, 16638
# CHECK: encoding: [0x3f,0x1e,0x7f,0xa0]
.code32
jlt.u %d14, %d1, 16638

# CHECK-INST: jlt.u %d14, %d1, 32766
# CHECK: encoding: [0x3f,0x1e,0xff,0xbf]
.code32
jlt.u %d14, %d1, 32766

# CHECK-INST: jlt.u %d14, %d14, 256
# CHECK: encoding: [0x3f,0xee,0x80,0x80]
.code32
jlt.u %d14, %d14, 256

# CHECK-INST: jlt.u %d14, %d14, 32512
# CHECK: encoding: [0x3f,0xee,0x80,0xbf]
.code32
jlt.u %d14, %d14, 32512

# CHECK-INST: jlt.u %d14, %d14, 16638
# CHECK: encoding: [0x3f,0xee,0x7f,0xa0]
.code32
jlt.u %d14, %d14, 16638

# CHECK-INST: jlt.u %d14, %d14, 32766
# CHECK: encoding: [0x3f,0xee,0xff,0xbf]
.code32
jlt.u %d14, %d14, 32766

# CHECK-INST: jlt.u %d14, %d15, 256
# CHECK: encoding: [0x3f,0xfe,0x80,0x80]
.code32
jlt.u %d14, %d15, 256

# CHECK-INST: jlt.u %d14, %d15, 32512
# CHECK: encoding: [0x3f,0xfe,0x80,0xbf]
.code32
jlt.u %d14, %d15, 32512

# CHECK-INST: jlt.u %d14, %d15, 16638
# CHECK: encoding: [0x3f,0xfe,0x7f,0xa0]
.code32
jlt.u %d14, %d15, 16638

# CHECK-INST: jlt.u %d14, %d15, 32766
# CHECK: encoding: [0x3f,0xfe,0xff,0xbf]
.code32
jlt.u %d14, %d15, 32766

# CHECK-INST: jlt.u %d15, %d0, 256
# CHECK: encoding: [0x3f,0x0f,0x80,0x80]
.code32
jlt.u %d15, %d0, 256

# CHECK-INST: jlt.u %d15, %d0, 32512
# CHECK: encoding: [0x3f,0x0f,0x80,0xbf]
.code32
jlt.u %d15, %d0, 32512

# CHECK-INST: jlt.u %d15, %d0, 16638
# CHECK: encoding: [0x3f,0x0f,0x7f,0xa0]
.code32
jlt.u %d15, %d0, 16638

# CHECK-INST: jlt.u %d15, %d0, 32766
# CHECK: encoding: [0x3f,0x0f,0xff,0xbf]
.code32
jlt.u %d15, %d0, 32766

# CHECK-INST: jlt.u %d15, %d1, 256
# CHECK: encoding: [0x3f,0x1f,0x80,0x80]
.code32
jlt.u %d15, %d1, 256

# CHECK-INST: jlt.u %d15, %d1, 32512
# CHECK: encoding: [0x3f,0x1f,0x80,0xbf]
.code32
jlt.u %d15, %d1, 32512

# CHECK-INST: jlt.u %d15, %d1, 16638
# CHECK: encoding: [0x3f,0x1f,0x7f,0xa0]
.code32
jlt.u %d15, %d1, 16638

# CHECK-INST: jlt.u %d15, %d1, 32766
# CHECK: encoding: [0x3f,0x1f,0xff,0xbf]
.code32
jlt.u %d15, %d1, 32766

# CHECK-INST: jlt.u %d15, %d14, 256
# CHECK: encoding: [0x3f,0xef,0x80,0x80]
.code32
jlt.u %d15, %d14, 256

# CHECK-INST: jlt.u %d15, %d14, 32512
# CHECK: encoding: [0x3f,0xef,0x80,0xbf]
.code32
jlt.u %d15, %d14, 32512

# CHECK-INST: jlt.u %d15, %d14, 16638
# CHECK: encoding: [0x3f,0xef,0x7f,0xa0]
.code32
jlt.u %d15, %d14, 16638

# CHECK-INST: jlt.u %d15, %d14, 32766
# CHECK: encoding: [0x3f,0xef,0xff,0xbf]
.code32
jlt.u %d15, %d14, 32766

# CHECK-INST: jlt.u %d15, %d15, 256
# CHECK: encoding: [0x3f,0xff,0x80,0x80]
.code32
jlt.u %d15, %d15, 256

# CHECK-INST: jlt.u %d15, %d15, 32512
# CHECK: encoding: [0x3f,0xff,0x80,0xbf]
.code32
jlt.u %d15, %d15, 32512

# CHECK-INST: jlt.u %d15, %d15, 16638
# CHECK: encoding: [0x3f,0xff,0x7f,0xa0]
.code32
jlt.u %d15, %d15, 16638

# CHECK-INST: jlt.u %d15, %d15, 32766
# CHECK: encoding: [0x3f,0xff,0xff,0xbf]
.code32
jlt.u %d15, %d15, 32766


# CHECK-INST: jlt.u %d0, 0, 256
# CHECK: encoding: [0xbf,0x00,0x80,0x80]
.code32
jlt.u %d0, 0, 256

# CHECK-INST: jlt.u %d0, 0, 32512
# CHECK: encoding: [0xbf,0x00,0x80,0xbf]
.code32
jlt.u %d0, 0, 32512

# CHECK-INST: jlt.u %d0, 0, 16638
# CHECK: encoding: [0xbf,0x00,0x7f,0xa0]
.code32
jlt.u %d0, 0, 16638

# CHECK-INST: jlt.u %d0, 0, 32766
# CHECK: encoding: [0xbf,0x00,0xff,0xbf]
.code32
jlt.u %d0, 0, 32766

# CHECK-INST: jlt.u %d0, 1, 256
# CHECK: encoding: [0xbf,0x10,0x80,0x80]
.code32
jlt.u %d0, 1, 256

# CHECK-INST: jlt.u %d0, 1, 32512
# CHECK: encoding: [0xbf,0x10,0x80,0xbf]
.code32
jlt.u %d0, 1, 32512

# CHECK-INST: jlt.u %d0, 1, 16638
# CHECK: encoding: [0xbf,0x10,0x7f,0xa0]
.code32
jlt.u %d0, 1, 16638

# CHECK-INST: jlt.u %d0, 1, 32766
# CHECK: encoding: [0xbf,0x10,0xff,0xbf]
.code32
jlt.u %d0, 1, 32766

# CHECK-INST: jlt.u %d0, 14, 256
# CHECK: encoding: [0xbf,0xe0,0x80,0x80]
.code32
jlt.u %d0, 14, 256

# CHECK-INST: jlt.u %d0, 14, 32512
# CHECK: encoding: [0xbf,0xe0,0x80,0xbf]
.code32
jlt.u %d0, 14, 32512

# CHECK-INST: jlt.u %d0, 14, 16638
# CHECK: encoding: [0xbf,0xe0,0x7f,0xa0]
.code32
jlt.u %d0, 14, 16638

# CHECK-INST: jlt.u %d0, 14, 32766
# CHECK: encoding: [0xbf,0xe0,0xff,0xbf]
.code32
jlt.u %d0, 14, 32766

# CHECK-INST: jlt.u %d0, 15, 256
# CHECK: encoding: [0xbf,0xf0,0x80,0x80]
.code32
jlt.u %d0, 15, 256

# CHECK-INST: jlt.u %d0, 15, 32512
# CHECK: encoding: [0xbf,0xf0,0x80,0xbf]
.code32
jlt.u %d0, 15, 32512

# CHECK-INST: jlt.u %d0, 15, 16638
# CHECK: encoding: [0xbf,0xf0,0x7f,0xa0]
.code32
jlt.u %d0, 15, 16638

# CHECK-INST: jlt.u %d0, 15, 32766
# CHECK: encoding: [0xbf,0xf0,0xff,0xbf]
.code32
jlt.u %d0, 15, 32766

# CHECK-INST: jlt.u %d1, 0, 256
# CHECK: encoding: [0xbf,0x01,0x80,0x80]
.code32
jlt.u %d1, 0, 256

# CHECK-INST: jlt.u %d1, 0, 32512
# CHECK: encoding: [0xbf,0x01,0x80,0xbf]
.code32
jlt.u %d1, 0, 32512

# CHECK-INST: jlt.u %d1, 0, 16638
# CHECK: encoding: [0xbf,0x01,0x7f,0xa0]
.code32
jlt.u %d1, 0, 16638

# CHECK-INST: jlt.u %d1, 0, 32766
# CHECK: encoding: [0xbf,0x01,0xff,0xbf]
.code32
jlt.u %d1, 0, 32766

# CHECK-INST: jlt.u %d1, 1, 256
# CHECK: encoding: [0xbf,0x11,0x80,0x80]
.code32
jlt.u %d1, 1, 256

# CHECK-INST: jlt.u %d1, 1, 32512
# CHECK: encoding: [0xbf,0x11,0x80,0xbf]
.code32
jlt.u %d1, 1, 32512

# CHECK-INST: jlt.u %d1, 1, 16638
# CHECK: encoding: [0xbf,0x11,0x7f,0xa0]
.code32
jlt.u %d1, 1, 16638

# CHECK-INST: jlt.u %d1, 1, 32766
# CHECK: encoding: [0xbf,0x11,0xff,0xbf]
.code32
jlt.u %d1, 1, 32766

# CHECK-INST: jlt.u %d1, 14, 256
# CHECK: encoding: [0xbf,0xe1,0x80,0x80]
.code32
jlt.u %d1, 14, 256

# CHECK-INST: jlt.u %d1, 14, 32512
# CHECK: encoding: [0xbf,0xe1,0x80,0xbf]
.code32
jlt.u %d1, 14, 32512

# CHECK-INST: jlt.u %d1, 14, 16638
# CHECK: encoding: [0xbf,0xe1,0x7f,0xa0]
.code32
jlt.u %d1, 14, 16638

# CHECK-INST: jlt.u %d1, 14, 32766
# CHECK: encoding: [0xbf,0xe1,0xff,0xbf]
.code32
jlt.u %d1, 14, 32766

# CHECK-INST: jlt.u %d1, 15, 256
# CHECK: encoding: [0xbf,0xf1,0x80,0x80]
.code32
jlt.u %d1, 15, 256

# CHECK-INST: jlt.u %d1, 15, 32512
# CHECK: encoding: [0xbf,0xf1,0x80,0xbf]
.code32
jlt.u %d1, 15, 32512

# CHECK-INST: jlt.u %d1, 15, 16638
# CHECK: encoding: [0xbf,0xf1,0x7f,0xa0]
.code32
jlt.u %d1, 15, 16638

# CHECK-INST: jlt.u %d1, 15, 32766
# CHECK: encoding: [0xbf,0xf1,0xff,0xbf]
.code32
jlt.u %d1, 15, 32766

# CHECK-INST: jlt.u %d14, 0, 256
# CHECK: encoding: [0xbf,0x0e,0x80,0x80]
.code32
jlt.u %d14, 0, 256

# CHECK-INST: jlt.u %d14, 0, 32512
# CHECK: encoding: [0xbf,0x0e,0x80,0xbf]
.code32
jlt.u %d14, 0, 32512

# CHECK-INST: jlt.u %d14, 0, 16638
# CHECK: encoding: [0xbf,0x0e,0x7f,0xa0]
.code32
jlt.u %d14, 0, 16638

# CHECK-INST: jlt.u %d14, 0, 32766
# CHECK: encoding: [0xbf,0x0e,0xff,0xbf]
.code32
jlt.u %d14, 0, 32766

# CHECK-INST: jlt.u %d14, 1, 256
# CHECK: encoding: [0xbf,0x1e,0x80,0x80]
.code32
jlt.u %d14, 1, 256

# CHECK-INST: jlt.u %d14, 1, 32512
# CHECK: encoding: [0xbf,0x1e,0x80,0xbf]
.code32
jlt.u %d14, 1, 32512

# CHECK-INST: jlt.u %d14, 1, 16638
# CHECK: encoding: [0xbf,0x1e,0x7f,0xa0]
.code32
jlt.u %d14, 1, 16638

# CHECK-INST: jlt.u %d14, 1, 32766
# CHECK: encoding: [0xbf,0x1e,0xff,0xbf]
.code32
jlt.u %d14, 1, 32766

# CHECK-INST: jlt.u %d14, 14, 256
# CHECK: encoding: [0xbf,0xee,0x80,0x80]
.code32
jlt.u %d14, 14, 256

# CHECK-INST: jlt.u %d14, 14, 32512
# CHECK: encoding: [0xbf,0xee,0x80,0xbf]
.code32
jlt.u %d14, 14, 32512

# CHECK-INST: jlt.u %d14, 14, 16638
# CHECK: encoding: [0xbf,0xee,0x7f,0xa0]
.code32
jlt.u %d14, 14, 16638

# CHECK-INST: jlt.u %d14, 14, 32766
# CHECK: encoding: [0xbf,0xee,0xff,0xbf]
.code32
jlt.u %d14, 14, 32766

# CHECK-INST: jlt.u %d14, 15, 256
# CHECK: encoding: [0xbf,0xfe,0x80,0x80]
.code32
jlt.u %d14, 15, 256

# CHECK-INST: jlt.u %d14, 15, 32512
# CHECK: encoding: [0xbf,0xfe,0x80,0xbf]
.code32
jlt.u %d14, 15, 32512

# CHECK-INST: jlt.u %d14, 15, 16638
# CHECK: encoding: [0xbf,0xfe,0x7f,0xa0]
.code32
jlt.u %d14, 15, 16638

# CHECK-INST: jlt.u %d14, 15, 32766
# CHECK: encoding: [0xbf,0xfe,0xff,0xbf]
.code32
jlt.u %d14, 15, 32766

# CHECK-INST: jlt.u %d15, 0, 256
# CHECK: encoding: [0xbf,0x0f,0x80,0x80]
.code32
jlt.u %d15, 0, 256

# CHECK-INST: jlt.u %d15, 0, 32512
# CHECK: encoding: [0xbf,0x0f,0x80,0xbf]
.code32
jlt.u %d15, 0, 32512

# CHECK-INST: jlt.u %d15, 0, 16638
# CHECK: encoding: [0xbf,0x0f,0x7f,0xa0]
.code32
jlt.u %d15, 0, 16638

# CHECK-INST: jlt.u %d15, 0, 32766
# CHECK: encoding: [0xbf,0x0f,0xff,0xbf]
.code32
jlt.u %d15, 0, 32766

# CHECK-INST: jlt.u %d15, 1, 256
# CHECK: encoding: [0xbf,0x1f,0x80,0x80]
.code32
jlt.u %d15, 1, 256

# CHECK-INST: jlt.u %d15, 1, 32512
# CHECK: encoding: [0xbf,0x1f,0x80,0xbf]
.code32
jlt.u %d15, 1, 32512

# CHECK-INST: jlt.u %d15, 1, 16638
# CHECK: encoding: [0xbf,0x1f,0x7f,0xa0]
.code32
jlt.u %d15, 1, 16638

# CHECK-INST: jlt.u %d15, 1, 32766
# CHECK: encoding: [0xbf,0x1f,0xff,0xbf]
.code32
jlt.u %d15, 1, 32766

# CHECK-INST: jlt.u %d15, 14, 256
# CHECK: encoding: [0xbf,0xef,0x80,0x80]
.code32
jlt.u %d15, 14, 256

# CHECK-INST: jlt.u %d15, 14, 32512
# CHECK: encoding: [0xbf,0xef,0x80,0xbf]
.code32
jlt.u %d15, 14, 32512

# CHECK-INST: jlt.u %d15, 14, 16638
# CHECK: encoding: [0xbf,0xef,0x7f,0xa0]
.code32
jlt.u %d15, 14, 16638

# CHECK-INST: jlt.u %d15, 14, 32766
# CHECK: encoding: [0xbf,0xef,0xff,0xbf]
.code32
jlt.u %d15, 14, 32766

# CHECK-INST: jlt.u %d15, 15, 256
# CHECK: encoding: [0xbf,0xff,0x80,0x80]
.code32
jlt.u %d15, 15, 256

# CHECK-INST: jlt.u %d15, 15, 32512
# CHECK: encoding: [0xbf,0xff,0x80,0xbf]
.code32
jlt.u %d15, 15, 32512

# CHECK-INST: jlt.u %d15, 15, 16638
# CHECK: encoding: [0xbf,0xff,0x7f,0xa0]
.code32
jlt.u %d15, 15, 16638

# CHECK-INST: jlt.u %d15, 15, 32766
# CHECK: encoding: [0xbf,0xff,0xff,0xbf]
.code32
jlt.u %d15, 15, 32766


# CHECK-INST: jltz %d0, 0
# CHECK: encoding: [0x0e,0x00]
.code16
jltz %d0, 0

# CHECK-INST: jltz %d0, 2
# CHECK: encoding: [0x0e,0x01]
.code16
jltz %d0, 2

# CHECK-INST: jltz %d0, 28
# CHECK: encoding: [0x0e,0x0e]
.code16
jltz %d0, 28

# CHECK-INST: jltz %d0, 30
# CHECK: encoding: [0x0e,0x0f]
.code16
jltz %d0, 30

# CHECK-INST: jltz %d1, 0
# CHECK: encoding: [0x0e,0x10]
.code16
jltz %d1, 0

# CHECK-INST: jltz %d1, 2
# CHECK: encoding: [0x0e,0x11]
.code16
jltz %d1, 2

# CHECK-INST: jltz %d1, 28
# CHECK: encoding: [0x0e,0x1e]
.code16
jltz %d1, 28

# CHECK-INST: jltz %d1, 30
# CHECK: encoding: [0x0e,0x1f]
.code16
jltz %d1, 30

# CHECK-INST: jltz %d14, 0
# CHECK: encoding: [0x0e,0xe0]
.code16
jltz %d14, 0

# CHECK-INST: jltz %d14, 2
# CHECK: encoding: [0x0e,0xe1]
.code16
jltz %d14, 2

# CHECK-INST: jltz %d14, 28
# CHECK: encoding: [0x0e,0xee]
.code16
jltz %d14, 28

# CHECK-INST: jltz %d14, 30
# CHECK: encoding: [0x0e,0xef]
.code16
jltz %d14, 30

# CHECK-INST: jltz %d15, 0
# CHECK: encoding: [0x0e,0xf0]
.code16
jltz %d15, 0

# CHECK-INST: jltz %d15, 2
# CHECK: encoding: [0x0e,0xf1]
.code16
jltz %d15, 2

# CHECK-INST: jltz %d15, 28
# CHECK: encoding: [0x0e,0xfe]
.code16
jltz %d15, 28

# CHECK-INST: jltz %d15, 30
# CHECK: encoding: [0x0e,0xff]
.code16
jltz %d15, 30


# CHECK-INST: jne %d15, %d0, 0
# CHECK: encoding: [0x7e,0x00]
.code16
jne %d15, %d0, 0

# CHECK-INST: jne %d15, %d0, 2
# CHECK: encoding: [0x7e,0x01]
.code16
jne %d15, %d0, 2

# CHECK-INST: jne %d15, %d0, 28
# CHECK: encoding: [0x7e,0x0e]
.code16
jne %d15, %d0, 28

# CHECK-INST: jne %d15, %d0, 30
# CHECK: encoding: [0x7e,0x0f]
.code16
jne %d15, %d0, 30

# CHECK-INST: jne %d15, %d1, 0
# CHECK: encoding: [0x7e,0x10]
.code16
jne %d15, %d1, 0

# CHECK-INST: jne %d15, %d1, 2
# CHECK: encoding: [0x7e,0x11]
.code16
jne %d15, %d1, 2

# CHECK-INST: jne %d15, %d1, 28
# CHECK: encoding: [0x7e,0x1e]
.code16
jne %d15, %d1, 28

# CHECK-INST: jne %d15, %d1, 30
# CHECK: encoding: [0x7e,0x1f]
.code16
jne %d15, %d1, 30

# CHECK-INST: jne %d15, %d14, 0
# CHECK: encoding: [0x7e,0xe0]
.code16
jne %d15, %d14, 0

# CHECK-INST: jne %d15, %d14, 2
# CHECK: encoding: [0x7e,0xe1]
.code16
jne %d15, %d14, 2

# CHECK-INST: jne %d15, %d14, 28
# CHECK: encoding: [0x7e,0xee]
.code16
jne %d15, %d14, 28

# CHECK-INST: jne %d15, %d14, 30
# CHECK: encoding: [0x7e,0xef]
.code16
jne %d15, %d14, 30

# CHECK-INST: jne %d15, %d15, 0
# CHECK: encoding: [0x7e,0xf0]
.code16
jne %d15, %d15, 0

# CHECK-INST: jne %d15, %d15, 2
# CHECK: encoding: [0x7e,0xf1]
.code16
jne %d15, %d15, 2

# CHECK-INST: jne %d15, %d15, 28
# CHECK: encoding: [0x7e,0xfe]
.code16
jne %d15, %d15, 28

# CHECK-INST: jne %d15, %d15, 30
# CHECK: encoding: [0x7e,0xff]
.code16
jne %d15, %d15, 30

# CHECK-INST: jne %d15, %d0, 32
# CHECK: encoding: [0xfe,0x00]
.code16
jne %d15, %d0, 32

# CHECK-INST: jne %d15, %d0, 34
# CHECK: encoding: [0xfe,0x01]
.code16
jne %d15, %d0, 34

# CHECK-INST: jne %d15, %d0, 60
# CHECK: encoding: [0xfe,0x0e]
.code16
jne %d15, %d0, 60

# CHECK-INST: jne %d15, %d0, 62
# CHECK: encoding: [0xfe,0x0f]
.code16
jne %d15, %d0, 62

# CHECK-INST: jne %d15, %d1, 32
# CHECK: encoding: [0xfe,0x10]
.code16
jne %d15, %d1, 32

# CHECK-INST: jne %d15, %d1, 34
# CHECK: encoding: [0xfe,0x11]
.code16
jne %d15, %d1, 34

# CHECK-INST: jne %d15, %d1, 60
# CHECK: encoding: [0xfe,0x1e]
.code16
jne %d15, %d1, 60

# CHECK-INST: jne %d15, %d1, 62
# CHECK: encoding: [0xfe,0x1f]
.code16
jne %d15, %d1, 62

# CHECK-INST: jne %d15, %d14, 32
# CHECK: encoding: [0xfe,0xe0]
.code16
jne %d15, %d14, 32

# CHECK-INST: jne %d15, %d14, 34
# CHECK: encoding: [0xfe,0xe1]
.code16
jne %d15, %d14, 34

# CHECK-INST: jne %d15, %d14, 60
# CHECK: encoding: [0xfe,0xee]
.code16
jne %d15, %d14, 60

# CHECK-INST: jne %d15, %d14, 62
# CHECK: encoding: [0xfe,0xef]
.code16
jne %d15, %d14, 62

# CHECK-INST: jne %d15, %d15, 32
# CHECK: encoding: [0xfe,0xf0]
.code16
jne %d15, %d15, 32

# CHECK-INST: jne %d15, %d15, 34
# CHECK: encoding: [0xfe,0xf1]
.code16
jne %d15, %d15, 34

# CHECK-INST: jne %d15, %d15, 60
# CHECK: encoding: [0xfe,0xfe]
.code16
jne %d15, %d15, 60

# CHECK-INST: jne %d15, %d15, 62
# CHECK: encoding: [0xfe,0xff]
.code16
jne %d15, %d15, 62
  
# CHECK-INST: jne %d15, -8, 0
# CHECK: encoding: [0x5e,0x80]
.code16
jne %d15, -8, 0

# CHECK-INST: jne %d15, -8, 2
# CHECK: encoding: [0x5e,0x81]
.code16
jne %d15, -8, 2

# CHECK-INST: jne %d15, -8, 28
# CHECK: encoding: [0x5e,0x8e]
.code16
jne %d15, -8, 28

# CHECK-INST: jne %d15, -8, 30
# CHECK: encoding: [0x5e,0x8f]
.code16
jne %d15, -8, 30

# CHECK-INST: jne %d15, -1, 0
# CHECK: encoding: [0x5e,0xf0]
.code16
jne %d15, -1, 0

# CHECK-INST: jne %d15, -1, 2
# CHECK: encoding: [0x5e,0xf1]
.code16
jne %d15, -1, 2

# CHECK-INST: jne %d15, -1, 28
# CHECK: encoding: [0x5e,0xfe]
.code16
jne %d15, -1, 28

# CHECK-INST: jne %d15, -1, 30
# CHECK: encoding: [0x5e,0xff]
.code16
jne %d15, -1, 30

# CHECK-INST: jne %d15, 0, 0
# CHECK: encoding: [0x5e,0x00]
.code16
jne %d15, 0, 0

# CHECK-INST: jne %d15, 0, 2
# CHECK: encoding: [0x5e,0x01]
.code16
jne %d15, 0, 2

# CHECK-INST: jne %d15, 0, 28
# CHECK: encoding: [0x5e,0x0e]
.code16
jne %d15, 0, 28

# CHECK-INST: jne %d15, 0, 30
# CHECK: encoding: [0x5e,0x0f]
.code16
jne %d15, 0, 30

# CHECK-INST: jne %d15, 1, 0
# CHECK: encoding: [0x5e,0x10]
.code16
jne %d15, 1, 0

# CHECK-INST: jne %d15, 1, 2
# CHECK: encoding: [0x5e,0x11]
.code16
jne %d15, 1, 2

# CHECK-INST: jne %d15, 1, 28
# CHECK: encoding: [0x5e,0x1e]
.code16
jne %d15, 1, 28

# CHECK-INST: jne %d15, 1, 30
# CHECK: encoding: [0x5e,0x1f]
.code16
jne %d15, 1, 30

# CHECK-INST: jne %d15, 7, 0
# CHECK: encoding: [0x5e,0x70]
.code16
jne %d15, 7, 0

# CHECK-INST: jne %d15, 7, 2
# CHECK: encoding: [0x5e,0x71]
.code16
jne %d15, 7, 2

# CHECK-INST: jne %d15, 7, 28
# CHECK: encoding: [0x5e,0x7e]
.code16
jne %d15, 7, 28

# CHECK-INST: jne %d15, 7, 30
# CHECK: encoding: [0x5e,0x7f]
.code16
jne %d15, 7, 30

# CHECK-INST: jne %d15, -8, 32
# CHECK: encoding: [0xde,0x80]
.code16
jne %d15, -8, 32

# CHECK-INST: jne %d15, -8, 34
# CHECK: encoding: [0xde,0x81]
.code16
jne %d15, -8, 34

# CHECK-INST: jne %d15, -8, 60
# CHECK: encoding: [0xde,0x8e]
.code16
jne %d15, -8, 60

# CHECK-INST: jne %d15, -8, 62
# CHECK: encoding: [0xde,0x8f]
.code16
jne %d15, -8, 62

# CHECK-INST: jne %d15, -1, 32
# CHECK: encoding: [0xde,0xf0]
.code16
jne %d15, -1, 32

# CHECK-INST: jne %d15, -1, 34
# CHECK: encoding: [0xde,0xf1]
.code16
jne %d15, -1, 34

# CHECK-INST: jne %d15, -1, 60
# CHECK: encoding: [0xde,0xfe]
.code16
jne %d15, -1, 60

# CHECK-INST: jne %d15, -1, 62
# CHECK: encoding: [0xde,0xff]
.code16
jne %d15, -1, 62

# CHECK-INST: jne %d15, 0, 32
# CHECK: encoding: [0xde,0x00]
.code16
jne %d15, 0, 32

# CHECK-INST: jne %d15, 0, 34
# CHECK: encoding: [0xde,0x01]
.code16
jne %d15, 0, 34

# CHECK-INST: jne %d15, 0, 60
# CHECK: encoding: [0xde,0x0e]
.code16
jne %d15, 0, 60

# CHECK-INST: jne %d15, 0, 62
# CHECK: encoding: [0xde,0x0f]
.code16
jne %d15, 0, 62

# CHECK-INST: jne %d15, 1, 32
# CHECK: encoding: [0xde,0x10]
.code16
jne %d15, 1, 32

# CHECK-INST: jne %d15, 1, 34
# CHECK: encoding: [0xde,0x11]
.code16
jne %d15, 1, 34

# CHECK-INST: jne %d15, 1, 60
# CHECK: encoding: [0xde,0x1e]
.code16
jne %d15, 1, 60

# CHECK-INST: jne %d15, 1, 62
# CHECK: encoding: [0xde,0x1f]
.code16
jne %d15, 1, 62

# CHECK-INST: jne %d15, 7, 32
# CHECK: encoding: [0xde,0x70]
.code16
jne %d15, 7, 32

# CHECK-INST: jne %d15, 7, 34
# CHECK: encoding: [0xde,0x71]
.code16
jne %d15, 7, 34

# CHECK-INST: jne %d15, 7, 60
# CHECK: encoding: [0xde,0x7e]
.code16
jne %d15, 7, 60

# CHECK-INST: jne %d15, 7, 62
# CHECK: encoding: [0xde,0x7f]
.code16
jne %d15, 7, 62
  
# CHECK-INST: jne %d0, %d0, 256
# CHECK: encoding: [0x5f,0x00,0x80,0x80]
.code32
jne %d0, %d0, 256

# CHECK-INST: jne %d0, %d0, 32512
# CHECK: encoding: [0x5f,0x00,0x80,0xbf]
.code32
jne %d0, %d0, 32512

# CHECK-INST: jne %d0, %d0, 16638
# CHECK: encoding: [0x5f,0x00,0x7f,0xa0]
.code32
jne %d0, %d0, 16638

# CHECK-INST: jne %d0, %d0, 32766
# CHECK: encoding: [0x5f,0x00,0xff,0xbf]
.code32
jne %d0, %d0, 32766

# CHECK-INST: jne %d0, %d1, 256
# CHECK: encoding: [0x5f,0x10,0x80,0x80]
.code32
jne %d0, %d1, 256

# CHECK-INST: jne %d0, %d1, 32512
# CHECK: encoding: [0x5f,0x10,0x80,0xbf]
.code32
jne %d0, %d1, 32512

# CHECK-INST: jne %d0, %d1, 16638
# CHECK: encoding: [0x5f,0x10,0x7f,0xa0]
.code32
jne %d0, %d1, 16638

# CHECK-INST: jne %d0, %d1, 32766
# CHECK: encoding: [0x5f,0x10,0xff,0xbf]
.code32
jne %d0, %d1, 32766

# CHECK-INST: jne %d0, %d14, 256
# CHECK: encoding: [0x5f,0xe0,0x80,0x80]
.code32
jne %d0, %d14, 256

# CHECK-INST: jne %d0, %d14, 32512
# CHECK: encoding: [0x5f,0xe0,0x80,0xbf]
.code32
jne %d0, %d14, 32512

# CHECK-INST: jne %d0, %d14, 16638
# CHECK: encoding: [0x5f,0xe0,0x7f,0xa0]
.code32
jne %d0, %d14, 16638

# CHECK-INST: jne %d0, %d14, 32766
# CHECK: encoding: [0x5f,0xe0,0xff,0xbf]
.code32
jne %d0, %d14, 32766

# CHECK-INST: jne %d0, %d15, 256
# CHECK: encoding: [0x5f,0xf0,0x80,0x80]
.code32
jne %d0, %d15, 256

# CHECK-INST: jne %d0, %d15, 32512
# CHECK: encoding: [0x5f,0xf0,0x80,0xbf]
.code32
jne %d0, %d15, 32512

# CHECK-INST: jne %d0, %d15, 16638
# CHECK: encoding: [0x5f,0xf0,0x7f,0xa0]
.code32
jne %d0, %d15, 16638

# CHECK-INST: jne %d0, %d15, 32766
# CHECK: encoding: [0x5f,0xf0,0xff,0xbf]
.code32
jne %d0, %d15, 32766

# CHECK-INST: jne %d1, %d0, 256
# CHECK: encoding: [0x5f,0x01,0x80,0x80]
.code32
jne %d1, %d0, 256

# CHECK-INST: jne %d1, %d0, 32512
# CHECK: encoding: [0x5f,0x01,0x80,0xbf]
.code32
jne %d1, %d0, 32512

# CHECK-INST: jne %d1, %d0, 16638
# CHECK: encoding: [0x5f,0x01,0x7f,0xa0]
.code32
jne %d1, %d0, 16638

# CHECK-INST: jne %d1, %d0, 32766
# CHECK: encoding: [0x5f,0x01,0xff,0xbf]
.code32
jne %d1, %d0, 32766

# CHECK-INST: jne %d1, %d1, 256
# CHECK: encoding: [0x5f,0x11,0x80,0x80]
.code32
jne %d1, %d1, 256

# CHECK-INST: jne %d1, %d1, 32512
# CHECK: encoding: [0x5f,0x11,0x80,0xbf]
.code32
jne %d1, %d1, 32512

# CHECK-INST: jne %d1, %d1, 16638
# CHECK: encoding: [0x5f,0x11,0x7f,0xa0]
.code32
jne %d1, %d1, 16638

# CHECK-INST: jne %d1, %d1, 32766
# CHECK: encoding: [0x5f,0x11,0xff,0xbf]
.code32
jne %d1, %d1, 32766

# CHECK-INST: jne %d1, %d14, 256
# CHECK: encoding: [0x5f,0xe1,0x80,0x80]
.code32
jne %d1, %d14, 256

# CHECK-INST: jne %d1, %d14, 32512
# CHECK: encoding: [0x5f,0xe1,0x80,0xbf]
.code32
jne %d1, %d14, 32512

# CHECK-INST: jne %d1, %d14, 16638
# CHECK: encoding: [0x5f,0xe1,0x7f,0xa0]
.code32
jne %d1, %d14, 16638

# CHECK-INST: jne %d1, %d14, 32766
# CHECK: encoding: [0x5f,0xe1,0xff,0xbf]
.code32
jne %d1, %d14, 32766

# CHECK-INST: jne %d1, %d15, 256
# CHECK: encoding: [0x5f,0xf1,0x80,0x80]
.code32
jne %d1, %d15, 256

# CHECK-INST: jne %d1, %d15, 32512
# CHECK: encoding: [0x5f,0xf1,0x80,0xbf]
.code32
jne %d1, %d15, 32512

# CHECK-INST: jne %d1, %d15, 16638
# CHECK: encoding: [0x5f,0xf1,0x7f,0xa0]
.code32
jne %d1, %d15, 16638

# CHECK-INST: jne %d1, %d15, 32766
# CHECK: encoding: [0x5f,0xf1,0xff,0xbf]
.code32
jne %d1, %d15, 32766

# CHECK-INST: jne %d14, %d0, 256
# CHECK: encoding: [0x5f,0x0e,0x80,0x80]
.code32
jne %d14, %d0, 256

# CHECK-INST: jne %d14, %d0, 32512
# CHECK: encoding: [0x5f,0x0e,0x80,0xbf]
.code32
jne %d14, %d0, 32512

# CHECK-INST: jne %d14, %d0, 16638
# CHECK: encoding: [0x5f,0x0e,0x7f,0xa0]
.code32
jne %d14, %d0, 16638

# CHECK-INST: jne %d14, %d0, 32766
# CHECK: encoding: [0x5f,0x0e,0xff,0xbf]
.code32
jne %d14, %d0, 32766

# CHECK-INST: jne %d14, %d1, 256
# CHECK: encoding: [0x5f,0x1e,0x80,0x80]
.code32
jne %d14, %d1, 256

# CHECK-INST: jne %d14, %d1, 32512
# CHECK: encoding: [0x5f,0x1e,0x80,0xbf]
.code32
jne %d14, %d1, 32512

# CHECK-INST: jne %d14, %d1, 16638
# CHECK: encoding: [0x5f,0x1e,0x7f,0xa0]
.code32
jne %d14, %d1, 16638

# CHECK-INST: jne %d14, %d1, 32766
# CHECK: encoding: [0x5f,0x1e,0xff,0xbf]
.code32
jne %d14, %d1, 32766

# CHECK-INST: jne %d14, %d14, 256
# CHECK: encoding: [0x5f,0xee,0x80,0x80]
.code32
jne %d14, %d14, 256

# CHECK-INST: jne %d14, %d14, 32512
# CHECK: encoding: [0x5f,0xee,0x80,0xbf]
.code32
jne %d14, %d14, 32512

# CHECK-INST: jne %d14, %d14, 16638
# CHECK: encoding: [0x5f,0xee,0x7f,0xa0]
.code32
jne %d14, %d14, 16638

# CHECK-INST: jne %d14, %d14, 32766
# CHECK: encoding: [0x5f,0xee,0xff,0xbf]
.code32
jne %d14, %d14, 32766

# CHECK-INST: jne %d14, %d15, 256
# CHECK: encoding: [0x5f,0xfe,0x80,0x80]
.code32
jne %d14, %d15, 256

# CHECK-INST: jne %d14, %d15, 32512
# CHECK: encoding: [0x5f,0xfe,0x80,0xbf]
.code32
jne %d14, %d15, 32512

# CHECK-INST: jne %d14, %d15, 16638
# CHECK: encoding: [0x5f,0xfe,0x7f,0xa0]
.code32
jne %d14, %d15, 16638

# CHECK-INST: jne %d14, %d15, 32766
# CHECK: encoding: [0x5f,0xfe,0xff,0xbf]
.code32
jne %d14, %d15, 32766

# CHECK-INST: jne %d15, %d0, 256
# CHECK: encoding: [0x5f,0x0f,0x80,0x80]
.code32
jne %d15, %d0, 256

# CHECK-INST: jne %d15, %d0, 32512
# CHECK: encoding: [0x5f,0x0f,0x80,0xbf]
.code32
jne %d15, %d0, 32512

# CHECK-INST: jne %d15, %d0, 16638
# CHECK: encoding: [0x5f,0x0f,0x7f,0xa0]
.code32
jne %d15, %d0, 16638

# CHECK-INST: jne %d15, %d0, 32766
# CHECK: encoding: [0x5f,0x0f,0xff,0xbf]
.code32
jne %d15, %d0, 32766

# CHECK-INST: jne %d15, %d1, 256
# CHECK: encoding: [0x5f,0x1f,0x80,0x80]
.code32
jne %d15, %d1, 256

# CHECK-INST: jne %d15, %d1, 32512
# CHECK: encoding: [0x5f,0x1f,0x80,0xbf]
.code32
jne %d15, %d1, 32512

# CHECK-INST: jne %d15, %d1, 16638
# CHECK: encoding: [0x5f,0x1f,0x7f,0xa0]
.code32
jne %d15, %d1, 16638

# CHECK-INST: jne %d15, %d1, 32766
# CHECK: encoding: [0x5f,0x1f,0xff,0xbf]
.code32
jne %d15, %d1, 32766

# CHECK-INST: jne %d15, %d14, 256
# CHECK: encoding: [0x5f,0xef,0x80,0x80]
.code32
jne %d15, %d14, 256

# CHECK-INST: jne %d15, %d14, 32512
# CHECK: encoding: [0x5f,0xef,0x80,0xbf]
.code32
jne %d15, %d14, 32512

# CHECK-INST: jne %d15, %d14, 16638
# CHECK: encoding: [0x5f,0xef,0x7f,0xa0]
.code32
jne %d15, %d14, 16638

# CHECK-INST: jne %d15, %d14, 32766
# CHECK: encoding: [0x5f,0xef,0xff,0xbf]
.code32
jne %d15, %d14, 32766

# CHECK-INST: jne %d15, %d15, 256
# CHECK: encoding: [0x5f,0xff,0x80,0x80]
.code32
jne %d15, %d15, 256

# CHECK-INST: jne %d15, %d15, 32512
# CHECK: encoding: [0x5f,0xff,0x80,0xbf]
.code32
jne %d15, %d15, 32512

# CHECK-INST: jne %d15, %d15, 16638
# CHECK: encoding: [0x5f,0xff,0x7f,0xa0]
.code32
jne %d15, %d15, 16638

# CHECK-INST: jne %d15, %d15, 32766
# CHECK: encoding: [0x5f,0xff,0xff,0xbf]
.code32
jne %d15, %d15, 32766


# CHECK-INST: jne %d0, -8, 256
# CHECK: encoding: [0xdf,0x80,0x80,0x80]
.code32
jne %d0, -8, 256

# CHECK-INST: jne %d0, -8, 32512
# CHECK: encoding: [0xdf,0x80,0x80,0xbf]
.code32
jne %d0, -8, 32512

# CHECK-INST: jne %d0, -8, 16638
# CHECK: encoding: [0xdf,0x80,0x7f,0xa0]
.code32
jne %d0, -8, 16638

# CHECK-INST: jne %d0, -8, 32766
# CHECK: encoding: [0xdf,0x80,0xff,0xbf]
.code32
jne %d0, -8, 32766

# CHECK-INST: jne %d0, -1, 256
# CHECK: encoding: [0xdf,0xf0,0x80,0x80]
.code32
jne %d0, -1, 256

# CHECK-INST: jne %d0, -1, 32512
# CHECK: encoding: [0xdf,0xf0,0x80,0xbf]
.code32
jne %d0, -1, 32512

# CHECK-INST: jne %d0, -1, 16638
# CHECK: encoding: [0xdf,0xf0,0x7f,0xa0]
.code32
jne %d0, -1, 16638

# CHECK-INST: jne %d0, -1, 32766
# CHECK: encoding: [0xdf,0xf0,0xff,0xbf]
.code32
jne %d0, -1, 32766

# CHECK-INST: jne %d0, 0, 256
# CHECK: encoding: [0xdf,0x00,0x80,0x80]
.code32
jne %d0, 0, 256

# CHECK-INST: jne %d0, 0, 32512
# CHECK: encoding: [0xdf,0x00,0x80,0xbf]
.code32
jne %d0, 0, 32512

# CHECK-INST: jne %d0, 0, 16638
# CHECK: encoding: [0xdf,0x00,0x7f,0xa0]
.code32
jne %d0, 0, 16638

# CHECK-INST: jne %d0, 0, 32766
# CHECK: encoding: [0xdf,0x00,0xff,0xbf]
.code32
jne %d0, 0, 32766

# CHECK-INST: jne %d0, 1, 256
# CHECK: encoding: [0xdf,0x10,0x80,0x80]
.code32
jne %d0, 1, 256

# CHECK-INST: jne %d0, 1, 32512
# CHECK: encoding: [0xdf,0x10,0x80,0xbf]
.code32
jne %d0, 1, 32512

# CHECK-INST: jne %d0, 1, 16638
# CHECK: encoding: [0xdf,0x10,0x7f,0xa0]
.code32
jne %d0, 1, 16638

# CHECK-INST: jne %d0, 1, 32766
# CHECK: encoding: [0xdf,0x10,0xff,0xbf]
.code32
jne %d0, 1, 32766

# CHECK-INST: jne %d0, 7, 256
# CHECK: encoding: [0xdf,0x70,0x80,0x80]
.code32
jne %d0, 7, 256

# CHECK-INST: jne %d0, 7, 32512
# CHECK: encoding: [0xdf,0x70,0x80,0xbf]
.code32
jne %d0, 7, 32512

# CHECK-INST: jne %d0, 7, 16638
# CHECK: encoding: [0xdf,0x70,0x7f,0xa0]
.code32
jne %d0, 7, 16638

# CHECK-INST: jne %d0, 7, 32766
# CHECK: encoding: [0xdf,0x70,0xff,0xbf]
.code32
jne %d0, 7, 32766

# CHECK-INST: jne %d1, -8, 256
# CHECK: encoding: [0xdf,0x81,0x80,0x80]
.code32
jne %d1, -8, 256

# CHECK-INST: jne %d1, -8, 32512
# CHECK: encoding: [0xdf,0x81,0x80,0xbf]
.code32
jne %d1, -8, 32512

# CHECK-INST: jne %d1, -8, 16638
# CHECK: encoding: [0xdf,0x81,0x7f,0xa0]
.code32
jne %d1, -8, 16638

# CHECK-INST: jne %d1, -8, 32766
# CHECK: encoding: [0xdf,0x81,0xff,0xbf]
.code32
jne %d1, -8, 32766

# CHECK-INST: jne %d1, -1, 256
# CHECK: encoding: [0xdf,0xf1,0x80,0x80]
.code32
jne %d1, -1, 256

# CHECK-INST: jne %d1, -1, 32512
# CHECK: encoding: [0xdf,0xf1,0x80,0xbf]
.code32
jne %d1, -1, 32512

# CHECK-INST: jne %d1, -1, 16638
# CHECK: encoding: [0xdf,0xf1,0x7f,0xa0]
.code32
jne %d1, -1, 16638

# CHECK-INST: jne %d1, -1, 32766
# CHECK: encoding: [0xdf,0xf1,0xff,0xbf]
.code32
jne %d1, -1, 32766

# CHECK-INST: jne %d1, 0, 256
# CHECK: encoding: [0xdf,0x01,0x80,0x80]
.code32
jne %d1, 0, 256

# CHECK-INST: jne %d1, 0, 32512
# CHECK: encoding: [0xdf,0x01,0x80,0xbf]
.code32
jne %d1, 0, 32512

# CHECK-INST: jne %d1, 0, 16638
# CHECK: encoding: [0xdf,0x01,0x7f,0xa0]
.code32
jne %d1, 0, 16638

# CHECK-INST: jne %d1, 0, 32766
# CHECK: encoding: [0xdf,0x01,0xff,0xbf]
.code32
jne %d1, 0, 32766

# CHECK-INST: jne %d1, 1, 256
# CHECK: encoding: [0xdf,0x11,0x80,0x80]
.code32
jne %d1, 1, 256

# CHECK-INST: jne %d1, 1, 32512
# CHECK: encoding: [0xdf,0x11,0x80,0xbf]
.code32
jne %d1, 1, 32512

# CHECK-INST: jne %d1, 1, 16638
# CHECK: encoding: [0xdf,0x11,0x7f,0xa0]
.code32
jne %d1, 1, 16638

# CHECK-INST: jne %d1, 1, 32766
# CHECK: encoding: [0xdf,0x11,0xff,0xbf]
.code32
jne %d1, 1, 32766

# CHECK-INST: jne %d1, 7, 256
# CHECK: encoding: [0xdf,0x71,0x80,0x80]
.code32
jne %d1, 7, 256

# CHECK-INST: jne %d1, 7, 32512
# CHECK: encoding: [0xdf,0x71,0x80,0xbf]
.code32
jne %d1, 7, 32512

# CHECK-INST: jne %d1, 7, 16638
# CHECK: encoding: [0xdf,0x71,0x7f,0xa0]
.code32
jne %d1, 7, 16638

# CHECK-INST: jne %d1, 7, 32766
# CHECK: encoding: [0xdf,0x71,0xff,0xbf]
.code32
jne %d1, 7, 32766

# CHECK-INST: jne %d14, -8, 256
# CHECK: encoding: [0xdf,0x8e,0x80,0x80]
.code32
jne %d14, -8, 256

# CHECK-INST: jne %d14, -8, 32512
# CHECK: encoding: [0xdf,0x8e,0x80,0xbf]
.code32
jne %d14, -8, 32512

# CHECK-INST: jne %d14, -8, 16638
# CHECK: encoding: [0xdf,0x8e,0x7f,0xa0]
.code32
jne %d14, -8, 16638

# CHECK-INST: jne %d14, -8, 32766
# CHECK: encoding: [0xdf,0x8e,0xff,0xbf]
.code32
jne %d14, -8, 32766

# CHECK-INST: jne %d14, -1, 256
# CHECK: encoding: [0xdf,0xfe,0x80,0x80]
.code32
jne %d14, -1, 256

# CHECK-INST: jne %d14, -1, 32512
# CHECK: encoding: [0xdf,0xfe,0x80,0xbf]
.code32
jne %d14, -1, 32512

# CHECK-INST: jne %d14, -1, 16638
# CHECK: encoding: [0xdf,0xfe,0x7f,0xa0]
.code32
jne %d14, -1, 16638

# CHECK-INST: jne %d14, -1, 32766
# CHECK: encoding: [0xdf,0xfe,0xff,0xbf]
.code32
jne %d14, -1, 32766

# CHECK-INST: jne %d14, 0, 256
# CHECK: encoding: [0xdf,0x0e,0x80,0x80]
.code32
jne %d14, 0, 256

# CHECK-INST: jne %d14, 0, 32512
# CHECK: encoding: [0xdf,0x0e,0x80,0xbf]
.code32
jne %d14, 0, 32512

# CHECK-INST: jne %d14, 0, 16638
# CHECK: encoding: [0xdf,0x0e,0x7f,0xa0]
.code32
jne %d14, 0, 16638

# CHECK-INST: jne %d14, 0, 32766
# CHECK: encoding: [0xdf,0x0e,0xff,0xbf]
.code32
jne %d14, 0, 32766

# CHECK-INST: jne %d14, 1, 256
# CHECK: encoding: [0xdf,0x1e,0x80,0x80]
.code32
jne %d14, 1, 256

# CHECK-INST: jne %d14, 1, 32512
# CHECK: encoding: [0xdf,0x1e,0x80,0xbf]
.code32
jne %d14, 1, 32512

# CHECK-INST: jne %d14, 1, 16638
# CHECK: encoding: [0xdf,0x1e,0x7f,0xa0]
.code32
jne %d14, 1, 16638

# CHECK-INST: jne %d14, 1, 32766
# CHECK: encoding: [0xdf,0x1e,0xff,0xbf]
.code32
jne %d14, 1, 32766

# CHECK-INST: jne %d14, 7, 256
# CHECK: encoding: [0xdf,0x7e,0x80,0x80]
.code32
jne %d14, 7, 256

# CHECK-INST: jne %d14, 7, 32512
# CHECK: encoding: [0xdf,0x7e,0x80,0xbf]
.code32
jne %d14, 7, 32512

# CHECK-INST: jne %d14, 7, 16638
# CHECK: encoding: [0xdf,0x7e,0x7f,0xa0]
.code32
jne %d14, 7, 16638

# CHECK-INST: jne %d14, 7, 32766
# CHECK: encoding: [0xdf,0x7e,0xff,0xbf]
.code32
jne %d14, 7, 32766

# CHECK-INST: jne %d15, -8, 256
# CHECK: encoding: [0xdf,0x8f,0x80,0x80]
.code32
jne %d15, -8, 256

# CHECK-INST: jne %d15, -8, 32512
# CHECK: encoding: [0xdf,0x8f,0x80,0xbf]
.code32
jne %d15, -8, 32512

# CHECK-INST: jne %d15, -8, 16638
# CHECK: encoding: [0xdf,0x8f,0x7f,0xa0]
.code32
jne %d15, -8, 16638

# CHECK-INST: jne %d15, -8, 32766
# CHECK: encoding: [0xdf,0x8f,0xff,0xbf]
.code32
jne %d15, -8, 32766

# CHECK-INST: jne %d15, -1, 256
# CHECK: encoding: [0xdf,0xff,0x80,0x80]
.code32
jne %d15, -1, 256

# CHECK-INST: jne %d15, -1, 32512
# CHECK: encoding: [0xdf,0xff,0x80,0xbf]
.code32
jne %d15, -1, 32512

# CHECK-INST: jne %d15, -1, 16638
# CHECK: encoding: [0xdf,0xff,0x7f,0xa0]
.code32
jne %d15, -1, 16638

# CHECK-INST: jne %d15, -1, 32766
# CHECK: encoding: [0xdf,0xff,0xff,0xbf]
.code32
jne %d15, -1, 32766

# CHECK-INST: jne %d15, 0, 256
# CHECK: encoding: [0xdf,0x0f,0x80,0x80]
.code32
jne %d15, 0, 256

# CHECK-INST: jne %d15, 0, 32512
# CHECK: encoding: [0xdf,0x0f,0x80,0xbf]
.code32
jne %d15, 0, 32512

# CHECK-INST: jne %d15, 0, 16638
# CHECK: encoding: [0xdf,0x0f,0x7f,0xa0]
.code32
jne %d15, 0, 16638

# CHECK-INST: jne %d15, 0, 32766
# CHECK: encoding: [0xdf,0x0f,0xff,0xbf]
.code32
jne %d15, 0, 32766

# CHECK-INST: jne %d15, 1, 256
# CHECK: encoding: [0xdf,0x1f,0x80,0x80]
.code32
jne %d15, 1, 256

# CHECK-INST: jne %d15, 1, 32512
# CHECK: encoding: [0xdf,0x1f,0x80,0xbf]
.code32
jne %d15, 1, 32512

# CHECK-INST: jne %d15, 1, 16638
# CHECK: encoding: [0xdf,0x1f,0x7f,0xa0]
.code32
jne %d15, 1, 16638

# CHECK-INST: jne %d15, 1, 32766
# CHECK: encoding: [0xdf,0x1f,0xff,0xbf]
.code32
jne %d15, 1, 32766

# CHECK-INST: jne %d15, 7, 256
# CHECK: encoding: [0xdf,0x7f,0x80,0x80]
.code32
jne %d15, 7, 256

# CHECK-INST: jne %d15, 7, 32512
# CHECK: encoding: [0xdf,0x7f,0x80,0xbf]
.code32
jne %d15, 7, 32512

# CHECK-INST: jne %d15, 7, 16638
# CHECK: encoding: [0xdf,0x7f,0x7f,0xa0]
.code32
jne %d15, 7, 16638

# CHECK-INST: jne %d15, 7, 32766
# CHECK: encoding: [0xdf,0x7f,0xff,0xbf]
.code32
jne %d15, 7, 32766


# CHECK-INST: jne.a %a0, %a0, 256
# CHECK: encoding: [0x7d,0x00,0x80,0x80]
.code32
jne.a %a0, %a0, 256

# CHECK-INST: jne.a %a0, %a0, 32512
# CHECK: encoding: [0x7d,0x00,0x80,0xbf]
.code32
jne.a %a0, %a0, 32512

# CHECK-INST: jne.a %a0, %a0, 16638
# CHECK: encoding: [0x7d,0x00,0x7f,0xa0]
.code32
jne.a %a0, %a0, 16638

# CHECK-INST: jne.a %a0, %a0, 32766
# CHECK: encoding: [0x7d,0x00,0xff,0xbf]
.code32
jne.a %a0, %a0, 32766

# CHECK-INST: jne.a %a0, %a1, 256
# CHECK: encoding: [0x7d,0x10,0x80,0x80]
.code32
jne.a %a0, %a1, 256

# CHECK-INST: jne.a %a0, %a1, 32512
# CHECK: encoding: [0x7d,0x10,0x80,0xbf]
.code32
jne.a %a0, %a1, 32512

# CHECK-INST: jne.a %a0, %a1, 16638
# CHECK: encoding: [0x7d,0x10,0x7f,0xa0]
.code32
jne.a %a0, %a1, 16638

# CHECK-INST: jne.a %a0, %a1, 32766
# CHECK: encoding: [0x7d,0x10,0xff,0xbf]
.code32
jne.a %a0, %a1, 32766

# CHECK-INST: jne.a %a0, %a14, 256
# CHECK: encoding: [0x7d,0xe0,0x80,0x80]
.code32
jne.a %a0, %a14, 256

# CHECK-INST: jne.a %a0, %a14, 32512
# CHECK: encoding: [0x7d,0xe0,0x80,0xbf]
.code32
jne.a %a0, %a14, 32512

# CHECK-INST: jne.a %a0, %a14, 16638
# CHECK: encoding: [0x7d,0xe0,0x7f,0xa0]
.code32
jne.a %a0, %a14, 16638

# CHECK-INST: jne.a %a0, %a14, 32766
# CHECK: encoding: [0x7d,0xe0,0xff,0xbf]
.code32
jne.a %a0, %a14, 32766

# CHECK-INST: jne.a %a0, %a15, 256
# CHECK: encoding: [0x7d,0xf0,0x80,0x80]
.code32
jne.a %a0, %a15, 256

# CHECK-INST: jne.a %a0, %a15, 32512
# CHECK: encoding: [0x7d,0xf0,0x80,0xbf]
.code32
jne.a %a0, %a15, 32512

# CHECK-INST: jne.a %a0, %a15, 16638
# CHECK: encoding: [0x7d,0xf0,0x7f,0xa0]
.code32
jne.a %a0, %a15, 16638

# CHECK-INST: jne.a %a0, %a15, 32766
# CHECK: encoding: [0x7d,0xf0,0xff,0xbf]
.code32
jne.a %a0, %a15, 32766

# CHECK-INST: jne.a %a1, %a0, 256
# CHECK: encoding: [0x7d,0x01,0x80,0x80]
.code32
jne.a %a1, %a0, 256

# CHECK-INST: jne.a %a1, %a0, 32512
# CHECK: encoding: [0x7d,0x01,0x80,0xbf]
.code32
jne.a %a1, %a0, 32512

# CHECK-INST: jne.a %a1, %a0, 16638
# CHECK: encoding: [0x7d,0x01,0x7f,0xa0]
.code32
jne.a %a1, %a0, 16638

# CHECK-INST: jne.a %a1, %a0, 32766
# CHECK: encoding: [0x7d,0x01,0xff,0xbf]
.code32
jne.a %a1, %a0, 32766

# CHECK-INST: jne.a %a1, %a1, 256
# CHECK: encoding: [0x7d,0x11,0x80,0x80]
.code32
jne.a %a1, %a1, 256

# CHECK-INST: jne.a %a1, %a1, 32512
# CHECK: encoding: [0x7d,0x11,0x80,0xbf]
.code32
jne.a %a1, %a1, 32512

# CHECK-INST: jne.a %a1, %a1, 16638
# CHECK: encoding: [0x7d,0x11,0x7f,0xa0]
.code32
jne.a %a1, %a1, 16638

# CHECK-INST: jne.a %a1, %a1, 32766
# CHECK: encoding: [0x7d,0x11,0xff,0xbf]
.code32
jne.a %a1, %a1, 32766

# CHECK-INST: jne.a %a1, %a14, 256
# CHECK: encoding: [0x7d,0xe1,0x80,0x80]
.code32
jne.a %a1, %a14, 256

# CHECK-INST: jne.a %a1, %a14, 32512
# CHECK: encoding: [0x7d,0xe1,0x80,0xbf]
.code32
jne.a %a1, %a14, 32512

# CHECK-INST: jne.a %a1, %a14, 16638
# CHECK: encoding: [0x7d,0xe1,0x7f,0xa0]
.code32
jne.a %a1, %a14, 16638

# CHECK-INST: jne.a %a1, %a14, 32766
# CHECK: encoding: [0x7d,0xe1,0xff,0xbf]
.code32
jne.a %a1, %a14, 32766

# CHECK-INST: jne.a %a1, %a15, 256
# CHECK: encoding: [0x7d,0xf1,0x80,0x80]
.code32
jne.a %a1, %a15, 256

# CHECK-INST: jne.a %a1, %a15, 32512
# CHECK: encoding: [0x7d,0xf1,0x80,0xbf]
.code32
jne.a %a1, %a15, 32512

# CHECK-INST: jne.a %a1, %a15, 16638
# CHECK: encoding: [0x7d,0xf1,0x7f,0xa0]
.code32
jne.a %a1, %a15, 16638

# CHECK-INST: jne.a %a1, %a15, 32766
# CHECK: encoding: [0x7d,0xf1,0xff,0xbf]
.code32
jne.a %a1, %a15, 32766

# CHECK-INST: jne.a %a14, %a0, 256
# CHECK: encoding: [0x7d,0x0e,0x80,0x80]
.code32
jne.a %a14, %a0, 256

# CHECK-INST: jne.a %a14, %a0, 32512
# CHECK: encoding: [0x7d,0x0e,0x80,0xbf]
.code32
jne.a %a14, %a0, 32512

# CHECK-INST: jne.a %a14, %a0, 16638
# CHECK: encoding: [0x7d,0x0e,0x7f,0xa0]
.code32
jne.a %a14, %a0, 16638

# CHECK-INST: jne.a %a14, %a0, 32766
# CHECK: encoding: [0x7d,0x0e,0xff,0xbf]
.code32
jne.a %a14, %a0, 32766

# CHECK-INST: jne.a %a14, %a1, 256
# CHECK: encoding: [0x7d,0x1e,0x80,0x80]
.code32
jne.a %a14, %a1, 256

# CHECK-INST: jne.a %a14, %a1, 32512
# CHECK: encoding: [0x7d,0x1e,0x80,0xbf]
.code32
jne.a %a14, %a1, 32512

# CHECK-INST: jne.a %a14, %a1, 16638
# CHECK: encoding: [0x7d,0x1e,0x7f,0xa0]
.code32
jne.a %a14, %a1, 16638

# CHECK-INST: jne.a %a14, %a1, 32766
# CHECK: encoding: [0x7d,0x1e,0xff,0xbf]
.code32
jne.a %a14, %a1, 32766

# CHECK-INST: jne.a %a14, %a14, 256
# CHECK: encoding: [0x7d,0xee,0x80,0x80]
.code32
jne.a %a14, %a14, 256

# CHECK-INST: jne.a %a14, %a14, 32512
# CHECK: encoding: [0x7d,0xee,0x80,0xbf]
.code32
jne.a %a14, %a14, 32512

# CHECK-INST: jne.a %a14, %a14, 16638
# CHECK: encoding: [0x7d,0xee,0x7f,0xa0]
.code32
jne.a %a14, %a14, 16638

# CHECK-INST: jne.a %a14, %a14, 32766
# CHECK: encoding: [0x7d,0xee,0xff,0xbf]
.code32
jne.a %a14, %a14, 32766

# CHECK-INST: jne.a %a14, %a15, 256
# CHECK: encoding: [0x7d,0xfe,0x80,0x80]
.code32
jne.a %a14, %a15, 256

# CHECK-INST: jne.a %a14, %a15, 32512
# CHECK: encoding: [0x7d,0xfe,0x80,0xbf]
.code32
jne.a %a14, %a15, 32512

# CHECK-INST: jne.a %a14, %a15, 16638
# CHECK: encoding: [0x7d,0xfe,0x7f,0xa0]
.code32
jne.a %a14, %a15, 16638

# CHECK-INST: jne.a %a14, %a15, 32766
# CHECK: encoding: [0x7d,0xfe,0xff,0xbf]
.code32
jne.a %a14, %a15, 32766

# CHECK-INST: jne.a %a15, %a0, 256
# CHECK: encoding: [0x7d,0x0f,0x80,0x80]
.code32
jne.a %a15, %a0, 256

# CHECK-INST: jne.a %a15, %a0, 32512
# CHECK: encoding: [0x7d,0x0f,0x80,0xbf]
.code32
jne.a %a15, %a0, 32512

# CHECK-INST: jne.a %a15, %a0, 16638
# CHECK: encoding: [0x7d,0x0f,0x7f,0xa0]
.code32
jne.a %a15, %a0, 16638

# CHECK-INST: jne.a %a15, %a0, 32766
# CHECK: encoding: [0x7d,0x0f,0xff,0xbf]
.code32
jne.a %a15, %a0, 32766

# CHECK-INST: jne.a %a15, %a1, 256
# CHECK: encoding: [0x7d,0x1f,0x80,0x80]
.code32
jne.a %a15, %a1, 256

# CHECK-INST: jne.a %a15, %a1, 32512
# CHECK: encoding: [0x7d,0x1f,0x80,0xbf]
.code32
jne.a %a15, %a1, 32512

# CHECK-INST: jne.a %a15, %a1, 16638
# CHECK: encoding: [0x7d,0x1f,0x7f,0xa0]
.code32
jne.a %a15, %a1, 16638

# CHECK-INST: jne.a %a15, %a1, 32766
# CHECK: encoding: [0x7d,0x1f,0xff,0xbf]
.code32
jne.a %a15, %a1, 32766

# CHECK-INST: jne.a %a15, %a14, 256
# CHECK: encoding: [0x7d,0xef,0x80,0x80]
.code32
jne.a %a15, %a14, 256

# CHECK-INST: jne.a %a15, %a14, 32512
# CHECK: encoding: [0x7d,0xef,0x80,0xbf]
.code32
jne.a %a15, %a14, 32512

# CHECK-INST: jne.a %a15, %a14, 16638
# CHECK: encoding: [0x7d,0xef,0x7f,0xa0]
.code32
jne.a %a15, %a14, 16638

# CHECK-INST: jne.a %a15, %a14, 32766
# CHECK: encoding: [0x7d,0xef,0xff,0xbf]
.code32
jne.a %a15, %a14, 32766

# CHECK-INST: jne.a %a15, %a15, 256
# CHECK: encoding: [0x7d,0xff,0x80,0x80]
.code32
jne.a %a15, %a15, 256

# CHECK-INST: jne.a %a15, %a15, 32512
# CHECK: encoding: [0x7d,0xff,0x80,0xbf]
.code32
jne.a %a15, %a15, 32512

# CHECK-INST: jne.a %a15, %a15, 16638
# CHECK: encoding: [0x7d,0xff,0x7f,0xa0]
.code32
jne.a %a15, %a15, 16638

# CHECK-INST: jne.a %a15, %a15, 32766
# CHECK: encoding: [0x7d,0xff,0xff,0xbf]
.code32
jne.a %a15, %a15, 32766


# CHECK-INST: jnz %d15, 0
# CHECK: encoding: [0xee,0x00]
.code16
jnz %d15, 0

# CHECK-INST: jnz %d15, 2
# CHECK: encoding: [0xee,0x01]
.code16
jnz %d15, 2

# CHECK-INST: jnz %d15, 4
# CHECK: encoding: [0xee,0x02]
.code16
jnz %d15, 4

# CHECK-INST: jnz %d15, 252
# CHECK: encoding: [0xee,0x7e]
.code16
jnz %d15, 252

# CHECK-INST: jnz %d15, 254
# CHECK: encoding: [0xee,0x7f]
.code16
jnz %d15, 254

# CHECK-INST: jnz %d15, -2
# CHECK: encoding: [0xee,0xff]
.code16
jnz %d15, -2

# CHECK-INST: jnz %d15, -4
# CHECK: encoding: [0xee,0xfe]
.code16
jnz %d15, -4

# CHECK-INST: jnz %d15, -254
# CHECK: encoding: [0xee,0x81]
.code16
jnz %d15, -254

# CHECK-INST: jnz %d15, -256
# CHECK: encoding: [0xee,0x80]
.code16
jnz %d15, -256
# CHECK-INST: jnz %d0, 0
# CHECK: encoding: [0xf6,0x00]
.code16
jnz %d0, 0

# CHECK-INST: jnz %d0, 2
# CHECK: encoding: [0xf6,0x01]
.code16
jnz %d0, 2

# CHECK-INST: jnz %d0, 28
# CHECK: encoding: [0xf6,0x0e]
.code16
jnz %d0, 28

# CHECK-INST: jnz %d0, 30
# CHECK: encoding: [0xf6,0x0f]
.code16
jnz %d0, 30

# CHECK-INST: jnz %d1, 0
# CHECK: encoding: [0xf6,0x10]
.code16
jnz %d1, 0

# CHECK-INST: jnz %d1, 2
# CHECK: encoding: [0xf6,0x11]
.code16
jnz %d1, 2

# CHECK-INST: jnz %d1, 28
# CHECK: encoding: [0xf6,0x1e]
.code16
jnz %d1, 28

# CHECK-INST: jnz %d1, 30
# CHECK: encoding: [0xf6,0x1f]
.code16
jnz %d1, 30

# CHECK-INST: jnz %d14, 0
# CHECK: encoding: [0xf6,0xe0]
.code16
jnz %d14, 0

# CHECK-INST: jnz %d14, 2
# CHECK: encoding: [0xf6,0xe1]
.code16
jnz %d14, 2

# CHECK-INST: jnz %d14, 28
# CHECK: encoding: [0xf6,0xee]
.code16
jnz %d14, 28

# CHECK-INST: jnz %d14, 30
# CHECK: encoding: [0xf6,0xef]
.code16
jnz %d14, 30

# CHECK-INST: jnz.a %a0, 256
# CHECK: encoding: [0xbd,0x00,0x80,0x80]
.code32
jnz.a %a0, 256

# CHECK-INST: jnz.a %a0, 32512
# CHECK: encoding: [0xbd,0x00,0x80,0xbf]
.code32
jnz.a %a0, 32512

# CHECK-INST: jnz.a %a0, 16638
# CHECK: encoding: [0xbd,0x00,0x7f,0xa0]
.code32
jnz.a %a0, 16638

# CHECK-INST: jnz.a %a0, 32766
# CHECK: encoding: [0xbd,0x00,0xff,0xbf]
.code32
jnz.a %a0, 32766

# CHECK-INST: jnz.a %a1, 256
# CHECK: encoding: [0xbd,0x01,0x80,0x80]
.code32
jnz.a %a1, 256

# CHECK-INST: jnz.a %a1, 32512
# CHECK: encoding: [0xbd,0x01,0x80,0xbf]
.code32
jnz.a %a1, 32512

# CHECK-INST: jnz.a %a1, 16638
# CHECK: encoding: [0xbd,0x01,0x7f,0xa0]
.code32
jnz.a %a1, 16638

# CHECK-INST: jnz.a %a1, 32766
# CHECK: encoding: [0xbd,0x01,0xff,0xbf]
.code32
jnz.a %a1, 32766

# CHECK-INST: jnz.a %a14, 256
# CHECK: encoding: [0xbd,0x0e,0x80,0x80]
.code32
jnz.a %a14, 256

# CHECK-INST: jnz.a %a14, 32512
# CHECK: encoding: [0xbd,0x0e,0x80,0xbf]
.code32
jnz.a %a14, 32512

# CHECK-INST: jnz.a %a14, 16638
# CHECK: encoding: [0xbd,0x0e,0x7f,0xa0]
.code32
jnz.a %a14, 16638

# CHECK-INST: jnz.a %a14, 32766
# CHECK: encoding: [0xbd,0x0e,0xff,0xbf]
.code32
jnz.a %a14, 32766

# CHECK-INST: jnz.a %a15, 256
# CHECK: encoding: [0xbd,0x0f,0x80,0x80]
.code32
jnz.a %a15, 256

# CHECK-INST: jnz.a %a15, 32512
# CHECK: encoding: [0xbd,0x0f,0x80,0xbf]
.code32
jnz.a %a15, 32512

# CHECK-INST: jnz.a %a15, 16638
# CHECK: encoding: [0xbd,0x0f,0x7f,0xa0]
.code32
jnz.a %a15, 16638

# CHECK-INST: jnz.a %a15, 32766
# CHECK: encoding: [0xbd,0x0f,0xff,0xbf]
.code32
jnz.a %a15, 32766

# CHECK-INST: jnz.a %a0, 0
# CHECK: encoding: [0x7c,0x00]
jnz.a %a0, 0

# CHECK-INST: jnz.a %a0, 2
# CHECK: encoding: [0x7c,0x01]
jnz.a %a0, 2

# CHECK-INST: jnz.a %a0, 28
# CHECK: encoding: [0x7c,0x0e]
jnz.a %a0, 28

# CHECK-INST: jnz.a %a0, 30
# CHECK: encoding: [0x7c,0x0f]
jnz.a %a0, 30

# CHECK-INST: jnz.a %a1, 0
# CHECK: encoding: [0x7c,0x10]
jnz.a %a1, 0

# CHECK-INST: jnz.a %a1, 2
# CHECK: encoding: [0x7c,0x11]
jnz.a %a1, 2

# CHECK-INST: jnz.a %a1, 28
# CHECK: encoding: [0x7c,0x1e]
jnz.a %a1, 28

# CHECK-INST: jnz.a %a1, 30
# CHECK: encoding: [0x7c,0x1f]
jnz.a %a1, 30

# CHECK-INST: jnz.a %a14, 0
# CHECK: encoding: [0x7c,0xe0]
jnz.a %a14, 0

# CHECK-INST: jnz.a %a14, 2
# CHECK: encoding: [0x7c,0xe1]
jnz.a %a14, 2

# CHECK-INST: jnz.a %a14, 28
# CHECK: encoding: [0x7c,0xee]
jnz.a %a14, 28

# CHECK-INST: jnz.a %a14, 30
# CHECK: encoding: [0x7c,0xef]
jnz.a %a14, 30

# CHECK-INST: jnz.a %a15, 0
# CHECK: encoding: [0x7c,0xf0]
jnz.a %a15, 0

# CHECK-INST: jnz.a %a15, 2
# CHECK: encoding: [0x7c,0xf1]
jnz.a %a15, 2

# CHECK-INST: jnz.a %a15, 28
# CHECK: encoding: [0x7c,0xfe]
jnz.a %a15, 28

# CHECK-INST: jnz.a %a15, 30
# CHECK: encoding: [0x7c,0xff]
jnz.a %a15, 30

# CHECK-INST: jnz.t %d15, 0, 0
# CHECK: encoding: [0xae,0x00]
.code16
jnz.t %d15, 0, 0

# CHECK-INST: jnz.t %d15, 0, 2
# CHECK: encoding: [0xae,0x01]
.code16
jnz.t %d15, 0, 2

# CHECK-INST: jnz.t %d15, 0, 28
# CHECK: encoding: [0xae,0x0e]
.code16
jnz.t %d15, 0, 28

# CHECK-INST: jnz.t %d15, 0, 30
# CHECK: encoding: [0xae,0x0f]
.code16
jnz.t %d15, 0, 30

# CHECK-INST: jnz.t %d15, 1, 0
# CHECK: encoding: [0xae,0x10]
.code16
jnz.t %d15, 1, 0

# CHECK-INST: jnz.t %d15, 1, 2
# CHECK: encoding: [0xae,0x11]
.code16
jnz.t %d15, 1, 2

# CHECK-INST: jnz.t %d15, 1, 28
# CHECK: encoding: [0xae,0x1e]
.code16
jnz.t %d15, 1, 28

# CHECK-INST: jnz.t %d15, 1, 30
# CHECK: encoding: [0xae,0x1f]
.code16
jnz.t %d15, 1, 30

# CHECK-INST: jnz.t %d15, 2, 0
# CHECK: encoding: [0xae,0x20]
.code16
jnz.t %d15, 2, 0

# CHECK-INST: jnz.t %d15, 2, 2
# CHECK: encoding: [0xae,0x21]
.code16
jnz.t %d15, 2, 2

# CHECK-INST: jnz.t %d15, 2, 28
# CHECK: encoding: [0xae,0x2e]
.code16
jnz.t %d15, 2, 28

# CHECK-INST: jnz.t %d15, 2, 30
# CHECK: encoding: [0xae,0x2f]
.code16
jnz.t %d15, 2, 30

# CHECK-INST: jnz.t %d15, 3, 0
# CHECK: encoding: [0xae,0x30]
.code16
jnz.t %d15, 3, 0

# CHECK-INST: jnz.t %d15, 3, 2
# CHECK: encoding: [0xae,0x31]
.code16
jnz.t %d15, 3, 2

# CHECK-INST: jnz.t %d15, 3, 28
# CHECK: encoding: [0xae,0x3e]
.code16
jnz.t %d15, 3, 28

# CHECK-INST: jnz.t %d15, 3, 30
# CHECK: encoding: [0xae,0x3f]
.code16
jnz.t %d15, 3, 30
 
# CHECK-INST: jnz.t %d0, 0, 256
# CHECK: encoding: [0x6f,0x00,0x80,0x80]
.code32
jnz.t %d0, 0, 256

# CHECK-INST: jnz.t %d0, 0, 32512
# CHECK: encoding: [0x6f,0x00,0x80,0xbf]
.code32
jnz.t %d0, 0, 32512

# CHECK-INST: jnz.t %d0, 0, 16638
# CHECK: encoding: [0x6f,0x00,0x7f,0xa0]
.code32
jnz.t %d0, 0, 16638

# CHECK-INST: jnz.t %d0, 0, 32766
# CHECK: encoding: [0x6f,0x00,0xff,0xbf]
.code32
jnz.t %d0, 0, 32766

# CHECK-INST: jnz.t %d0, 1, 256
# CHECK: encoding: [0x6f,0x10,0x80,0x80]
.code32
jnz.t %d0, 1, 256

# CHECK-INST: jnz.t %d0, 1, 32512
# CHECK: encoding: [0x6f,0x10,0x80,0xbf]
.code32
jnz.t %d0, 1, 32512

# CHECK-INST: jnz.t %d0, 1, 16638
# CHECK: encoding: [0x6f,0x10,0x7f,0xa0]
.code32
jnz.t %d0, 1, 16638

# CHECK-INST: jnz.t %d0, 1, 32766
# CHECK: encoding: [0x6f,0x10,0xff,0xbf]
.code32
jnz.t %d0, 1, 32766

# CHECK-INST: jnz.t %d0, 2, 256
# CHECK: encoding: [0x6f,0x20,0x80,0x80]
.code32
jnz.t %d0, 2, 256

# CHECK-INST: jnz.t %d0, 2, 32512
# CHECK: encoding: [0x6f,0x20,0x80,0xbf]
.code32
jnz.t %d0, 2, 32512

# CHECK-INST: jnz.t %d0, 2, 16638
# CHECK: encoding: [0x6f,0x20,0x7f,0xa0]
.code32
jnz.t %d0, 2, 16638

# CHECK-INST: jnz.t %d0, 2, 32766
# CHECK: encoding: [0x6f,0x20,0xff,0xbf]
.code32
jnz.t %d0, 2, 32766

# CHECK-INST: jnz.t %d0, 3, 256
# CHECK: encoding: [0x6f,0x30,0x80,0x80]
.code32
jnz.t %d0, 3, 256

# CHECK-INST: jnz.t %d0, 3, 32512
# CHECK: encoding: [0x6f,0x30,0x80,0xbf]
.code32
jnz.t %d0, 3, 32512

# CHECK-INST: jnz.t %d0, 3, 16638
# CHECK: encoding: [0x6f,0x30,0x7f,0xa0]
.code32
jnz.t %d0, 3, 16638

# CHECK-INST: jnz.t %d0, 3, 32766
# CHECK: encoding: [0x6f,0x30,0xff,0xbf]
.code32
jnz.t %d0, 3, 32766

# CHECK-INST: jnz.t %d1, 0, 256
# CHECK: encoding: [0x6f,0x01,0x80,0x80]
.code32
jnz.t %d1, 0, 256

# CHECK-INST: jnz.t %d1, 0, 32512
# CHECK: encoding: [0x6f,0x01,0x80,0xbf]
.code32
jnz.t %d1, 0, 32512

# CHECK-INST: jnz.t %d1, 0, 16638
# CHECK: encoding: [0x6f,0x01,0x7f,0xa0]
.code32
jnz.t %d1, 0, 16638

# CHECK-INST: jnz.t %d1, 0, 32766
# CHECK: encoding: [0x6f,0x01,0xff,0xbf]
.code32
jnz.t %d1, 0, 32766

# CHECK-INST: jnz.t %d1, 1, 256
# CHECK: encoding: [0x6f,0x11,0x80,0x80]
.code32
jnz.t %d1, 1, 256

# CHECK-INST: jnz.t %d1, 1, 32512
# CHECK: encoding: [0x6f,0x11,0x80,0xbf]
.code32
jnz.t %d1, 1, 32512

# CHECK-INST: jnz.t %d1, 1, 16638
# CHECK: encoding: [0x6f,0x11,0x7f,0xa0]
.code32
jnz.t %d1, 1, 16638

# CHECK-INST: jnz.t %d1, 1, 32766
# CHECK: encoding: [0x6f,0x11,0xff,0xbf]
.code32
jnz.t %d1, 1, 32766

# CHECK-INST: jnz.t %d1, 2, 256
# CHECK: encoding: [0x6f,0x21,0x80,0x80]
.code32
jnz.t %d1, 2, 256

# CHECK-INST: jnz.t %d1, 2, 32512
# CHECK: encoding: [0x6f,0x21,0x80,0xbf]
.code32
jnz.t %d1, 2, 32512

# CHECK-INST: jnz.t %d1, 2, 16638
# CHECK: encoding: [0x6f,0x21,0x7f,0xa0]
.code32
jnz.t %d1, 2, 16638

# CHECK-INST: jnz.t %d1, 2, 32766
# CHECK: encoding: [0x6f,0x21,0xff,0xbf]
.code32
jnz.t %d1, 2, 32766

# CHECK-INST: jnz.t %d1, 3, 256
# CHECK: encoding: [0x6f,0x31,0x80,0x80]
.code32
jnz.t %d1, 3, 256

# CHECK-INST: jnz.t %d1, 3, 32512
# CHECK: encoding: [0x6f,0x31,0x80,0xbf]
.code32
jnz.t %d1, 3, 32512

# CHECK-INST: jnz.t %d1, 3, 16638
# CHECK: encoding: [0x6f,0x31,0x7f,0xa0]
.code32
jnz.t %d1, 3, 16638

# CHECK-INST: jnz.t %d1, 3, 32766
# CHECK: encoding: [0x6f,0x31,0xff,0xbf]
.code32
jnz.t %d1, 3, 32766

# CHECK-INST: jnz.t %d14, 0, 256
# CHECK: encoding: [0x6f,0x0e,0x80,0x80]
.code32
jnz.t %d14, 0, 256

# CHECK-INST: jnz.t %d14, 0, 32512
# CHECK: encoding: [0x6f,0x0e,0x80,0xbf]
.code32
jnz.t %d14, 0, 32512

# CHECK-INST: jnz.t %d14, 0, 16638
# CHECK: encoding: [0x6f,0x0e,0x7f,0xa0]
.code32
jnz.t %d14, 0, 16638

# CHECK-INST: jnz.t %d14, 0, 32766
# CHECK: encoding: [0x6f,0x0e,0xff,0xbf]
.code32
jnz.t %d14, 0, 32766

# CHECK-INST: jnz.t %d14, 1, 256
# CHECK: encoding: [0x6f,0x1e,0x80,0x80]
.code32
jnz.t %d14, 1, 256

# CHECK-INST: jnz.t %d14, 1, 32512
# CHECK: encoding: [0x6f,0x1e,0x80,0xbf]
.code32
jnz.t %d14, 1, 32512

# CHECK-INST: jnz.t %d14, 1, 16638
# CHECK: encoding: [0x6f,0x1e,0x7f,0xa0]
.code32
jnz.t %d14, 1, 16638

# CHECK-INST: jnz.t %d14, 1, 32766
# CHECK: encoding: [0x6f,0x1e,0xff,0xbf]
.code32
jnz.t %d14, 1, 32766

# CHECK-INST: jnz.t %d14, 2, 256
# CHECK: encoding: [0x6f,0x2e,0x80,0x80]
.code32
jnz.t %d14, 2, 256

# CHECK-INST: jnz.t %d14, 2, 32512
# CHECK: encoding: [0x6f,0x2e,0x80,0xbf]
.code32
jnz.t %d14, 2, 32512

# CHECK-INST: jnz.t %d14, 2, 16638
# CHECK: encoding: [0x6f,0x2e,0x7f,0xa0]
.code32
jnz.t %d14, 2, 16638

# CHECK-INST: jnz.t %d14, 2, 32766
# CHECK: encoding: [0x6f,0x2e,0xff,0xbf]
.code32
jnz.t %d14, 2, 32766

# CHECK-INST: jnz.t %d14, 3, 256
# CHECK: encoding: [0x6f,0x3e,0x80,0x80]
.code32
jnz.t %d14, 3, 256

# CHECK-INST: jnz.t %d14, 3, 32512
# CHECK: encoding: [0x6f,0x3e,0x80,0xbf]
.code32
jnz.t %d14, 3, 32512

# CHECK-INST: jnz.t %d14, 3, 16638
# CHECK: encoding: [0x6f,0x3e,0x7f,0xa0]
.code32
jnz.t %d14, 3, 16638

# CHECK-INST: jnz.t %d14, 3, 32766
# CHECK: encoding: [0x6f,0x3e,0xff,0xbf]
.code32
jnz.t %d14, 3, 32766

# CHECK-INST: jnz.t %d15, 0, 256
# CHECK: encoding: [0x6f,0x0f,0x80,0x80]
.code32
jnz.t %d15, 0, 256

# CHECK-INST: jnz.t %d15, 0, 32512
# CHECK: encoding: [0x6f,0x0f,0x80,0xbf]
.code32
jnz.t %d15, 0, 32512

# CHECK-INST: jnz.t %d15, 0, 16638
# CHECK: encoding: [0x6f,0x0f,0x7f,0xa0]
.code32
jnz.t %d15, 0, 16638

# CHECK-INST: jnz.t %d15, 0, 32766
# CHECK: encoding: [0x6f,0x0f,0xff,0xbf]
.code32
jnz.t %d15, 0, 32766

# CHECK-INST: jnz.t %d15, 1, 256
# CHECK: encoding: [0x6f,0x1f,0x80,0x80]
.code32
jnz.t %d15, 1, 256

# CHECK-INST: jnz.t %d15, 1, 32512
# CHECK: encoding: [0x6f,0x1f,0x80,0xbf]
.code32
jnz.t %d15, 1, 32512

# CHECK-INST: jnz.t %d15, 1, 16638
# CHECK: encoding: [0x6f,0x1f,0x7f,0xa0]
.code32
jnz.t %d15, 1, 16638

# CHECK-INST: jnz.t %d15, 1, 32766
# CHECK: encoding: [0x6f,0x1f,0xff,0xbf]
.code32
jnz.t %d15, 1, 32766

# CHECK-INST: jnz.t %d15, 2, 256
# CHECK: encoding: [0x6f,0x2f,0x80,0x80]
.code32
jnz.t %d15, 2, 256

# CHECK-INST: jnz.t %d15, 2, 32512
# CHECK: encoding: [0x6f,0x2f,0x80,0xbf]
.code32
jnz.t %d15, 2, 32512

# CHECK-INST: jnz.t %d15, 2, 16638
# CHECK: encoding: [0x6f,0x2f,0x7f,0xa0]
.code32
jnz.t %d15, 2, 16638

# CHECK-INST: jnz.t %d15, 2, 32766
# CHECK: encoding: [0x6f,0x2f,0xff,0xbf]
.code32
jnz.t %d15, 2, 32766

# CHECK-INST: jnz.t %d15, 3, 256
# CHECK: encoding: [0x6f,0x3f,0x80,0x80]
.code32
jnz.t %d15, 3, 256

# CHECK-INST: jnz.t %d15, 3, 32512
# CHECK: encoding: [0x6f,0x3f,0x80,0xbf]
.code32
jnz.t %d15, 3, 32512

# CHECK-INST: jnz.t %d15, 3, 16638
# CHECK: encoding: [0x6f,0x3f,0x7f,0xa0]
.code32
jnz.t %d15, 3, 16638

# CHECK-INST: jnz.t %d15, 3, 32766
# CHECK: encoding: [0x6f,0x3f,0xff,0xbf]
.code32
jnz.t %d15, 3, 32766


# CHECK-INST: jz.a %a0, 256
# CHECK: encoding: [0xbd,0x00,0x80,0x00]
.code32
jz.a %a0, 256

# CHECK-INST: jz.a %a0, 32512
# CHECK: encoding: [0xbd,0x00,0x80,0x3f]
.code32
jz.a %a0, 32512

# CHECK-INST: jz.a %a0, 16638
# CHECK: encoding: [0xbd,0x00,0x7f,0x20]
.code32
jz.a %a0, 16638

# CHECK-INST: jz.a %a0, 32766
# CHECK: encoding: [0xbd,0x00,0xff,0x3f]
.code32
jz.a %a0, 32766

# CHECK-INST: jz.a %a1, 256
# CHECK: encoding: [0xbd,0x01,0x80,0x00]
.code32
jz.a %a1, 256

# CHECK-INST: jz.a %a1, 32512
# CHECK: encoding: [0xbd,0x01,0x80,0x3f]
.code32
jz.a %a1, 32512

# CHECK-INST: jz.a %a1, 16638
# CHECK: encoding: [0xbd,0x01,0x7f,0x20]
.code32
jz.a %a1, 16638

# CHECK-INST: jz.a %a1, 32766
# CHECK: encoding: [0xbd,0x01,0xff,0x3f]
.code32
jz.a %a1, 32766

# CHECK-INST: jz.a %a14, 256
# CHECK: encoding: [0xbd,0x0e,0x80,0x00]
.code32
jz.a %a14, 256

# CHECK-INST: jz.a %a14, 32512
# CHECK: encoding: [0xbd,0x0e,0x80,0x3f]
.code32
jz.a %a14, 32512

# CHECK-INST: jz.a %a14, 16638
# CHECK: encoding: [0xbd,0x0e,0x7f,0x20]
.code32
jz.a %a14, 16638

# CHECK-INST: jz.a %a14, 32766
# CHECK: encoding: [0xbd,0x0e,0xff,0x3f]
.code32
jz.a %a14, 32766

# CHECK-INST: jz.a %a15, 256
# CHECK: encoding: [0xbd,0x0f,0x80,0x00]
.code32
jz.a %a15, 256

# CHECK-INST: jz.a %a15, 32512
# CHECK: encoding: [0xbd,0x0f,0x80,0x3f]
.code32
jz.a %a15, 32512

# CHECK-INST: jz.a %a15, 16638
# CHECK: encoding: [0xbd,0x0f,0x7f,0x20]
.code32
jz.a %a15, 16638

# CHECK-INST: jz.a %a15, 32766
# CHECK: encoding: [0xbd,0x0f,0xff,0x3f]
.code32
jz.a %a15, 32766


# CHECK-INST: jz.a %a0, 0
# CHECK: encoding: [0xbc,0x00]
.code16
jz.a %a0, 0

# CHECK-INST: jz.a %a0, 2
# CHECK: encoding: [0xbc,0x01]
.code16
jz.a %a0, 2

# CHECK-INST: jz.a %a0, 28
# CHECK: encoding: [0xbc,0x0e]
.code16
jz.a %a0, 28

# CHECK-INST: jz.a %a0, 30
# CHECK: encoding: [0xbc,0x0f]
.code16
jz.a %a0, 30

# CHECK-INST: jz.a %a1, 0
# CHECK: encoding: [0xbc,0x10]
.code16
jz.a %a1, 0

# CHECK-INST: jz.a %a1, 2
# CHECK: encoding: [0xbc,0x11]
.code16
jz.a %a1, 2

# CHECK-INST: jz.a %a1, 28
# CHECK: encoding: [0xbc,0x1e]
.code16
jz.a %a1, 28

# CHECK-INST: jz.a %a1, 30
# CHECK: encoding: [0xbc,0x1f]
.code16
jz.a %a1, 30

# CHECK-INST: jz.a %a14, 0
# CHECK: encoding: [0xbc,0xe0]
.code16
jz.a %a14, 0

# CHECK-INST: jz.a %a14, 2
# CHECK: encoding: [0xbc,0xe1]
.code16
jz.a %a14, 2

# CHECK-INST: jz.a %a14, 28
# CHECK: encoding: [0xbc,0xee]
.code16
jz.a %a14, 28

# CHECK-INST: jz.a %a14, 30
# CHECK: encoding: [0xbc,0xef]
.code16
jz.a %a14, 30

# CHECK-INST: jz.a %a15, 0
# CHECK: encoding: [0xbc,0xf0]
.code16
jz.a %a15, 0

# CHECK-INST: jz.a %a15, 2
# CHECK: encoding: [0xbc,0xf1]
.code16
jz.a %a15, 2

# CHECK-INST: jz.a %a15, 28
# CHECK: encoding: [0xbc,0xfe]
.code16
jz.a %a15, 28

# CHECK-INST: jz.a %a15, 30
# CHECK: encoding: [0xbc,0xff]
.code16
jz.a %a15, 30


# CHECK-INST: jz.t %d15, 0, 0
# CHECK: encoding: [0x2e,0x00]
.code16
jz.t %d15, 0, 0

# CHECK-INST: jz.t %d15, 0, 2
# CHECK: encoding: [0x2e,0x01]
.code16
jz.t %d15, 0, 2

# CHECK-INST: jz.t %d15, 0, 28
# CHECK: encoding: [0x2e,0x0e]
.code16
jz.t %d15, 0, 28

# CHECK-INST: jz.t %d15, 0, 30
# CHECK: encoding: [0x2e,0x0f]
.code16
jz.t %d15, 0, 30

# CHECK-INST: jz.t %d15, 1, 0
# CHECK: encoding: [0x2e,0x10]
.code16
jz.t %d15, 1, 0

# CHECK-INST: jz.t %d15, 1, 2
# CHECK: encoding: [0x2e,0x11]
.code16
jz.t %d15, 1, 2

# CHECK-INST: jz.t %d15, 1, 28
# CHECK: encoding: [0x2e,0x1e]
.code16
jz.t %d15, 1, 28

# CHECK-INST: jz.t %d15, 1, 30
# CHECK: encoding: [0x2e,0x1f]
.code16
jz.t %d15, 1, 30

# CHECK-INST: jz.t %d15, 2, 0
# CHECK: encoding: [0x2e,0x20]
.code16
jz.t %d15, 2, 0

# CHECK-INST: jz.t %d15, 2, 2
# CHECK: encoding: [0x2e,0x21]
.code16
jz.t %d15, 2, 2

# CHECK-INST: jz.t %d15, 2, 28
# CHECK: encoding: [0x2e,0x2e]
.code16
jz.t %d15, 2, 28

# CHECK-INST: jz.t %d15, 2, 30
# CHECK: encoding: [0x2e,0x2f]
.code16
jz.t %d15, 2, 30

# CHECK-INST: jz.t %d15, 3, 0
# CHECK: encoding: [0x2e,0x30]
.code16
jz.t %d15, 3, 0

# CHECK-INST: jz.t %d15, 3, 2
# CHECK: encoding: [0x2e,0x31]
.code16
jz.t %d15, 3, 2

# CHECK-INST: jz.t %d15, 3, 28
# CHECK: encoding: [0x2e,0x3e]
.code16
jz.t %d15, 3, 28

# CHECK-INST: jz.t %d15, 3, 30
# CHECK: encoding: [0x2e,0x3f]
.code16
jz.t %d15, 3, 30


# CHECK-INST: jz.t %d0, 0, 256
# CHECK: encoding: [0x6f,0x00,0x80,0x00]
.code32
jz.t %d0, 0, 256

# CHECK-INST: jz.t %d0, 0, 32512
# CHECK: encoding: [0x6f,0x00,0x80,0x3f]
.code32
jz.t %d0, 0, 32512

# CHECK-INST: jz.t %d0, 0, 16638
# CHECK: encoding: [0x6f,0x00,0x7f,0x20]
.code32
jz.t %d0, 0, 16638

# CHECK-INST: jz.t %d0, 0, 32766
# CHECK: encoding: [0x6f,0x00,0xff,0x3f]
.code32
jz.t %d0, 0, 32766

# CHECK-INST: jz.t %d0, 1, 256
# CHECK: encoding: [0x6f,0x10,0x80,0x00]
.code32
jz.t %d0, 1, 256

# CHECK-INST: jz.t %d0, 1, 32512
# CHECK: encoding: [0x6f,0x10,0x80,0x3f]
.code32
jz.t %d0, 1, 32512

# CHECK-INST: jz.t %d0, 1, 16638
# CHECK: encoding: [0x6f,0x10,0x7f,0x20]
.code32
jz.t %d0, 1, 16638

# CHECK-INST: jz.t %d0, 1, 32766
# CHECK: encoding: [0x6f,0x10,0xff,0x3f]
.code32
jz.t %d0, 1, 32766

# CHECK-INST: jz.t %d0, 2, 256
# CHECK: encoding: [0x6f,0x20,0x80,0x00]
.code32
jz.t %d0, 2, 256

# CHECK-INST: jz.t %d0, 2, 32512
# CHECK: encoding: [0x6f,0x20,0x80,0x3f]
.code32
jz.t %d0, 2, 32512

# CHECK-INST: jz.t %d0, 2, 16638
# CHECK: encoding: [0x6f,0x20,0x7f,0x20]
.code32
jz.t %d0, 2, 16638

# CHECK-INST: jz.t %d0, 2, 32766
# CHECK: encoding: [0x6f,0x20,0xff,0x3f]
.code32
jz.t %d0, 2, 32766

# CHECK-INST: jz.t %d0, 3, 256
# CHECK: encoding: [0x6f,0x30,0x80,0x00]
.code32
jz.t %d0, 3, 256

# CHECK-INST: jz.t %d0, 3, 32512
# CHECK: encoding: [0x6f,0x30,0x80,0x3f]
.code32
jz.t %d0, 3, 32512

# CHECK-INST: jz.t %d0, 3, 16638
# CHECK: encoding: [0x6f,0x30,0x7f,0x20]
.code32
jz.t %d0, 3, 16638

# CHECK-INST: jz.t %d0, 3, 32766
# CHECK: encoding: [0x6f,0x30,0xff,0x3f]
.code32
jz.t %d0, 3, 32766

# CHECK-INST: jz.t %d1, 0, 256
# CHECK: encoding: [0x6f,0x01,0x80,0x00]
.code32
jz.t %d1, 0, 256

# CHECK-INST: jz.t %d1, 0, 32512
# CHECK: encoding: [0x6f,0x01,0x80,0x3f]
.code32
jz.t %d1, 0, 32512

# CHECK-INST: jz.t %d1, 0, 16638
# CHECK: encoding: [0x6f,0x01,0x7f,0x20]
.code32
jz.t %d1, 0, 16638

# CHECK-INST: jz.t %d1, 0, 32766
# CHECK: encoding: [0x6f,0x01,0xff,0x3f]
.code32
jz.t %d1, 0, 32766

# CHECK-INST: jz.t %d1, 1, 256
# CHECK: encoding: [0x6f,0x11,0x80,0x00]
.code32
jz.t %d1, 1, 256

# CHECK-INST: jz.t %d1, 1, 32512
# CHECK: encoding: [0x6f,0x11,0x80,0x3f]
.code32
jz.t %d1, 1, 32512

# CHECK-INST: jz.t %d1, 1, 16638
# CHECK: encoding: [0x6f,0x11,0x7f,0x20]
.code32
jz.t %d1, 1, 16638

# CHECK-INST: jz.t %d1, 1, 32766
# CHECK: encoding: [0x6f,0x11,0xff,0x3f]
.code32
jz.t %d1, 1, 32766

# CHECK-INST: jz.t %d1, 2, 256
# CHECK: encoding: [0x6f,0x21,0x80,0x00]
.code32
jz.t %d1, 2, 256

# CHECK-INST: jz.t %d1, 2, 32512
# CHECK: encoding: [0x6f,0x21,0x80,0x3f]
.code32
jz.t %d1, 2, 32512

# CHECK-INST: jz.t %d1, 2, 16638
# CHECK: encoding: [0x6f,0x21,0x7f,0x20]
.code32
jz.t %d1, 2, 16638

# CHECK-INST: jz.t %d1, 2, 32766
# CHECK: encoding: [0x6f,0x21,0xff,0x3f]
.code32
jz.t %d1, 2, 32766

# CHECK-INST: jz.t %d1, 3, 256
# CHECK: encoding: [0x6f,0x31,0x80,0x00]
.code32
jz.t %d1, 3, 256

# CHECK-INST: jz.t %d1, 3, 32512
# CHECK: encoding: [0x6f,0x31,0x80,0x3f]
.code32
jz.t %d1, 3, 32512

# CHECK-INST: jz.t %d1, 3, 16638
# CHECK: encoding: [0x6f,0x31,0x7f,0x20]
.code32
jz.t %d1, 3, 16638

# CHECK-INST: jz.t %d1, 3, 32766
# CHECK: encoding: [0x6f,0x31,0xff,0x3f]
.code32
jz.t %d1, 3, 32766

# CHECK-INST: jz.t %d14, 0, 256
# CHECK: encoding: [0x6f,0x0e,0x80,0x00]
.code32
jz.t %d14, 0, 256

# CHECK-INST: jz.t %d14, 0, 32512
# CHECK: encoding: [0x6f,0x0e,0x80,0x3f]
.code32
jz.t %d14, 0, 32512

# CHECK-INST: jz.t %d14, 0, 16638
# CHECK: encoding: [0x6f,0x0e,0x7f,0x20]
.code32
jz.t %d14, 0, 16638

# CHECK-INST: jz.t %d14, 0, 32766
# CHECK: encoding: [0x6f,0x0e,0xff,0x3f]
.code32
jz.t %d14, 0, 32766

# CHECK-INST: jz.t %d14, 1, 256
# CHECK: encoding: [0x6f,0x1e,0x80,0x00]
.code32
jz.t %d14, 1, 256

# CHECK-INST: jz.t %d14, 1, 32512
# CHECK: encoding: [0x6f,0x1e,0x80,0x3f]
.code32
jz.t %d14, 1, 32512

# CHECK-INST: jz.t %d14, 1, 16638
# CHECK: encoding: [0x6f,0x1e,0x7f,0x20]
.code32
jz.t %d14, 1, 16638

# CHECK-INST: jz.t %d14, 1, 32766
# CHECK: encoding: [0x6f,0x1e,0xff,0x3f]
.code32
jz.t %d14, 1, 32766

# CHECK-INST: jz.t %d14, 2, 256
# CHECK: encoding: [0x6f,0x2e,0x80,0x00]
.code32
jz.t %d14, 2, 256

# CHECK-INST: jz.t %d14, 2, 32512
# CHECK: encoding: [0x6f,0x2e,0x80,0x3f]
.code32
jz.t %d14, 2, 32512

# CHECK-INST: jz.t %d14, 2, 16638
# CHECK: encoding: [0x6f,0x2e,0x7f,0x20]
.code32
jz.t %d14, 2, 16638

# CHECK-INST: jz.t %d14, 2, 32766
# CHECK: encoding: [0x6f,0x2e,0xff,0x3f]
.code32
jz.t %d14, 2, 32766

# CHECK-INST: jz.t %d14, 3, 256
# CHECK: encoding: [0x6f,0x3e,0x80,0x00]
.code32
jz.t %d14, 3, 256

# CHECK-INST: jz.t %d14, 3, 32512
# CHECK: encoding: [0x6f,0x3e,0x80,0x3f]
.code32
jz.t %d14, 3, 32512

# CHECK-INST: jz.t %d14, 3, 16638
# CHECK: encoding: [0x6f,0x3e,0x7f,0x20]
.code32
jz.t %d14, 3, 16638

# CHECK-INST: jz.t %d14, 3, 32766
# CHECK: encoding: [0x6f,0x3e,0xff,0x3f]
.code32
jz.t %d14, 3, 32766

# CHECK-INST: jz.t %d15, 0, 256
# CHECK: encoding: [0x6f,0x0f,0x80,0x00]
.code32
jz.t %d15, 0, 256

# CHECK-INST: jz.t %d15, 0, 32512
# CHECK: encoding: [0x6f,0x0f,0x80,0x3f]
.code32
jz.t %d15, 0, 32512

# CHECK-INST: jz.t %d15, 0, 16638
# CHECK: encoding: [0x6f,0x0f,0x7f,0x20]
.code32
jz.t %d15, 0, 16638

# CHECK-INST: jz.t %d15, 0, 32766
# CHECK: encoding: [0x6f,0x0f,0xff,0x3f]
.code32
jz.t %d15, 0, 32766

# CHECK-INST: jz.t %d15, 1, 256
# CHECK: encoding: [0x6f,0x1f,0x80,0x00]
.code32
jz.t %d15, 1, 256

# CHECK-INST: jz.t %d15, 1, 32512
# CHECK: encoding: [0x6f,0x1f,0x80,0x3f]
.code32
jz.t %d15, 1, 32512

# CHECK-INST: jz.t %d15, 1, 16638
# CHECK: encoding: [0x6f,0x1f,0x7f,0x20]
.code32
jz.t %d15, 1, 16638

# CHECK-INST: jz.t %d15, 1, 32766
# CHECK: encoding: [0x6f,0x1f,0xff,0x3f]
.code32
jz.t %d15, 1, 32766

# CHECK-INST: jz.t %d15, 2, 256
# CHECK: encoding: [0x6f,0x2f,0x80,0x00]
.code32
jz.t %d15, 2, 256

# CHECK-INST: jz.t %d15, 2, 32512
# CHECK: encoding: [0x6f,0x2f,0x80,0x3f]
.code32
jz.t %d15, 2, 32512

# CHECK-INST: jz.t %d15, 2, 16638
# CHECK: encoding: [0x6f,0x2f,0x7f,0x20]
.code32
jz.t %d15, 2, 16638

# CHECK-INST: jz.t %d15, 2, 32766
# CHECK: encoding: [0x6f,0x2f,0xff,0x3f]
.code32
jz.t %d15, 2, 32766

# CHECK-INST: jz.t %d15, 3, 256
# CHECK: encoding: [0x6f,0x3f,0x80,0x00]
.code32
jz.t %d15, 3, 256

# CHECK-INST: jz.t %d15, 3, 32512
# CHECK: encoding: [0x6f,0x3f,0x80,0x3f]
.code32
jz.t %d15, 3, 32512

# CHECK-INST: jz.t %d15, 3, 16638
# CHECK: encoding: [0x6f,0x3f,0x7f,0x20]
.code32
jz.t %d15, 3, 16638

# CHECK-INST: jz.t %d15, 3, 32766
# CHECK: encoding: [0x6f,0x3f,0xff,0x3f]
.code32
jz.t %d15, 3, 32766


### Test if 16 bit instructions are generated by default

# CHECK-INST: jeq %d15, %d0, 0
# CHECK: encoding: [0x3e,0x00]
jeq %d15, %d0, 0

# CHECK-INST: jeq %d15, %d0, 32
# CHECK: encoding: [0xbe,0x00]
jeq %d15, %d0, 32

# CHECK-INST: jeq %d15, 0, 0
# CHECK: encoding: [0x1e,0x00]
jeq %d15, 0, 0

# CHECK-INST: jeq %d15, 0, 32
# CHECK: encoding: [0x9e,0x00]
jeq %d15, 0, 32

# CHECK-INST: jne %d15, %d0, 0
# CHECK: encoding: [0x7e,0x00]
jne %d15, %d0, 0

# CHECK-INST: jne %d15, %d0, 32
# CHECK: encoding: [0xfe,0x00]
jne %d15, %d0, 32

# CHECK-INST: jne %d15, 0, 0
# CHECK: encoding: [0x5e,0x00]
jne %d15, 0, 0

# CHECK-INST: jne %d15, 0, 32
# CHECK: encoding: [0xde,0x00]
jne %d15, 0, 32

# CHECK-INST: jnz.a %a0, 0
# CHECK: encoding: [0x7c,0x00]
jnz.a %a0, 0

# CHECK-INST: jnz.t %d15, 0, 0
# CHECK: encoding: [0xae,0x00]
jnz.t %d15, 0, 0

# CHECK-INST: jz.a %a0, 0
# CHECK: encoding: [0xbc,0x00]
jz.a %a0, 0

# CHECK-INST: jz.t %d15, 0, 0
# CHECK: encoding: [0x2e,0x00]
jz.t %d15, 0, 0

# CHECK-INST: jz %d15, 0
# CHECK: encoding: [0x6e,0x00]
jz %d15, 0

# CHECK-INST: jz %d15, 2
# CHECK: encoding: [0x6e,0x01]
jz %d15, 2

# CHECK-INST: jz %d15, 28
# CHECK: encoding: [0x6e,0x0e]
jz %d15, 28

# CHECK-INST: jz %d15, 30
# CHECK: encoding: [0x6e,0x0f]
jz %d15, 30

# CHECK-INST: jz %d0, 0
# CHECK: encoding: [0x76,0x00]
jz %d0, 0

# CHECK-INST: jz %d0, 2
# CHECK: encoding: [0x76,0x01]
jz %d0, 2

# CHECK-INST: jz %d0, 28
# CHECK: encoding: [0x76,0x0e]
jz %d0, 28

# CHECK-INST: jz %d0, 30
# CHECK: encoding: [0x76,0x0f]
jz %d0, 30

# CHECK-INST: jz %d1, 0
# CHECK: encoding: [0x76,0x10]
jz %d1, 0

# CHECK-INST: jz %d1, 2
# CHECK: encoding: [0x76,0x11]
jz %d1, 2

# CHECK-INST: jz %d1, 28
# CHECK: encoding: [0x76,0x1e]
jz %d1, 28

# CHECK-INST: jz %d1, 30
# CHECK: encoding: [0x76,0x1f]
jz %d1, 30

# CHECK-INST: jz %d14, 0
# CHECK: encoding: [0x76,0xe0]
jz %d14, 0

# CHECK-INST: jz %d14, 2
# CHECK: encoding: [0x76,0xe1]
jz %d14, 2

# CHECK-INST: jz %d14, 28
# CHECK: encoding: [0x76,0xee]
jz %d14, 28

# CHECK-INST: jz %d14, 30
# CHECK: encoding: [0x76,0xef]
jz %d14, 30
