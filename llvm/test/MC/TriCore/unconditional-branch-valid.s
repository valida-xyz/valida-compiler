# RUN: llvm-mc %s -triple=tricore -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK,CHECK-INST %s

##### J (32 bit version) #####

# CHECK-INST: j -16777216
# CHECK: encoding: [0x1d,0x80,0x00,0x00]
.code32
j -16777216     # -0x1000000

# CHECK-INST: j -16777214
# CHECK: encoding: [0x1d,0x80,0x01,0x00]
.code32
j -16777214     # -0xfffffe

# CHECK-INST: j -4
# CHECK: encoding: [0x1d,0xff,0xfe,0xff]
.code32
j -4

# CHECK-INST: j -2
# CHECK: encoding: [0x1d,0xff,0xff,0xff]
.code32
j -2

# CHECK-INST: j 0
# CHECK: encoding: [0x1d,0x00,0x00,0x00]
.code32
j 0

# CHECK-INST: j 2
# CHECK: encoding: [0x1d,0x00,0x01,0x00]
.code32
j 2

# CHECK-INST: j 16777212
# CHECK: encoding: [0x1d,0x7f,0xfe,0xff]
.code32
j 16777212      # 0x1fffffc

# CHECK-INST: j 16777214
# CHECK: encoding: [0x1d,0x7f,0xff,0xff]
.code32
j 16777214      # 0x1fffffe

##### J (16 bit version) #####

# CHECK-INST: j -256
# CHECK: encoding: [0x3c,0x80]
.code16
j -256

# CHECK-INST: j -254
# CHECK: encoding: [0x3c,0x81]
.code16
j -254

# CHECK-INST: j -4
# CHECK: encoding: [0x3c,0xfe]
.code16
j -4

# CHECK-INST: j -2
# CHECK: encoding: [0x3c,0xff]
.code16
j -2

# CHECK-INST: j 0
# CHECK: encoding: [0x3c,0x00]
.code16
j 0

# CHECK-INST: j 2
# CHECK: encoding: [0x3c,0x01]
.code16
j 2

# CHECK-INST: j 252
# CHECK: encoding: [0x3c,0x7e]
.code16
j 252

# CHECK-INST: j 254
# CHECK: encoding: [0x3c,0x7f]
.code16
j 254


##### JL #####

# CHECK-INST: jl -16777216
# CHECK: encoding: [0x5d,0x80,0x00,0x00]
.code32
jl -16777216    # -0x1000000

# CHECK-INST: jl -16777214
# CHECK: encoding: [0x5d,0x80,0x01,0x00]
.code32
jl -16777214    # -0xfffffe

# CHECK-INST: jl -4
# CHECK: encoding: [0x5d,0xff,0xfe,0xff]
.code32
jl -4

# CHECK-INST: jl -2
# CHECK: encoding: [0x5d,0xff,0xff,0xff]
.code32
jl -2

# CHECK-INST: jl 0
# CHECK: encoding: [0x5d,0x00,0x00,0x00]
.code32
jl 0

# CHECK-INST: jl 2
# CHECK: encoding: [0x5d,0x00,0x01,0x00]
.code32
jl 2

# CHECK-INST: jl 16777212
# CHECK: encoding: [0x5d,0x7f,0xfe,0xff]
.code32
jl 16777212     # 0x1fffffc

# CHECK-INST: jl 16777214
# CHECK: encoding: [0x5d,0x7f,0xff,0xff]
.code32
jl 16777214     # 0x1fffffe


##### CALL (32 bit version) #####

# CHECK-INST: call -16777216
# CHECK: encoding: [0x6d,0x80,0x00,0x00]
.code32
call -16777216      # -0x1000000

# CHECK-INST: call -16777214
# CHECK: encoding: [0x6d,0x80,0x01,0x00]
.code32
call -16777214      # -0xfffffe

# CHECK-INST: call -4
# CHECK: encoding: [0x6d,0xff,0xfe,0xff]
.code32
call -4

# CHECK-INST: call -2
# CHECK: encoding: [0x6d,0xff,0xff,0xff]
.code32
call -2

# CHECK-INST: call 0
# CHECK: encoding: [0x6d,0x00,0x00,0x00]
.code32
call 0

