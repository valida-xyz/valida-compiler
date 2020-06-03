// RUN: %clangxx %s -### --target=tricore \
// RUN:     -resource-dir=%S/Inputs/resource_dir_with_per_target_subdir 2>&1 \
// RUN:     | FileCheck -check-prefixes=CHECK %s
// CHECK: "-resource-dir" "[[RESOURCE_DIR:[^"]+]]"
// CHECK: "[[SYSROOT:[^"]+]]{{/|\\\\}}tricore{{/|\\\\}}include{{/|\\\\}}c++{{/|\\\\}}v1"
// CHECK: "[[SYSROOT:[^"]+]]{{/|\\\\}}tricore{{/|\\\\}}include

// RUN: %clangxx %s -### --target=tricore -nostdlibinc \
// RUN:     -resource-dir=%S/Inputs/resource_dir_with_per_target_subdir 2>&1 \
// RUN:     | FileCheck -check-prefixes=CHECK-NOSTDLIBINC %s
// CHECK-NOSTDLIBINC-NOT: "[[SYSROOT:[^"]+]]{{/|\\\\}}tricore{{/|\\\\}}include
// CHECK-NOSTDLIBINC-NOT: "[[SYSROOT:[^"]+]]{{/|\\\\}}tricore{{/|\\\\}}include{{/|\\\\}}c++{{/|\\\\}}v1"

// RUN: %clangxx %s -### --target=tricore -nostdinc++ \
// RUN:     -resource-dir=%S/Inputs/resource_dir_with_per_target_subdir 2>&1 \
// RUN:     | FileCheck -check-prefixes=CHECK-NOSTDINCXX %s
// CHECK-NOSTDINCXX: "[[SYSROOT:[^"]+]]{{/|\\\\}}tricore{{/|\\\\}}include
// CHECK-NOSTDINCXX-NOT: "[[SYSROOT:[^"]+]]{{/|\\\\}}tricore{{/|\\\\}}include{{/|\\\\}}c++{{/|\\\\}}v1"

// RUN: %clang %s -### --target=tricore \
// RUN:     -resource-dir=%S/Inputs/resource_dir_with_per_target_subdir 2>&1 \
// RUN:     | FileCheck -check-prefixes=CHECK-CLANG %s
// CHECK-CLANG: "-resource-dir" "[[RESOURCE_DIR:[^"]+]]"
// CHECK-CLANG: "[[SYSROOT:[^"]+]]{{/|\\\\}}tricore{{/|\\\\}}include{{/|\\\\}}c++{{/|\\\\}}v1"
// CHECK-CLANG: "[[SYSROOT:[^"]+]]{{/|\\\\}}tricore{{/|\\\\}}include

// RUN: %clang %s -### --target=tricore -nostdlibinc \
// RUN:     -resource-dir=%S/Inputs/resource_dir_with_per_target_subdir 2>&1 \
// RUN:     | FileCheck -check-prefixes=CHECK-CLANG-NOSTDLIBINC %s
// CHECK-CLANG-NOSTDLIBINC-NOT: "[[SYSROOT:[^"]+]]{{/|\\\\}}tricore{{/|\\\\}}include
// CHECK-CLANG-NOSTDLIBINC-NOT: "[[SYSROOT:[^"]+]]{{/|\\\\}}tricore{{/|\\\\}}include{{/|\\\\}}c++{{/|\\\\}}v1"

// RUN: %clang %s -### --target=tricore -nostdinc++ \
// RUN:     -resource-dir=%S/Inputs/resource_dir_with_per_target_subdir 2>&1 \
// RUN:     | FileCheck -check-prefixes=CHECK-CLANG-NOSTDINCXX %s
// CHECK-CLANG-NOSTDINCXX: "[[SYSROOT:[^"]+]]{{/|\\\\}}tricore{{/|\\\\}}include
// CHECK-CLANG-NOSTDINCXX-NOT: "[[SYSROOT:[^"]+]]{{/|\\\\}}tricore{{/|\\\\}}include{{/|\\\\}}c++{{/|\\\\}}v1"
