; RUN: llc -mtriple=tricore -verify-machineinstrs %s -o - | FileCheck %s
; XFAIL: *

; This test checks that LLVM can do basic stripping and reapplying of branches
; to basic blocks.

; Unfortunately GlobalISel does not translate metadata like branch_weights yet,
; so this test must be marked as an XFAIL. This has been confirmed using the
; AArch64 backend and test.

declare void @test_true()
declare void @test_false()

; !0 corresponds to a branch being taken, !1 to not being takne.
!0 = !{!"branch_weights", i32 64, i32 4}
!1 = !{!"branch_weights", i32 4, i32 64}

define void @test_bcc_fallthrough_taken(i32 %in) nounwind {
; CHECK-LABEL: test_bcc_fallthrough_taken:
; CHECK:       # %bb.0:
; CHECK-NEXT:    mov.aa %a14, %a10
; CHECK-NEXT:    mov %d15, 42
; CHECK-NEXT:    jne %d4, %d15, .LBB0_2
; CHECK-NEXT:  # %bb.1: # %true
; CHECK-NEXT:    call test_true
; CHECK-NEXT:    ret
; CHECK-NEXT:  .LBB0_2: # %false
; CHECK-NEXT:    call test_false
; CHECK-NEXT:    ret
  %tst = icmp eq i32 %in, 42
  br i1 %tst, label %true, label %false, !prof !0

; Expected layout order is: Entry, TrueBlock, FalseBlock
; Entry->TrueBlock is the common path, which should be taken whenever the
; conditional branch is false.

true:
  call void @test_true()
  ret void

false:
  call void @test_false()
  ret void
}

define void @test_bcc_fallthrough_nottaken(i32 %in) nounwind {
; CHECK-LABEL: test_bcc_fallthrough_nottaken:
; CHECK:       # %bb.0:
; CHECK-NEXT:    mov.aa %a14, %a10
; CHECK-NEXT:    mov %d15, 42
; CHECK-NEXT:    jeq %d4, %d15, .LBB1_2
; CHECK-NEXT:  # %bb.1: # %false
; CHECK-NEXT:    call test_false
; CHECK-NEXT:    ret
; CHECK-NEXT:  .LBB1_2: # %true
; CHECK-NEXT:    call test_true
; CHECK-NEXT:    ret
  %tst = icmp eq i32 %in, 42
  br i1 %tst, label %true, label %false, !prof !1

; Expected layout order is: Entry, FalseBlock, TrueBlock
; Entry->FalseBlock is the common path, which should be taken whenever the
; conditional branch is false

true:
  call void @test_true()
  ret void

false:
  call void @test_false()
  ret void
}

; TODO: how can we expand the coverage of the branch analysis functions?