# CHECK-INST: call 2
# CHECK: encoding: [0x6d,0x00,0x01,0x00]
.code32
call 2

# CHECK-INST: call 16777212
# CHECK: encoding: [0x6d,0x7f,0xfe,0xff]
.code32
call 16777212       # 0x1fffffc

# CHECK-INST: call 16777214
# CHECK: encoding: [0x6d,0x7f,0xff,0xff]
.code32
call 16777214       # 0x1fffffe

##### CALL (16 bit version) #####

# CHECK-INST: call -256
# CHECK: encoding: [0x5c,0x80]
.code16
call -256

# CHECK-INST: call -254
# CHECK: encoding: [0x5c,0x81]
.code16
call -254

# CHECK-INST: call -4
# CHECK: encoding: [0x5c,0xfe]
.code16
call -4

# CHECK-INST: call -2
# CHECK: encoding: [0x5c,0xff]
.code16
call -2

# CHECK-INST: call 0
# CHECK: encoding: [0x5c,0x00]
.code16
call 0

# CHECK-INST: call 2
# CHECK: encoding: [0x5c,0x01]
.code16
call 2

# CHECK-INST: call 252
# CHECK: encoding: [0x5c,0x7e]
.code16
call 252

# CHECK-INST: call 254
# CHECK: encoding: [0x5c,0x7f]
.code16
call 254


##### JA #####

# CHECK-INST: ja 0
# CHECK: encoding: [0x9d,0x00,0x00,0x00]
.code32
ja 0

# CHECK-INST: ja 2
# CHECK: encoding: [0x9d,0x00,0x01,0x00]
.code32
ja 2

# CHECK-INST: ja 4
# CHECK: encoding: [0x9d,0x00,0x02,0x00]
.code32
ja 4

# CHECK-INST: ja 8
# CHECK: encoding: [0x9d,0x00,0x04,0x00]
.code32
ja 8

# CHECK-INST: ja 16
# CHECK: encoding: [0x9d,0x00,0x08,0x00]
.code32
ja 16

# CHECK-INST: ja 32
# CHECK: encoding: [0x9d,0x00,0x10,0x00]
.code32
ja 32

# CHECK-INST: ja 64
# CHECK: encoding: [0x9d,0x00,0x20,0x00]
.code32
ja 64

# CHECK-INST: ja 128
# CHECK: encoding: [0x9d,0x00,0x40,0x00]
.code32
ja 128

# CHECK-INST: ja 256
# CHECK: encoding: [0x9d,0x00,0x80,0x00]
.code32
ja 256

# CHECK-INST: ja 512
# CHECK: encoding: [0x9d,0x00,0x00,0x01]
.code32
ja 512

# CHECK-INST: ja 1024
# CHECK: encoding: [0x9d,0x00,0x00,0x02]
.code32
ja 1024

# CHECK-INST: ja 2048
# CHECK: encoding: [0x9d,0x00,0x00,0x04]
.code32
ja 2048

# CHECK-INST: ja 4096
# CHECK: encoding: [0x9d,0x00,0x00,0x08]
.code32
ja 4096

# CHECK-INST: ja 8192
# CHECK: encoding: [0x9d,0x00,0x00,0x10]
.code32
ja 8192

# CHECK-INST: ja 16384
# CHECK: encoding: [0x9d,0x00,0x00,0x20]
.code32
ja 16384

# CHECK-INST: ja 32768
# CHECK: encoding: [0x9d,0x00,0x00,0x40]
.code32
ja 32768

# CHECK-INST: ja 65536
# CHECK: encoding: [0x9d,0x00,0x00,0x80]
.code32
ja 65536

# CHECK-INST: ja 131072
# CHECK: encoding: [0x9d,0x01,0x00,0x00]
.code32
ja 131072

# CHECK-INST: ja 262144
# CHECK: encoding: [0x9d,0x02,0x00,0x00]
.code32
ja 262144

# CHECK-INST: ja 524288
# CHECK: encoding: [0x9d,0x04,0x00,0x00]
.code32
ja 524288

# CHECK-INST: ja 1048576
# CHECK: encoding: [0x9d,0x08,0x00,0x00]
.code32
ja 1048576

