# RUN: llvm-mc -arch=tricore < %s -show-encoding -show-inst\
# RUN:     | FileCheck -check-prefix=FIXUP %s
# RUN: llvm-mc -filetype=obj -arch=tricore < %s \
# RUN:     | llvm-objdump -d - \
# RUN:     | FileCheck -check-prefix=INSTR %s
# RUN: llvm-mc -filetype=obj -arch=tricore < %s \
# RUN:     | llvm-readobj -r | FileCheck -check-prefix=RELOC %s

# Check prefixes:
# RELOC - Check the relocation in the object.
# FIXUP - Check the fixup on the instruction.
# INSTR - Check the instruction is handled properly by the ASMPrinter


##### For sm, lo, hi case insensitivity also tested in the same time

##### tests for R_TRICORE_32ABS and fixups


.4byte foo
# RELOC: 0x0 R_TRICORE_32ABS foo 0x0

.4byte bar+4
# RELOC: 0x4 R_TRICORE_32ABS bar 0x4


##### tests for R_TRICORE_24REL and fixups


foo:

.code32
call myfunc-4
# INSTR: call 4
# FIXUP: fixup A - offset: 0, value: myfunc-4, kind: fixup_24rel

.code32
call myfunc+4
# INSTR: call 8
# FIXUP: fixup A - offset: 0, value: myfunc+4, kind: fixup_24rel

myfunc:

.code32
call bar-4
# RELOC: 0x10 R_TRICORE_24REL bar 0xFFFFFFFC
# INSTR: call 0
# FIXUP: fixup A - offset: 0, value: bar-4, kind: fixup_24rel

.code32
call bar
# RELOC: 0x14 R_TRICORE_24REL bar 0x0
# INSTR: call 0
# FIXUP: fixup A - offset: 0, value: bar, kind: fixup_24rel

.code32
call bar+4
# RELOC: 0x18 R_TRICORE_24REL bar 0x4
# INSTR: call 0
# FIXUP: fixup A - offset: 0, value: bar+4, kind: fixup_24rel

.code32
call myfunc
# INSTR: call -12
# FIXUP: fixup A - offset: 0, value: myfunc, kind: fixup_24rel

.code32
call myfunc+4
# INSTR: call -12
# FIXUP: fixup A - offset: 0, value: myfunc+4, kind: fixup_24rel


##### tests for R_TRICORE_24ABS


foo_abs:

.code32
calla myfunc_24abs-4
# RELOC: 0x24 R_TRICORE_24ABS myfunc_24abs 0xFFFFFFFC
# INSTR: calla 0
# FIXUP: fixup A - offset: 0, value: myfunc_24abs-4, kind: fixup_24abs

.code32
calla myfunc_24abs+4
# RELOC: 0x28 R_TRICORE_24ABS myfunc_24abs 0x4
# INSTR: calla 0
# FIXUP: fixup A - offset: 0, value: myfunc_24abs+4, kind: fixup_24abs

myfunc_24abs:

.code32
calla bar-4
# RELOC: 0x2C R_TRICORE_24ABS bar 0xFFFFFFFC
# INSTR: calla 0
# FIXUP: fixup A - offset: 0, value: bar-4, kind: fixup_24abs

.code32
calla bar
# RELOC: 0x30 R_TRICORE_24ABS bar 0x0
# INSTR: calla 0
# FIXUP: fixup A - offset: 0, value: bar, kind: fixup_24abs

.code32
calla bar+4
# RELOC: 0x34 R_TRICORE_24ABS bar 0x4
# INSTR: calla 0
# FIXUP: fixup A - offset: 0, value: bar+4, kind: fixup_24abs

1:

.code32
calla myfunc_24abs
# RELOC: 0x38 R_TRICORE_24ABS myfunc_24abs 0x0
# INSTR: calla 0
# FIXUP: fixup A - offset: 0, value: myfunc_24abs, kind: fixup_24abs

.code32
calla myfunc_24abs+4
# RELOC: 0x3C R_TRICORE_24ABS myfunc_24abs 0x4
# INSTR: calla 0
# FIXUP: fixup A - offset: 0, value: myfunc_24abs+4, kind: fixup_24abs

.code32
calla 1b
# RELOC: 0x40 R_TRICORE_24ABS .Ltmp0 0x0
# INSTR: calla 0
# FIXUP: fixup A - offset: 0, value: .Ltmp0, kind: fixup_24abs


##### tests for R_TRICORE_16SM and fixups


.code32
ld.w %d0, [%a0], sM:bar-4
# RELOC: 0x44 R_TRICORE_16SM bar 0xFFFFFFFC
# INSTR: ld.w %d0, [%a0], 0
# FIXUP: fixup A - offset: 0, value: sm:bar-4, kind: fixup_16sm

.code32
ld.w %d0, [%a0], Sm:bar
# RELOC: 0x48 R_TRICORE_16SM bar 0x0
# INSTR: ld.w %d0, [%a0], 0
# FIXUP: fixup A - offset: 0, value: sm:bar, kind: fixup_16sm

