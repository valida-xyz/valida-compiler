; RUN: llc -mtriple=tricore -global-isel -stop-after=irtranslator -verify-machineinstrs < %s \
; RUN:   | FileCheck %s

define void @ret_void() {
  ; CHECK-LABEL: name: ret_void
  ; CHECK: bb.1.entry:
  ; CHECK-NEXT: RET implicit $a11
entry:
  ret void
}

define zeroext i1 @ret_ui1(i1 zeroext %d4) {
  ; CHECK-LABEL: name: ret_ui1
  ; CHECK: bb.1.entry:
  ; CHECK: liveins: $d4
  ; CHECK: [[COPY:%[0-9]+]]:_(s32) = COPY $d4
  ; CHECK: [[TRUNK:%[0-9]+]]:_(s1) = G_TRUNC [[COPY]](s32)
  ; CHECK: [[EXT:%[0-9]+]]:_(s32) = G_ZEXT [[TRUNK]](s1)
  ; CHECK: $d2 = COPY [[EXT]](s32)
  ; CHECK-NEXT: RET implicit $a11, implicit $d2
entry:
  ret i1 %d4
}

define zeroext i8 @ret_ui8(i8 zeroext %i)  {
  ; CHECK-LABEL: name: ret_ui8
  ; CHECK: bb.1.entry:
  ; CHECK: liveins: $d4
  ; CHECK: [[COPY:%[0-9]+]]:_(s32) = COPY $d4
  ; CHECK: [[TRUNK:%[0-9]+]]:_(s8) = G_TRUNC [[COPY]](s32)
  ; CHECK: [[EXT:%[0-9]+]]:_(s32) = G_ZEXT [[TRUNK]](s8)
  ; CHECK: $d2 = COPY [[EXT]](s32)
  ; CHECK-NEXT: RET implicit $a11, implicit $d2
entry:
  ret i8 %i
}

define signext i8 @ret_i8(i8 signext %i) {
  ; CHECK-LABEL: name: ret_i8
  ; CHECK: bb.1.entry:
  ; CHECK: liveins: $d4
  ; CHECK: [[COPY:%[0-9]+]]:_(s32) = COPY $d4
  ; CHECK: [[TRUNK:%[0-9]+]]:_(s8) = G_TRUNC [[COPY]](s32)
  ; CHECK: [[EXT:%[0-9]+]]:_(s32) = G_SEXT [[TRUNK]](s8)
  ; CHECK: $d2 = COPY [[EXT]](s32)
  ; CHECK-NEXT: RET implicit $a11, implicit $d2
entry:
  ret i8 %i
}

define zeroext i16 @ret_ui16(i16 zeroext %i) {
  ; CHECK-LABEL: name: ret_ui16
  ; CHECK: bb.1.entry:
  ; CHECK: liveins: $d4
  ; CHECK: [[COPY:%[0-9]+]]:_(s32) = COPY $d4
  ; CHECK: [[TRUNK:%[0-9]+]]:_(s16) = G_TRUNC [[COPY]](s32)
  ; CHECK: [[EXT:%[0-9]+]]:_(s32) = G_ZEXT [[TRUNK]](s16)
  ; CHECK: $d2 = COPY [[EXT]](s32)
  ; CHECK-NEXT: RET implicit $a11, implicit $d2
entry:
  ret i16 %i
}
  
define signext i16 @ret_i16(i16 signext %i) {
  ; CHECK-LABEL: name: ret_i16
  ; CHECK: bb.1.entry:
  ; CHECK: liveins: $d4
  ; CHECK: [[COPY:%[0-9]+]]:_(s32) = COPY $d4
  ; CHECK: [[TRUNK:%[0-9]+]]:_(s16) = G_TRUNC [[COPY]](s32)
  ; CHECK: [[EXT:%[0-9]+]]:_(s32) = G_SEXT [[TRUNK]](s16)
  ; CHECK: $d2 = COPY [[EXT]](s32)
  ; CHECK-NEXT: RET implicit $a11, implicit $d2
entry:
  ret i16 %i
}
  
define i32 @ret_i32(i32 %i) {
  ; CHECK-LABEL: name: ret_i32
  ; CHECK: bb.1.entry:
  ; CHECK: liveins: $d4
  ; CHECK: [[COPY:%[0-9]+]]:_(s32) = COPY $d4
  ; CHECK: $d2 = COPY [[COPY]](s32)
  ; CHECK-NEXT: RET implicit $a11, implicit $d2
entry:
  ret i32 %i
}

define i32 @args_i32(i32 %d4, i32 %d5, i32 %d6, i32 %d7) {
  ; CHECK-LABEL: name: args_i32
  ; CHECK: bb.1.entry:
  ; CHECK: liveins: $d4, $d5, $d6, $d7
  ; CHECK: %[[ARG0:[0-9]+]]:_(s32) = COPY $d4
  ; CHECK: %{{[0-9]+}}:_(s32) = COPY $d5
  ; CHECK: %{{[0-9]+}}:_(s32) = COPY $d6
  ; CHECK: %{{[0-9]+}}:_(s32) = COPY $d7
  ; CHECK: $d2 = COPY %[[ARG0]]
  ; CHECK-NEXT: RET implicit $a11, implicit $d2
entry:
  ret i32 %d4
}

define i64 @ret_i64(i64 %i) {
  ; CHECK-LABEL: name: ret_i64
  ; CHECK: bb.1.entry:
  ; CHECK: liveins: $e4
  ; CHECK: [[COPY:%[0-9]+]]:_(s64) = COPY $e4
  ; CHECK: $e2 = COPY [[COPY]](s64)
  ; CHECK-NEXT: RET implicit $a11, implicit $e2
entry:
  ret i64 %i
}

define i64 @args_i64(i64 %e4, i64 %e6) {
  ; CHECK-LABEL: name: args_i64
  ; CHECK: bb.1.entry:
  ; CHECK: liveins: $e4, $e6
  ; CHECK: [[ARG0:%[0-9]+]]:_(s64) = COPY $e4
  ; CHECK: %{{[0-9]+}}:_(s64) = COPY $e6  
  ; CHECK: $e2 = COPY [[ARG0]](s64)
  ; CHECK-NEXT: RET implicit $a11, implicit $e2
entry:
  ret i64 %e4
}

define i32 @args_i32_i64_i32(i32 %d4, i64 %e6, i32 %d5) {
  ; CHECK-LABEL: name: args_i32_i64_i32
  ; CHECK: bb.1.entry:
  ; CHECK: liveins: $d4, $d5, $e6
  ; CHECK: %{{[0-9]+}}:_(s32) = COPY $d4
  ; CHECK: %{{[0-9]+}}:_(s64) = COPY $e6
  ; CHECK: %[[ARG0:[0-9]+]]:_(s32) = COPY $d5
  ; CHECK: $d2 = COPY %[[ARG0]]
  ; CHECK-NEXT: RET implicit $a11, implicit $d2
entry:
  ret i32 %d5
}

define i64 @args_i64_i32(i64 %e4, i32 %d6) {
  ; CHECK-LABEL: name: args_i64_i32
  ; CHECK: bb.1.entry:
  ; CHECK: liveins: $d6, $e4
  ; CHECK: %[[ARG0:[0-9]+]]:_(s64) = COPY $e4
  ; CHECK: %{{[0-9]+}}:_(s32) = COPY $d6
  ; CHECK: $e2 = COPY %[[ARG0]]
  ; CHECK-NEXT: RET implicit $a11, implicit $e2
entry:
  ret i64 %e4
}

define i32* @ret_i32_ptr(i32* %p) {
  ; CHECK-LABEL: name: ret_i32_ptr
  ; CHECK: bb.1.entry:
  ; CHECK: liveins: $a4
  ; CHECK: [[COPY:%[0-9]+]]:_(p0) = COPY $a4
  ; CHECK: $a2 = COPY [[COPY]](p0)
  ; CHECK-NEXT: RET implicit $a11, implicit $a2
entry:
  ret i32* %p
}

define i32* @args_ptr(i32* %a4, i32* %a5, i32* %a6, i32* %a7) {
  ; CHECK-LABEL: name: args_ptr
  ; CHECK: bb.1.entry:
  ; CHECK: liveins: $a4, $a5, $a6, $a7
  ; CHECK: %[[ARG0:[0-9]+]]:_(p0) = COPY $a4
  ; CHECK: %{{[0-9]+}}:_(p0) = COPY $a5
  ; CHECK: %{{[0-9]+}}:_(p0) = COPY $a6
  ; CHECK: %{{[0-9]+}}:_(p0) = COPY $a7
  ; CHECK: $a2 = COPY %[[ARG0]]
  ; CHECK-NEXT: RET implicit $a11, implicit $a2
entry:
  ret i32* %a4
}

define i32 @args_struct_1([1 x i32] %d4) {
  ; CHECK-LABEL: name: args_struct_1
  ; CHECK: bb.1.entry:
  ; CHECK: liveins: $d4
  ; CHECK: %[[ARG0:[0-9]+]]:_(s32) = COPY $d4
  ; CHECK: $d2 = COPY %[[ARG0]]
  ; CHECK-NEXT: RET implicit $a11, implicit $d2
entry:
  %d4.extract = extractvalue [1 x i32] %d4, 0
  ret i32 %d4.extract
}

define i32 @args_struct_2([2 x i32] %e4) {
  ; CHECK-LABEL: name: args_struct_2
  ; CHECK: bb.1.entry:
  ; CHECK: liveins: $d4, $d5
  ; CHECK: %[[ARG0:[0-9]+]]:_(s32) = COPY $d4
  ; CHECK: %{{[0-9]+}}:_(s32) = COPY $d5
  ; CHECK: $d2 = COPY %[[ARG0]]
  ; CHECK-NEXT: RET implicit $a11, implicit $d2
entry:
  %e4.extract = extractvalue [2 x i32] %e4, 0
  ret i32 %e4.extract
}

define i32 @args_i32_struct_i32(i32 %d4, [2 x i32] %e6, i32 %d5) {
  ; CHECK-LABEL: name: args_i32_struct_i32
  ; CHECK: bb.1.entry:
  ; CHECK: liveins: $d4, $d5, $d6, $d7
  ; CHECK: %{{[0-9]+}}:_(s32) = COPY $d4
  ; CHECK: %[[ARG0:[0-9]+]]:_(s32) = COPY $d6
  ; CHECK: %{{[0-9]+}}:_(s32) = COPY $d7
  ; CHECK: %{{[0-9]+}}:_(s32) = COPY $d5
  ; CHECK: $d2 = COPY %[[ARG0]]
  ; CHECK-NEXT: RET implicit $a11, implicit $d2
entry:
  %e6.extract = extractvalue [2 x i32] %e6, 0
  ret i32 %e6.extract
}

define [2 x i32] @ret_struct([2 x i32] %e4) {
  ; CHECK-LABEL: name: ret_struct
  ; CHECK: bb.1.entry:
  ; CHECK: liveins: $d4, $d5
  ; CHECK: %[[ARG0:[0-9]+]]:_(s32) = COPY $d4
  ; CHECK: %[[ARG1:[0-9]+]]:_(s32) = COPY $d5
  ; CHECK: $d2 = COPY %[[ARG0]]
  ; CHECK: $d3 = COPY %[[ARG1]]
  ; CHECK-NEXT: RET implicit $a11, implicit $d2, implicit $d3
entry:
  ret [2 x i32] %e4
}

