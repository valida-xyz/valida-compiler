# RUN: llvm-mc %s -triple=tricore -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK,CHECK-INST %s
# RUN: llvm-mc -filetype=obj -triple=tricore < %s \
# RUN:     | llvm-objdump -d - | FileCheck -check-prefix=CHECK-INST %s

# CHECK-INST: jri %a0
# CHECK: encoding: [0x2d,0x00,0x30,0x01]
.code32
jri %a0

# CHECK-INST: jri %a1
# CHECK: encoding: [0x2d,0x01,0x30,0x01]
.code32
jri %a1

# CHECK-INST: jri %a14
# CHECK: encoding: [0x2d,0x0e,0x30,0x01]
.code32
jri %a14

# CHECK-INST: jri %a15
# CHECK: encoding: [0x2d,0x0f,0x30,0x01]
.code32
jri %a15
