# RUN: not llvm-mc -arch=tricore -filetype=obj < %s -o /dev/null 2>&1 \
# RUN: | FileCheck -check-prefix=CHECK %s

.set sixteen, 0x10

### Testing an operands type which handled by isImmN to check if operand
### modifier get rejected even if the symbol is actually a constant

add %d0, %d1, sm:sixteen
# CHECK: :[[@LINE-1]]:15: error: Operand prefixes and symbol expressions are not allowed for this operand and it must be in the integer range [-256, 255]

add %d0, %d1, hi:sixteen
# CHECK: :[[@LINE-1]]:15: error: Operand prefixes and symbol expressions are not allowed for this operand and it must be in the integer range [-256, 255]

add %d0, %d1, lo:sixteen
# CHECK: :[[@LINE-1]]:15: error: Operand prefixes and symbol expressions are not allowed for this operand and it must be in the integer range [-256, 255]
