; RUN: llc -mtriple=tricore -global-isel -stop-after=irtranslator -verify-machineinstrs %s -o - 2>&1 | FileCheck %s

declare void @trivial_callee()
define void @test_trivial_call() {
  ; CHECK-LABEL: name: test_trivial_call
  ; CHECK: bb.1.entry:
  ; CHECK: ADJCALLSTACKDOWN 0, 0, implicit-def $a10, implicit $a10
  ; CHECK: CALL @trivial_callee, csr_tricore_uppercontext, implicit-def $a11, implicit $psw
  ; CHECK: ADJCALLSTACKUP 0, 0, implicit-def $a10, implicit $a10
entry:
  call void @trivial_callee()
  ret void
}

declare void @simple_arg_callee(i32 %in)
define void @test_simple_arg(i32 %in) {
  ; CHECK-LABEL: name: test_simple_arg
  ; CHECK: [[IN:%[0-9]+]]:_(s32) = COPY $d4
  ; CHECK: ADJCALLSTACKDOWN 0, 0, implicit-def $a10, implicit $a10
  ; CHECK: $d4 = COPY [[IN]]
  ; CHECK: CALL @simple_arg_callee, csr_tricore_uppercontext, implicit-def $a11, implicit $psw, implicit $d4
  ; CHECK: ADJCALLSTACKUP 0, 0, implicit-def $a10, implicit $a10
  ; CHECK-NEXT: RET
entry:
  call void @simple_arg_callee(i32 %in)
  ret void
}

declare void @simple_float_arg_callee(float %in)
define void @test_simple_float_arg(float %in) {
  ; CHECK-LABEL: name: test_simple_float_arg
  ; CHECK: [[IN:%[0-9]+]]:_(s32) = COPY $d4
  ; CHECK: ADJCALLSTACKDOWN 0, 0, implicit-def $a10, implicit $a10
  ; CHECK: $d4 = COPY [[IN]]
  ; CHECK: CALL @simple_float_arg_callee, csr_tricore_uppercontext, implicit-def $a11, implicit $psw, implicit $d4
  ; CHECK: ADJCALLSTACKUP 0, 0, implicit-def $a10, implicit $a10
  ; CHECK-NEXT: RET
entry:
  call void @simple_float_arg_callee(float %in)
  ret void
}

define void @test_indirect_call(void()* %func) {
  ; CHECK-LABEL: name: test_indirect_call
  ; CHECK: registers:
  ; Make sure the register feeding the indirect call is properly constrained.
  ; CHECK: - { id: [[FUNC:[0-9]+]], class: addrregs, preferred-register: '' }
  ; CHECK: %[[FUNC]]:addrregs(p0) = COPY $a4
  ; CHECK: ADJCALLSTACKDOWN 0, 0, implicit-def $a10, implicit $a10
  ; CHECK: CALLI %[[FUNC]](p0), csr_tricore_uppercontext, implicit-def $a11, implicit $psw
  ; CHECK: ADJCALLSTACKUP 0, 0, implicit-def $a10, implicit $a10
  ; CHECK-NEXT: RET
entry:
  call void %func()
  ret void
}

declare void @multiple_args_callee(i32, i64)
define void @test_multiple_args(i64 %in) {
  ; CHECK-LABEL: name: test_multiple_args
  ; CHECK: [[IN:%[0-9]+]]:_(s64) = COPY $e4
  ; CHECK: [[ANSWER:%[0-9]+]]:_(s32) = G_CONSTANT i32 42
  ; CHECK: ADJCALLSTACKDOWN 0, 0, implicit-def $a10, implicit $a10
  ; CHECK: $d4 = COPY [[ANSWER]]
  ; CHECK: $e6 = COPY [[IN]]
  ; CHECK: CALL @multiple_args_callee, csr_tricore_uppercontext, implicit-def $a11, implicit $psw, implicit $d4, implicit $e6
  ; CHECK: ADJCALLSTACKUP 0, 0, implicit-def $a10, implicit $a10
  ; CHECK: RET
entry:
  call void @multiple_args_callee(i32 42, i64 %in)
  ret void
}

declare void @multiple_float_args_callee(float, double)
define void @test_multiple_float_args(double %in) {
  ; CHECK-LABEL: name: test_multiple_float_args
  ; CHECK: [[IN:%[0-9]+]]:_(s64) = COPY $e4
  ; CHECK: [[ANSWER:%[0-9]+]]:_(s32) = G_FCONSTANT float 4.200000e+01
  ; CHECK: ADJCALLSTACKDOWN 0, 0, implicit-def $a10, implicit $a10
  ; CHECK: $d4 = COPY [[ANSWER]]
  ; CHECK: $e6 = COPY [[IN]]
  ; CHECK: CALL @multiple_float_args_callee, csr_tricore_uppercontext, implicit-def $a11, implicit $psw, implicit $d4, implicit $e6
  ; CHECK: ADJCALLSTACKUP 0, 0, implicit-def $a10, implicit $a10
  ; CHECK: RET
entry:
  call void @multiple_float_args_callee(float 42.0, double %in)
  ret void
}

declare void @take_char(i8)
define void @test_abi_extension(i8* %addr) {
  ; CHECK-LABEL: name: test_abi_extension
  ; CHECK: [[VAL:%[0-9]+]]:_(s8) = G_LOAD
  ; CHECK: ADJCALLSTACKDOWN 0, 0, implicit-def $a10, implicit $a10
  ; CHECK: [[VAL_TMP:%[0-9]+]]:_(s32) = G_ANYEXT [[VAL]]
  ; CHECK: $d4 = COPY [[VAL_TMP]]
  ; CHECK: CALL @take_char, csr_tricore_uppercontext, implicit-def $a11, implicit $psw, implicit $d4
  ; CHECK: ADJCALLSTACKUP 0, 0, implicit-def $a10, implicit $a10
  ; CHECK: ADJCALLSTACKDOWN 0, 0, implicit-def $a10, implicit $a10
  ; CHECK: [[SVAL:%[0-9]+]]:_(s32) = G_SEXT [[VAL]](s8)
  ; CHECK: $d4 = COPY [[SVAL]](s32)
  ; CHECK: CALL @take_char, csr_tricore_uppercontext, implicit-def $a11, implicit $psw, implicit $d4
  ; CHECK: ADJCALLSTACKUP 0, 0, implicit-def $a10, implicit $a10
  ; CHECK: ADJCALLSTACKDOWN 0, 0, implicit-def $a10, implicit $a10
  ; CHECK: [[ZVAL:%[0-9]+]]:_(s32) = G_ZEXT [[VAL]](s8)
  ; CHECK: $d4 = COPY [[ZVAL]](s32)
  ; CHECK: CALL @take_char, csr_tricore_uppercontext, implicit-def $a11, implicit $psw, implicit $d4
  ; CHECK: ADJCALLSTACKUP 0, 0, implicit-def $a10, implicit $a10
entry:
  %val = load i8, i8* %addr
  call void @take_char(i8 %val)
  call void @take_char(i8 signext %val)
  call void @take_char(i8 zeroext %val)
  ret void
}

declare void @take_short(i16)
define void @test_abi_extension2(i16* %addr) {
  ; CHECK-LABEL: name: test_abi_extension2
  ; CHECK: [[VAL:%[0-9]+]]:_(s16) = G_LOAD
  ; CHECK: ADJCALLSTACKDOWN 0, 0, implicit-def $a10, implicit $a10
  ; CHECK: [[VAL_TMP:%[0-9]+]]:_(s32) = G_ANYEXT [[VAL]]
  ; CHECK: $d4 = COPY [[VAL_TMP]]
  ; CHECK: CALL @take_short, csr_tricore_uppercontext, implicit-def $a11, implicit $psw, implicit $d4
  ; CHECK: ADJCALLSTACKUP 0, 0, implicit-def $a10, implicit $a10
  ; CHECK: ADJCALLSTACKDOWN 0, 0, implicit-def $a10, implicit $a10
  ; CHECK: [[SVAL:%[0-9]+]]:_(s32) = G_SEXT [[VAL]](s16)
  ; CHECK: $d4 = COPY [[SVAL]](s32)
  ; CHECK: CALL @take_short, csr_tricore_uppercontext, implicit-def $a11, implicit $psw, implicit $d4
  ; CHECK: ADJCALLSTACKUP 0, 0, implicit-def $a10, implicit $a10
  ; CHECK: ADJCALLSTACKDOWN 0, 0, implicit-def $a10, implicit $a10
  ; CHECK: [[ZVAL:%[0-9]+]]:_(s32) = G_ZEXT [[VAL]](s16)
  ; CHECK: $d4 = COPY [[ZVAL]](s32)
  ; CHECK: CALL @take_short, csr_tricore_uppercontext, implicit-def $a11, implicit $psw, implicit $d4
  ; CHECK: ADJCALLSTACKUP 0, 0, implicit-def $a10, implicit $a10
entry:
  %val = load i16, i16* %addr
  call void @take_short(i16 %val)
  call void @take_short(i16 signext %val)
  call void @take_short(i16 zeroext %val)
  ret void
}

declare void @test_stack_slots(i64 %e4, i64 %e6, i32 %stack1, i64 %stack2, i32* %a4, i32* %a5, i32* %a6, i32* %a7, i32* %ptr)
define void @test_call_stack(i64 %e4, i64 %e6) {
  ; CHECK-LABEL: name: test_call_stack
  ; CHECK: [[C42:%[0-9]+]]:_(s32) = G_CONSTANT i32 42
  ; CHECK: [[C12:%[0-9]+]]:_(s64) = G_CONSTANT i64 12
  ; CHECK: [[ZERO:%[0-9]+]]:_(s32) = G_CONSTANT i32 0
  ; CHECK: [[PTR:%[0-9]+]]:_(p0) = G_INTTOPTR [[ZERO]]
  ; CHECK: ADJCALLSTACKDOWN 16, 0, implicit-def $a10, implicit $a10
  ; CHECK: [[SP:%[0-9]+]]:_(p0) = COPY $a10
  ; CHECK: [[C42_OFFS:%[0-9]+]]:_(s32) = G_CONSTANT i32 0
  ; CHECK: [[C42_LOC:%[0-9]+]]:_(p0) = G_PTR_ADD [[SP]], [[C42_OFFS]](s32)
  ; CHECK: G_STORE [[C42]](s32), [[C42_LOC]](p0) :: (store 4 into stack, align 1)
  ; CHECK: [[SP:%[0-9]+]]:_(p0) = COPY $a10
  ; CHECK: [[C12_OFFS:%[0-9]+]]:_(s32) = G_CONSTANT i32 4
  ; CHECK: [[C12_LOC:%[0-9]+]]:_(p0) = G_PTR_ADD [[SP]], [[C12_OFFS]](s32)
  ; CHECK: G_STORE [[C12]](s64), [[C12_LOC]](p0) :: (store 8 into stack + 4, align 1)
  ; CHECK: [[SP:%[0-9]+]]:_(p0) = COPY $a10
  ; CHECK: [[PTR_OFFS:%[0-9]+]]:_(s32) = G_CONSTANT i32 12
  ; CHECK: [[PTR_LOC:%[0-9]+]]:_(p0) = G_PTR_ADD [[SP]], [[PTR_OFFS]](s32)
  ; CHECK: G_STORE [[PTR]](p0), [[PTR_LOC]](p0) :: (store 4 into stack + 12, align 1)
  ; CHECK: CALL @test_stack_slots, csr_tricore_uppercontext, implicit-def $a11, implicit $psw, implicit $e4, implicit $e6
  ; CHECK: ADJCALLSTACKUP 16, 0, implicit-def $a10, implicit $a10

entry:
  call void @test_stack_slots(i64 %e4, i64 %e6, i32 42, i64 12, i32* null, i32* null, i32* null, i32* null, i32* null)
  ret void
}

declare void @take_struct_stack([2 x i32], [2 x i32], [2 x i32]);
define void @test_call_stack2([2 x i32] %str) {
entry:
  ; CHECK-LABEL: name: test_call_stack2
  ; CHECK: [[STRUCT1:%[0-9]+]]:_(s32) = COPY $d4
  ; CHECK: [[STRUCT2:%[0-9]+]]:_(s32) = COPY $d5
  ; CHECK: ADJCALLSTACKDOWN 8, 0, implicit-def $a10, implicit $a10
  ; CHECK: $d4 = COPY [[STRUCT1]]
  ; CHECK: $d5 = COPY [[STRUCT2]]
  ; CHECK: $d6 = COPY [[STRUCT1]]
  ; CHECK: $d7 = COPY [[STRUCT2]]
  ; CHECK: [[SP:%[0-9]+]]:_(p0) = COPY $a10
  ; CHECK: [[STR_OFFS:%[0-9]+]]:_(s32) = G_CONSTANT i32 0
  ; CHECK: [[STR_LOC:%[0-9]+]]:_(p0) = G_PTR_ADD [[SP]], [[STR_OFFS]](s32)
  ; CHECK: G_STORE [[STRUCT1]](s32), [[STR_LOC]](p0) :: (store 4 into stack, align 1)
  ; CHECK: [[SP:%[0-9]+]]:_(p0) = COPY $a10
  ; CHECK: [[STR2_OFFS:%[0-9]+]]:_(s32) = G_CONSTANT i32 4
  ; CHECK: [[STR2_LOC:%[0-9]+]]:_(p0) = G_PTR_ADD [[SP]], [[STR2_OFFS]](s32)
  ; CHECK: G_STORE [[STRUCT2]](s32), [[STR2_LOC]](p0) :: (store 4 into stack + 4, align 1)
  ; CHECK: CALL @take_struct_stack, csr_tricore_uppercontext, implicit-def $a11, implicit $psw, implicit $d4, implicit $d5, implicit $d6, implicit $d7
  ; CHECK: ADJCALLSTACKUP 8, 0, implicit-def $a10, implicit $a10
  call void @take_struct_stack([2 x i32] %str, [2 x i32] %str, [2 x i32] %str)
  ret void
}

; Check that i8 and i16 are not extended when passed on the stack
declare void @test_stack_slots_ext(i64 %e4, i64 %e6, i8, i16)
define void @test_call_stack3(i64 %e4, i64 %e6) {
  ; CHECK-LABEL: name: test_call_stack
  ; CHECK: [[ONE:%[0-9]+]]:_(s8) = G_CONSTANT i8 1
  ; CHECK: [[TWO:%[0-9]+]]:_(s16) = G_CONSTANT i16 2
  ; CHECK: ADJCALLSTACKDOWN 8, 0, implicit-def $a10, implicit $a10
  ; CHECK: [[SP:%[0-9]+]]:_(p0) = COPY $a10
  ; CHECK: [[ONE_OFFS:%[0-9]+]]:_(s32) = G_CONSTANT i32 0
  ; CHECK: [[ONE_LOC:%[0-9]+]]:_(p0) = G_PTR_ADD [[SP]], [[ONE_OFFS]](s32)
  ; CHECK: G_STORE [[ONE]](s8), [[ONE_LOC]](p0) :: (store 1 into stack)
  ; CHECK: [[SP:%[0-9]+]]:_(p0) = COPY $a10
  ; CHECK: [[TWO_OFFS:%[0-9]+]]:_(s32) = G_CONSTANT i32 4
  ; CHECK: [[TWO_LOC:%[0-9]+]]:_(p0) = G_PTR_ADD [[SP]], [[TWO_OFFS]](s32)
  ; CHECK: G_STORE [[TWO]](s16), [[TWO_LOC]](p0) :: (store 2 into stack + 4, align 1)
  ; CHECK: CALL @test_stack_slots_ext, csr_tricore_uppercontext, implicit-def $a11, implicit $psw, implicit $e4, implicit $e6
  ; CHECK: ADJCALLSTACKUP 8, 0, implicit-def $a10, implicit $a10
  ; CHECK: ADJCALLSTACKDOWN 8, 0, implicit-def $a10, implicit $a10
  ; CHECK: [[SP:%[0-9]+]]:_(p0) = COPY $a10
  ; CHECK: [[ONE_OFFS:%[0-9]+]]:_(s32) = G_CONSTANT i32 0
  ; CHECK: [[ONE_LOC:%[0-9]+]]:_(p0) = G_PTR_ADD [[SP]], [[ONE_OFFS]](s32)
  ; CHECK: G_STORE [[ONE]](s8), [[ONE_LOC]](p0) :: (store 1 into stack)
  ; CHECK: [[SP:%[0-9]+]]:_(p0) = COPY $a10
  ; CHECK: [[TWO_OFFS:%[0-9]+]]:_(s32) = G_CONSTANT i32 4
  ; CHECK: [[TWO_LOC:%[0-9]+]]:_(p0) = G_PTR_ADD [[SP]], [[TWO_OFFS]](s32)
  ; CHECK: G_STORE [[TWO]](s16), [[TWO_LOC]](p0) :: (store 2 into stack + 4, align 1)
  ; CHECK: CALL @test_stack_slots_ext, csr_tricore_uppercontext, implicit-def $a11, implicit $psw, implicit $e4, implicit $e6
  ; CHECK: ADJCALLSTACKUP 8, 0, implicit-def $a10, implicit $a10
  ; CHECK: ADJCALLSTACKDOWN 8, 0, implicit-def $a10, implicit $a10
  ; CHECK: [[SP:%[0-9]+]]:_(p0) = COPY $a10
  ; CHECK: [[ONE_OFFS:%[0-9]+]]:_(s32) = G_CONSTANT i32 0
  ; CHECK: [[ONE_LOC:%[0-9]+]]:_(p0) = G_PTR_ADD [[SP]], [[ONE_OFFS]](s32)
  ; CHECK: G_STORE [[ONE]](s8), [[ONE_LOC]](p0) :: (store 1 into stack)
  ; CHECK: [[SP:%[0-9]+]]:_(p0) = COPY $a10
  ; CHECK: [[TWO_OFFS:%[0-9]+]]:_(s32) = G_CONSTANT i32 4
  ; CHECK: [[TWO_LOC:%[0-9]+]]:_(p0) = G_PTR_ADD [[SP]], [[TWO_OFFS]](s32)
  ; CHECK: G_STORE [[TWO]](s16), [[TWO_LOC]](p0) :: (store 2 into stack + 4, align 1)
  ; CHECK: CALL @test_stack_slots_ext, csr_tricore_uppercontext, implicit-def $a11, implicit $psw, implicit $e4, implicit $e6
  ; CHECK: ADJCALLSTACKUP 8, 0, implicit-def $a10, implicit $a10
entry:
  call void @test_stack_slots_ext(i64 %e4, i64 %e6, i8 1, i16 2)
  call void @test_stack_slots_ext(i64 %e4, i64 %e6, i8 zeroext 1, i16 zeroext 2)
  call void @test_stack_slots_ext(i64 %e4, i64 %e6, i8 signext 1, i16 signext 2)
  
  ret void
}

declare void @test_stack_slots_mixed(i64 %e4, i64 %e6, i32 %stack1, float %stack2,i64 %stack3, double %stack4, i32* %a4, i32* %a5, i32* %a6, i32* %a7, i32* %ptr)
define void @test_call_stack_mixed(i64 %e4, i64 %e6) {
  ; CHECK-LABEL: name: test_call_stack_mixed
  ; CHECK: [[C42:%[0-9]+]]:_(s32) = G_CONSTANT i32 42
  ; CHECK: [[C2:%[0-9]+]]:_(s32) = G_FCONSTANT float 2.0
  ; CHECK: [[C12:%[0-9]+]]:_(s64) = G_CONSTANT i64 12
  ; CHECK: [[C3:%[0-9]+]]:_(s64) = G_FCONSTANT double 3.0
  ; CHECK: [[ZERO:%[0-9]+]]:_(s32) = G_CONSTANT i32 0
  ; CHECK: [[PTR:%[0-9]+]]:_(p0) = G_INTTOPTR [[ZERO]]
  ; CHECK: ADJCALLSTACKDOWN 28, 0, implicit-def $a10, implicit $a10
  ; CHECK: [[SP:%[0-9]+]]:_(p0) = COPY $a10
  ; CHECK: [[C42_OFFS:%[0-9]+]]:_(s32) = G_CONSTANT i32 0
  ; CHECK: [[C42_LOC:%[0-9]+]]:_(p0) = G_PTR_ADD [[SP]], [[C42_OFFS]](s32)
  ; CHECK: G_STORE [[C42]](s32), [[C42_LOC]](p0) :: (store 4 into stack, align 1)
  ; CHECK: [[SP:%[0-9]+]]:_(p0) = COPY $a10
  ; CHECK: [[C2_OFFS:%[0-9]+]]:_(s32) = G_CONSTANT i32 4
  ; CHECK: [[C2_LOC:%[0-9]+]]:_(p0) = G_PTR_ADD [[SP]], [[C2_OFFS]](s32)
  ; CHECK: G_STORE [[C2]](s32), [[C2_LOC]](p0) :: (store 4 into stack + 4, align 1)
  ; CHECK: [[SP:%[0-9]+]]:_(p0) = COPY $a10
  ; CHECK: [[C12_OFFS:%[0-9]+]]:_(s32) = G_CONSTANT i32 8
  ; CHECK: [[C12_LOC:%[0-9]+]]:_(p0) = G_PTR_ADD [[SP]], [[C12_OFFS]](s32)
  ; CHECK: G_STORE [[C12]](s64), [[C12_LOC]](p0) :: (store 8 into stack + 8, align 1)
  ; CHECK: [[SP:%[0-9]+]]:_(p0) = COPY $a10
  ; CHECK: [[C3_OFFS:%[0-9]+]]:_(s32) = G_CONSTANT i32 16
  ; CHECK: [[C3_LOC:%[0-9]+]]:_(p0) = G_PTR_ADD [[SP]], [[C3_OFFS]](s32)
  ; CHECK: G_STORE [[C3]](s64), [[C3_LOC]](p0) :: (store 8 into stack + 16, align 1)
  ; CHECK: [[SP:%[0-9]+]]:_(p0) = COPY $a10
  ; CHECK: [[PTR_OFFS:%[0-9]+]]:_(s32) = G_CONSTANT i32 24
  ; CHECK: [[PTR_LOC:%[0-9]+]]:_(p0) = G_PTR_ADD [[SP]], [[PTR_OFFS]](s32)
  ; CHECK: G_STORE [[PTR]](p0), [[PTR_LOC]](p0) :: (store 4 into stack + 24, align 1)
  ; CHECK: CALL @test_stack_slots_mixed, csr_tricore_uppercontext, implicit-def $a11, implicit $psw, implicit $e4, implicit $e6
  ; CHECK: ADJCALLSTACKUP 28, 0, implicit-def $a10, implicit $a10

entry:
  call void @test_stack_slots_mixed(i64 %e4, i64 %e6, i32 42, float 2.0, i64 12, double 3.0, i32* null, i32* null, i32* null, i32* null, i32* null)
  ret void
}

declare i32 @simple_return_callee()
define i32 @test_simple_return() {
  ; CHECK-LABEL: name: test_simple_return
  ; CHECK: ADJCALLSTACKDOWN 0, 0, implicit-def $a10, implicit $a10
  ; CHECK: CALL @simple_return_callee, csr_tricore_uppercontext, implicit-def $a11, implicit $psw, implicit-def $d2
  ; CHECK: [[RES:%[0-9]+]]:_(s32) = COPY $d2
  ; CHECK: ADJCALLSTACKUP 0, 0, implicit-def $a10, implicit $a10
  ; CHECK: $d2 = COPY [[RES]]
  ; CHECK: RET implicit $a11, implicit $d2
entry:
  %res = call i32 @simple_return_callee()
  ret i32 %res
}

declare i64 @simple_return_callee2()
define i64 @test_simple_return2() {
  ; CHECK-LABEL: name: test_simple_return2
  ; CHECK: ADJCALLSTACKDOWN 0, 0, implicit-def $a10, implicit $a10
  ; CHECK: CALL @simple_return_callee2, csr_tricore_uppercontext, implicit-def $a11, implicit $psw, implicit-def $e2
  ; CHECK: [[RES:%[0-9]+]]:_(s64) = COPY $e2
  ; CHECK: ADJCALLSTACKUP 0, 0, implicit-def $a10, implicit $a10
  ; CHECK: $e2 = COPY [[RES]]
  ; CHECK: RET implicit $a11, implicit $e2
entry:
  %res = call i64 @simple_return_callee2()
  ret i64 %res
}

declare i32* @simple_return_callee3()
define i32* @test_simple_return3() {
  ; CHECK-LABEL: name: test_simple_return3
  ; CHECK: ADJCALLSTACKDOWN 0, 0, implicit-def $a10, implicit $a10
  ; CHECK: CALL @simple_return_callee3, csr_tricore_uppercontext, implicit-def $a11, implicit $psw, implicit-def $a2
  ; CHECK: [[RES:%[0-9]+]]:_(p0) = COPY $a2
  ; CHECK: ADJCALLSTACKUP 0, 0, implicit-def $a10, implicit $a10
  ; CHECK: $a2 = COPY [[RES]]
  ; CHECK: RET implicit $a11, implicit $a2
entry:
  %res = call i32* @simple_return_callee3()
  ret i32* %res
}

