# RUN: not llvm-mc -arch=tricore -filetype=obj < %s -o /dev/null 2>&1 \
# RUN: | FileCheck -check-prefix=CHECK %s

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
