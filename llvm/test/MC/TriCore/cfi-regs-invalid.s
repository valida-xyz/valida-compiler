# RUN: not llvm-mc -triple tricore < %s 2>&1 | FileCheck %s

.cfi_startproc
.cfi_offset d01, 0 # CHECK: :[[@LINE]]:13: error: invalid register name
.cfi_offset %1, 8 # CHECK: :[[@LINE]]:13: error: invalid register name
.cfi_offset %a17, 8 # CHECK: :[[@LINE]]:13: error: invalid register name
.cfi_endproc
