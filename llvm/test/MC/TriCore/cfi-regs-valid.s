# RUN: llvm-mc -triple tricore < %s 2>&1 | FileCheck %s
 
 .cfi_startproc
# CHECK: .cfi_offset %d0, 0
.cfi_offset %d0, 0
# CHECK: .cfi_offset %d1, 4
.cfi_offset %d1, 4
# CHECK: .cfi_offset %d2, 8
.cfi_offset %d2, 8
# CHECK: .cfi_offset %d3, 12
.cfi_offset %d3, 12
# CHECK: .cfi_offset %d4, 16
.cfi_offset %d4, 16
# CHECK: .cfi_offset %d5, 20
.cfi_offset %d5, 20
# CHECK: .cfi_offset %d6, 24
.cfi_offset %d6, 24
# CHECK: .cfi_offset %d7, 28
.cfi_offset %d7, 28
# CHECK: .cfi_offset %d8, 32
.cfi_offset %d8, 32
# CHECK: .cfi_offset %d9, 36
.cfi_offset %d9, 36
# CHECK: .cfi_offset %d10, 40
.cfi_offset %d10, 40
# CHECK: .cfi_offset %d11, 44
.cfi_offset %d11, 44
# CHECK: .cfi_offset %d12, 48
.cfi_offset %d12, 48
# CHECK: .cfi_offset %d13, 52
.cfi_offset %d13, 52
# CHECK: .cfi_offset %d14, 56
.cfi_offset %d14, 56
# CHECK: .cfi_offset %d15, 60
.cfi_offset %d15, 60
# CHECK: .cfi_offset %a0, 64
.cfi_offset %a0, 64
# CHECK: .cfi_offset %a1, 68
.cfi_offset %a1, 68
# CHECK: .cfi_offset %a2, 72
.cfi_offset %a2, 72
# CHECK: .cfi_offset %a3, 76
.cfi_offset %a3, 76
# CHECK: .cfi_offset %a4, 80
.cfi_offset %a4, 80
# CHECK: .cfi_offset %a5, 84
.cfi_offset %a5, 84
# CHECK: .cfi_offset %a6, 88
.cfi_offset %a6, 88
# CHECK: .cfi_offset %a7, 92
.cfi_offset %a7, 92
# CHECK: .cfi_offset %a8, 96
.cfi_offset %a8, 96
# CHECK: .cfi_offset %a9, 100
.cfi_offset %a9, 100
# CHECK: .cfi_offset %a10, 104
.cfi_offset %a10, 104
# CHECK: .cfi_offset %a11, 108
.cfi_offset %a11, 108
# CHECK: .cfi_offset %a12, 112
.cfi_offset %a12, 112
# CHECK: .cfi_offset %a13, 116
.cfi_offset %a13, 116
# CHECK: .cfi_offset %a14, 120
.cfi_offset %a14, 120
# CHECK: .cfi_offset %a15, 124
.cfi_offset %a15, 124
# CHECK: .cfi_offset %e0, 128
.cfi_offset %e0, 128
# CHECK: .cfi_offset %e2, 132
.cfi_offset %e2, 132
# CHECK: .cfi_offset %e4, 136
.cfi_offset %e4, 136
# CHECK: .cfi_offset %e6, 140
.cfi_offset %e6, 140
# CHECK: .cfi_offset %e8, 144
.cfi_offset %e8, 144
# CHECK: .cfi_offset %e10, 148
.cfi_offset %e10, 148
# CHECK: .cfi_offset %e12, 152
.cfi_offset %e12, 152
# CHECK: .cfi_offset %e14, 156
.cfi_offset %e14, 156
# CHECK: .cfi_offset %PSW, 160
.cfi_offset %PSW, 160
# CHECK: .cfi_offset %PCXI, 164
.cfi_offset %PCXI, 164
# CHECK: .cfi_offset %PC, 168
.cfi_offset %PC, 168
# CHECK: .cfi_offset %FCX, 172
.cfi_offset %FCX, 172
# CHECK: .cfi_offset %LCX, 176
.cfi_offset %LCX, 176
# CHECK: .cfi_offset %ISP, 180
.cfi_offset %ISP, 180
# CHECK: .cfi_offset %ICR, 184
.cfi_offset %ICR, 184
# CHECK: .cfi_offset %PIPN, 188
.cfi_offset %PIPN, 188
# CHECK: .cfi_offset %BIV, 192
.cfi_offset %BIV, 192
# CHECK: .cfi_offset %BTV, 196
.cfi_offset %BTV, 196
.cfi_endproc