.code32
ld.w %d0, [%a0], sm:bar+4
# RELOC: 0x4C R_TRICORE_16SM bar 0x4
# INSTR: ld.w %d0, [%a0], 0
# FIXUP: fixup A - offset: 0, value: sm:bar+4, kind: fixup_16sm


##### tests for R_TRICORE_HI and fixups


.code32
movh.a %a0, HI:bar-2
# RELOC: 0x50 R_TRICORE_HI bar 0xFFFFFFFE
# INSTR: movh.a %a0, 0
# FIXUP: fixup A - offset: 0, value: hi:bar-2, kind: fixup_hi

.code32
movh.a %a0, hi:bar
# RELOC: 0x54 R_TRICORE_HI bar 0x0
# INSTR: movh.a %a0, 0
# FIXUP: fixup A - offset: 0, value: hi:bar, kind: fixup_hi

.code32
movh.a %a0, Hi:bar+2
# RELOC: 0x58 R_TRICORE_HI bar 0x2
# INSTR: movh.a %a0, 0
# FIXUP: fixup A - offset: 0, value: hi:bar+2, kind: fixup_hi

.code32
addih.a %a0, %a0, hI:foo
# RELOC: 0x5C R_TRICORE_HI foo 0x0
# INSTR: addih.a %a0, %a0, 0
# FIXUP: fixup A - offset: 0, value: hi:foo, kind: fixup_hi


##### tests for R_TRICORE_LO and fixups


.code32
addi %d0, %d0, Lo:bar-4
# RELOC: 0x60 R_TRICORE_LO bar 0xFFFFFFFC
# INSTR: addi %d0, %d0, 0
# FIXUP: fixup A - offset: 0, value: lo:bar-4, kind: fixup_lo

.code32
mov.u %d0, lO:bar
# RELOC: 0x64 R_TRICORE_LO bar 0x0
# INSTR: mov.u %d0, 0
# FIXUP: fixup A - offset: 0, value: lo:bar, kind: fixup_lo

.code32
mov %e0, lo:bar+4
# RELOC: 0x68 R_TRICORE_LO bar 0x4
# INSTR: mov %e0, 0
# FIXUP: fixup A - offset: 0, value: lo:bar+4, kind: fixup_lo


##### tests for R_TRICORE_LO2 and fixups


.code32
lea %a0, [%a0], Lo:bar-4
# RELOC: 0x6C R_TRICORE_LO2 bar 0xFFFFFFFC
# INSTR: lea %a0, [%a0], 0
# FIXUP: fixup A - offset: 0, value: lo:bar-4, kind: fixup_lo2

.code32
lea %a0, [%a0], lO:bar
# RELOC: 0x70 R_TRICORE_LO2 bar 0x0
# INSTR: lea %a0, [%a0], 0
# FIXUP: fixup A - offset: 0, value: lo:bar, kind: fixup_lo2

.code32
lea %a0, [%a0], lo:bar+4
# RELOC: 0x74 R_TRICORE_LO2 bar 0x4
# INSTR: lea %a0, [%a0], 0
# FIXUP: fixup A - offset: 0, value: lo:bar+4, kind: fixup_lo2


##### tests for R_TRICORE_18ABS and fixups


.code32
lea %a0, foo-4
# RELOC: 0x78 R_TRICORE_18ABS foo 0xFFFFFFFC
# INSTR: lea %a0, 0
# FIXUP: fixup A - offset: 0, value: foo-4, kind: fixup_18abs

.code32
st.b foo, %d0
# RELOC: 0x7C R_TRICORE_18ABS foo 0x0
# INSTR: st.b 0, %d0
# FIXUP: fixup A - offset: 0, value: foo, kind: fixup_18abs

.code32
st.w foo+4, %d0
# RELOC: 0x80 R_TRICORE_18ABS foo 0x4
# INSTR: st.w 0, %d0
# FIXUP: fixup A - offset: 0, value: foo+4, kind: fixup_18abs


##### tests for R_TRICORE_15REL and fixups


.code32
jeq %d0, 0, myfunc_15rel-4
# INSTR: jeq %d0, 0, 4
# FIXUP: fixup A - offset: 0, value: myfunc_15rel-4, kind: fixup_15rel

.code32
jeq %d0, 0, myfunc_15rel
# INSTR: jeq %d0, 0, 4
# FIXUP: fixup A - offset: 0, value: myfunc_15rel, kind: fixup_15rel

myfunc_15rel:

.code32
jeq %d0, 0, bar-4
# RELOC: 0x8C R_TRICORE_15REL bar 0xFFFFFFFC
# INSTR: jeq %d0, 0, 0
# FIXUP: fixup A - offset: 0, value: bar-4, kind: fixup_15rel

