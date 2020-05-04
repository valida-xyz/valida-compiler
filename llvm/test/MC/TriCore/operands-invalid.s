# RUN: not llvm-mc -triple=tricore < %s 2>&1 | FileCheck %s


## For some test the error is "Instruction requires the following features:  
## 32-bit instruction generation"
## because it would be valid instruction, but .code16 directive forbids its
## usage. This way not the proper error message is generate for these operands.

## simm16_BOL error message range is false, showing simm10 range since we
## purposefully put simm16_BOL above of simm10 definition to enforce it
## generation, but this way the matcher will try to match against simm10 last
## therefore generating simm10 error message

### Testing uimm1

# CHECK: :[[@LINE+3]]:12: error: Operand prefixes and symbol expressions are not
# CHECK-SAME: allowed for this operand and it must be in the integer range 
# CHECK-SAME: [0, 1]
st.t 0, 0, -1

# CHECK: :[[@LINE+3]]:12: error: Operand prefixes and symbol expressions are not
# CHECK-SAME: allowed for this operand and it must be in the integer range 
# CHECK-SAME: [0, 1]
st.t 0, 0, 2

# CHECK: :[[@LINE+3]]:12: error: Operand prefixes and symbol expressions are not
# CHECK-SAME: allowed for this operand and it must be in the integer range 
# CHECK-SAME: [0, 1]
st.t 0, 0, foo


### Testing uimm2

# CHECK: :[[@LINE+3]]:24: error: Operand prefixes and symbol expressions are not
# CKECK-SAME: allowed for this operand and it must be in the integer range
# CHECK-SAME: [0, 3]
addsc.a %a0, %a0, %d0, -1

# CHECK: :[[@LINE+3]]:24: error: Operand prefixes and symbol expressions are not
# CKECK-SAME: allowed for this operand and it must be in the integer range
# CHECK-SAME: [0, 3]
addsc.a %a0, %a0, %d0, 4

# CHECK: :[[@LINE+3]]:24: error: Operand prefixes and symbol expressions are not
# CKECK-SAME: allowed for this operand and it must be in the integer range
# CHECK-SAME: [0, 3]
addsc.a %a0, %a0, %d0, foo


### Testing uimm2_l

# CHECK: :[[@LINE+3]]:31: error: Operand prefixes and symbol expressions are not
# CHECK-SAME: allowed for this operand and it must be in the integer range 
# CHECK-SAME: [0, 1]
maddr.h %d0, %d0, %d0, %d0ll, 2

# CHECK: :[[@LINE+3]]:31: error: Operand prefixes and symbol expressions are not
# CHECK-SAME: allowed for this operand and it must be in the integer range 
# CHECK-SAME: [0, 1]
maddr.h %d0, %d0, %d0, %d0ll, -1

# CHECK: :[[@LINE+3]]:31: error: Operand prefixes and symbol expressions are not
# CHECK-SAME: allowed for this operand and it must be in the integer range 
# CHECK-SAME: [0, 1]
maddr.h %d0, %d0, %d0, %d0ll, foo


### Testing uimm3

# CHECK: :[[@LINE+3]]:9: error: Operand prefixes and symbol expressions are not 
# CHECK-SAME: allowed for this operand and it must be in the integer range 
# CHECK-SAME: [0, 7]
st.t 0, -1, 0

# CHECK: :[[@LINE+3]]:9: error: Operand prefixes and symbol expressions are not 
# CHECK-SAME: allowed for this operand and it must be in the integer range 
# CHECK-SAME: [0, 7]
st.t 0, 8, 0

# CHECK: :[[@LINE+3]]:9: error: Operand prefixes and symbol expressions are not 
# CHECK-SAME: allowed for this operand and it must be in the integer range 
# CHECK-SAME: [0, 7]
st.t 0, foo, 0


### Testing sysreg

# CHECK: :[[@LINE+2]]:11: error: Operand must be a valid system register or a 
# CHECK-SAME: 4-aligned integer and in the range [0, 65532]
mfcr %d0, -1

# CHECK: :[[@LINE+2]]:11: error: Operand must be a valid system register or a 
# CHECK-SAME: 4-aligned integer and in the range [0, 65532]
mfcr %d0, (1 << 16) # 65536

# CHECK: :[[@LINE+2]]:11: error: Operand must be a valid system register or a 
# CHECK-SAME: 4-aligned integer and in the range [0, 65532]
mfcr %d0, 1

# CHECK: :[[@LINE+2]]:11: error: Operand must be a valid system register or a 
# CHECK-SAME: 4-aligned integer and in the range [0, 65532]
mfcr %d0, 2


### Testing double_sysreg

# CHECK: :[[@LINE+2]]:12: error: Operand must be a valid system register or an 
# CHECK-SAME: 8-aligned integer and in the range [0, 65528]
mfdcr %e0, -1

# CHECK: :[[@LINE+2]]:12: error: Operand must be a valid system register or an 
# CHECK-SAME: 8-aligned integer and in the range [0, 65528]
mfdcr %e0, (1 << 16) # 65536

# CHECK: :[[@LINE+2]]:12: error: Operand must be a valid system register or an 
# CHECK-SAME: 8-aligned integer and in the range [0, 65528]
mfdcr %e0, 1

# CHECK: :[[@LINE+2]]:12: error: Operand must be a valid system register or an 
# CHECK-SAME: 8-aligned integer and in the range [0, 65528]
mfdcr %e0, 2

# CHECK: :[[@LINE+2]]:12: error: Operand must be a valid system register or an 
# CHECK-SAME: 8-aligned integer and in the range [0, 65528]
mfdcr %e0, 4


### Testing simm4

# CHECK: :[[@LINE+3]]:11: error: Operand prefixes and symbol expressions are
# CHECK-SAME: not allowed for this operand and it must be in the integer range 
# CHECK-SAME: [-8, 7]
jned %d0, -9, 0

# CHECK: :[[@LINE+3]]:11: error: Operand prefixes and symbol expressions are
# CHECK-SAME: not allowed for this operand and it must be in the integer range 
# CHECK-SAME: [-8, 7]
jned %d0, 8, 0

# CHECK: :[[@LINE+3]]:11: error: Operand prefixes and symbol expressions are
# CHECK-SAME: not allowed for this operand and it must be in the integer range 
# CHECK-SAME: [-8, 7]
jned %d0, foo, 0


### Testing simm4_1

# CHECK: :[[@LINE+3]]:1: error: Instruction requires the following features:  
# CHECK-SAME: 32-bit instruction generation
.code16
loop %a0, 0

# CHECK: :[[@LINE+4]]:11: error: Operand prefixes and symbol expressions are 
# CHECK-SAME: not allowed for this operand and it must be an even number in the 
# CHECK-SAME: integer range [-32, -2]
.code16
loop %a0, -3

# CHECK: :[[@LINE+3]]:1: error: Instruction requires the following features:  
# CHECK-SAME: 32-bit instruction generation
.code16
loop %a0, -34

# CHECK: :[[@LINE+3]]:1: error: Instruction requires the following features:  
# CHECK-SAME: 32-bit instruction generation
.code16
loop %a0, foo


### Testing uimm4

# CHECK: :[[@LINE+3]]:18: error: Operand prefixes and symbol expressions are 
# CHECK-SAME: not allowed for this operand and it must be in the integer range
# CHECK-SAME: [0, 15]
insert %d0, %d0, -1, 0, 0

# CHECK: :[[@LINE+3]]:18: error: Operand prefixes and symbol expressions are 
# CHECK-SAME: not allowed for this operand and it must be in the integer range
# CHECK-SAME: [0, 15]
insert %d0, %d0, 16, 0, 0

# CHECK: :[[@LINE+3]]:18: error: Operand prefixes and symbol expressions are 
# CHECK-SAME: not allowed for this operand and it must be in the integer range
# CHECK-SAME: [0, 15]
insert %d0, %d0, foo, 0, 0


### Testing uimm4_lsb0

# CHECK: :[[@LINE+3]]:1: error: Instruction requires the following features:  
# CHECK-SAME: 32-bit instruction generation
.code16
jz.t %d15, 0, -2

# CHECK: :[[@LINE+4]]:15: error: Operand prefixes and symbol expressions are 
# CHECK-SAME: not allowed for this operand and it must be an even number in the 
# CHECK-SAME: integer range [0, 30]
.code16
jz.t %d15, 0, 1

# CHECK: :[[@LINE+3]]:1: error: Instruction requires the following features:  
# CHECK-SAME: 32-bit instruction generation
.code16
jz.t %d15, 0, 32



### Testing uimm4_lsb00

# CHECK: :[[@LINE+3]]:1: error: Instruction requires the following features:  
# CHECK-SAME: 32-bit instruction generation
.code16
ld.a %a0, [%a1] -4

# CHECK: :[[@LINE+3]]:1: error: Instruction requires the following features:  
# CHECK-SAME: 32-bit instruction generation
.code16
ld.a %a0, [%a1] 1

# CHECK: :[[@LINE+3]]:1: error: Instruction requires the following features:  
# CHECK-SAME: 32-bit instruction generation
.code16
ld.a %a0, [%a1] 2

# CHECK: :[[@LINE+3]]:1: error: Instruction requires the following features:  
# CHECK-SAME: 32-bit instruction generation
.code16
ld.a %a0, [%a1] 64

# CHECK: :[[@LINE+3]]:1: error: Instruction requires the following features:  
# CHECK-SAME: 32-bit instruction generation
.code16
ld.a %a0, [%a1] foo



### Testing uimm5

# CHECK: :[[@LINE+3]]:21: error: Operand prefixes and symbol expressions are 
# CHECK-SAME: not allowed for this operand and it must be in the integer range
# CHECK-SAME: [0, 31]
insert %d0, %d0, 0, -1, 0

# CHECK: :[[@LINE+3]]:21: error: Operand prefixes and symbol expressions are 
# CHECK-SAME: not allowed for this operand and it must be in the integer range
# CHECK-SAME: [0, 31]
insert %d0, %d0, 0, 32, 0

# CHECK: :[[@LINE+3]]:21: error: Operand prefixes and symbol expressions are 
# CHECK-SAME: not allowed for this operand and it must be in the integer range
# CHECK-SAME: [0, 31]
insert %d0, %d0, 0, foo, 0


### Testing uimm8

# CHECK: :[[@LINE+4]]:6: error: Operand prefixes and symbol expressions are not 
# CHECK-SAME: allowed for this operand and it must be in the integer range 
# CHECK-SAME: [0, 255]
.code16
bisr -1

# CHECK: :[[@LINE+3]]:1: error: Instruction requires the following features:  
# CHECK-SAME: 32-bit instruction generation
.code16
bisr 256

# CHECK: :[[@LINE+4]]:6: error: Operand prefixes and symbol expressions are not 
# CHECK-SAME: allowed for this operand and it must be in the integer range 
# CHECK-SAME: [0, 255]
.code16
bisr foo


### Testing simm8_lsb0

# CHECK: :[[@LINE+3]]:1: error: Instruction requires the following features:  
# CHECK-SAME: 32-bit instruction generation
.code16
j -258

# CHECK: :[[@LINE+4]]:3: error: Operand prefixes and symbol expressions are not 
# CHECK-SAME: allowed for this operand and it must be an even number in the 
# CHECK-SAME: integer range [-256, 254]
.code16
j 1

# CHECK: :[[@LINE+3]]:1: error: Instruction requires the following features:  
# CHECK-SAME: 32-bit instruction generation
.code16
j 256

# CHECK: :[[@LINE+3]]:1: error: Instruction requires the following features:  
# CHECK-SAME: 32-bit instruction generation
.code16
j foo


