; RUN: llc -mtriple=tricore -global-isel -stop-after=irtranslator -verify-machineinstrs < %s \
; RUN:   | FileCheck %s

define void @foo() {
  ; CHECK-LABEL: name: foo
  ; CHECK: bb.1.entry:
  ; CHECK-NEXT: RET

entry:
  ret void
}