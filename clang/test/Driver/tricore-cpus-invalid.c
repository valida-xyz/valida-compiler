// RUN: %clang -target tricore -march=tc161 -mcpu=tc35xx -### %s 2>&1 | FileCheck %s --check-prefix=ERROR-TC161
// RUN: %clang -target tricore -march=tc161 -mcpu=tc37xx -### %s 2>&1 | FileCheck %s --check-prefix=ERROR-TC161
// RUN: %clang -target tricore -march=tc161 -mcpu=tc38xx -### %s 2>&1 | FileCheck %s --check-prefix=ERROR-TC161
// RUN: %clang -target tricore -march=tc161 -mcpu=tc39xx -### %s 2>&1 | FileCheck %s --check-prefix=ERROR-TC161
// RUN: %clang -target tricore -march=tc161 -mcpu=tc4xx  -### %s 2>&1 | FileCheck %s --check-prefix=ERROR-TC161

// ERROR-TC161:      cannot specify '-march=tc161' along with '-mcpu={{tc(3[5-9]|4)xx}}'
// ERROR-TC161-NEXT: valid target CPU values are: tc21xx, tc22xx, tc23xx, tc26xx,
// ERROR-TC161-SAME: tc27xx, tc29xx, tc2d5d

// RUN: %clang -target tricore -march=tc162 -mcpu=tc21xx -### %s 2>&1 | FileCheck %s --check-prefix=ERROR-TC162
// RUN: %clang -target tricore -march=tc162 -mcpu=tc22xx -### %s 2>&1 | FileCheck %s --check-prefix=ERROR-TC162
// RUN: %clang -target tricore -march=tc162 -mcpu=tc23xx -### %s 2>&1 | FileCheck %s --check-prefix=ERROR-TC162
// RUN: %clang -target tricore -march=tc162 -mcpu=tc26xx -### %s 2>&1 | FileCheck %s --check-prefix=ERROR-TC162
// RUN: %clang -target tricore -march=tc162 -mcpu=tc27xx -### %s 2>&1 | FileCheck %s --check-prefix=ERROR-TC162
// RUN: %clang -target tricore -march=tc162 -mcpu=tc29xx -### %s 2>&1 | FileCheck %s --check-prefix=ERROR-TC162
// RUN: %clang -target tricore -march=tc162 -mcpu=tc2d5d -### %s 2>&1 | FileCheck %s --check-prefix=ERROR-TC162
// RUN: %clang -target tricore -march=tc162 -mcpu=tc4xx  -### %s 2>&1 | FileCheck %s --check-prefix=ERROR-TC162

// ERROR-TC162:      cannot specify '-march=tc162' along with '-mcpu={{tc((2[1-9]|4)xx|2d5d)}}'
// ERROR-TC162-NEXT: valid target CPU values are: tc35xx, tc37xx, tc38xx, tc39xx

// RUN: %clang -target tricore -march=tc18  -mcpu=tc21xx -### %s 2>&1 | FileCheck %s --check-prefix=ERROR-TC18
// RUN: %clang -target tricore -march=tc18  -mcpu=tc22xx -### %s 2>&1 | FileCheck %s --check-prefix=ERROR-TC18
// RUN: %clang -target tricore -march=tc18  -mcpu=tc23xx -### %s 2>&1 | FileCheck %s --check-prefix=ERROR-TC18
// RUN: %clang -target tricore -march=tc18  -mcpu=tc26xx -### %s 2>&1 | FileCheck %s --check-prefix=ERROR-TC18
// RUN: %clang -target tricore -march=tc18  -mcpu=tc27xx -### %s 2>&1 | FileCheck %s --check-prefix=ERROR-TC18
// RUN: %clang -target tricore -march=tc18  -mcpu=tc29xx -### %s 2>&1 | FileCheck %s --check-prefix=ERROR-TC18
// RUN: %clang -target tricore -march=tc18  -mcpu=tc2d5d -### %s 2>&1 | FileCheck %s --check-prefix=ERROR-TC18
// RUN: %clang -target tricore -march=tc18  -mcpu=tc35xx -### %s 2>&1 | FileCheck %s --check-prefix=ERROR-TC18
// RUN: %clang -target tricore -march=tc18  -mcpu=tc37xx -### %s 2>&1 | FileCheck %s --check-prefix=ERROR-TC18
// RUN: %clang -target tricore -march=tc18  -mcpu=tc38xx -### %s 2>&1 | FileCheck %s --check-prefix=ERROR-TC18
// RUN: %clang -target tricore -march=tc18  -mcpu=tc39xx -### %s 2>&1 | FileCheck %s --check-prefix=ERROR-TC18

// ERROR-TC18:       cannot specify '-march=tc18' along with '-mcpu={{tc((2|3)[1-9]xx|2d5d)}}'
// ERROR-TC18-NEXT:  valid target CPU values are: tc4xx

// RUN: %clang -target tricore -mcpu=foo   -### %s 2>&1 | FileCheck %s --check-prefix=ERROR-CPU -DCPU=foo
// RUN: %clang -target tricore -mcpu=tc2xx -### %s 2>&1 | FileCheck %s --check-prefix=ERROR-CPU -DCPU=tc2xx
// RUN: %clang -target tricore -mcpu=tc3xx -### %s 2>&1 | FileCheck %s --check-prefix=ERROR-CPU -DCPU=tc3xx
// ERROR-CPU:      unknown target CPU '[[CPU]]'
// ERROR-CPU-NEXT: valid target CPU values are: tc21xx, tc22xx, tc23xx, tc26xx,
// ERROR-CPU-SAME: tc27xx, tc29xx, tc2d5d, tc35xx, tc37xx, tc38xx, tc39xx, tc4xx

// RUN: %clang -target tricore -march=foo  -### %s 2>&1 | FileCheck %s --check-prefix=ERROR-ARCH
// ERROR-ARCH: invalid arch name '-march=foo'