# CHECK-INST: ja 268435456
# CHECK: encoding: [0x9d,0x10,0x00,0x00]
.code32
ja 268435456

# CHECK-INST: ja 536870912
# CHECK: encoding: [0x9d,0x20,0x00,0x00]
.code32
ja 536870912

# CHECK-INST: ja 1073741824
# CHECK: encoding: [0x9d,0x40,0x00,0x00]
.code32
ja 1073741824

# CHECK-INST: ja 2147483648
# CHECK: encoding: [0x9d,0x80,0x00,0x00]
.code32
ja 2147483648

# CHECK-INST: ja 4028628990
# CHECK: encoding: [0x9d,0xff,0xff,0xff]
.code32
ja 4028628990   # 0xf01ffffe


##### JLA #####

# CHECK-INST: jla 0
# CHECK: encoding: [0xdd,0x00,0x00,0x00]
.code32
jla 0

# CHECK-INST: jla 2
# CHECK: encoding: [0xdd,0x00,0x01,0x00]
.code32
jla 2

# CHECK-INST: jla 4
# CHECK: encoding: [0xdd,0x00,0x02,0x00]
.code32
jla 4

# CHECK-INST: jla 8
# CHECK: encoding: [0xdd,0x00,0x04,0x00]
.code32
jla 8

# CHECK-INST: jla 16
# CHECK: encoding: [0xdd,0x00,0x08,0x00]
.code32
jla 16

# CHECK-INST: jla 32
# CHECK: encoding: [0xdd,0x00,0x10,0x00]
.code32
jla 32

# CHECK-INST: jla 64
# CHECK: encoding: [0xdd,0x00,0x20,0x00]
.code32
jla 64

# CHECK-INST: jla 128
# CHECK: encoding: [0xdd,0x00,0x40,0x00]
.code32
jla 128

# CHECK-INST: jla 256
# CHECK: encoding: [0xdd,0x00,0x80,0x00]
.code32
jla 256

# CHECK-INST: jla 512
# CHECK: encoding: [0xdd,0x00,0x00,0x01]
.code32
jla 512

# CHECK-INST: jla 1024
# CHECK: encoding: [0xdd,0x00,0x00,0x02]
.code32
jla 1024

# CHECK-INST: jla 2048
# CHECK: encoding: [0xdd,0x00,0x00,0x04]
.code32
jla 2048

# CHECK-INST: jla 4096
# CHECK: encoding: [0xdd,0x00,0x00,0x08]
.code32
jla 4096

# CHECK-INST: jla 8192
# CHECK: encoding: [0xdd,0x00,0x00,0x10]
.code32
jla 8192

# CHECK-INST: jla 16384
# CHECK: encoding: [0xdd,0x00,0x00,0x20]
.code32
jla 16384

# CHECK-INST: jla 32768
# CHECK: encoding: [0xdd,0x00,0x00,0x40]
.code32
jla 32768

# CHECK-INST: jla 65536
# CHECK: encoding: [0xdd,0x00,0x00,0x80]
.code32
jla 65536

# CHECK-INST: jla 131072
# CHECK: encoding: [0xdd,0x01,0x00,0x00]
.code32
jla 131072

# CHECK-INST: jla 262144
# CHECK: encoding: [0xdd,0x02,0x00,0x00]
.code32
jla 262144

# CHECK-INST: jla 524288
# CHECK: encoding: [0xdd,0x04,0x00,0x00]
.code32
jla 524288

# CHECK-INST: jla 1048576
# CHECK: encoding: [0xdd,0x08,0x00,0x00]
.code32
jla 1048576

# CHECK-INST: jla 268435456
# CHECK: encoding: [0xdd,0x10,0x00,0x00]
.code32
jla 268435456

# CHECK-INST: jla 536870912
# CHECK: encoding: [0xdd,0x20,0x00,0x00]
.code32
jla 536870912

# CHECK-INST: jla 1073741824
# CHECK: encoding: [0xdd,0x40,0x00,0x00]
.code32
jla 1073741824

# CHECK-INST: jla 2147483648
# CHECK: encoding: [0xdd,0x80,0x00,0x00]
.code32
jla 2147483648

# CHECK-INST: jla 4028628990
# CHECK: encoding: [0xdd,0xff,0xff,0xff]
.code32
jla 4028628990      # 0xf01ffffe

