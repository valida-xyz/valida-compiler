# RUN: not llvm-mc -arch=tricore -filetype=obj < %s -o /dev/null 2>&1 \
# RUN: | FileCheck -check-prefix=CHECK %s


.code32
call unaligned
# CHECK: :[[@LINE-1]]:1: error: fixup must be 2-byte aligned

.code32
call too_far_24rel
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range

.code32
jeq %d0, 0, unaligned
# CHECK: :[[@LINE-1]]:1: error: fixup must be 2-byte aligned

.code32
jeq %d0, 0, too_far_15rel
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range

.byte 0
unaligned:

.fill 1 << 15
too_far_15rel:

.fill 1 << 24
too_far_24rel:
