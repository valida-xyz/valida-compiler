// RUN: %clang -target tricore-unknown-unknown -### %s -fsyntax-only 2>&1 | FileCheck %s

// The TriCore EABI states that the C char type maps to the signed character TriCore type
// Since -fsigned-char is default, we check that the -fno-signed-char option is not present

// CHECK: tricore-unknown-unknown
// CHECK-NO: fno-signed-char

// RUN: %clang -target tricore -march=tc161              -### %s 2>&1 | FileCheck %s --check-prefix=TC161
// RUN: %clang -target tricore -march=tc161 -mcpu=tc21xx -### %s 2>&1 | FileCheck %s --check-prefix=TC161
// RUN: %clang -target tricore -march=tc161 -mcpu=tc22xx -### %s 2>&1 | FileCheck %s --check-prefix=TC161
// RUN: %clang -target tricore -march=tc161 -mcpu=tc23xx -### %s 2>&1 | FileCheck %s --check-prefix=TC161
// RUN: %clang -target tricore -march=tc161 -mcpu=tc26xx -### %s 2>&1 | FileCheck %s --check-prefix=TC161
// RUN: %clang -target tricore -march=tc161 -mcpu=tc27xx -### %s 2>&1 | FileCheck %s --check-prefix=TC161
// RUN: %clang -target tricore -march=tc161 -mcpu=tc29xx -### %s 2>&1 | FileCheck %s --check-prefix=TC161
// RUN: %clang -target tricore -march=tc161 -mcpu=tc2d5d -### %s 2>&1 | FileCheck %s --check-prefix=TC161
// RUN: %clang -target tricore              -mcpu=tc21xx -### %s 2>&1 | FileCheck %s --check-prefix=TC161
// RUN: %clang -target tricore              -mcpu=tc22xx -### %s 2>&1 | FileCheck %s --check-prefix=TC161
// RUN: %clang -target tricore              -mcpu=tc23xx -### %s 2>&1 | FileCheck %s --check-prefix=TC161
// RUN: %clang -target tricore              -mcpu=tc26xx -### %s 2>&1 | FileCheck %s --check-prefix=TC161
// RUN: %clang -target tricore              -mcpu=tc27xx -### %s 2>&1 | FileCheck %s --check-prefix=TC161
// RUN: %clang -target tricore              -mcpu=tc29xx -### %s 2>&1 | FileCheck %s --check-prefix=TC161
// RUN: %clang -target tricore              -mcpu=tc2d5d -### %s 2>&1 | FileCheck %s --check-prefix=TC161
// TC161:     "-target-feature" "+tc161"
// TC161-NOT: "-target-feature" "+tc162"
// TC161-NOT: "-target-feature" "+tc18"

// RUN: %clang -target tricore -march=tc162              -### %s 2>&1 | FileCheck %s --check-prefix=TC162
// RUN: %clang -target tricore -march=tc162 -mcpu=tc35xx -### %s 2>&1 | FileCheck %s --check-prefix=TC162
// RUN: %clang -target tricore -march=tc162 -mcpu=tc37xx -### %s 2>&1 | FileCheck %s --check-prefix=TC162
// RUN: %clang -target tricore -march=tc162 -mcpu=tc38xx -### %s 2>&1 | FileCheck %s --check-prefix=TC162
// RUN: %clang -target tricore -march=tc162 -mcpu=tc39xx -### %s 2>&1 | FileCheck %s --check-prefix=TC162
// RUN: %clang -target tricore              -mcpu=tc35xx -### %s 2>&1 | FileCheck %s --check-prefix=TC162
// RUN: %clang -target tricore              -mcpu=tc37xx -### %s 2>&1 | FileCheck %s --check-prefix=TC162
// RUN: %clang -target tricore              -mcpu=tc38xx -### %s 2>&1 | FileCheck %s --check-prefix=TC162
// RUN: %clang -target tricore              -mcpu=tc39xx -### %s 2>&1 | FileCheck %s --check-prefix=TC162
// TC162:     "-target-feature" "+tc162"
// TC162-NOT: "-target-feature" "+tc161"
// TC162-NOT: "-target-feature" "+tc18"

// RUN: %clang -target tricore -march=tc18               -### %s 2>&1 | FileCheck %s --check-prefix=TC18
// RUN: %clang -target tricore -march=tc18  -mcpu=tc4xx  -### %s 2>&1 | FileCheck %s --check-prefix=TC18
// RUN: %clang -target tricore              -mcpu=tc4xx  -### %s 2>&1 | FileCheck %s --check-prefix=TC18
// TC18:     "-target-feature" "+tc18"
// TC18-NOT: "-target-feature" "+tc161"
// TC18-NOT: "-target-feature" "+tc162"
