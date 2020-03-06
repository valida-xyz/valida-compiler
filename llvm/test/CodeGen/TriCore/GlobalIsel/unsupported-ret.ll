; RUN: not --crash llc -mtriple=tricore -global-isel -global-isel-abort=1 -stop-after=irtranslator -verify-machineinstrs %s -o - 2>&1 | FileCheck %s --check-prefix=ERROR

define i3 @ret_i3() {
  ; ERROR: LLVM ERROR: unable to translate instruction: ret
  ret i3 0
}
