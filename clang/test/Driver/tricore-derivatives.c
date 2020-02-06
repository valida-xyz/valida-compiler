// RUN: %clang -target tricore -march=tc161 -mcpu=tc21xx -### %s 2>&1 | FileCheck %s --check-prefix=TC21XX
// RUN: %clang -target tricore              -mcpu=tc21xx -### %s 2>&1 | FileCheck %s --check-prefix=TC21XX
// RUN: %clang -target tricore -march=tc161 -mcpu=tc21xx -S -emit-llvm -o - %s 2>&1 | FileCheck %s --check-prefix=IR-FEAT -DDERIV=+tc21xx
// RUN: %clang -target tricore              -mcpu=tc21xx -S -emit-llvm -o - %s 2>&1 | FileCheck %s --check-prefix=IR-FEAT -DDERIV=+tc21xx
// TC21XX: "-target-feature" "+tc21xx"

// RUN: %clang -target tricore -march=tc161 -mcpu=tc22xx -### %s 2>&1 | FileCheck %s --check-prefix=TC22XX
// RUN: %clang -target tricore              -mcpu=tc22xx -### %s 2>&1 | FileCheck %s --check-prefix=TC22XX
// RUN: %clang -target tricore -march=tc161 -mcpu=tc22xx -S -emit-llvm -o - %s 2>&1 | FileCheck %s --check-prefix=IR-FEAT -DDERIV=+tc22xx
// RUN: %clang -target tricore              -mcpu=tc22xx -S -emit-llvm -o - %s 2>&1 | FileCheck %s --check-prefix=IR-FEAT -DDERIV=+tc22xx
// TC22XX: "-target-feature" "+tc22xx"

// RUN: %clang -target tricore -march=tc161 -mcpu=tc23xx -### %s 2>&1 | FileCheck %s --check-prefix=TC23XX
// RUN: %clang -target tricore              -mcpu=tc23xx -### %s 2>&1 | FileCheck %s --check-prefix=TC23XX
// RUN: %clang -target tricore -march=tc161 -mcpu=tc23xx -S -emit-llvm -o - %s 2>&1 | FileCheck %s --check-prefix=IR-FEAT -DDERIV=+tc23xx
// RUN: %clang -target tricore              -mcpu=tc23xx -S -emit-llvm -o - %s 2>&1 | FileCheck %s --check-prefix=IR-FEAT -DDERIV=+tc23xx
// TC23XX: "-target-feature" "+tc23xx"

// RUN: %clang -target tricore -march=tc161 -mcpu=tc26xx -### %s 2>&1 | FileCheck %s --check-prefix=TC26XX
// RUN: %clang -target tricore              -mcpu=tc26xx -### %s 2>&1 | FileCheck %s --check-prefix=TC26XX
// RUN: %clang -target tricore -march=tc161 -mcpu=tc26xx -S -emit-llvm -o - %s 2>&1 | FileCheck %s --check-prefix=IR-FEAT -DDERIV=+tc26xx
// RUN: %clang -target tricore              -mcpu=tc26xx -S -emit-llvm -o - %s 2>&1 | FileCheck %s --check-prefix=IR-FEAT -DDERIV=+tc26xx
// TC26XX: "-target-feature" "+tc26xx"

// RUN: %clang -target tricore -march=tc161              -### %s 2>&1 | FileCheck %s --check-prefix=TC27XX
// RUN: %clang -target tricore -march=tc161 -mcpu=tc27xx -### %s 2>&1 | FileCheck %s --check-prefix=TC27XX
// RUN: %clang -target tricore              -mcpu=tc27xx -### %s 2>&1 | FileCheck %s --check-prefix=TC27XX
// RUN: %clang -target tricore -march=tc161              -S -emit-llvm -o - %s 2>&1 | FileCheck %s --check-prefix=IR-FEAT -DDERIV=+tc27xx
// RUN: %clang -target tricore -march=tc161 -mcpu=tc27xx -S -emit-llvm -o - %s 2>&1 | FileCheck %s --check-prefix=IR-FEAT -DDERIV=+tc27xx
// RUN: %clang -target tricore              -mcpu=tc27xx -S -emit-llvm -o - %s 2>&1 | FileCheck %s --check-prefix=IR-FEAT -DDERIV=+tc27xx
// TC27XX: "-target-feature" "+tc27xx"

// RUN: %clang -target tricore -march=tc161 -mcpu=tc29xx -### %s 2>&1 | FileCheck %s --check-prefix=TC29XX
// RUN: %clang -target tricore              -mcpu=tc29xx -### %s 2>&1 | FileCheck %s --check-prefix=TC29XX
// RUN: %clang -target tricore -march=tc161 -mcpu=tc29xx -S -emit-llvm -o - %s 2>&1 | FileCheck %s --check-prefix=IR-FEAT -DDERIV=+tc29xx
// RUN: %clang -target tricore              -mcpu=tc29xx -S -emit-llvm -o - %s 2>&1 | FileCheck %s --check-prefix=IR-FEAT -DDERIV=+tc29xx
// TC29XX: "-target-feature" "+tc29xx"

