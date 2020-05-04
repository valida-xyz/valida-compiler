# RUN: llvm-mc -arch=tricore < %s -show-encoding -show-inst\
# RUN:     | FileCheck -check-prefixes=CHECK,FIXUP %s
# RUN: llvm-mc -filetype=obj -arch=tricore < %s \
# RUN:     | llvm-objdump -d - \
# RUN:     | FileCheck -check-prefixes=OBJDUMP,INSTR %s

# Check prefixes:
# FIXUP - Check the fixup on the instruction.
# INSTR - Check the instruction is handled properly by the ASMPrinter

### JZ-16bit ###

.code16
jz %d0, jz_2
# CHECK: encoding: [0x76,0b0000AAAA]
# OBJDUMP: 76 01
# INSTR: jz %d0, 2
# FIXUP: fixup A - offset: 0, value: jz_2, kind: fixup_4rel

jz_2:

.code16
jz %d0, jz_30
# CHECK: encoding: [0x76,0b0000AAAA]
# OBJDUMP: 76 0f
# INSTR: jz %d0, 30
# FIXUP: fixup A - offset: 0, value: jz_30, kind: fixup_4rel

.fill 28
jz_30:

### JEQ-16bit ###

.code16
jeq %d15, %d0, jeq_2
# CHECK: encoding: [0x3e,0b0000AAAA]
# OBJDUMP: 3e 01
# INSTR: jeq %d15, %d0, 2
# FIXUP: fixup A - offset: 0, value: jeq_2, kind: fixup_4rel

jeq_2:

.code16
jeq %d15, %d0, jeq_30
# CHECK: encoding: [0x3e,0b0000AAAA]
# OBJDUMP: 3e 0f
# INSTR: jeq %d15, %d0, 30
# FIXUP: fixup A - offset: 0, value: jeq_30, kind: fixup_4rel

.fill 28
jeq_30:

.code16
jeq %d15, %d0, jeq_32
# CHECK: encoding: [0x3e,0b0000AAAA]
# OBJDUMP: be 00
# INSTR: jeq %d15, %d0, 32
# FIXUP: fixup A - offset: 0, value: jeq_32, kind: fixup_4rel

.fill 30
jeq_32:

.code16
jeq %d15, %d0, jeq_62
# CHECK: encoding: [0x3e,0b0000AAAA]
# OBJDUMP: be 0f
# INSTR: jeq %d15, %d0, 62
# FIXUP: fixup A - offset: 0, value: jeq_62, kind: fixup_4rel

.fill 60
jeq_62:

### JNE-16bit ###

.code16
jne %d15, %d0, jne_2
# CHECK: encoding: [0x7e,0b0000AAAA]
# OBJDUMP: 7e 01
# INSTR: jne %d15, %d0, 2
# FIXUP: fixup A - offset: 0, value: jne_2, kind: fixup_4rel

jne_2:

.code16
jne %d15, %d0, jne_30
# CHECK: encoding: [0x7e,0b0000AAAA]
# OBJDUMP: 7e 0f
# INSTR: jne %d15, %d0, 30
# FIXUP: fixup A - offset: 0, value: jne_30, kind: fixup_4rel

.fill 28
jne_30:

.code16
jne %d15, %d0, jne_32
# CHECK: encoding: [0x7e,0b0000AAAA]
# OBJDUMP: fe 00
# INSTR: jne %d15, %d0, 32
# FIXUP: fixup A - offset: 0, value: jne_32, kind: fixup_4rel

.fill 30
jne_32:

.code16
jne %d15, %d0, jne_62
# CHECK: encoding: [0x7e,0b0000AAAA]
# OBJDUMP: fe 0f
# INSTR: jne %d15, %d0, 62
# FIXUP: fixup A - offset: 0, value: jne_62, kind: fixup_4rel

.fill 60
jne_62:


### JEQ-32bit ###

.code32
jeq %d15, %d0, jeq_32_4
# CHECK: encoding: [0x5f,0x0f,A,0b0AAAAAAA]
# OBJDUMP: 5f 0f 02 00
# INSTR: jeq %d15, %d0, 4
# FIXUP: fixup A - offset: 0, value: jeq_32_4, kind: fixup_15rel

jeq_32_4:

.code32
jeq %d15, %d0, jeq_32_34
# CHECK: encoding: [0x5f,0x0f,A,0b0AAAAAAA]
# OBJDUMP: 5f 0f 11 00
# INSTR: jeq %d15, %d0, 34
# FIXUP: fixup A - offset: 0, value: jeq_32_34, kind: fixup_15rel

.fill 30
jeq_32_34:

jeq %d15, %d0, jeq_66
# CHECK: encoding: [0x3e,0b0000AAAA]
# OBJDUMP: 5f 0f 21 00
# INSTR: jeq %d15, %d0, 66
# FIXUP: fixup A - offset: 0, value: jeq_66, kind: fixup_4rel

.fill 62
jeq_66:

### JNE-32bit ###

.code32
jeq %d15, %d0, jne_32_4
# CHECK: encoding: [0x5f,0x0f,A,0b0AAAAAAA]
# OBJDUMP: 5f 0f 02 00
# INSTR: jeq %d15, %d0, 4
# FIXUP: fixup A - offset: 0, value: jne_32_4, kind: fixup_15rel

jne_32_4:

.code32
jne %d15, %d0, jne_32_34
# CHECK: encoding: [0x5f,0x0f,A,0b1AAAAAAA]
# OBJDUMP: 5f 0f 11 80
# INSTR: jne %d15, %d0, 34
# FIXUP: fixup A - offset: 0, value: jne_32_34, kind: fixup_15rel

.fill 30
jne_32_34:

jne %d15, %d0, jne_66
# CHECK: encoding: [0x7e,0b0000AAAA]
# OBJDUMP: 5f 0f 21 80
# INSTR: jne %d15, %d0, 66
# FIXUP: fixup A - offset: 0, value: jne_66, kind: fixup_4rel

.fill 62
jne_66:
