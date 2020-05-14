# RUN: llvm-mc -arch=tricore < %s -show-encoding -show-inst\
# RUN:     | FileCheck -check-prefixes=CHECK,FIXUP %s
# RUN: llvm-mc -filetype=obj -arch=tricore < %s \
# RUN:     | llvm-objdump -d - \
# RUN:     | FileCheck -check-prefixes=OBJDUMP,INSTR %s
# RUN: llvm-mc -filetype=obj -arch=tricore < %s \
# RUN:     | llvm-readobj -r | FileCheck -check-prefix=RELOC %s

# Check prefixes:
# RELOC - Check the relocation in the object.
# FIXUP - Check the fixup on the instruction.
# INSTR - Check the instruction is handled properly by the ASMPrinter


lha %a0, lha_reloc
# RELOC: 0x0 R_TRICORE_LHA lha_reloc 0x0

lha %a0, lha_valid
# CHECK: encoding: [0xc5,0bAAAA0000,A,0x04'A']
# OBJDUMP: c5 00 01 04
# INSTR: lha %a0, 16384
# FIXUP: fixup A - offset: 0, value: lha_valid, kind: fixup_lha

.set lha_valid, 16384

lha %a0, val_ffffc000
# CHECK: encoding: [0xc5,0bAAAA0000,A,0x04'A']
# OBJDUMP: c5 f0 ff f7
# INSTR: lha %a0, 4294950912
# FIXUP: fixup A - offset: 0, value: val_ffffc000, kind: fixup_lha

.set val_ffffc000, 0xFFFFC000
