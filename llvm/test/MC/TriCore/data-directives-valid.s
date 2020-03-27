# RUN: llvm-mc -filetype=obj -triple tricore < %s \
# RUN:     | llvm-objdump -s - | FileCheck %s

# Test data directives with non-literal arguments

# CHECK: Contents of section .strtab:
# CHECK-NEXT: ..rela.text..str
# CHECK-NEXT: tab..symtab..dat
# CHECK-NEXT: a.L.BE.LA.
    .word LA
    .long BE
    .4byte L

# Test data directives with literal arguments

.data
# CHECK: Contents of section .data:
# CHECK-NEXT: aabbbbcc ccccccbb bbcccccc ccbbbbaa
    .byte 0xaa
    .hword 0xbbbb
    .word 0xcccccccc
    .2byte 0xbbbb
    .4byte 0xcccccccc
    .short 0xbbbb
    .byte 0xaa

# CHECK-NEXT: aacccccc ccdddddd dddddddd ddbbbbaa
    .byte 0xaa
    .long 0xcccccccc
    .8byte 0xdddddddddddddddd
    .short 0xbbbb
    .byte 0xaa

# CHECK-NEXT: bs.h.2.w...l...4
    .byte 'b'
    .short 's'
    .hword 'h'
    .2byte '2'
    .word 'w'
    .long 'l'
    .4byte '4'

# CHECK-NEXT: ...8.......
    .8byte '8'

# Test data directives with no operands

# CHECK: Contents of section .symtab:
# CHECK-NEXT: 00000000 00000000 00000000 00000000
    .byte
    .short
    .hword
    .2byte
    .word
    .long
    .4byte
    .8byte

