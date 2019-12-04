; RUN: llc -mtriple=tricore -stop-after=prologepilog -o - %s | FileCheck %s
; XFAIL: *

; This test checks the still untested code-paths in the prologue / epilogue
; code. These code-paths require a function to not have a frame pointer.
; This module was compiled with -fomit-frame-pointer to achieve this.
;
; Currently this test will fail as we always use a FP.

; ModuleID = 'omit-fp.c'
source_filename = "omit-fp.c"
target datalayout = "e-m:e-i64:32-p:32:32-f64:32-n32-a:0:32-S64"
target triple = "tricore"

; Function Attrs: nounwind
define dso_local void @varsize() local_unnamed_addr #0 {
; CHECK-LABEL: name: varsize
; CHECK-NOT: $a14 = frame-setup MOVAA_aa $a10
entry:
  %arr1 = alloca [42 x i8], align 1
  %0 = getelementptr inbounds [42 x i8], [42 x i8]* %arr1, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 42, i8* nonnull %0) #3
  call void @func(i8* nonnull %0) #3
  call void @llvm.lifetime.end.p0i8(i64 42, i8* nonnull %0) #3
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local void @func(i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0 (ssh://git@bitbucket-server.software.htc:7999/toolchain/llvm-project.git 878de09f0c124bb5161b55a97264919344637eff)"}
