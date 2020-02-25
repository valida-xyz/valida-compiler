; RUN: llc -mtriple=tricore -global-isel -stop-after=instruction-select \
; RUN:   -verify-machineinstrs %s -o - | FileCheck %s

declare void @llvm.va_start(i8*)

define dso_local void @vastart_test_1_arg(i32 %n, ...) {
entry:
    ; CHECK-LABEL: name: vastart_test_1_arg
    ; CHECK: fixedStack:
    ; CHECK:  - { id: [[VARARGS_SLOT:[0-9]+]], type: default, offset: 0
    ; CHECK: body:
    ; CHECK: [[FP:%[0-9]+]]:addrregs = LEA_aac %stack.[[VARARGS_SLOT]].vl, 0
    ; CHECK: [[OFFSET:%[0-9]+]]:addrregs = LEA_aac %fixed-stack.0, 0
    ; CHECK: STA_alca [[FP]], 0, [[OFFSET]]
    ; CHECK: RET implicit $a11
    %vl = alloca i8*, align 4
    %vl1 = bitcast i8** %vl to i8*
    call void @llvm.va_start(i8* %vl1)
    ret void
}

define dso_local void @vastart_test_6_arg(i32 %a, i32 %b, i32 %c,
                                          i32 %d, i32 %e, i32 %n, ...) {
entry:
    ; CHECK-LABEL: name: vastart_test_6_arg
    ; CHECK: fixedStack:
    ; CHECK:  - { id: [[VARARGS_SLOT:[0-9]+]], type: default, offset: 8
    ; CHECK:  - { id: [[SLOT2:[0-9]+]], type: default, offset: 4
    ; CHECK:  - { id: [[SLOT1:[0-9]+]], type: default, offset: 0
    ; CHECK: body:
    ; CHECK: [[FP:%[0-9]+]]:addrregs = LEA_aac %stack.[[VARARGS_SLOT]].vl, 0
    ; CHECK: [[OFFSET:%[0-9]+]]:addrregs = LEA_aac %fixed-stack.0, 0
    ; CHECK: STA_alca [[FP]], 0, [[OFFSET]]
    ; CHECK: RET implicit $a11
    %vl = alloca i8*, align 4
    %vl1 = bitcast i8** %vl to i8*
    call void @llvm.va_start(i8* %vl1)
    ret void
}