define i32 @args_stack1(i32 %d4, i32 %d5, i32 %d6, i32 %d7, i32 %stack1, i64 %stack2) {
  ; CHECK-LABEL: name: args_stack1
  ; CHECK: fixedStack:
  ; CHECK-DAG:  - { id: [[STACK0:[0-9]+]], type: default, offset: 0, size: 4, alignment: 8, 
  ; CHECK-DAG:  - { id: [[STACK1:[0-9]+]], type: default, offset: 4, size: 8, alignment: 4, 
  ; CHECK: bb.1.entry:
  ; CHECK: liveins: $d4, $d5, $d6, $d7
  ; CHECK: %{{[0-9]+}}:_(s32) = COPY $d4
  ; CHECK: %{{[0-9]+}}:_(s32) = COPY $d5
  ; CHECK: %{{[0-9]+}}:_(s32) = COPY $d6
  ; CHECK: %{{[0-9]+}}:_(s32) = COPY $d7
  ; CHECK: %[[PTR1:[0-9]+]]:_(p0) = G_FRAME_INDEX %fixed-stack.[[STACK0]]
  ; CHECK: %[[LOAD1:[0-9]+]]:_(s32) = G_LOAD %[[PTR1]](p0) :: (invariant load 4 from %fixed-stack.[[STACK0]], align 1)
  ; CHECK: %[[PTR2:[0-9]+]]:_(p0) = G_FRAME_INDEX %fixed-stack.[[STACK1]]
  ; CHECK: %[[LOAD2:[0-9]+]]:_(s64) = G_LOAD %[[PTR2]](p0) :: (invariant load 8 from %fixed-stack.[[STACK1]], align 1)
  ; CHECK: $d2 = COPY %[[LOAD1]]
  ; CHECK-NEXT: RET implicit $a11, implicit $d2
entry:
  ret i32 %stack1
}

define i32 @args_stack2(i32 %d4, i32 %d5, i32 %d6, i32 %d7, [2 x i32] %stack1, i32 %stack2) {
  ; CHECK-LABEL: name: args_stack2
  ; CHECK: fixedStack:
  ; CHECK-DAG:  - { id: [[STACK0:[0-9]+]], type: default, offset: 0, size: 4, alignment: 8,
  ; CHECK-DAG:  - { id: [[STACK1:[0-9]+]], type: default, offset: 4, size: 4, alignment: 4,
  ; CHECK-DAG:  - { id: [[STACK2:[0-9]+]], type: default, offset: 8, size: 4, alignment: 8,
  ; CHECK: bb.1.entry:
  ; CHECK: liveins: $d4, $d5, $d6, $d7
  ; CHECK: %{{[0-9]+}}:_(s32) = COPY $d4
  ; CHECK: %{{[0-9]+}}:_(s32) = COPY $d5
  ; CHECK: %{{[0-9]+}}:_(s32) = COPY $d6
  ; CHECK: %{{[0-9]+}}:_(s32) = COPY $d7
  ; CHECK: %[[PTR1:[0-9]+]]:_(p0) = G_FRAME_INDEX %fixed-stack.[[STACK0]]
  ; CHECK: %[[LOAD1:[0-9]+]]:_(s32) = G_LOAD %[[PTR1]](p0) :: (invariant load 4 from %fixed-stack.[[STACK0]], align 1)
  ; CHECK: %[[PTR2:[0-9]+]]:_(p0) = G_FRAME_INDEX %fixed-stack.[[STACK1]]
  ; CHECK: %[[LOAD2:[0-9]+]]:_(s32) = G_LOAD %[[PTR2]](p0) :: (invariant load 4 from %fixed-stack.[[STACK1]], align 1)
  ; CHECK: %[[PTR3:[0-9]+]]:_(p0) = G_FRAME_INDEX %fixed-stack.[[STACK2]]
  ; CHECK: %[[LOAD3:[0-9]+]]:_(s32) = G_LOAD %[[PTR3]](p0) :: (invariant load 4 from %fixed-stack.[[STACK2]], align 1)
  ; CHECK: $d2 = COPY %[[LOAD1]]
  ; CHECK-NEXT: RET implicit $a11, implicit $d2
entry:
  %stack1.extract = extractvalue [2 x i32] %stack1, 0
  ret i32 %stack1.extract
}

define i32 @args_stack3(i32 %d4, i32 %d5, i32 %d6, [2 x i32] %stack1, i32 %d7) {
  ; CHECK-LABEL: name: args_stack3
  ; CHECK: fixedStack:
  ; CHECK-DAG:  - { id: [[STACK0:[0-9]+]], type: default, offset: 0, size: 4, alignment: 8,
  ; CHECK-DAG:  - { id: [[STACK1:[0-9]+]], type: default, offset: 4, size: 4, alignment: 4,
  ; CHECK: bb.1.entry:
  ; CHECK: liveins: $d4, $d5, $d6, $d7
  ; CHECK: %{{[0-9]+}}:_(s32) = COPY $d4
  ; CHECK: %{{[0-9]+}}:_(s32) = COPY $d5
  ; CHECK: %{{[0-9]+}}:_(s32) = COPY $d6
  ; CHECK: %[[PTR1:[0-9]+]]:_(p0) = G_FRAME_INDEX %fixed-stack.[[STACK0]]
  ; CHECK: %[[LOAD1:[0-9]+]]:_(s32) = G_LOAD %[[PTR1]](p0) :: (invariant load 4 from %fixed-stack.[[STACK0]], align 1)
  ; CHECK: %[[PTR2:[0-9]+]]:_(p0) = G_FRAME_INDEX %fixed-stack.[[STACK1]]
  ; CHECK: %[[LOAD2:[0-9]+]]:_(s32) = G_LOAD %[[PTR2]](p0) :: (invariant load 4 from %fixed-stack.[[STACK1]], align 1)
  ; CHECK: %{{[0-9]+}}:_(s32) = COPY $d7
  ; CHECK: $d2 = COPY %[[LOAD1]]
  ; CHECK-NEXT: RET implicit $a11, implicit $d2
entry:
  %stack1.extract = extractvalue [2 x i32] %stack1, 0
  ret i32 %stack1.extract
}

define i32* @args_stack4(i32* %a4, i32 %d4, i32* %a5, i32 %d5, i32* %a6, i32 %d6, i32* %a7, i32 %d7, i32* %stack1, i32 %stack2) {
  ; CHECK-LABEL: name: args_stack4
  ; CHECK: fixedStack:
  ; CHECK-DAG:  - { id: [[STACK0:[0-9]+]], type: default, offset: 0, size: 4, alignment: 8, 
  ; CHECK-DAG:  - { id: [[STACK1:[0-9]+]], type: default, offset: 4, size: 4, alignment: 4, 
  ; CHECK: bb.1.entry:
  ; CHECK: liveins: $a4, $a5, $a6, $a7, $d4, $d5, $d6, $d7
  ; CHECK: %{{[0-9]+}}:_(p0) = COPY $a4
  ; CHECK: %{{[0-9]+}}:_(s32) = COPY $d4
  ; CHECK: %{{[0-9]+}}:_(p0) = COPY $a5
  ; CHECK: %{{[0-9]+}}:_(s32) = COPY $d5
  ; CHECK: %{{[0-9]+}}:_(p0) = COPY $a6
  ; CHECK: %{{[0-9]+}}:_(s32) = COPY $d6
  ; CHECK: %{{[0-9]+}}:_(p0) = COPY $a7
  ; CHECK: %{{[0-9]+}}:_(s32) = COPY $d7
  ; CHECK: %[[PTR1:[0-9]+]]:_(p0) = G_FRAME_INDEX %fixed-stack.[[STACK0]]
  ; CHECK: %[[LOAD1:[0-9]+]]:_(p0) = G_LOAD %[[PTR1]](p0) :: (invariant load 4 from %fixed-stack.[[STACK0]], align 1)
  ; CHECK: %[[PTR2:[0-9]+]]:_(p0) = G_FRAME_INDEX %fixed-stack.[[STACK1]]
  ; CHECK: %[[LOAD2:[0-9]+]]:_(s32) = G_LOAD %[[PTR2]](p0) :: (invariant load 4 from %fixed-stack.[[STACK1]], align 1)
  ; CHECK: $a2 = COPY %[[LOAD1]]
  ; CHECK-NEXT: RET implicit $a11, implicit $a2
entry:
  ret i32* %stack1
}

define zeroext i8 @args_stack_mixed(i32 %d4, i32 %d5, i32 %d6, i32 %d7, i1 zeroext %stack1, i8 zeroext %stack2, i16 signext %stack3) {
  ; CHECK-LABEL: name: args_stack_mixed
  ; CHECK: fixedStack:
  ; CHECK-DAG:  - { id: [[STACK0:[0-9]+]], type: default, offset: 0, size: 1, alignment: 8, 
  ; CHECK-DAG:  - { id: [[STACK1:[0-9]+]], type: default, offset: 4, size: 1, alignment: 4, 
  ; CHECK-DAG:  - { id: [[STACK2:[0-9]+]], type: default, offset: 8, size: 2, alignment: 8, 
  ; CHECK: bb.1.entry:
  ; CHECK: liveins: $d4, $d5, $d6, $d7
  ; CHECK: %{{[0-9]+}}:_(s32) = COPY $d4
  ; CHECK: %{{[0-9]+}}:_(s32) = COPY $d5
  ; CHECK: %{{[0-9]+}}:_(s32) = COPY $d6
  ; CHECK: %{{[0-9]+}}:_(s32) = COPY $d7
  ; CHECK: %[[PTR1:[0-9]+]]:_(p0) = G_FRAME_INDEX %fixed-stack.[[STACK0]]
  ; CHECK: %[[LOAD1:[0-9]+]]:_(s1) = G_LOAD %[[PTR1]](p0) :: (invariant load 1 from %fixed-stack.[[STACK0]])
  ; CHECK: %[[PTR2:[0-9]+]]:_(p0) = G_FRAME_INDEX %fixed-stack.[[STACK1]]
  ; CHECK: %[[LOAD2:[0-9]+]]:_(s8) = G_LOAD %[[PTR2]](p0) :: (invariant load 1 from %fixed-stack.[[STACK1]])
  ; CHECK: %[[PTR3:[0-9]+]]:_(p0) = G_FRAME_INDEX %fixed-stack.[[STACK2]]
  ; CHECK: %[[LOAD3:[0-9]+]]:_(s16) = G_LOAD %[[PTR3]](p0) :: (invariant load 2 from %fixed-stack.[[STACK2]], align 1)
  ; CHECK: %[[ZEXT:[0-9]+]]:_(s32) = G_ZEXT %[[LOAD2]](s8)
  ; CHECK: $d2 = COPY %[[ZEXT]]
  ; CHECK-NEXT: RET implicit $a11, implicit $d2
entry:
  ret i8 %stack2 
}