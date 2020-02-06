// RUN: %clang -target tricore -march=tc161 -mcpu=tc21xx -### %s 2>&1 | FileCheck %s --check-prefix=TC2XX
// RUN: %clang -target tricore              -mcpu=tc21xx -### %s 2>&1 | FileCheck %s --check-prefix=TC2XX
// RUN: %clang -target tricore -march=tc161 -mcpu=tc22xx -### %s 2>&1 | FileCheck %s --check-prefix=TC2XX
// RUN: %clang -target tricore              -mcpu=tc22xx -### %s 2>&1 | FileCheck %s --check-prefix=TC2XX
// RUN: %clang -target tricore -march=tc161 -mcpu=tc23xx -### %s 2>&1 | FileCheck %s --check-prefix=TC2XX
// RUN: %clang -target tricore              -mcpu=tc23xx -### %s 2>&1 | FileCheck %s --check-prefix=TC2XX
// RUN: %clang -target tricore -march=tc161 -mcpu=tc26xx -### %s 2>&1 | FileCheck %s --check-prefix=TC2XX
// RUN: %clang -target tricore              -mcpu=tc26xx -### %s 2>&1 | FileCheck %s --check-prefix=TC2XX
// RUN: %clang -target tricore -march=tc161              -### %s 2>&1 | FileCheck %s --check-prefix=TC2XX
// RUN: %clang -target tricore -march=tc161 -mcpu=tc27xx -### %s 2>&1 | FileCheck %s --check-prefix=TC2XX
// RUN: %clang -target tricore              -mcpu=tc27xx -### %s 2>&1 | FileCheck %s --check-prefix=TC2XX
// RUN: %clang -target tricore -march=tc161 -mcpu=tc29xx -### %s 2>&1 | FileCheck %s --check-prefix=TC2XX
// RUN: %clang -target tricore              -mcpu=tc29xx -### %s 2>&1 | FileCheck %s --check-prefix=TC2XX
// RUN: %clang -target tricore -march=tc161 -mcpu=tc2d5d -### %s 2>&1 | FileCheck %s --check-prefix=TC2XX
// RUN: %clang -target tricore              -mcpu=tc2d5d -### %s 2>&1 | FileCheck %s --check-prefix=TC2XX
// TC2XX: "-target-cpu" "tc2xx"

// RUN: %clang -target tricore -march=tc162 -mcpu=tc35xx -### %s 2>&1 | FileCheck %s --check-prefix=TC3XX
// RUN: %clang -target tricore              -mcpu=tc35xx -### %s 2>&1 | FileCheck %s --check-prefix=TC3XX
// RUN: %clang -target tricore -march=tc162 -mcpu=tc37xx -### %s 2>&1 | FileCheck %s --check-prefix=TC3XX
// RUN: %clang -target tricore              -mcpu=tc37xx -### %s 2>&1 | FileCheck %s --check-prefix=TC3XX
// RUN: %clang -target tricore -march=tc162 -mcpu=tc38xx -### %s 2>&1 | FileCheck %s --check-prefix=TC3XX
// RUN: %clang -target tricore              -mcpu=tc38xx -### %s 2>&1 | FileCheck %s --check-prefix=TC3XX
// RUN: %clang -target tricore -march=tc162              -### %s 2>&1 | FileCheck %s --check-prefix=TC3XX
// RUN: %clang -target tricore -march=tc162 -mcpu=tc39xx -### %s 2>&1 | FileCheck %s --check-prefix=TC3XX
// RUN: %clang -target tricore              -mcpu=tc39xx -### %s 2>&1 | FileCheck %s --check-prefix=TC3XX
// TC3XX: "-target-cpu" "tc3xx"

// RUN: %clang -target tricore -march=tc18               -### %s 2>&1 | FileCheck %s --check-prefix=TC4XX
// RUN: %clang -target tricore -march=tc18  -mcpu=tc4xx  -### %s 2>&1 | FileCheck %s --check-prefix=TC4XX
// RUN: %clang -target tricore              -mcpu=tc4xx  -### %s 2>&1 | FileCheck %s --check-prefix=TC4XX
// TC4XX: "-target-cpu" "tc4xx"
