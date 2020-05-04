# RUN: not llvm-mc -triple=tricore < %s 2>&1
# XFAIL: *

### Reminder: this instruction must not accept symbolic operands, but the assembler shall emit an error.
### Currently it will emit a fixup which is not handled either, and runs into an unreached assertion.

.code16
ld.h %d15, [%a0] foo
nop
foo: