; REQUIRES: x86-registered-target
;
; Check that the basic block profile dump outputs data and in the correct
; format.
;
; RUN: llc -mtriple=x86_64-linux-unknown -o /dev/null -mbb-profile-dump=- %s | FileCheck %s

; bb profile dump is not supported on NVPTX
; UNSUPPORTED: target=nvptx{{.*}}

define i64 @f2(i64 %a, i64 %b) {
    %sum = add i64 %a, %b
    ret i64 %sum
}

define i64 @f1() {
    %sum = call i64 @f2(i64 2, i64 2)
    %isEqual = icmp eq i64 %sum, 4
    br i1 %isEqual, label %ifEqual, label %ifNotEqual
ifEqual:
    ret i64 0
ifNotEqual:
    ret i64 %sum
}

; CHECK: f2,0,1.000000e+00
; CHECK-NEXT: f1,0,1.000000e+00
; CHECK-NEXT: f1,1,5.000000e-01
; CHECK-NEXT: f1,2,1.000000e+00
