# RUN: not llvm-mc -arch=tricore -filetype=obj < %s -o /dev/null 2>&1 \
# RUN: | FileCheck -check-prefix=CHECK %s

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

### JZ-16bit ###

.code16
jz %d0, jz_sym_expr_in_range_odd
# CHECK: :[[@LINE-1]]:1: error: fixup must be 2-byte aligned

.fill 1
jz_sym_expr_in_range_odd:

.code16
jz %d0, jz_sym_expr_out_of_range_even
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range 

.fill 30
jz_sym_expr_out_of_range_even:

.code16
jz %d0, jz_sym_expr_out_of_range_odd
# CHECK: :[[@LINE-1]]:1: error: fixup must be 2-byte aligned

.fill 33
jz_sym_expr_out_of_range_odd:

jz_sym_expr_out_of_range_negative:
.fill 2
.code16
jz %d0, jz_sym_expr_out_of_range_negative
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range

### JEQ-16bit ###

.code16
jeq %d15, %d0, jeq_sym_expr_in_range_odd
# CHECK: :[[@LINE-1]]:1: error: fixup must be 2-byte aligned

.fill 1
jeq_sym_expr_in_range_odd:

.code16
jeq %d15, %d0, jeq_sym_expr_in_range_rel2_odd
# CHECK: :[[@LINE-1]]:1: error: fixup must be 2-byte aligned

.fill 33
jeq_sym_expr_in_range_rel2_odd:

.code16
jeq %d15, %d0, jeq_sym_expr_out_of_range_even
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range

.fill 62
jeq_sym_expr_out_of_range_even:

.code16
jeq %d15, %d0, jeq_sym_expr_out_of_range_odd
# CHECK: :[[@LINE-1]]:1: error: fixup must be 2-byte aligned

.fill 63
jeq_sym_expr_out_of_range_odd:

jeq_sym_expr_out_of_range_negative:
.fill 2
.code16
jeq %d15, %d0, jeq_sym_expr_out_of_range_negative
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range

### JNE-16bit ###

.code16
jne %d15, %d0, jne_sym_expr_in_range_odd
# CHECK: :[[@LINE-1]]:1: error: fixup must be 2-byte aligned

.fill 1
jne_sym_expr_in_range_odd:

.code16
jne %d15, %d0, jne_sym_expr_in_range_rel2_odd
# CHECK: :[[@LINE-1]]:1: error: fixup must be 2-byte aligned

.fill 33
jne_sym_expr_in_range_rel2_odd:

.code16
jne %d15, %d0, jne_sym_expr_out_of_range_even
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range

.fill 62
jne_sym_expr_out_of_range_even:

.code16
jne %d15, %d0, jne_sym_expr_out_of_range_odd
# CHECK: :[[@LINE-1]]:1: error: fixup must be 2-byte aligned

.fill 63
jne_sym_expr_out_of_range_odd:

jne_sym_expr_out_of_range_negative:
.fill 2
.code16
jne %d15, %d0, jeq_sym_expr_out_of_range_negative
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range
