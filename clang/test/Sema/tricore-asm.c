// RUN: %clang_cc1 %s -triple tricore -target-feature +tc27xx -verify -fsyntax-only

// expected-no-diagnostics

void i (void) {
  asm volatile ("" ::: "d0",  "d1",  "d2",  "d3",  "d4",  "d5",  "d6",  "d7");
  asm volatile ("" ::: "d8",  "d9",  "d10", "d11", "d12", "d13", "d14", "d15");

  asm volatile ("" ::: "a0",  "a1",  "a2",  "a3",  "a4",  "a5",  "a6",  "a7");
  asm volatile ("" ::: "a8",  "a9",  "a10", "a11", "a12", "a13", "a14", "a15");

  asm volatile ("" ::: "e0",  "e2",  "e4",  "e6",  "e8",  "e10", "e12",  "e14");

  asm volatile ("" ::: "p0",  "p2",  "p4",  "p6",  "p8",  "p10",  "p12",  "p14");

  asm volatile ("" ::: "sp",  "fp");
}
