// RUN: %clang_cc1 -emit-llvm-only -triple tricore -fdump-record-layouts %s 2>/dev/null \
// RUN:            | FileCheck %s

struct bits_0 {
  char c : 35;
} B0;

// CHECK:*** Dumping AST Record Layout
// CHECK-NEXT:        0 | struct bits_0
// CHECK-NEXT:   0:0-34 |   char c
// CHECK-NEXT:          | [sizeof=8, dsize=8, align=4
// CHECK-NEXT:          |  nvsize=8, nvalign=4]
