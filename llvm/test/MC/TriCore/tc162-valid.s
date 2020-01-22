# RUN: not llvm-mc %s -triple=tricore -mcpu=tc2xx -mattr=tc161 -show-encoding < %s 2>&1 \ 
# RUN:     | FileCheck -check-prefix=ERROR %s
# RUN: llvm-mc %s -triple=tricore -mcpu=tc3xx -mattr=tc162 -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK,CHECK-INST %s
# RUN: llvm-mc %s -triple=tricore -mcpu=tc4xx -mattr=tc18 -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK,CHECK-INST %s


# CHECK-INST: popcnt.w %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x20,0x02]
popcnt.w %d0, %d0 # ERROR: :[[@LINE]]:1: error: instruction use requires an option to be enabled 

# CHECK-INST: crc32.b %d0, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x60,0x00]
crc32.b %d0, %d0, %d0 # ERROR: :[[@LINE]]:1: error: instruction use requires an option to be enabled 

# CHECK-INST: crc32b.w %d0, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x30,0x00]
crc32b.w %d0, %d0, %d0 # ERROR: :[[@LINE]]:1: error: instruction use requires an option to be enabled 

# CHECK-INST: crc32l.w %d0, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x70,0x00]
crc32l.w %d0, %d0, %d0 # ERROR: :[[@LINE]]:1: error: instruction use requires an option to be enabled 

# CHECK-INST: crcn %d0, %d0, %d0, %d0
# CHECK: encoding: [0x6b,0x00,0x10,0x00]
crcn %d0, %d0, %d0, %d0 # ERROR: :[[@LINE]]:1: error: instruction use requires an option to be enabled 

# CHECK-INST: hptof %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x41,0x02]
hptof %d0, %d0 # ERROR: :[[@LINE]]:1: error: instruction use requires an option to be enabled 

# CHECK-INST: ftohp %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x51,0x02]
ftohp %d0, %d0 # ERROR: :[[@LINE]]:1: error: instruction use requires an option to be enabled 

# CHECK-INST: shuffle %d0, %d0, 271
# CHECK: encoding: [0x8f,0xf0,0xf0,0x00]
shuffle %d0, %d0, 271 # ERROR: :[[@LINE]]:1: error: instruction use requires an option to be enabled 

# CHECK-INST: lha %a0, 16384
# CHECK: encoding: [0xc5,0x00,0x01,0x04]
.code32
lha %a0, 16384 # ERROR: :[[@LINE]]:1: error: instruction use requires an option to be enabled 