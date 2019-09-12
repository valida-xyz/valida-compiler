# RUN: not llvm-mc -triple tricore < %s 2>&1 | FileCheck %s
# XFAIL: *

.cfi_startproc
.cfi_offset d01, 0 # CHECK: :[[@LINE]]:16: error: invalid register name
.cfi_offset a17, 8 # CHECK: :[[@LINE]]:15: error: invalid register name
.cfi_endproc
