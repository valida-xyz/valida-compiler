// RUN: %clang -target tricore-unknown-unknown -### %s -fsyntax-only 2>&1 | FileCheck %s

// The TriCore EABI states that the C char type maps to the signed character TriCore type
// Since -fsigned-char is default, we check that the -fno-signed-char option is not present

// CHECK: tricore-unknown-unknown
// CHECK-NO: fno-signed-char