##### CALLA #####

# CHECK-INST: calla 0
# CHECK: encoding: [0xed,0x00,0x00,0x00]
.code32
calla 0

# CHECK-INST: calla 2
# CHECK: encoding: [0xed,0x00,0x01,0x00]
.code32
calla 2

# CHECK-INST: calla 4
# CHECK: encoding: [0xed,0x00,0x02,0x00]
.code32
calla 4

# CHECK-INST: calla 8
# CHECK: encoding: [0xed,0x00,0x04,0x00]
.code32
calla 8

# CHECK-INST: calla 16
# CHECK: encoding: [0xed,0x00,0x08,0x00]
.code32
calla 16

# CHECK-INST: calla 32
# CHECK: encoding: [0xed,0x00,0x10,0x00]
.code32
calla 32

# CHECK-INST: calla 64
# CHECK: encoding: [0xed,0x00,0x20,0x00]
.code32
calla 64

# CHECK-INST: calla 128
# CHECK: encoding: [0xed,0x00,0x40,0x00]
.code32
calla 128

# CHECK-INST: calla 256
# CHECK: encoding: [0xed,0x00,0x80,0x00]
.code32
calla 256

# CHECK-INST: calla 512
# CHECK: encoding: [0xed,0x00,0x00,0x01]
.code32
calla 512

# CHECK-INST: calla 1024
# CHECK: encoding: [0xed,0x00,0x00,0x02]
.code32
calla 1024

# CHECK-INST: calla 2048
# CHECK: encoding: [0xed,0x00,0x00,0x04]
.code32
calla 2048

# CHECK-INST: calla 4096
# CHECK: encoding: [0xed,0x00,0x00,0x08]
.code32
calla 4096

# CHECK-INST: calla 8192
# CHECK: encoding: [0xed,0x00,0x00,0x10]
.code32
calla 8192

# CHECK-INST: calla 16384
# CHECK: encoding: [0xed,0x00,0x00,0x20]
.code32
calla 16384

# CHECK-INST: calla 32768
# CHECK: encoding: [0xed,0x00,0x00,0x40]
.code32
calla 32768

# CHECK-INST: calla 65536
# CHECK: encoding: [0xed,0x00,0x00,0x80]
.code32
calla 65536

# CHECK-INST: calla 131072
# CHECK: encoding: [0xed,0x01,0x00,0x00]
.code32
calla 131072

# CHECK-INST: calla 262144
# CHECK: encoding: [0xed,0x02,0x00,0x00]
.code32
calla 262144

# CHECK-INST: calla 524288
# CHECK: encoding: [0xed,0x04,0x00,0x00]
.code32
calla 524288

# CHECK-INST: calla 1048576
# CHECK: encoding: [0xed,0x08,0x00,0x00]
.code32
calla 1048576

# CHECK-INST: calla 268435456
# CHECK: encoding: [0xed,0x10,0x00,0x00]
.code32
calla 268435456

# CHECK-INST: calla 536870912
# CHECK: encoding: [0xed,0x20,0x00,0x00]
.code32
calla 536870912

# CHECK-INST: calla 1073741824
# CHECK: encoding: [0xed,0x40,0x00,0x00]
.code32
calla 1073741824

# CHECK-INST: calla 2147483648
# CHECK: encoding: [0xed,0x80,0x00,0x00]
.code32
calla 2147483648

# CHECK-INST: calla 4028628990
# CHECK: encoding: [0xed,0xff,0xff,0xff]
.code32
calla 4028628990    # 0xf01ffffe


##### JI (32 bit version) #####

# CHECK-INST: ji %a0
# CHECK: encoding: [0x2d,0x00,0x30,0x00]
.code32
ji %a0

# CHECK-INST: ji %a1
# CHECK: encoding: [0x2d,0x01,0x30,0x00]
.code32
ji %a1

# CHECK-INST: ji %a2
# CHECK: encoding: [0x2d,0x02,0x30,0x00]
.code32
ji %a2

# CHECK-INST: ji %a3
# CHECK: encoding: [0x2d,0x03,0x30,0x00]
.code32
ji %a3