declare float @simple_return_callee4()
define float @test_simple_return4() {
  ; CHECK-LABEL: name: test_simple_return4
  ; CHECK: ADJCALLSTACKDOWN 0, 0, implicit-def $a10, implicit $a10
  ; CHECK: CALL @simple_return_callee4, csr_tricore_uppercontext, implicit-def $a11, implicit $psw, implicit-def $d2
  ; CHECK: [[RES:%[0-9]+]]:_(s32) = COPY $d2
  ; CHECK: ADJCALLSTACKUP 0, 0, implicit-def $a10, implicit $a10
  ; CHECK: $d2 = COPY [[RES]]
  ; CHECK: RET implicit $a11, implicit $d2
entry:
  %res = call float @simple_return_callee4()
  ret float %res
}

declare double @simple_return_callee5()
define double @test_simple_return5() {
  ; CHECK-LABEL: name: test_simple_return5
  ; CHECK: ADJCALLSTACKDOWN 0, 0, implicit-def $a10, implicit $a10
  ; CHECK: CALL @simple_return_callee5, csr_tricore_uppercontext, implicit-def $a11, implicit $psw, implicit-def $e2
  ; CHECK: [[RES:%[0-9]+]]:_(s64) = COPY $e2
  ; CHECK: ADJCALLSTACKUP 0, 0, implicit-def $a10, implicit $a10
  ; CHECK: $e2 = COPY [[RES]]
  ; CHECK: RET implicit $a11, implicit $e2
entry:
  %res = call double @simple_return_callee5()
  ret double %res
}

declare [2 x i32] @ret_struct()
define i32 @test_struct_return() {
  ; CHECK-LABEL: name: test_struct_return
  ; CHECK: ADJCALLSTACKDOWN 0, 0, implicit-def $a10, implicit $a10
  ; CHECK: CALL @ret_struct, csr_tricore_uppercontext, implicit-def $a11, implicit $psw
  ; CHECK: [[RES0:%[0-9]+]]:_(s32) = COPY $d2
  ; CHECK: [[RES1:%[0-9]+]]:_(s32) = COPY $d3
  ; CHECK: ADJCALLSTACKUP 0, 0, implicit-def $a10, implicit $a10
  ; CHECK: $d2 = COPY [[RES0]]
  ; CHECK: RET implicit $a11, implicit $d2
entry:
  %res = call [2 x i32] @ret_struct()
  %res.extract = extractvalue [2 x i32] %res, 0
  ret i32 %res.extract
}

declare [2 x float] @ret_float_struct()
define float @test_float_struct_return() {
  ; CHECK-LABEL: name: test_float_struct_return
  ; CHECK: ADJCALLSTACKDOWN 0, 0, implicit-def $a10, implicit $a10
  ; CHECK: CALL @ret_float_struct, csr_tricore_uppercontext, implicit-def $a11, implicit $psw
  ; CHECK: [[RES0:%[0-9]+]]:_(s32) = COPY $d2
  ; CHECK: [[RES1:%[0-9]+]]:_(s32) = COPY $d3
  ; CHECK: ADJCALLSTACKUP 0, 0, implicit-def $a10, implicit $a10
  ; CHECK: $d2 = COPY [[RES0]]
  ; CHECK: RET implicit $a11, implicit $d2
entry:
  %res = call [2 x float] @ret_float_struct()
  %res.extract = extractvalue [2 x float] %res, 0
  ret float %res.extract
}

  ; CHECK-LABEL: name: test_varargs
  ; CHECK: [[ANSWER:%[0-9]+]]:_(s64) = G_CONSTANT i64 42
  ; CHECK: [[TWELVE:%[0-9]+]]:_(s32) = G_CONSTANT i32 12
  ; CHECK: [[ONE:%[0-9]+]]:_(s8) = G_CONSTANT i8 1
  ; CHECK: [[TWO:%[0-9]+]]:_(s16) = G_CONSTANT i16 2
  ; CHECK: [[THREE:%[0-9]+]]:_(s32) = G_CONSTANT i32 3
  ; CHECK: [[FOUR:%[0-9]+]]:_(s64) = G_CONSTANT i64 4
  ; CHECK: [[FIVE:%[0-9]+]]:_(s32) = G_FCONSTANT float 5.0
  ; CHECK: [[SIX:%[0-9]+]]:_(s64) = G_FCONSTANT double 6.0

  ; CHECK: ADJCALLSTACKDOWN 32, 0, implicit-def $a10, implicit $a10

  ; CHECK: $e4 = COPY [[ANSWER]]
  ; CHECK: $d6 = COPY [[TWELVE]]
  ; CHECK-NEXT: [[SP:%[0-9]+]]:_(p0) = COPY $a10
  ; CHECK-NEXT: [[ONE_OFFS:%[0-9]+]]:_(s32) = G_CONSTANT i32 0
  ; CHECK-NEXT: [[ONE_LOC:%[0-9]+]]:_(p0) = G_PTR_ADD [[SP]], [[ONE_OFFS]](s32)
  ; CHECK-NEXT: G_STORE [[ONE]](s8), [[ONE_LOC]](p0) :: (store 1 into stack)
  ; CHECK-NEXT: [[SP:%[0-9]+]]:_(p0) = COPY $a10
  ; CHECK-NEXT: [[TWO_OFFS:%[0-9]+]]:_(s32) = G_CONSTANT i32 4
  ; CHECK-NEXT: [[TWO_LOC:%[0-9]+]]:_(p0) = G_PTR_ADD [[SP]], [[TWO_OFFS]](s32)
  ; CHECK-NEXT: G_STORE [[TWO]](s16), [[TWO_LOC]](p0) :: (store 2 into stack + 4, align 1)
  ; CHECK: [[SP:%[0-9]+]]:_(p0) = COPY $a10
  ; CHECK: [[THREE_OFFS:%[0-9]+]]:_(s32) = G_CONSTANT i32 8
  ; CHECK: [[THREE_LOC:%[0-9]+]]:_(p0) = G_PTR_ADD [[SP]], [[THREE_OFFS]](s32)
  ; CHECK: G_STORE [[THREE]](s32), [[THREE_LOC]](p0) :: (store 4 into stack + 8, align 1)
  ; CHECK: [[SP:%[0-9]+]]:_(p0) = COPY $a10
  ; CHECK: [[FOUR_OFFS:%[0-9]+]]:_(s32) = G_CONSTANT i32 12
  ; CHECK: [[FOUR_LOC:%[0-9]+]]:_(p0) = G_PTR_ADD [[SP]], [[FOUR_OFFS]](s32)
  ; CHECK: G_STORE [[FOUR]](s64), [[FOUR_LOC]](p0) :: (store 8 into stack + 12, align 1)
  ; CHECK: [[SP:%[0-9]+]]:_(p0) = COPY $a10
  ; CHECK: [[FIVE_OFFS:%[0-9]+]]:_(s32) = G_CONSTANT i32 20
  ; CHECK: [[FIVE_LOC:%[0-9]+]]:_(p0) = G_PTR_ADD [[SP]], [[FIVE_OFFS]](s32)
  ; CHECK: G_STORE [[FIVE]](s32), [[FIVE_LOC]](p0) :: (store 4 into stack + 20, align 1)
  ; CHECK: [[SP:%[0-9]+]]:_(p0) = COPY $a10
  ; CHECK: [[SIX_OFFS:%[0-9]+]]:_(s32) = G_CONSTANT i32 24
  ; CHECK: [[SIX_LOC:%[0-9]+]]:_(p0) = G_PTR_ADD [[SP]], [[SIX_OFFS]](s32)
  ; CHECK: G_STORE [[SIX]](s64), [[SIX_LOC]](p0) :: (store 8 into stack + 24, align 1)
  ; CHECK-NEXT: CALL @varargs, csr_tricore_uppercontext, implicit-def $a11, implicit $psw, implicit $e4, implicit $d6
  ; CHECK-NEXT: ADJCALLSTACKUP 32, 0, implicit-def $a10, implicit $a10

declare void @varargs(i64, i32, ...)
define void @test_varargs() {
  call void(i64, i32, ...) @varargs(i64 42, i32 12, i8 1, i16 2, i32 3, i64 4, float 5.0, double 6.0)
  ret void
}
