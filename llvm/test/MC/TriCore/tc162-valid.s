# RUN: not llvm-mc %s -triple=tricore -mcpu=tc2xx -mattr=tc161 -show-encoding < %s 2>&1 \ 
# RUN:     | FileCheck -check-prefix=ERROR %s
# RUN: llvm-mc %s -triple=tricore -mcpu=tc3xx -mattr=tc162 -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK,CHECK-INST %s
# RUN: llvm-mc %s -triple=tricore -mcpu=tc4xx -mattr=tc18 -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK,CHECK-INST %s


# CHECK-INST: popcnt.w %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x20,0x02]
# ERROR: :[[@LINE+2]]:1: error: Instruction requires the following features:
# ERROR-SAME: tc162
popcnt.w %d0, %d0 

# CHECK-INST: crc32.b %d0, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x60,0x00]
# ERROR: :[[@LINE+2]]:1: error: Instruction requires the following features:
# ERROR-SAME: tc162
crc32.b %d0, %d0, %d0 

# CHECK-INST: crc32b.w %d0, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x30,0x00]
# ERROR: :[[@LINE+2]]:1: error: Instruction requires the following features:
# ERROR-SAME: tc162
crc32b.w %d0, %d0, %d0 

# CHECK-INST: crc32l.w %d0, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x70,0x00]
# ERROR: :[[@LINE+2]]:1: error: Instruction requires the following features:
# ERROR-SAME: tc162
crc32l.w %d0, %d0, %d0 

# CHECK-INST: crcn %d0, %d0, %d0, %d0
# CHECK: encoding: [0x6b,0x00,0x10,0x00]
# ERROR: :[[@LINE+2]]:1: error: Instruction requires the following features:
# ERROR-SAME: tc162
crcn %d0, %d0, %d0, %d0 

# CHECK-INST: hptof %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x41,0x02]
# ERROR: :[[@LINE+2]]:1: error: Instruction requires the following features:
# ERROR-SAME: tc162
hptof %d0, %d0 

# CHECK-INST: ftohp %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x51,0x02]
# ERROR: :[[@LINE+2]]:1: error: Instruction requires the following features:
# ERROR-SAME: tc162
ftohp %d0, %d0 

# CHECK-INST: shuffle %d0, %d0, 271
# CHECK: encoding: [0x8f,0xf0,0xf0,0x00]
# ERROR: :[[@LINE+2]]:1: error: Instruction requires the following features:
# ERROR-SAME: tc162
shuffle %d0, %d0, 271 

# CHECK-INST: lha %a0, 16384
# CHECK: encoding: [0xc5,0x00,0x01,0x04]
# ERROR: :[[@LINE+3]]:1: error: Instruction requires the following features:
# ERROR-SAME: tc162
.code32
lha %a0, 16384 