### Testing simm8_lsb00

# CHECK: :[[@LINE+3]]:1: error: Instruction requires the following features:  
# CHECK-SAME: 32-bit instruction generation
.code16
ld.a %a15, [%a10], -4

# CHECK: :[[@LINE+3]]:1: error: Instruction requires the following features:  
# CHECK-SAME: 32-bit instruction generation
.code16
ld.a %a15, [%a10], 1

# CHECK: :[[@LINE+3]]:1: error: Instruction requires the following features:  
# CHECK-SAME: 32-bit instruction generation
.code16
ld.a %a15, [%a10], 2

# CHECK: :[[@LINE+3]]:1: error: Instruction requires the following features:  
# CHECK-SAME: 32-bit instruction generation
.code16
ld.a %a15, [%a10], 1024



### Testing simm9_shift

# CHECK: :[[@LINE+3]]:14: error: Operand prefixes and symbol expressions are
# CHECK-SAME: not allowed for this operand and it must be in the integer range 
# CHECK-SAME: [-32, 31]
sh %d0, %d1, -33

# CHECK: :[[@LINE+3]]:14: error: Operand prefixes and symbol expressions are
# CHECK-SAME: not allowed for this operand and it must be in the integer range 
# CHECK-SAME: [-32, 31]
sh %d0, %d1, 32

# CHECK: :[[@LINE+3]]:14: error: Operand prefixes and symbol expressions are
# CHECK-SAME: not allowed for this operand and it must be in the integer range 
# CHECK-SAME: [-32, 31]
sh %d0, %d1, foo


### Testing simm9_shift5

# CHECK: :[[@LINE+3]]:16: error: Operand prefixes and symbol expressions are
# CHECK-SAME: not allowed for this operand and it must be in the integer range 
# CHECK-SAME: [-16, 15]
sh.h %d0, %d1, -33

# CHECK: :[[@LINE+3]]:16: error: Operand prefixes and symbol expressions are 
# CHECK-SAME: not allowed for this operand and it must be in the integer range 
# CHECK-SAME: [-16, 15]
sh.h %d0, %d1, 32

# CHECK: :[[@LINE+3]]:16: error: Operand prefixes and symbol expressions are 
# CHECK-SAME: not allowed for this operand and it must be in the integer range 
# CHECK-SAME: [-16, 15]
sh.h %d0, %d1, foo


### Testing simm9

# CHECK: :[[@LINE+3]]:15: error: Operand prefixes and symbol expressions are 
# CHECK-SAME: not allowed for this operand and it must be in the integer range 
# CHECK-SAME: [-256, 255]
max %d0, %d1, -257

# CHECK: :[[@LINE+3]]:15: error: Operand prefixes and symbol expressions are 
# CHECK-SAME: not allowed for this operand and it must be in the integer range 
# CHECK-SAME: [-256, 255]
max %d0, %d1, 256

# CHECK: :[[@LINE+3]]:15: error: Operand prefixes and symbol expressions are 
# CHECK-SAME: not allowed for this operand and it must be in the integer range 
# CHECK-SAME: [-256, 255]
max %d0, %d1, foo


### Testing uimm9

# CHECK: :[[@LINE+3]]:15: error: Operand prefixes and symbol expressions are 
# CHECK-SAME: not allowed for this operand and it must be in the integer range 
# CHECK-SAME: [0, 511]
nor %d0, %d1, -1

# CHECK: :[[@LINE+3]]:15: error: Operand prefixes and symbol expressions are 
# CHECK-SAME: not allowed for this operand and it must be in the integer range 
# CHECK-SAME: [0, 511]
nor %d0, %d1, 512

# CHECK: :[[@LINE+3]]:15: error: Operand prefixes and symbol expressions are 
# CHECK-SAME: not allowed for this operand and it must be in the integer range 
# CHECK-SAME: [0, 511]
nor %d0, %d1, foo


### Testing simm16_BOL

# CHECK: :[[@LINE+3]]:17: error: Operand must be a valid symbol with optional 
# CHECK-SAME: operand prefix lo or sm OR it must be in the integer range 
# CHECK-SAME: [-32768, 32767]
lea %a0, [%a0], -1 << 15 - 1

# CHECK: :[[@LINE+3]]:17: error: Operand must be a valid symbol with optional 
# CHECK-SAME: operand prefix lo or sm OR it must be in the integer range 
# CHECK-SAME: [-32768, 32767]
lea %a0, [%a0], 1 << 15


### Testing simm16_RLC

# CHECK: :[[@LINE+3]]:16: error: Operand must be a valid symbol with optional 
# CHECK-SAME: operand prefix lo or hi OR it must be in the integer range 
# CHECK-SAME: [-32768, 32767]
addi %d0, %d0, -1 << 15 - 1

# CHECK: :[[@LINE+3]]:16: error: Operand must be a valid symbol with optional 
# CHECK-SAME: operand prefix lo or hi OR it must be in the integer range 
# CHECK-SAME: [-32768, 32767]
addi %d0, %d0, 1 << 15


### Testing uimm16_RLC

# CHECK: :[[@LINE+3]]:17: error: Operand must be a valid symbol with optional 
# CHECK-SAME: operand prefix lo or hi OR it must be in the integer range 
# CHECK-SAME: [0, 65535]
addih %d0, %d0, -1

# CHECK: :[[@LINE+3]]:17: error: Operand must be a valid symbol with optional 
# CHECK-SAME: operand prefix lo or hi OR it must be in the integer range 
# CHECK-SAME: [0, 65535]
addih %d0, %d0, 1 << 16


### Testing disp4_16

# CHECK: :[[@LINE+4]]:14: error: Operand prefixes and symbol expressions are 
# CHECK-SAME: not allowed for this operand and it must be an even number in the 
# CHECK-SAME: integer range [32, 62]
.code16
jeq %d15, 0, 33

# CHECK: :[[@LINE+3]]:1: error: Instruction requires the following features:  
# CHECK-SAME: 32-bit instruction generation
.code16
jeq %d15, 0, 64



### Testing simm15_lsb0

# CHECK: :[[@LINE+2]]:7: error: Operand must be a valid symbol expression or an 
# CHECK-SAME: even integer and in the range [-32768, 32766]
loopu -1 << 15 - 1

# CHECK: :[[@LINE+2]]:7: error: Operand must be a valid symbol expression or an 
# CHECK-SAME: even integer and in the range [-32768, 32766]
loopu 1

# CHECK: :[[@LINE+2]]:7: error: Operand must be a valid symbol expression or an 
# CHECK-SAME: even integer and in the range [-32768, 32766]
loopu 1 << 15


### Testing simm24_lsb0

# CHECK: :[[@LINE+2]]:4: error: Operand must be a valid symbol expression or an 
# CHECK-SAME: even integer and in the range [-16777216, 16777214]
jl -1 << 24 - 1

# CHECK: :[[@LINE+2]]:4: error: Operand must be a valid symbol expression or an 
# CHECK-SAME: even integer and in the range [-16777216, 16777214]
jl 1

# CHECK: :[[@LINE+2]]:4: error: Operand must be a valid symbol expression or an 
# CHECK-SAME: even integer and in the range [-16777216, 16777214]
jl 1 << 24


### Testing off18_abs 

## checking against {off18[17:14], 14'b0, off18[13:0]} form

# CHECK: :[[@LINE+2]]:6: error: Operand must be a valid symbol expression or a 
# CHECK-SAME: 32 bit address with bit 27-14 set to 0
st.t 1 << 32, 0, 0

# CHECK: :[[@LINE+2]]:6: error: Operand must be a valid symbol expression or a 
# CHECK-SAME: 32 bit address with bit 27-14 set to 0
st.t 1 << 27, 0, 0

# CHECK: :[[@LINE+2]]:6: error: Operand must be a valid symbol expression or a 
# CHECK-SAME: 32 bit address with bit 27-14 set to 0
st.t 1 << 26, 0, 0

# CHECK: :[[@LINE+2]]:6: error: Operand must be a valid symbol expression or a 
# CHECK-SAME: 32 bit address with bit 27-14 set to 0
st.t 1 << 25, 0, 0

# CHECK: :[[@LINE+2]]:6: error: Operand must be a valid symbol expression or a 
# CHECK-SAME: 32 bit address with bit 27-14 set to 0
st.t 1 << 24, 0, 0

# CHECK: :[[@LINE+2]]:6: error: Operand must be a valid symbol expression or a 
# CHECK-SAME: 32 bit address with bit 27-14 set to 0
st.t 1 << 23, 0, 0

# CHECK: :[[@LINE+2]]:6: error: Operand must be a valid symbol expression or a 
# CHECK-SAME: 32 bit address with bit 27-14 set to 0
st.t 1 << 22, 0, 0

# CHECK: :[[@LINE+2]]:6: error: Operand must be a valid symbol expression or a 
# CHECK-SAME: 32 bit address with bit 27-14 set to 0
st.t 1 << 21, 0, 0

# CHECK: :[[@LINE+2]]:6: error: Operand must be a valid symbol expression or a 
# CHECK-SAME: 32 bit address with bit 27-14 set to 0
st.t 1 << 20, 0, 0

# CHECK: :[[@LINE+2]]:6: error: Operand must be a valid symbol expression or a 
# CHECK-SAME: 32 bit address with bit 27-14 set to 0
st.t 1 << 19, 0, 0

# CHECK: :[[@LINE+2]]:6: error: Operand must be a valid symbol expression or a 
# CHECK-SAME: 32 bit address with bit 27-14 set to 0
st.t 1 << 18, 0, 0

# CHECK: :[[@LINE+2]]:6: error: Operand must be a valid symbol expression or a 
# CHECK-SAME: 32 bit address with bit 27-14 set to 0
st.t 1 << 17, 0, 0

# CHECK: :[[@LINE+2]]:6: error: Operand must be a valid symbol expression or a 
# CHECK-SAME: 32 bit address with bit 27-14 set to 0
st.t 1 << 16, 0, 0

# CHECK: :[[@LINE+2]]:6: error: Operand must be a valid symbol expression or a 
# CHECK-SAME: 32 bit address with bit 27-14 set to 0
st.t 1 << 15, 0, 0

# CHECK: :[[@LINE+2]]:6: error: Operand must be a valid symbol expression or a 
# CHECK-SAME: 32 bit address with bit 27-14 set to 0
st.t 1 << 14, 0, 0


### Testing off18_abs_v2 

## checking against {off18[17:0], 14'b0} form

# CHECK: :[[@LINE+2]]:10: error: Operand must be a valid symbol expression or a 
# CHECK-SAME: 32 bit address with bit 13-0 set to 0
lha %a0, 1 << 32

# CHECK: :[[@LINE+2]]:10: error: Operand must be a valid symbol expression or a 
# CHECK-SAME: 32 bit address with bit 13-0 set to 0
lha %a0, 1 << 13

# CHECK: :[[@LINE+2]]:10: error: Operand must be a valid symbol expression or a 
# CHECK-SAME: 32 bit address with bit 13-0 set to 0
lha %a0, 1 << 12

# CHECK: :[[@LINE+2]]:10: error: Operand must be a valid symbol expression or a 
# CHECK-SAME: 32 bit address with bit 13-0 set to 0
lha %a0, 1 << 11

# CHECK: :[[@LINE+2]]:10: error: Operand must be a valid symbol expression or a 
# CHECK-SAME: 32 bit address with bit 13-0 set to 0
lha %a0, 1 << 10

