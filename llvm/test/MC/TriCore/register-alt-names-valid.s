# RUN: llvm-mc %s -triple=tricore -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK,CHECK-INST %s
# RUN: llvm-mc -filetype=obj -triple=tricore < %s \
# RUN:     | llvm-objdump -d - | FileCheck -check-prefix=CHECK-INST %s


# CHECK-INST: mov.aa %a0, %a10
# CHECK: encoding: [0x40,0xa0]
.code16
mov.aa %a0, %sp
