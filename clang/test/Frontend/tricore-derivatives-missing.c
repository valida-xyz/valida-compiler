// RUN: not %clang_cc1 -triple tricore %s -o - 2>&1 | FileCheck %s --check-prefix=ERROR
// ERROR: tricore derivative not specified, please use -target-feature
