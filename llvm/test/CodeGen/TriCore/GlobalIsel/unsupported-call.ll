; RUN: not --crash llc -mtriple=tricore -global-isel -global-isel-abort=1 -stop-after=irtranslator -verify-machineinstrs %s -o - 2>&1 | FileCheck %s --check-prefix=ERROR

declare void @arg_i3(i3)
define void @call_i3() {
  ; ERROR: LLVM ERROR: unable to translate instruction: call
  call void @arg_i3(i3 0)
  ret void
}