.code32
jeq %d0, 0, bar
# RELOC: 0x90 R_TRICORE_15REL bar 0x0
# INSTR: jeq %d0, 0, 0
# FIXUP: fixup A - offset: 0, value: bar, kind: fixup_15rel

.code32
jeq %d0, 0, bar+4
# RELOC: 0x94 R_TRICORE_15REL bar 0x4
# INSTR: jeq %d0, 0, 0
# FIXUP: fixup A - offset: 0, value: bar+4, kind: fixup_15rel

.code32
jeq %d0, 0, myfunc_15rel
# INSTR: jeq %d0, 0, -12
# FIXUP: fixup A - offset: 0, value: myfunc_15rel, kind: fixup_15rel

.code32
jeq %d0, 0, myfunc_15rel+4
# INSTR: jeq %d0, 0, -12
# FIXUP: fixup A - offset: 0, value: myfunc_15rel+4, kind: fixup_15rel


##### test if the operand modifiers name accepted as symbols too

.code32
call sm
# FIXUP: fixup A - offset: 0, value: sm, kind: fixup_24rel

.code32
call SM
# FIXUP: fixup A - offset: 0, value: SM, kind: fixup_24rel

.code32
call Sm
# FIXUP: fixup A - offset: 0, value: Sm, kind: fixup_24rel

.code32
call sM
# FIXUP: fixup A - offset: 0, value: sM, kind: fixup_24rel

.code32
call hi
# FIXUP: fixup A - offset: 0, value: hi, kind: fixup_24rel

.code32
call HI
# FIXUP: fixup A - offset: 0, value: HI, kind: fixup_24rel

.code32
call Hi
# FIXUP: fixup A - offset: 0, value: Hi, kind: fixup_24rel

.code32
call hI
# FIXUP: fixup A - offset: 0, value: hI, kind: fixup_24rel

.code32
call lo
# FIXUP: fixup A - offset: 0, value: lo, kind: fixup_24rel

.code32
call LO
# FIXUP: fixup A - offset: 0, value: LO, kind: fixup_24rel

.code32
call Lo
# FIXUP: fixup A - offset: 0, value: Lo, kind: fixup_24rel

.code32
call lO
# FIXUP: fixup A - offset: 0, value: lO, kind: fixup_24rel

### Testing with operand prefixes also

.code32
ld.w %d0, [%a0], sm:sm
# FIXUP: fixup A - offset: 0, value: sm:sm, kind: fixup_16sm

.code32
ld.w %d0, [%a0], sm:hi
# FIXUP: fixup A - offset: 0, value: sm:hi, kind: fixup_16sm

.code32
ld.w %d0, [%a0], sm:lo
# FIXUP: fixup A - offset: 0, value: sm:lo, kind: fixup_16sm

.code32
addih.a %a0, %a0, hi:sm
# FIXUP: fixup A - offset: 0, value: hi:sm, kind: fixup_hi

.code32
addih.a %a0, %a0, hi:hi
# FIXUP: fixup A - offset: 0, value: hi:hi, kind: fixup_hi

.code32
addih.a %a0, %a0, hi:lo
# FIXUP: fixup A - offset: 0, value: hi:lo, kind: fixup_hi

.code32
lea %a0, [%a0], lo:sm
# FIXUP: fixup A - offset: 0, value: lo:sm, kind: fixup_lo2

.code32
lea %a0, [%a0], lo:hi
# FIXUP: fixup A - offset: 0, value: lo:hi, kind: fixup_lo2

.code32
lea %a0, [%a0], lo:lo
# FIXUP: fixup A - offset: 0, value: lo:lo, kind: fixup_lo2


### Testing symbol - symbol variants

.code32
movh.a %a0, hi:sym2-sym1
# FIXUP: fixup A - offset: 0, value: hi:sym2-sym1, kind: fixup_hi
# INSTR: movh.a %a0, 16

.code32
movh.a %a0, lo:sym2-sym1
# FIXUP: fixup A - offset: 0, value: lo:sym2-sym1, kind: fixup_lo
# INSTR: movh.a %a0, 65535

.code32
lea %a0, [%a0], lo:sym2-sym1
# FIXUP: fixup A - offset: 0, value: lo:sym2-sym1, kind: fixup_lo2
# INSTR: lea %a0, [%a0], -1

.code32
movh.a %a0, hi:sym1-sym2
# FIXUP: fixup A - offset: 0, value: hi:sym1-sym2, kind: fixup_hi
# INSTR: movh.a %a0, 65520

.code32
movh.a %a0, lo:sym1-sym2
# FIXUP: fixup A - offset: 0, value: lo:sym1-sym2, kind: fixup_lo
# INSTR: movh.a %a0, 1

.code32
lea %a0, [%a0], lo:sym1-sym2
# FIXUP: fixup A - offset: 0, value: lo:sym1-sym2, kind: fixup_lo2
# INSTR: lea %a0, [%a0], 1

sym1:
    .fill 1 << 20 - 1
sym2:

