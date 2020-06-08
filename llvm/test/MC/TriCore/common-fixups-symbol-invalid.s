# RUN: not llvm-mc -arch=tricore -filetype=obj < %s -o /dev/null 2>&1 \
# RUN: | FileCheck -check-prefix=CHECK %s


##### fixup_lha ################################################################

.code32
lha %a0, bit1
# CHECK: :[[@LINE-1]]:1: error: invalid fixup range
lha %a0, bit2
# CHECK: :[[@LINE-1]]:1: error: invalid fixup range
lha %a0, bit3
# CHECK: :[[@LINE-1]]:1: error: invalid fixup range
lha %a0, bit4
# CHECK: :[[@LINE-1]]:1: error: invalid fixup range
lha %a0, bit5
# CHECK: :[[@LINE-1]]:1: error: invalid fixup range
lha %a0, bit6
# CHECK: :[[@LINE-1]]:1: error: invalid fixup range
lha %a0, bit7
# CHECK: :[[@LINE-1]]:1: error: invalid fixup range
lha %a0, bit8
# CHECK: :[[@LINE-1]]:1: error: invalid fixup range
lha %a0, bit9
# CHECK: :[[@LINE-1]]:1: error: invalid fixup range
lha %a0, bit10
# CHECK: :[[@LINE-1]]:1: error: invalid fixup range
lha %a0, bit11
# CHECK: :[[@LINE-1]]:1: error: invalid fixup range
lha %a0, bit12
# CHECK: :[[@LINE-1]]:1: error: invalid fixup range
lha %a0, bit13
# CHECK: :[[@LINE-1]]:1: error: invalid fixup range
lha %a0, bit14
# CHECK: :[[@LINE-1]]:1: error: invalid fixup range
lha %a0, bit33
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range


.set bit1, 1
.set bit2, 1 << 1
.set bit3, 1 << 2
.set bit4, 1 << 3
.set bit5, 1 << 4
.set bit6, 1 << 5
.set bit7, 1 << 6
.set bit8, 1 << 7
.set bit9, 1 << 8
.set bit10, 1 << 9
.set bit11, 1 << 10
.set bit12, 1 << 11
.set bit13, 1 << 12
.set bit14, 1 << 13
.set bit33, 1 << 32


##### fixup_4rel ###############################################################

### JGEZ

.code16
jgez %d0, jgez_odd
# CHECK: :[[@LINE-1]]:1: error: fixup must be 2-byte aligned

.fill 1
jgez_odd:

.code16
jgez %d0, jgez_out_of_range
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range 

.fill 30
jgez_out_of_range:

jgez_out_of_range_negative:
.fill 2
.code16
jgez %d0, jgez_out_of_range_negative
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range


### JGTZ

.code16
jgtz %d0, jgtz_odd
# CHECK: :[[@LINE-1]]:1: error: fixup must be 2-byte aligned

.fill 1
jgtz_odd:

.code16
jgtz %d0, jgtz_out_of_range
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range 

.fill 30
jgtz_out_of_range:

jgtz_out_of_range_negative:
.fill 2
.code16
jgtz %d0, jgtz_out_of_range_negative
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range


### JLEZ

.code16
jlez %d0, jlez_odd
# CHECK: :[[@LINE-1]]:1: error: fixup must be 2-byte aligned

.fill 1
jlez_odd:

.code16
jlez %d0, jlez_out_of_range
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range 

.fill 30
jlez_out_of_range:

jlez_out_of_range_negative:
.fill 2
.code16
jlez %d0, jlez_out_of_range_negative
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range


### JLTZ

.code16
jltz %d0, jltz_odd
# CHECK: :[[@LINE-1]]:1: error: fixup must be 2-byte aligned

.fill 1
jltz_odd:

.code16
jltz %d0, jltz_out_of_range
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range 

.fill 30
jltz_out_of_range:

jltz_out_of_range_negative:
.fill 2
.code16
jltz %d0, jltz_out_of_range_negative
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range


### JNZ

.code16
jnz %d0, jnz_odd
# CHECK: :[[@LINE-1]]:1: error: fixup must be 2-byte aligned

.fill 1
jnz_odd:

.code16
jnz %d0, jnz_out_of_range
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range 

.fill 30
jnz_out_of_range:

jnz_out_of_range_negative:
.fill 2
.code16
jnz %d0, jnz_out_of_range_negative
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range


### JNZA

.code16
jnz.a %a0, jnza_odd
# CHECK: :[[@LINE-1]]:1: error: fixup must be 2-byte aligned

.fill 1
jnza_odd:

.code16
jnz.a %a0, jnza_out_of_range
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range 

.fill 30
jnza_out_of_range:

jnza_out_of_range_negative:
.fill 2
.code16
jnz.a %a0, jnza_out_of_range_negative
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range


### JZ

.code16
jz %d0, jz_odd
# CHECK: :[[@LINE-1]]:1: error: fixup must be 2-byte aligned

.fill 1
jz_odd:

.code16
jz %d0, jz_out_of_range
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range 

.fill 30
jz_out_of_range:

jz_out_of_range_negative:
.fill 2
.code16
jz %d0, jz_out_of_range_negative
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range


### JZA

.code16
jz.a %a0, jza_odd
# CHECK: :[[@LINE-1]]:1: error: fixup must be 2-byte aligned

.fill 1
jza_odd:

.code16
jz.a %a0, jza_out_of_range
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range 

.fill 30
jza_out_of_range:

jza_out_of_range_negative:
.fill 2
.code16
jz.a %a0, jza_out_of_range_negative
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range


### JEQ

.code16
jeq %d15, %d0, jeq_odd
# CHECK: :[[@LINE-1]]:1: error: fixup must be 2-byte aligned

.fill 1
jeq_odd:

jeq_out_of_range_negative:
.fill 2
.code16
jeq %d15, %d0, jeq_out_of_range_negative
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range


### JNE

.code16
jne %d15, %d0, jne_odd
# CHECK: :[[@LINE-1]]:1: error: fixup must be 2-byte aligned

.fill 1
jne_odd:

jne_out_of_range_negative:
.fill 2
.code16
jne %d15, %d0, jne_out_of_range_negative
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range


##### fixup_4rel2 ##############################################################

### JEQ

.code16
jeq %d15, %d0, jeq_4rel2_odd
# CHECK: :[[@LINE-1]]:1: error: fixup must be 2-byte aligned

.fill 33
jeq_4rel2_odd:

.code16
jeq %d15, %d0, jeq_out_of_range
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range

.fill 62
jeq_out_of_range:

## 16_d15clc

.code16
jeq %d15, 1, jeq_4rel2_odd_d15clc
# CHECK: :[[@LINE-1]]:1: error: fixup must be 2-byte aligned

.fill 33
jeq_4rel2_odd_d15clc:

.code16
jeq %d15, 1, jeq_out_of_range_d15clc
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range

.fill 62
jeq_out_of_range_d15clc:


### JNE

.code16
jne %d15, %d0, jne_4rel2_odd
# CHECK: :[[@LINE-1]]:1: error: fixup must be 2-byte aligned

.fill 33
jne_4rel2_odd:

.code16
jne %d15, %d0, jne_out_of_range
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range

.fill 62
jne_out_of_range:

## 16_d15clc

.code16
jne %d15, 1, jne_4rel2_odd_d15clc
# CHECK: :[[@LINE-1]]:1: error: fixup must be 2-byte aligned

.fill 33
jne_4rel2_odd_d15clc:

.code16
jne %d15, 1, jne_out_of_range_d15clc
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range

.fill 62
jne_out_of_range_d15clc:


##### fixup_8off ###############################################################

### LD.A

.code16
ld.a %a15, [%a10] constant_1
# CHECK: :[[@LINE-1]]:1: error: fixup must be 4-byte aligned

.code16
ld.a %a15, [%a10] constant_2
# CHECK: :[[@LINE-1]]:1: error: fixup must be 4-byte aligned

.code16
ld.a %a15, [%a10] constant_minus_4
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range

.code16
ld.a %a15, [%a10] constant_1024
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range


### LD.W

.code16
ld.w %d15, [%a10] constant_1
# CHECK: :[[@LINE-1]]:1: error: fixup must be 4-byte aligned

.code16
ld.w %d15, [%a10] constant_2
# CHECK: :[[@LINE-1]]:1: error: fixup must be 4-byte aligned

.code16
ld.w %d15, [%a10] constant_minus_4
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range

.code16
ld.w %d15, [%a10] constant_1024
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range


### ST.A

.code16
st.a [%a10] constant_1, %a15
# CHECK: :[[@LINE-1]]:1: error: fixup must be 4-byte aligned

.code16
st.a [%a10] constant_2, %a15
# CHECK: :[[@LINE-1]]:1: error: fixup must be 4-byte aligned

.code16
st.a [%a10] constant_minus_4, %a15
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range

.code16
st.a [%a10] constant_1024, %a15
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range


### ST.W

.code16
st.w [%a10] constant_1, %d15
# CHECK: :[[@LINE-1]]:1: error: fixup must be 4-byte aligned

.code16
st.w [%a10] constant_2, %d15
# CHECK: :[[@LINE-1]]:1: error: fixup must be 4-byte aligned

.code16
st.w [%a10] constant_minus_4, %d15
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range

.code16
st.w [%a10] constant_1024, %d15
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range


##### fixup_8rel ###############################################################

### CALL

.code16
call call_odd
# CHECK: :[[@LINE-1]]:1: error: fixup must be 2-byte aligned

.fill 1
call_odd:

call_out_of_range_negative:
.fill 258

.code16
call call_out_of_range_negative
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range

.code16
call call_out_of_range
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range

.fill 254
call_out_of_range:


### J

.code16
j j_odd
# CHECK: :[[@LINE-1]]:1: error: fixup must be 2-byte aligned

.fill 1
j_odd:

j_out_of_range_negative:
.fill 258

.code16
j j_out_of_range_negative
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range

.code16
j j_out_of_range
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range

.fill 254
j_out_of_range:


### JNZ

.code16
jnz %d15, jnz_8rel_odd
# CHECK: :[[@LINE-1]]:1: error: fixup must be 2-byte aligned

.fill 1
jnz_8rel_odd:

jnz_8rel_out_of_range_negative:
.fill 258

.code16
jnz %d15, jnz_8rel_out_of_range_negative
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range

.code16
jnz %d15, jnz_8rel_out_of_range
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range

.fill 254
jnz_8rel_out_of_range:


### JZ

.code16
jz %d15, jz_8rel_odd
# CHECK: :[[@LINE-1]]:1: error: fixup must be 2-byte aligned

.fill 1
jz_8rel_odd:

jz_8rel_out_of_range_negative:
.fill 258

.code16
jz %d15, jz_8rel_out_of_range_negative
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range

.code16
jz %d15, jz_8rel_out_of_range
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range

.fill 254
jz_8rel_out_of_range:


##### fixup_4rel3 ##############################################################

### LOOP

loop_minus_3:
.fill 3

.code16
loop %a0, loop_minus_3
# CHECK: :[[@LINE-1]]:1: error: fixup must be 2-byte aligned

loop_minus_34:
.fill 34

.code16
loop %a0, loop_minus_34
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range

loop_0:

.code16
loop %a0, loop_0
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range


##### fixup_4off ###############################################################

### LD.BU

.code16
ld.bu %d0, [%a15] constant_minus_1
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range

.code16
ld.bu %d0, [%a15] constant_16
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range


### ST.B

.code16
st.b [%a15] constant_minus_1, %d0
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range

.code16
st.b [%a15] constant_16, %d0
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range


##### fixup_4off2 ##############################################################

### LD.H

.code16
ld.h %d0, [%a15] constant_minus_1
# CHECK: :[[@LINE-1]]:1: error: fixup must be 2-byte aligned

.code16
ld.h %d0, [%a15] constant_minus_2
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range

.code16
ld.h %d0, [%a15] constant_32
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range


### ST.H

.code16
st.h [%a15] constant_minus_1, %d0
# CHECK: :[[@LINE-1]]:1: error: fixup must be 2-byte aligned

.code16
st.h [%a15] constant_minus_2, %d0
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range

.code16
st.h [%a15] constant_32, %d0
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range


##### fixup_4off4 ##############################################################

### LD.A

.code16
ld.a %a0, [%a15] constant_1
# CHECK: :[[@LINE-1]]:1: error: fixup must be 4-byte aligned

.code16
ld.a %a0, [%a15] constant_2
# CHECK: :[[@LINE-1]]:1: error: fixup must be 4-byte aligned

.code16
ld.a %a0, [%a15] constant_minus_4
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range

.code16
ld.a %a0, [%a15] constant_64
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range


### LD.W

.code16
ld.w %d0, [%a15] constant_1
# CHECK: :[[@LINE-1]]:1: error: fixup must be 4-byte aligned

.code16
ld.w %d0, [%a15] constant_2
# CHECK: :[[@LINE-1]]:1: error: fixup must be 4-byte aligned

.code16
ld.w %d0, [%a15] constant_minus_4
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range

.code16
ld.w %d0, [%a15] constant_64
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range


### ST.A

.code16
st.a [%a15] constant_1, %a0
# CHECK: :[[@LINE-1]]:1: error: fixup must be 4-byte aligned

.code16
st.a [%a15] constant_2, %a0
# CHECK: :[[@LINE-1]]:1: error: fixup must be 4-byte aligned

.code16
st.a [%a15] constant_minus_4, %a0
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range

.code16
st.a [%a15] constant_64, %a0
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range


### ST.W

.code16
st.w [%a15] constant_1, %d0
# CHECK: :[[@LINE-1]]:1: error: fixup must be 4-byte aligned

.code16
st.w [%a15] constant_2, %d0
# CHECK: :[[@LINE-1]]:1: error: fixup must be 4-byte aligned

.code16
st.w [%a15] constant_minus_4, %d0
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range

.code16
st.w [%a15] constant_64, %d0
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range


##### fixup_42off ##############################################################

### LD.BU

.code16
ld.bu %d15, [%a0] constant_minus_1
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range

.code16
ld.bu %d15, [%a0] constant_16
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range


### ST.B

.code16
st.b [%a0] constant_minus_1, %d15
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range

.code16
st.b [%a0] constant_16, %d15
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range


##### fixup_42off2 #############################################################

### LD.H

.code16
ld.h %d15, [%a0] constant_minus_1
# CHECK: :[[@LINE-1]]:1: error: fixup must be 2-byte aligned

.code16
ld.h %d15, [%a0] constant_minus_2
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range

.code16
ld.h %d15, [%a0] constant_32
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range


### ST.H

.code16
st.h [%a0] constant_minus_1, %d15
# CHECK: :[[@LINE-1]]:1: error: fixup must be 2-byte aligned

.code16
st.h [%a0] constant_minus_2, %d15
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range

.code16
st.h [%a0] constant_32, %d15
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range



##### fixup_42off4 #############################################################

### LD.A

.code16
ld.a %a15, [%a0] constant_1
# CHECK: :[[@LINE-1]]:1: error: fixup must be 4-byte aligned

.code16
ld.a %a15, [%a0] constant_2
# CHECK: :[[@LINE-1]]:1: error: fixup must be 4-byte aligned

.code16
ld.a %a15, [%a0] constant_minus_4
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range

.code16
ld.a %a15, [%a0] constant_64
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range


### LD.W

.code16
ld.w %d15, [%a0] constant_1
# CHECK: :[[@LINE-1]]:1: error: fixup must be 4-byte aligned

.code16
ld.w %d15, [%a0] constant_2
# CHECK: :[[@LINE-1]]:1: error: fixup must be 4-byte aligned

.code16
ld.w %d15, [%a0] constant_minus_4
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range

.code16
ld.w %d15, [%a0] constant_64
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range


### ST.A

.code16
st.a [%a0] constant_1, %a15
# CHECK: :[[@LINE-1]]:1: error: fixup must be 4-byte aligned

.code16
st.a [%a0] constant_2, %a15
# CHECK: :[[@LINE-1]]:1: error: fixup must be 4-byte aligned

.code16
st.a [%a0] constant_minus_4, %a15
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range

.code16
st.a [%a0] constant_64, %a15
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range


### ST.W

.code16
st.w [%a0] constant_1, %d15
# CHECK: :[[@LINE-1]]:1: error: fixup must be 4-byte aligned

.code16
st.w [%a0] constant_2, %d15
# CHECK: :[[@LINE-1]]:1: error: fixup must be 4-byte aligned

.code16
st.w [%a0] constant_minus_4, %d15
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range

.code16
st.w [%a0] constant_64, %d15
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range




.set constant_minus_1, -1
.set constant_minus_2, -2
.set constant_minus_4, -4
.set constant_minus_9, -9

.set constant_1, 1
.set constant_2, 2
.set constant_8, 8
.set constant_16, 16
.set constant_32, 32
.set constant_64, 64
.set constant_256, 256
.set constant_1024, 1024
