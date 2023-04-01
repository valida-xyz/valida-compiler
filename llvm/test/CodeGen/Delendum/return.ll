: NOTE: Why is the test failing? The RET instruction is present in the output 
; RUN: llc --global-isel --march=delendum --stop-after=irtranslator < %s | FileCheck %s

; CHECK: name: f
; CHECK: RET
define void @f() {
  ret void
}
