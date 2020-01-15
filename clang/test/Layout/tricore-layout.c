// RUN: %clang_cc1 -emit-llvm-only -triple tricore -fdump-record-layouts -Werror %s \
// RUN:            | FileCheck %s

// RUN: %clang_cc1 -emit-llvm-only -triple tricore -fdump-record-layouts -Wpadded -verify %s \
// RUN:            | FileCheck %s

struct bits_0 {
  int f8 : 8;
} B0;

// CHECK:*** Dumping AST Record Layout
// CHECK-NEXT:        0 | struct bits_0
// CHECK-NEXT:    0:0-7 |   int f8
// CHECK-NEXT:          | [sizeof=1, align=1]

struct bits_1 { // expected-warning {{padding size of 'struct bits_1' with 7 bits to alignment boundary}}
  char c;
  int f17 : 17;
} B1;

// CHECK:*** Dumping AST Record Layout
// CHECK-NEXT:        0 | struct bits_1
// CHECK-NEXT:        0 |   char c
// CHECK-NEXT:   1:0-16 |   int f17
// CHECK-NEXT:          | [sizeof=4, align=4]

struct bits_2 { // expected-warning {{padding size of 'struct bits_2' with 23 bits to alignment boundary}}
  char c;
  int f25 : 25; // expected-warning {{padding struct 'struct bits_2' with 1 byte to align 'f25'}}
} B2;

// CHECK:*** Dumping AST Record Layout
// CHECK-NEXT:        0 | struct bits_2
// CHECK-NEXT:        0 |   char c
// CHECK-NEXT:   2:0-24 |   int f25
// CHECK-NEXT:          | [sizeof=8, align=4]

struct bits_3 { // expected-warning {{padding size of 'struct bits_3' with 5 bits to alignment boundary}}
  int first : 3;
  unsigned int second : 8;
} B3;

// CHECK:*** Dumping AST Record Layout
// CHECK-NEXT:        0 | struct bits_3
// CHECK-NEXT:    0:0-2 |   int first
// CHECK-NEXT:   0:3-10 |   unsigned int second
// CHECK-NEXT:          | [sizeof=2, align=2]

struct bits_4 {
  int bitfield : 5;
  char character; // expected-warning {{padding struct 'struct bits_4' with 3 bits to align 'character'}}
} B4;

// CHECK:*** Dumping AST Record Layout
// CHECK-NEXT:        0 | struct bits_4
// CHECK-NEXT:    0:0-4 |   int bitfield
// CHECK-NEXT:        1 |   char character
// CHECK-NEXT:          | [sizeof=2, align=2]

struct bits_5 { // expected-warning {{padding size of 'struct bits_5' with 3 bits to alignment boundary}}
  int f3 : 3;
  int : 0; // expected-warning {{padding struct 'struct bits_5' with 5 bits to align anonymous bit-field}}
  int f5 : 5;
} B5;

// CHECK:*** Dumping AST Record Layout
// CHECK-NEXT:        0 | struct bits_5
// CHECK-NEXT:    0:0-2 |   int f3
// CHECK-NEXT:      1:- |   int
// CHECK-NEXT:    1:0-4 |   int f5
// CHECK-NEXT:          | [sizeof=2, align=2]

struct bits_6 { // expected-warning {{padding size of 'struct bits_6' with 15 bits to alignment boundary}}
  unsigned int f4 : 4;
  unsigned long long f33 : 33; // expected-warning {{padding struct 'struct bits_6' with 12 bits to align 'f33'}}
} B6;

// CHECK:*** Dumping AST Record Layout
// CHECK-NEXT:        0 | struct bits_6
// CHECK-NEXT:    0:0-3 |   unsigned int f4
// CHECK-NEXT:   2:0-32 |   unsigned long long f33
// CHECK-NEXT:          | [sizeof=8, align=4]

struct crash { // expected-warning {{padding size of 'struct crash' with 9 bits to alignment boundary}}
  char a;
  int b : 16;
  int c : 14;
  int : 17;
} B7;

// CHECK:*** Dumping AST Record Layout
// CHECK-NEXT:        0 | struct crash
// CHECK-NEXT:        0 |   char a
// CHECK-NEXT:   1:0-15 |   int b
// CHECK-NEXT:   3:0-13 |   int c
// CHECK-NEXT:   4:6-22 |
// CHECK-NEXT:          | [sizeof=8, align=2]

struct one_hw_boundary_lower {
  int a : 15;
  int b : 17;
} B8;

// CHECK:*** Dumping AST Record Layout
// CHECK-NEXT:        0 | struct one_hw_boundary_lower
// CHECK-NEXT:   0:0-14 |   int a
// CHECK-NEXT:   1:7-23 |   int b
// CHECK-NEXT:          | [sizeof=4, align=4]

struct one_hw_boundary_upper { // expected-warning {{padding size of 'struct one_hw_boundary_upper' with 31 bits to alignment boundary}}
  int a : 16;
  int b : 17;
} B9;

// CHECK:*** Dumping AST Record Layout
// CHECK-NEXT:        0 | struct one_hw_boundary_upper
// CHECK-NEXT:   0:0-15 |   int a
// CHECK-NEXT:   2:0-16 |   int b
// CHECK-NEXT:          | [sizeof=8, align=4]

struct two_hw_boundaries { // expected-warning {{padding size of 'struct two_hw_boundaries' with 30 bits to alignment boundary}}
  int a : 15;
  int b : 18; // expected-warning {{padding struct 'struct two_hw_boundaries' with 1 bit to align 'b'}}
} B10;

// CHECK:*** Dumping AST Record Layout
// CHECK-NEXT:        0 | struct two_hw_boundaries
// CHECK-NEXT:   0:0-14 |   int a
// CHECK-NEXT:   2:0-17 |   int b
// CHECK-NEXT:          | [sizeof=8, align=4]