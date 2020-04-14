# RUN: not llvm-mc -triple=tricore < %s 2>&1 | FileCheck %s

# XFAIL: *

## TODO: This is invalid for disp4_16, but valid for other version so it will
##       not generate an error.
## idea: maybe using flags which print the exact instruction name matched and 
##       test that (not seems to work easily)

# CHECK: :[[@LINE+4]]:14: error: Operand prefixes and symbol expressions are 
# CHECK-SAME: not allowed for this operand and it must be an even number in the 
# CHECK-SAME: integer range [32, 62]
.code16
jeq %d15, 0, 30 # JEQ_16_d15cc