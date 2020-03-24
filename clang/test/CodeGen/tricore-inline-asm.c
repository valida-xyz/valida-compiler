// RUN: %clang_cc1 -triple tricore -target-feature +tc27xx -O2 -emit-llvm %s -o - \
// RUN:     | FileCheck %s

// Test TriCore specific inline assembly constraints.

int d;
void test_d_input() {
// CHECK-LABEL: define void @test_d_input()
// CHECK: [[INT_ARG:%[a-zA-Z_0-9]+]] = load i32, i32* @d
// CHECK: call void asm sideeffect "", "d"(i32 [[INT_ARG]])
  asm volatile ("" :: "d"(d));
}

long long e;
void test_i64_d_input() {
// CHECK-LABEL: define void @test_i64_d_input()
// CHECK: [[INT_ARG:%[a-zA-Z_0-9]+]] = load i64, i64* @e
// CHECK: call void asm sideeffect "", "d"(i64 [[INT_ARG]])
  asm volatile ("" :: "d"(e));
}


int test_d_output() {
// CHECK-LABEL: define i32 @test_d_output()
// CHECK: [[RES:%[a-zA-Z_0-9]+]] = tail call i32 asm sideeffect "", "=d"()
// CHECK: ret i32 [[RES]]
  int d;
  asm volatile ("" : "=d"(d));
  return d;
}

long long test_i64_d_output() {
// CHECK-LABEL: define i64 @test_i64_d_output()
// CHECK: [[RES:%[a-zA-Z_0-9]+]] = tail call i64 asm sideeffect "", "=d"()
// CHECK: ret i64 [[RES]]
  long long d;
  asm volatile ("" : "=d"(d));
  return d;
}

