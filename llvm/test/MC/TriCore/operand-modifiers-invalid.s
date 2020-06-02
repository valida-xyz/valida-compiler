# RUN: not llvm-mc -arch=tricore -filetype=obj < %s -o /dev/null 2>&1 \
# RUN: | FileCheck -check-prefix=CHECK %s

.set sixteen, 0x10

### Testing an operands type which handled by isImmN to check if operand
### modifier get rejected even if the symbol is actually a constant

add %d0, %d1, sm:foo
# CHECK: :[[@LINE-1]]:18: error: Illegal addressing mode for 'SM' prefix

add %d0, sm:foo
# CHECK: :[[@LINE-1]]:13: error: Illegal addressing mode for 'SM' prefix

add %d0, %d1, hi:sixteen
# CHECK: :[[@LINE-1]]:15: error: Operand prefixes and symbol expressions are not allowed for this operand and it must be in the integer range [-256, 255]

add %d0, %d1, lo:sixteen
# CHECK: :[[@LINE-1]]:15: error: Operand prefixes and symbol expressions are not allowed for this operand and it must be in the integer range [-256, 255]

ld.a %a0, [%a2], sm:foo
# CHECK: :[[@LINE-1]]:21: error: Operand prefix 'SM' must be used with System Global Address register

ld.a %a0, [%a3], sm:foo
# CHECK: :[[@LINE-1]]:21: error: Operand prefix 'SM' must be used with System Global Address register

ld.a %a0, [%a4], sm:foo
# CHECK: :[[@LINE-1]]:21: error: Operand prefix 'SM' must be used with System Global Address register

ld.a %a0, [%a5], sm:foo
# CHECK: :[[@LINE-1]]:21: error: Operand prefix 'SM' must be used with System Global Address register

ld.a %a0, [%a6], sm:foo
# CHECK: :[[@LINE-1]]:21: error: Operand prefix 'SM' must be used with System Global Address register

ld.a %a0, [%a7], sm:foo
# CHECK: :[[@LINE-1]]:21: error: Operand prefix 'SM' must be used with System Global Address register

ld.a %a0, [%a10], sm:foo
# CHECK: :[[@LINE-1]]:22: error: Operand prefix 'SM' must be used with System Global Address register

ld.a %a0, [%a11], sm:foo
# CHECK: :[[@LINE-1]]:22: error: Operand prefix 'SM' must be used with System Global Address register

ld.a %a0, [%a12], sm:foo
# CHECK: :[[@LINE-1]]:22: error: Operand prefix 'SM' must be used with System Global Address register

ld.a %a0, [%a13], sm:foo
# CHECK: :[[@LINE-1]]:22: error: Operand prefix 'SM' must be used with System Global Address register

ld.a %a0, [%a14], sm:foo
# CHECK: :[[@LINE-1]]:22: error: Operand prefix 'SM' must be used with System Global Address register

ld.a %a0, [%a15], sm:foo
# CHECK: :[[@LINE-1]]:22: error: Operand prefix 'SM' must be used with System Global Address register
