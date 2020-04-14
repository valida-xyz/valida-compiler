# RUN: not llvm-mc %s -triple=tricore -mcpu=tc2xx -mattr=tc161 -show-encoding < %s 2>&1 \ 
# RUN:     | FileCheck -check-prefix=ERROR %s
# RUN: not llvm-mc %s -triple=tricore -mcpu=tc3xx -mattr=tc162 -show-encoding < %s 2>&1 \ 
# RUN:     | FileCheck -check-prefix=ERROR %s
# RUN: llvm-mc %s -triple=tricore -mcpu=tc4xx -mattr=tc18 -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK,CHECK-INST %s

# CHECK-INST: abs.df %e0, %e0
# CHECK: encoding: [0x4b,0x00,0x02,0x03]
# ERROR: :[[@LINE+3]]:1: error: Instruction requires the following features:
# ERROR-SAME: tc18
.code32
abs.df %e0, %e0 

# CHECK-INST: abs.f %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x01,0x03]
# ERROR: :[[@LINE+3]]:1: error: Instruction requires the following features:
# ERROR-SAME: tc18
.code32
abs.f %d0, %d0 

# CHECK-INST: add.df %e0, %e0, %e0
# CHECK: encoding: [0x6b,0x00,0x22,0x00]
# ERROR: :[[@LINE+3]]:1: error: Instruction requires the following features:
# ERROR-SAME: tc18
.code32
add.df %e0, %e0, %e0 

# CHECK-INST: cachea.i.vm [%a0+], -512
# CHECK: encoding: [0x49,0x00,0x80,0x83]
# ERROR: :[[@LINE+3]]:1: error: Instruction requires the following features:
# ERROR-SAME: tc18
.code32
cachea.i.vm [%a0+], -512 

# CHECK-INST: cachea.i.vm [%a0], -512
# CHECK: encoding: [0x49,0x00,0x80,0x8b]
# ERROR: :[[@LINE+3]]:1: error: Instruction requires the following features:
# ERROR-SAME: tc18
.code32
cachea.i.vm [%a0], -512 

# CHECK-INST: cachea.i.vm [+%a0], -512
# CHECK: encoding: [0x49,0x00,0x80,0x87]
# ERROR: :[[@LINE+3]]:1: error: Instruction requires the following features:
# ERROR-SAME: tc18
.code32
cachea.i.vm [+%a0], -512 

# CHECK-INST: cachea.wi.vm [%a0+], -512
# CHECK: encoding: [0x49,0x00,0x40,0x83]
# ERROR: :[[@LINE+3]]:1: error: Instruction requires the following features:
# ERROR-SAME: tc18
.code32
cachea.wi.vm [%a0+], -512 

# CHECK-INST: cachea.wi.vm [%a0], -512
# CHECK: encoding: [0x49,0x00,0x40,0x8b]
# ERROR: :[[@LINE+3]]:1: error: Instruction requires the following features:
# ERROR-SAME: tc18
.code32
cachea.wi.vm [%a0], -512 

# CHECK-INST: cachea.wi.vm [+%a0], -512
# CHECK: encoding: [0x49,0x00,0x40,0x87]
# ERROR: :[[@LINE+3]]:1: error: Instruction requires the following features:
# ERROR-SAME: tc18
.code32
cachea.wi.vm [+%a0], -512 

# CHECK-INST: cachei.i.vm [%a0+], -512
# CHECK: encoding: [0x49,0x00,0x80,0x82]
# ERROR: :[[@LINE+3]]:1: error: Instruction requires the following features:
# ERROR-SAME: tc18
.code32
cachei.i.vm [%a0+], -512 

# CHECK-INST: cachei.i.vm [%a0], -512
# CHECK: encoding: [0x49,0x00,0x80,0x8a]
# ERROR: :[[@LINE+3]]:1: error: Instruction requires the following features:
# ERROR-SAME: tc18
.code32
cachei.i.vm [%a0], -512 

# CHECK-INST: cachei.i.vm [+%a0], -512
# CHECK: encoding: [0x49,0x00,0x80,0x86]
# ERROR: :[[@LINE+3]]:1: error: Instruction requires the following features:
# ERROR-SAME: tc18
.code32
cachei.i.vm [+%a0], -512 

# CHECK-INST: cachei.wi.vm [%a0+], -512
# CHECK: encoding: [0x49,0x00,0xc0,0x83]
# ERROR: :[[@LINE+3]]:1: error: Instruction requires the following features:
# ERROR-SAME: tc18
.code32
cachei.wi.vm [%a0+], -512 

# CHECK-INST: cachei.wi.vm [%a0], -512
# CHECK: encoding: [0x49,0x00,0xc0,0x8b]
# ERROR: :[[@LINE+3]]:1: error: Instruction requires the following features:
# ERROR-SAME: tc18
.code32
cachei.wi.vm [%a0], -512 

# CHECK-INST: cachei.wi.vm [+%a0], -512
# CHECK: encoding: [0x49,0x00,0xc0,0x87]
# ERROR: :[[@LINE+3]]:1: error: Instruction requires the following features:
# ERROR-SAME: tc18
.code32
cachei.wi.vm [+%a0], -512 

# CHECK-INST: cachei.w.vm [%a0+], -512
# CHECK: encoding: [0x49,0x00,0xc0,0x82]
# ERROR: :[[@LINE+3]]:1: error: Instruction requires the following features:
# ERROR-SAME: tc18
.code32
cachei.w.vm [%a0+], -512 

# CHECK-INST: cachei.w.vm [%a0], -512
# CHECK: encoding: [0x49,0x00,0xc0,0x8a]
# ERROR: :[[@LINE+3]]:1: error: Instruction requires the following features:
# ERROR-SAME: tc18
.code32
cachei.w.vm [%a0], -512 

# CHECK-INST: cachei.w.vm [+%a0], -512
# CHECK: encoding: [0x49,0x00,0xc0,0x86]
# ERROR: :[[@LINE+3]]:1: error: Instruction requires the following features:
# ERROR-SAME: tc18
.code32
cachei.w.vm [+%a0], -512 

# CHECK-INST: calli %a0
# CHECK: encoding: [0xdc,0x10]
# ERROR: :[[@LINE+3]]:1: error: Instruction requires the following features:
# ERROR-SAME: tc18
.code16
calli %a0 

# CHECK-INST: cmp.df %d0, %e0, %e0
# CHECK: encoding: [0x4b,0x00,0x02,0x00]
# ERROR: :[[@LINE+3]]:1: error: Instruction requires the following features:
# ERROR-SAME: tc18
.code32
cmp.df %d0, %e0, %e0 

# CHECK-INST: dftof %d0, %e0
# CHECK: encoding: [0x4b,0x00,0x82,0x02]
# ERROR: :[[@LINE+3]]:1: error: Instruction requires the following features:
# ERROR-SAME: tc18
.code32
dftof %d0, %e0 

# CHECK-INST: dftoin %d0, %e0
# CHECK: encoding: [0x4b,0x00,0x72,0x03]
# ERROR: :[[@LINE+3]]:1: error: Instruction requires the following features:
# ERROR-SAME: tc18
.code32
dftoin %d0, %e0 

# CHECK-INST: dftoiz %d0, %e0
# CHECK: encoding: [0x4b,0x00,0x32,0x01]
# ERROR: :[[@LINE+3]]:1: error: Instruction requires the following features:
# ERROR-SAME: tc18
.code32
dftoiz %d0, %e0 

# CHECK-INST: dftoi %d0, %e0
# CHECK: encoding: [0x4b,0x00,0x02,0x01]
# ERROR: :[[@LINE+3]]:1: error: Instruction requires the following features:
# ERROR-SAME: tc18
.code32
dftoi %d0, %e0 

# CHECK-INST: dftolz %e0, %e0
# CHECK: encoding: [0x4b,0x00,0xb2,0x01]
# ERROR: :[[@LINE+3]]:1: error: Instruction requires the following features:
# ERROR-SAME: tc18
.code32
dftolz %e0, %e0 

# CHECK-INST: dftol %e0, %e0
# CHECK: encoding: [0x4b,0x00,0xa2,0x01]
# ERROR: :[[@LINE+3]]:1: error: Instruction requires the following features:
# ERROR-SAME: tc18
.code32
dftol %e0, %e0 

# CHECK-INST: dftoulz %e0, %e0
# CHECK: encoding: [0x4b,0x00,0xf2,0x01]
# ERROR: :[[@LINE+3]]:1: error: Instruction requires the following features:
# ERROR-SAME: tc18
.code32
dftoulz %e0, %e0 

# CHECK-INST: dftoul %e0, %e0
# CHECK: encoding: [0x4b,0x00,0xe2,0x01]
# ERROR: :[[@LINE+3]]:1: error: Instruction requires the following features:
# ERROR-SAME: tc18
.code32
dftoul %e0, %e0 

# CHECK-INST: dftouz %d0, %e0
# CHECK: encoding: [0x4b,0x00,0x72,0x01]
# ERROR: :[[@LINE+3]]:1: error: Instruction requires the following features:
# ERROR-SAME: tc18
.code32
dftouz %d0, %e0 

# CHECK-INST: dftou %d0, %e0
# CHECK: encoding: [0x4b,0x00,0x22,0x01]
# ERROR: :[[@LINE+3]]:1: error: Instruction requires the following features:
# ERROR-SAME: tc18
.code32
dftou %d0, %e0 

# CHECK-INST: div.df %e0, %e0, %e0
# CHECK: encoding: [0x4b,0x00,0x52,0x00]
# ERROR: :[[@LINE+3]]:1: error: Instruction requires the following features:
# ERROR-SAME: tc18
.code32
div.df %e0, %e0, %e0 

# CHECK-INST: ftodf %e0, %d0
# CHECK: encoding: [0x4b,0x00,0x92,0x02]
# ERROR: :[[@LINE+3]]:1: error: Instruction requires the following features:
# ERROR-SAME: tc18
.code32
ftodf %e0, %d0 

# CHECK-INST: ftoin %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x71,0x03]
# ERROR: :[[@LINE+3]]:1: error: Instruction requires the following features:
# ERROR-SAME: tc18
.code32
ftoin %d0, %d0 

# CHECK-INST: hvcall 255
# CHECK: encoding: [0xad,0xf0,0x4f,0x00]
# ERROR: :[[@LINE+3]]:1: error: Instruction requires the following features:
# ERROR-SAME: tc18
.code32
hvcall 255 

# CHECK-INST: itodf %e0, %d0
# CHECK: encoding: [0x4b,0x00,0x42,0x01]
# ERROR: :[[@LINE+3]]:1: error: Instruction requires the following features:
# ERROR-SAME: tc18
.code32
itodf %e0, %d0 

# CHECK-INST: ltodf %e0, %e0
# CHECK: encoding: [0x4b,0x00,0x62,0x02]
# ERROR: :[[@LINE+3]]:1: error: Instruction requires the following features:
# ERROR-SAME: tc18
.code32
ltodf %e0, %e0 

# CHECK-INST: madd.df %e0, %e0, %e0, %e0
# CHECK: encoding: [0x6b,0x00,0x62,0x00]
# ERROR: :[[@LINE+3]]:1: error: Instruction requires the following features:
# ERROR-SAME: tc18
.code32
madd.df %e0, %e0, %e0, %e0 

# CHECK-INST: max.df %e0, %e0, %e0
# CHECK: encoding: [0x4b,0x00,0x22,0x03]
# ERROR: :[[@LINE+3]]:1: error: Instruction requires the following features:
# ERROR-SAME: tc18
.code32
max.df %e0, %e0, %e0 

# CHECK-INST: max.f %d0, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x21,0x03]
# ERROR: :[[@LINE+3]]:1: error: Instruction requires the following features:
# ERROR-SAME: tc18
.code32
max.f %d0, %d0, %d0 

