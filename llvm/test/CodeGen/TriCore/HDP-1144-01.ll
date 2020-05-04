; RUN: llc -mtriple=tricore -o - %s | FileCheck %s

; This is a test case from the GCC bug HDP-1144.
;
; In tricore-gcc there was a bug where the instruction scheduler moved
; instructions accessing local variables on stack before stack frame creation
; in the prologue of a function and / or after stack restoration of a function.
; Furthermore, in case of an interrupt, the Interrupt Service Routine (ISR)
; sometimes corrupted the already restored but still used stack of an
; interrupted function.
;
; To make sure that tricore-clang does not suffer from the same bug, we need to
; test that the following does not occur:
;
; 00000000 :
;    0:    40 ae           mov.aa %a14,%sp      ; Here the Stack Pointer is copied to the Frame Pointer
;    2:    19 5a 0c 00     ld.w %d10,[%a5]12    ; This load is not related to stack handling. It uses %a5 to load, which is an argument.
;    6:    89 e4 40 f9     st.d [%a14]-64,%e4   ; This is the affected part, uses the Frame Pointer to store with a negative offset -64.
;    a:    20 40           sub.a %sp,64         ; The stack frame is reserved just at this point.
;    c:    40 5f           mov.aa %a15,%a5

; CHECK-LABEL: LocalFunction:
; CHECK:      # %bb.0:                                # %entry
; CHECK-NEXT:   mov.aa  %a14, %a10
; CHECK-NEXT:   lea	%a10, [%a10], -16

; ModuleID = 'HDP-1144-01.c'
source_filename = "HDP-1144-01.c"
target datalayout = "e-m:e-i64:32-p:32:32-f64:32-n32-a:0:32-S64"
target triple = "tricore"

%struct.MyStruct_t = type { [1 x i16], [1 x i16], [1 x i16], [1 x i16] }

@MyStruct = external dso_local local_unnamed_addr constant %struct.MyStruct_t*, align 4

; Function Attrs: nounwind
define dso_local signext i16 @LocalFunction(i16 signext %arg0, i8 zeroext %arg1, i16 signext %arg2) local_unnamed_addr #0 {
entry:
  %ptrLst = alloca [4 x i8*], align 4
  %0 = bitcast [4 x i8*]* %ptrLst to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #3
  %1 = load %struct.MyStruct_t*, %struct.MyStruct_t** @MyStruct, align 4, !tbaa !2
  %arraydecay = getelementptr inbounds %struct.MyStruct_t, %struct.MyStruct_t* %1, i32 0, i32 2, i32 0
  %2 = bitcast [4 x i8*]* %ptrLst to i16**
  store i16* %arraydecay, i16** %2, align 4, !tbaa !2
  %arrayinit.element = getelementptr inbounds [4 x i8*], [4 x i8*]* %ptrLst, i32 0, i32 1
  %3 = bitcast i8** %arrayinit.element to %struct.MyStruct_t**
  store %struct.MyStruct_t* %1, %struct.MyStruct_t** %3, align 4, !tbaa !2
  %arrayinit.element2 = getelementptr inbounds [4 x i8*], [4 x i8*]* %ptrLst, i32 0, i32 2
  %arraydecay3 = getelementptr inbounds %struct.MyStruct_t, %struct.MyStruct_t* %1, i32 0, i32 1, i32 0
  %4 = bitcast i8** %arrayinit.element2 to i16**
  store i16* %arraydecay3, i16** %4, align 4, !tbaa !2
  %arrayinit.element4 = getelementptr inbounds [4 x i8*], [4 x i8*]* %ptrLst, i32 0, i32 3
  %arraydecay5 = getelementptr inbounds %struct.MyStruct_t, %struct.MyStruct_t* %1, i32 0, i32 3, i32 0
  %5 = bitcast i8** %arrayinit.element4 to i16**
  store i16* %arraydecay5, i16** %5, align 4, !tbaa !2
  %conv = zext i8 %arg1 to i32
  %add.ptr = getelementptr inbounds %struct.MyStruct_t, %struct.MyStruct_t* %1, i32 0, i32 3, i32 %conv
  %6 = load i16, i16* %add.ptr, align 2, !tbaa !6
  %7 = and i16 %6, 255
  %cmp = icmp ult i16 %7, 11
  %narrow = select i1 %cmp, i16 %7, i16 0
  %cond = zext i16 %narrow to i32
  %arrayidx = getelementptr inbounds [4 x i8*], [4 x i8*]* %ptrLst, i32 0, i32 %cond
  %8 = bitcast i8** %arrayidx to i16**
  %9 = load i16*, i16** %8, align 4, !tbaa !2
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #3
  %call = tail call signext i16 @ExternFunction(i16 signext %arg2, i16 signext %arg0, i16* %9) #3
  ret i16 %call
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local signext i16 @ExternFunction(i16 signext, i16 signext, i16*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0 (ssh://git@bitbucket-server.software.htc:7999/toolchain/llvm-project.git 7af75e9cbd917f21d7747d5a75f684d929a137ea)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"short", !4, i64 0}
