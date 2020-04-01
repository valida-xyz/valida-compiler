// RUN: %clang -target tricore -mcpu=tc21xx -E -dM %s -o - | FileCheck %s --check-prefixes=COMMON,TC161 -DARCH=0x161 -DCPU=0x2100
// RUN: %clang -target tricore -mcpu=tc22xx -E -dM %s -o - | FileCheck %s --check-prefixes=COMMON,TC161 -DARCH=0x161 -DCPU=0x2200
// RUN: %clang -target tricore -mcpu=tc23xx -E -dM %s -o - | FileCheck %s --check-prefixes=COMMON,TC161 -DARCH=0x161 -DCPU=0x2300
// RUN: %clang -target tricore -mcpu=tc26xx -E -dM %s -o - | FileCheck %s --check-prefixes=COMMON,TC161 -DARCH=0x161 -DCPU=0x2600
// RUN: %clang -target tricore -mcpu=tc27xx -E -dM %s -o - | FileCheck %s --check-prefixes=COMMON,TC161 -DARCH=0x161 -DCPU=0x2700
// RUN: %clang -target tricore -mcpu=tc29xx -E -dM %s -o - | FileCheck %s --check-prefixes=COMMON,TC161 -DARCH=0x161 -DCPU=0x2900
// RUN: %clang -target tricore -mcpu=tc2d5d -E -dM %s -o - | FileCheck %s --check-prefixes=COMMON,TC161 -DARCH=0x161 -DCPU=0x2d5d
// RUN: %clang -target tricore -mcpu=tc35xx -E -dM %s -o - | FileCheck %s --check-prefixes=COMMON,TC161,TC162 -DARCH=0x162 -DCPU=0x3500
// RUN: %clang -target tricore -mcpu=tc37xx -E -dM %s -o - | FileCheck %s --check-prefixes=COMMON,TC161,TC162 -DARCH=0x162 -DCPU=0x3700
// RUN: %clang -target tricore -mcpu=tc38xx -E -dM %s -o - | FileCheck %s --check-prefixes=COMMON,TC161,TC162 -DARCH=0x162 -DCPU=0x3800
// RUN: %clang -target tricore -mcpu=tc39xx -E -dM %s -o - | FileCheck %s --check-prefixes=COMMON,TC161,TC162 -DARCH=0x162 -DCPU=0x3900
// RUN: %clang -target tricore -mcpu=tc4xx  -E -dM %s -o - | FileCheck %s --check-prefixes=COMMON,TC161,TC162,TC18 -DARCH=0x18 -DCPU=0x4000

// Check target, architecture and CPU specific defines

// COMMON-DAG: #define __tricore 1
// COMMON-DAG: #define __tricore__ 1
// COMMON-DAG: #define __TRICORE__ 1
// COMMON-DAG: #define __ELF__ 1
// COMMON-DAG: #define __TRICORE_CORE__ [[ARCH]]
// COMMON-DAG: #define __TRICORE_NAME__ [[CPU]]

// TC161-DAG: #define __TRICORE_HAVE_DIV__ 1
// TC161-DAG: #define __TRICORE_HAVE_FLOAT16__ 1
// TC161-DAG: #define __TRICORE_HAVE_FTOIZ__ 1
// TC161-DAG: #define __TRICORE_HAVE_MOV64__ 1

// TC162-DAG: #define __TRICORE_HAVE_CRCN__ 1
// TC162-DAG: #define __TRICORE_HAVE_FTOHP__ 1
// TC162-DAG: #define __TRICORE_HAVE_HPTOF__ 1
// TC162-DAG: #define __TRICORE_HAVE_LHA__ 1
// TC162-DAG: #define __TRICORE_HAVE_POPCNT__ 1
// TC162-DAG: #define __TRICORE_HAVE_SHUFFLE__ 1

// TODO: add TC18 specific defines
// COMMON-NOT: #define {{[_\w]*TRICORE}}