# CHECK-INST: mfdcr %e0, 0
# CHECK: encoding: [0x4f,0x00,0x00,0x00]
# ERROR: :[[@LINE+3]]:1: error: Instruction requires the following features:
# ERROR-SAME: tc18
.code32
mfdcr %e0, 0 

# CHECK-INST: min.df %e0, %e0, %e0
# CHECK: encoding: [0x4b,0x00,0x32,0x03]
# ERROR: :[[@LINE+3]]:1: error: Instruction requires the following features:
# ERROR-SAME: tc18
.code32
min.df %e0, %e0, %e0 

# CHECK-INST: min.f %d0, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x31,0x03]
# ERROR: :[[@LINE+3]]:1: error: Instruction requires the following features:
# ERROR-SAME: tc18
.code32
min.f %d0, %d0, %d0 

# CHECK-INST: msub.df %e0, %e0, %e0, %e0
# CHECK: encoding: [0x6b,0x00,0x72,0x00]
# ERROR: :[[@LINE+3]]:1: error: Instruction requires the following features:
# ERROR-SAME: tc18
.code32
msub.df %e0, %e0, %e0, %e0 

# CHECK-INST: mtdcr 0, %e0
# CHECK: encoding: [0xcf,0x00,0x00,0x00]
# ERROR: :[[@LINE+3]]:1: error: Instruction requires the following features:
# ERROR-SAME: tc18
.code32
mtdcr 0, %e0 

# CHECK-INST: mul.df %e0, %e0, %e0
# CHECK: encoding: [0x4b,0x00,0x42,0x00]
# ERROR: :[[@LINE+3]]:1: error: Instruction requires the following features:
# ERROR-SAME: tc18
.code32
mul.df %e0, %e0, %e0 

# CHECK-INST: mulp.b %e0, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0xb0,0x02]
# ERROR: :[[@LINE+3]]:1: error: Instruction requires the following features:
# ERROR-SAME: tc18
.code32
mulp.b %e0, %d0, %d0 

# CHECK-INST: neg.df %e0, %e0
# CHECK: encoding: [0x4b,0x00,0x12,0x03]
# ERROR: :[[@LINE+3]]:1: error: Instruction requires the following features:
# ERROR-SAME: tc18
.code32
neg.df %e0, %e0 

# CHECK-INST: neg.f %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x11,0x03]
# ERROR: :[[@LINE+3]]:1: error: Instruction requires the following features:
# ERROR-SAME: tc18
.code32
neg.f %d0, %d0 

# CHECK-INST: qseed.df %e0, %e0
# CHECK: encoding: [0x4b,0x00,0x92,0x01]
# ERROR: :[[@LINE+3]]:1: error: Instruction requires the following features:
# ERROR-SAME: tc18
.code32
qseed.df %e0, %e0 

# CHECK-INST: rfh
# CHECK: encoding: [0x0d,0x00,0xc0,0x05]
# ERROR: :[[@LINE+3]]:1: error: Instruction requires the following features:
# ERROR-SAME: tc18
.code32
rfh 

# CHECK-INST: sub.df %e0, %e0, %e0
# CHECK: encoding: [0x6b,0x00,0x32,0x00]
# ERROR: :[[@LINE+3]]:1: error: Instruction requires the following features:
# ERROR-SAME: tc18
.code32
sub.df %e0, %e0, %e0 

# CHECK-INST: ultodf %e0, %e0
# CHECK: encoding: [0x4b,0x00,0x72,0x02]
# ERROR: :[[@LINE+3]]:1: error: Instruction requires the following features:
# ERROR-SAME: tc18
.code32
ultodf %e0, %e0 

# CHECK-INST: utodf %e0, %d0
# CHECK: encoding: [0x4b,0x00,0x62,0x01]
# ERROR: :[[@LINE+3]]:1: error: Instruction requires the following features:
# ERROR-SAME: tc18
.code32
utodf %e0, %d0 
