; RUN: llc -mtriple=tricore -o - %s | FileCheck %s
; XFAIL: *

; This test should be added to frame-info.ll once we support G_DYN_STACKALLOC
; CHECK labels need to be updated
define void @foo(i32 signext %size) {
; CHECK-LABEL: foo:                                    # @foo

entry:
  %0 = alloca i8, i32 %size, align 16
  call void @bar(i8* nonnull %0) #2
  ret void
}

declare void @bar(i8*)