// RUN: %clang -target tricore -march=tc161 -mcpu=tc2d5d -### %s 2>&1 | FileCheck %s --check-prefix=TC2D5D
// RUN: %clang -target tricore              -mcpu=tc2d5d -### %s 2>&1 | FileCheck %s --check-prefix=TC2D5D
// RUN: %clang -target tricore -march=tc161 -mcpu=tc2d5d -S -emit-llvm -o - %s 2>&1 | FileCheck %s --check-prefix=IR-FEAT -DDERIV=+tc2d5d
// RUN: %clang -target tricore              -mcpu=tc2d5d -S -emit-llvm -o - %s 2>&1 | FileCheck %s --check-prefix=IR-FEAT -DDERIV=+tc2d5d
// TC2D5D: "-target-feature" "+tc2d5d"

// RUN: %clang -target tricore -march=tc162 -mcpu=tc35xx -### %s 2>&1 | FileCheck %s --check-prefix=TC35XX
// RUN: %clang -target tricore              -mcpu=tc35xx -### %s 2>&1 | FileCheck %s --check-prefix=TC35XX
// RUN: %clang -target tricore -march=tc162 -mcpu=tc35xx -S -emit-llvm -o - %s 2>&1 | FileCheck %s --check-prefix=IR-FEAT -DDERIV=+tc35xx
// RUN: %clang -target tricore              -mcpu=tc35xx -S -emit-llvm -o - %s 2>&1 | FileCheck %s --check-prefix=IR-FEAT -DDERIV=+tc35xx
// TC35XX: "-target-feature" "+tc35xx"

// RUN: %clang -target tricore -march=tc162 -mcpu=tc37xx -### %s 2>&1 | FileCheck %s --check-prefix=TC37XX
// RUN: %clang -target tricore              -mcpu=tc37xx -### %s 2>&1 | FileCheck %s --check-prefix=TC37XX
// RUN: %clang -target tricore -march=tc162 -mcpu=tc37xx -S -emit-llvm -o - %s 2>&1 | FileCheck %s --check-prefix=IR-FEAT -DDERIV=+tc37xx
// RUN: %clang -target tricore              -mcpu=tc37xx -S -emit-llvm -o - %s 2>&1 | FileCheck %s --check-prefix=IR-FEAT -DDERIV=+tc37xx
// TC37XX: "-target-feature" "+tc37xx"

// RUN: %clang -target tricore -march=tc162 -mcpu=tc38xx -### %s 2>&1 | FileCheck %s --check-prefix=TC38XX
// RUN: %clang -target tricore              -mcpu=tc38xx -### %s 2>&1 | FileCheck %s --check-prefix=TC38XX
// RUN: %clang -target tricore -march=tc162 -mcpu=tc38xx -S -emit-llvm -o - %s 2>&1 | FileCheck %s --check-prefix=IR-FEAT -DDERIV=+tc38xx
// RUN: %clang -target tricore              -mcpu=tc38xx -S -emit-llvm -o - %s 2>&1 | FileCheck %s --check-prefix=IR-FEAT -DDERIV=+tc38xx
// TC38XX: "-target-feature" "+tc38xx"

// RUN: %clang -target tricore -march=tc162              -### %s 2>&1 | FileCheck %s --check-prefix=TC39XX
// RUN: %clang -target tricore -march=tc162 -mcpu=tc39xx -### %s 2>&1 | FileCheck %s --check-prefix=TC39XX
// RUN: %clang -target tricore              -mcpu=tc39xx -### %s 2>&1 | FileCheck %s --check-prefix=TC39XX
// RUN: %clang -target tricore -march=tc162              -S -emit-llvm -o - %s 2>&1 | FileCheck %s --check-prefix=IR-FEAT -DDERIV=+tc39xx
// RUN: %clang -target tricore -march=tc162 -mcpu=tc39xx -S -emit-llvm -o - %s 2>&1 | FileCheck %s --check-prefix=IR-FEAT -DDERIV=+tc39xx
// RUN: %clang -target tricore              -mcpu=tc39xx -S -emit-llvm -o - %s 2>&1 | FileCheck %s --check-prefix=IR-FEAT -DDERIV=+tc39xx
// TC39XX: "-target-feature" "+tc39xx"

// RUN: %clang -target tricore -march=tc18               -### %s 2>&1 | FileCheck %s --check-prefix=TC4XX
// RUN: %clang -target tricore -march=tc18  -mcpu=tc4xx  -### %s 2>&1 | FileCheck %s --check-prefix=TC4XX
// RUN: %clang -target tricore              -mcpu=tc4xx  -### %s 2>&1 | FileCheck %s --check-prefix=TC4XX
// RUN: %clang -target tricore -march=tc18               -S -emit-llvm -o - %s 2>&1 | FileCheck %s --check-prefix=IR-FEAT -DDERIV=+tc4xx
// RUN: %clang -target tricore -march=tc18  -mcpu=tc4xx  -S -emit-llvm -o - %s 2>&1 | FileCheck %s --check-prefix=IR-FEAT -DDERIV=+tc4xx
// RUN: %clang -target tricore              -mcpu=tc4xx  -S -emit-llvm -o - %s 2>&1 | FileCheck %s --check-prefix=IR-FEAT -DDERIV=+tc4xx
// TC4XX: "-target-feature" "+tc4xx"

// IR-FEAT:      "target-features"=
// IR-FEAT-NOT: [[DERIV]]
void foo(){};
