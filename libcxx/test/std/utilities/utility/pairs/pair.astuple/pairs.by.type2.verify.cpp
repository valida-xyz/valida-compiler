//===----------------------------------------------------------------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

// UNSUPPORTED: c++03, c++11

#include <utility>
#include <complex>

void f() {
  typedef std::complex<float> cf;
  auto t1 = std::make_pair<int, int> ( 42, 43 );
  (void)std::get<int>(t1); // expected-error {{call to 'get' is ambiguous}}
}
