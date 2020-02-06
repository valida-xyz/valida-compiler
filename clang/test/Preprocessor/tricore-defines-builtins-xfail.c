// RUN: %clang -target tricore -mcpu=tc21xx -E -dM %s -o - 2>&1 | FileCheck %s
// RUN: %clang -target tricore -mcpu=tc22xx -E -dM %s -o - 2>&1 | FileCheck %s
// RUN: %clang -target tricore -mcpu=tc23xx -E -dM %s -o - 2>&1 | FileCheck %s
// RUN: %clang -target tricore -mcpu=tc26xx -E -dM %s -o - 2>&1 | FileCheck %s
// RUN: %clang -target tricore -mcpu=tc27xx -E -dM %s -o - 2>&1 | FileCheck %s
// RUN: %clang -target tricore -mcpu=tc29xx -E -dM %s -o - 2>&1 | FileCheck %s
// RUN: %clang -target tricore -mcpu=tc2d5d -E -dM %s -o - 2>&1 | FileCheck %s
// RUN: %clang -target tricore -mcpu=tc35xx -E -dM %s -o - 2>&1 | FileCheck %s
// RUN: %clang -target tricore -mcpu=tc37xx -E -dM %s -o - 2>&1 | FileCheck %s
// RUN: %clang -target tricore -mcpu=tc38xx -E -dM %s -o - 2>&1 | FileCheck %s
// RUN: %clang -target tricore -mcpu=tc39xx -E -dM %s -o - 2>&1 | FileCheck %s
// RUN: %clang -target tricore -mcpu=tc4xx  -E -dM %s -o - 2>&1 | FileCheck %s
// XFAIL: *

// Check that we do not define __BUILTIN_TRICORE_* macros as we don't support them yet
// CHECK: __BUILTIN_TRICORE