# CHECK-INST: ji %a4
# CHECK: encoding: [0x2d,0x04,0x30,0x00]
.code32
ji %a4

# CHECK-INST: ji %a5
# CHECK: encoding: [0x2d,0x05,0x30,0x00]
.code32
ji %a5

# CHECK-INST: ji %a6
# CHECK: encoding: [0x2d,0x06,0x30,0x00]
.code32
ji %a6

# CHECK-INST: ji %a7
# CHECK: encoding: [0x2d,0x07,0x30,0x00]
.code32
ji %a7

# CHECK-INST: ji %a8
# CHECK: encoding: [0x2d,0x08,0x30,0x00]
.code32
ji %a8

# CHECK-INST: ji %a9
# CHECK: encoding: [0x2d,0x09,0x30,0x00]
.code32
ji %a9

# CHECK-INST: ji %a10
# CHECK: encoding: [0x2d,0x0a,0x30,0x00]
.code32
ji %a10

# CHECK-INST: ji %a11
# CHECK: encoding: [0x2d,0x0b,0x30,0x00]
.code32
ji %a11

# CHECK-INST: ji %a12
# CHECK: encoding: [0x2d,0x0c,0x30,0x00]
.code32
ji %a12

# CHECK-INST: ji %a13
# CHECK: encoding: [0x2d,0x0d,0x30,0x00]
.code32
ji %a13

# CHECK-INST: ji %a14
# CHECK: encoding: [0x2d,0x0e,0x30,0x00]
.code32
ji %a14

# CHECK-INST: ji %a15
# CHECK: encoding: [0x2d,0x0f,0x30,0x00]
.code32
ji %a15

##### JI (16 bit version) #####

# CHECK-INST: ji %a0
# CHECK: encoding: [0xdc,0x00]
.code16
ji %a0

# CHECK-INST: ji %a1
# CHECK: encoding: [0xdc,0x01]
.code16
ji %a1

# CHECK-INST: ji %a2
# CHECK: encoding: [0xdc,0x02]
.code16
ji %a2

# CHECK-INST: ji %a3
# CHECK: encoding: [0xdc,0x03]
.code16
ji %a3

# CHECK-INST: ji %a4
# CHECK: encoding: [0xdc,0x04]
.code16
ji %a4

# CHECK-INST: ji %a5
# CHECK: encoding: [0xdc,0x05]
.code16
ji %a5

# CHECK-INST: ji %a6
# CHECK: encoding: [0xdc,0x06]
.code16
ji %a6

# CHECK-INST: ji %a7
# CHECK: encoding: [0xdc,0x07]
.code16
ji %a7

# CHECK-INST: ji %a8
# CHECK: encoding: [0xdc,0x08]
.code16
ji %a8

# CHECK-INST: ji %a9
# CHECK: encoding: [0xdc,0x09]
.code16
ji %a9

# CHECK-INST: ji %a10
# CHECK: encoding: [0xdc,0x0a]
.code16
ji %a10

# CHECK-INST: ji %a11
# CHECK: encoding: [0xdc,0x0b]
.code16
ji %a11

# CHECK-INST: ji %a12
# CHECK: encoding: [0xdc,0x0c]
.code16
ji %a12

# CHECK-INST: ji %a13
# CHECK: encoding: [0xdc,0x0d]
.code16
ji %a13

# CHECK-INST: ji %a14
# CHECK: encoding: [0xdc,0x0e]
.code16
ji %a14

# CHECK-INST: ji %a15
# CHECK: encoding: [0xdc,0x0f]
.code16
ji %a15


##### JLI (32 bit version) #####

# CHECK-INST: jli %a0
# CHECK: encoding: [0x2d,0x00,0x20,0x00]
.code32
jli %a0

# CHECK-INST: jli %a1
# CHECK: encoding: [0x2d,0x01,0x20,0x00]
.code32
jli %a1

# CHECK-INST: jli %a2
# CHECK: encoding: [0x2d,0x02,0x20,0x00]
.code32
jli %a2

# CHECK-INST: jli %a3
# CHECK: encoding: [0x2d,0x03,0x20,0x00]
.code32
jli %a3

# CHECK-INST: jli %a4
# CHECK: encoding: [0x2d,0x04,0x20,0x00]
.code32
jli %a4

