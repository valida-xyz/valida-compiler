; RUN: llc -mtriple=tricore -o - %s | FileCheck %s

; Test that CFI directives are emitted correctly
define void @foo() {
; CHECK-LABEL: foo:                                    # @foo
; CHECK:           .cfi_startproc
; CHECK-NEXT:  # %bb.0:                                # %entry
; CHECK-NEXT:      mov.aa    %a14, %a10
; CHECK-NEXT:      lea    %a10, [%a10], -48
; CHECK-NEXT:      .cfi_def_cfa %a14, 0
; CHECK-NEXT:      lea    %a4, [%a14], -42
; CHECK-NEXT:      call    bar
; CHECK-NEXT:      ret
; CHECK-NEXT:  .Lfunc_end0:
; CHECK-NEXT:      .size    foo, .Lfunc_end0-foo
; CHECK-NEXT:      .cfi_endproc
; CHECK-NEXT:                                          # -- End function

entry:
  %0 = alloca i8, i32 42, align 2
  call void @bar(i8* nonnull %0) #2
  ret void
}

declare void @bar(i8*)