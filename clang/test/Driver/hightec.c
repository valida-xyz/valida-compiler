// RUN: %clang %s -### --target=tricore \
// RUN:     -resource-dir=%S/Inputs/resource_dir_with_per_target_subdir 2>&1 \
// RUN:     | FileCheck -check-prefixes=CHECK %s
// CHECK: "-resource-dir" "[[RESOURCE_DIR:[^"]+]]"
// CHECK: "[[RESOURCE_DIR]]{{/|\\\\}}include"
// CHECK: "[[SYSROOT:[^"]+]]{{/|\\\\}}tricore{{/|\\\\}}include"

// RUN: %clang %s -### --target=tricore -nostdinc 2>&1 \
// RUN:     -resource-dir=%S/Inputs/resource_dir_with_per_target_subdir \
// RUN:     | FileCheck %s -check-prefix=CHECK-NOSTDINC
// CHECK-NOSTDINC: "-resource-dir" "[[RESOURCE_DIR:[^"]+]]"
// CHECK-NOSTDINC-NOT: "[[SYSROOT:[^"]+]]{{/|\\\\}}tricore{{/|\\\\}}include"
// CHECK-NOSTDINC-NOT: "[[RESOURCE_DIR]]{{/|\\\\}}include"

// RUN: %clang %s -### --target=tricore -nobuiltininc 2>&1 \
// RUN:     -resource-dir=%S/Inputs/resource_dir_with_per_target_subdir \
// RUN:     | FileCheck %s -check-prefix=CHECK-NOBUILTININC
// CHECK-NOBUILTININC: "-resource-dir" "[[RESOURCE_DIR:[^"]+]]"
// CHECK-NOBUILTININC: "[[SYSROOT:[^"]+]]{{/|\\\\}}tricore{{/|\\\\}}include"
// CHECK-NOBUILTININC-NOT: "[[RESOURCE_DIR]]{{/|\\\\}}include"

// RUN: %clang %s -### --target=tricore -nostdlibinc 2>&1 \
// RUN:     -resource-dir=%S/Inputs/resource_dir_with_per_target_subdir \
// RUN:     | FileCheck %s -check-prefix=CHECK-NOSTDLIBINC
// CHECK-NOSTDLIBINC: "-resource-dir" "[[RESOURCE_DIR:[^"]+]]"
// CHECK-NOSTDLIBINC: "[[RESOURCE_DIR]]{{/|\\\\}}include"
// CHECK-NOSTDLIBINC-NOT: "[[SYSROOT:[^"]+]]{{/|\\\\}}tricore{{/|\\\\}}include"

// RUN: %clang %s -### --target=tricore -march=tc161 \
// RUN:     -ccc-install-dir %S/Inputs/basic_htc_tree/bin 2>&1 \
// RUN:     | FileCheck -check-prefixes=CHECK-TC161 %s
// CHECK-TC161: "[[SYSROOT:[^"]+]]{{/|\\\\}}tricore{{/|\\\\}}lib{{/|\\\\}}tc161
// CHECK-TC161-NOT: "[[SYSROOT:[^"]+]]{{/|\\\\}}tricore{{/|\\\\}}lib{{/|\\\\}}tc162
// CHECK-TC161-NOT: "[[SYSROOT:[^"]+]]{{/|\\\\}}tricore{{/|\\\\}}lib{{/|\\\\}}tc18

// RUN: %clang %s -### --target=tricore -march=tc162 \
// RUN:     -ccc-install-dir %S/Inputs/basic_htc_tree/bin 2>&1 \
// RUN:     | FileCheck -check-prefixes=CHECK-TC162 %s
// CHECK-TC162: "[[SYSROOT:[^"]+]]{{/|\\\\}}tricore{{/|\\\\}}lib{{/|\\\\}}tc162
// CHECK-TC162-NOT: "[[SYSROOT:[^"]+]]{{/|\\\\}}tricore{{/|\\\\}}lib{{/|\\\\}}tc161
// CHECK-TC162-NOT: "[[SYSROOT:[^"]+]]{{/|\\\\}}tricore{{/|\\\\}}lib{{/|\\\\}}tc18

// RUN: %clang %s -### --target=tricore -march=tc18 \
// RUN:     -ccc-install-dir %S/Inputs/basic_htc_tree/bin 2>&1 \
// RUN:     | FileCheck -check-prefixes=CHECK-TC18 %s
// CHECK-TC18: "[[SYSROOT:[^"]+]]{{/|\\\\}}tricore{{/|\\\\}}lib{{/|\\\\}}tc18
// CHECK-TC18-NOT: "[[SYSROOT:[^"]+]]{{/|\\\\}}tricore{{/|\\\\}}lib{{/|\\\\}}tc161
// CHECK-TC18-NOT: "[[SYSROOT:[^"]+]]{{/|\\\\}}tricore{{/|\\\\}}lib{{/|\\\\}}tc162
