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


.code32
ld.a %a0, [%a0], ld_st_negative_out
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range

.code32
ld.a %a0, [%a0], ld_st_positive_out
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range

.code32
ld.b %d0, [%a0], ld_st_negative_out
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range

.code32
ld.b %d0, [%a0], ld_st_positive_out
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range

.code32
ld.b %d0, [%a0], ld_st_negative_out
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range

.code32
ld.b %d0, [%a0], ld_st_positive_out
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range

.code32
ld.bu %d0, [%a0], ld_st_negative_out
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range

.code32
ld.bu %d0, [%a0], ld_st_positive_out
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range

.code32
ld.hu %d0, [%a0], ld_st_negative_out
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range

.code32
ld.hu %d0, [%a0], ld_st_positive_out
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range

.code32
ld.h %d0, [%a0], ld_st_negative_out
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range

.code32
ld.h %d0, [%a0], ld_st_positive_out
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range

.code32
ld.w %d0, [%a0], ld_st_negative_out
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range

.code32
ld.w %d0, [%a0], ld_st_positive_out
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range

.code32
lea %a0, [%a0], ld_st_negative_out
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range

.code32
lea %a0, [%a0], ld_st_positive_out
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range

.code32
st.a [%a0], ld_st_negative_out, %a0
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range

.code32
st.a [%a0], ld_st_positive_out, %a0
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range

.code32
st.h [%a0], ld_st_negative_out, %d0
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range

.code32
st.h [%a0], ld_st_positive_out, %d0
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range

.code32
st.h [%a0], ld_st_negative_out, %d0
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range

.code32
st.h [%a0], ld_st_positive_out, %d0
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range

.code32
st.b [%a0], ld_st_negative_out, %d0
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range

.code32
st.b [%a0], ld_st_positive_out, %d0
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range

.code32
st.w [%a0], ld_st_negative_out, %d0
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range

.code32
st.w [%a0], ld_st_positive_out, %d0
# CHECK: :[[@LINE-1]]:1: error: fixup value out of range


.set ld_st_negative_out, -32769
.set ld_st_positive_out, 32768
 