# CHECK: :[[@LINE+2]]:10: error: Operand must be a valid symbol expression or a 
# CHECK-SAME: 32 bit address with bit 13-0 set to 0
lha %a0, 1 << 9

# CHECK: :[[@LINE+2]]:10: error: Operand must be a valid symbol expression or a 
# CHECK-SAME: 32 bit address with bit 13-0 set to 0
lha %a0, 1 << 8

# CHECK: :[[@LINE+2]]:10: error: Operand must be a valid symbol expression or a 
# CHECK-SAME: 32 bit address with bit 13-0 set to 0
lha %a0, 1 << 7

# CHECK: :[[@LINE+2]]:10: error: Operand must be a valid symbol expression or a 
# CHECK-SAME: 32 bit address with bit 13-0 set to 0
lha %a0, 1 << 6

# CHECK: :[[@LINE+2]]:10: error: Operand must be a valid symbol expression or a 
# CHECK-SAME: 32 bit address with bit 13-0 set to 0
lha %a0, 1 << 5

# CHECK: :[[@LINE+2]]:10: error: Operand must be a valid symbol expression or a 
# CHECK-SAME: 32 bit address with bit 13-0 set to 0
lha %a0, 1 << 4

# CHECK: :[[@LINE+2]]:10: error: Operand must be a valid symbol expression or a 
# CHECK-SAME: 32 bit address with bit 13-0 set to 0
lha %a0, 1 << 3

# CHECK: :[[@LINE+2]]:10: error: Operand must be a valid symbol expression or a 
# CHECK-SAME: 32 bit address with bit 13-0 set to 0
lha %a0, 1 << 2

# CHECK: :[[@LINE+2]]:10: error: Operand must be a valid symbol expression or a 
# CHECK-SAME: 32 bit address with bit 13-0 set to 0
lha %a0, 1 << 1

# CHECK: :[[@LINE+2]]:10: error: Operand must be a valid symbol expression or a 
# CHECK-SAME: 32 bit address with bit 13-0 set to 0
lha %a0, 1 << 0


### Testing disp24_abs

## checking against {disp24[23:20], 7'b0, disp24[19:0], 1'b0} form

# CHECK: :[[@LINE+2]]:4: error: Operand must be a valid symbol expression or a 
# CHECK-SAME: 32 bit address with bit 27-21 and 0 set to 0
ja 1 << 32

# CHECK: :[[@LINE+2]]:4: error: Operand must be a valid symbol expression or a 
# CHECK-SAME: 32 bit address with bit 27-21 and 0 set to 0
ja 1 << 27

# CHECK: :[[@LINE+2]]:4: error: Operand must be a valid symbol expression or a 
# CHECK-SAME: 32 bit address with bit 27-21 and 0 set to 0
ja 1 << 26

# CHECK: :[[@LINE+2]]:4: error: Operand must be a valid symbol expression or a 
# CHECK-SAME: 32 bit address with bit 27-21 and 0 set to 0
ja 1 << 25

# CHECK: :[[@LINE+2]]:4: error: Operand must be a valid symbol expression or a 
# CHECK-SAME: 32 bit address with bit 27-21 and 0 set to 0
ja 1 << 24

# CHECK: :[[@LINE+2]]:4: error: Operand must be a valid symbol expression or a 
# CHECK-SAME: 32 bit address with bit 27-21 and 0 set to 0
ja 1 << 23

# CHECK: :[[@LINE+2]]:4: error: Operand must be a valid symbol expression or a 
# CHECK-SAME: 32 bit address with bit 27-21 and 0 set to 0
ja 1 << 22

# CHECK: :[[@LINE+2]]:4: error: Operand must be a valid symbol expression or a 
# CHECK-SAME: 32 bit address with bit 27-21 and 0 set to 0
ja 1 << 21

# CHECK: :[[@LINE+2]]:4: error: Operand must be a valid symbol expression or a 
# CHECK-SAME: 32 bit address with bit 27-21 and 0 set to 0
ja 1 << 0