# CHECK-INST: jli %a5
# CHECK: encoding: [0x2d,0x05,0x20,0x00]
.code32
jli %a5

# CHECK-INST: jli %a6
# CHECK: encoding: [0x2d,0x06,0x20,0x00]
.code32
jli %a6

# CHECK-INST: jli %a7
# CHECK: encoding: [0x2d,0x07,0x20,0x00]
.code32
jli %a7

# CHECK-INST: jli %a8
# CHECK: encoding: [0x2d,0x08,0x20,0x00]
.code32
jli %a8

# CHECK-INST: jli %a9
# CHECK: encoding: [0x2d,0x09,0x20,0x00]
.code32
jli %a9

# CHECK-INST: jli %a10
# CHECK: encoding: [0x2d,0x0a,0x20,0x00]
.code32
jli %a10

# CHECK-INST: jli %a11
# CHECK: encoding: [0x2d,0x0b,0x20,0x00]
.code32
jli %a11

# CHECK-INST: jli %a12
# CHECK: encoding: [0x2d,0x0c,0x20,0x00]
.code32
jli %a12

# CHECK-INST: jli %a13
# CHECK: encoding: [0x2d,0x0d,0x20,0x00]
.code32
jli %a13

# CHECK-INST: jli %a14
# CHECK: encoding: [0x2d,0x0e,0x20,0x00]
.code32
jli %a14

# CHECK-INST: jli %a15
# CHECK: encoding: [0x2d,0x0f,0x20,0x00]
.code32
jli %a15


##### CALLI (32 bit version) #####

# CHECK-INST: calli %a0
# CHECK: encoding: [0x2d,0x00,0x00,0x00]
.code32
calli %a0

# CHECK-INST: calli %a1
# CHECK: encoding: [0x2d,0x01,0x00,0x00]
.code32
calli %a1

# CHECK-INST: calli %a2
# CHECK: encoding: [0x2d,0x02,0x00,0x00]
.code32
calli %a2

# CHECK-INST: calli %a3
# CHECK: encoding: [0x2d,0x03,0x00,0x00]
.code32
calli %a3

# CHECK-INST: calli %a4
# CHECK: encoding: [0x2d,0x04,0x00,0x00]
.code32
calli %a4

# CHECK-INST: calli %a5
# CHECK: encoding: [0x2d,0x05,0x00,0x00]
.code32
calli %a5

# CHECK-INST: calli %a6
# CHECK: encoding: [0x2d,0x06,0x00,0x00]
.code32
calli %a6

# CHECK-INST: calli %a7
# CHECK: encoding: [0x2d,0x07,0x00,0x00]
.code32
calli %a7

# CHECK-INST: calli %a8
# CHECK: encoding: [0x2d,0x08,0x00,0x00]
.code32
calli %a8

# CHECK-INST: calli %a9
# CHECK: encoding: [0x2d,0x09,0x00,0x00]
.code32
calli %a9

# CHECK-INST: calli %a10
# CHECK: encoding: [0x2d,0x0a,0x00,0x00]
.code32
calli %a10

# CHECK-INST: calli %a11
# CHECK: encoding: [0x2d,0x0b,0x00,0x00]
.code32
calli %a11

# CHECK-INST: calli %a12
# CHECK: encoding: [0x2d,0x0c,0x00,0x00]
.code32
calli %a12

# CHECK-INST: calli %a13
# CHECK: encoding: [0x2d,0x0d,0x00,0x00]
.code32
calli %a13

# CHECK-INST: calli %a14
# CHECK: encoding: [0x2d,0x0e,0x00,0x00]
.code32
calli %a14

# CHECK-INST: calli %a15
# CHECK: encoding: [0x2d,0x0f,0x00,0x00]
.code32
calli %a15


##### RET #####

# CHECK-INST: ret
# CHECK: encoding: [0x0d,0x00,0x80,0x01]
.code32
ret

# CHECK-INST: ret
# CHECK: encoding: [0x00,0x90]
.code16
ret


##### RFE #####

# CHECK-INST: rfe
# CHECK: encoding: [0x0d,0x00,0xc0,0x01]
.code32
rfe

# CHECK-INST: rfe
# CHECK: encoding: [0x00,0x80]
.code16
rfe