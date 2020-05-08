// -*- C++ -*-
//===------------------- support/dinkum/xlocale.h -------------------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#ifndef _LIBCPP_SUPPORT_DINKUM_XLOCALE_H
#define _LIBCPP_SUPPORT_DINKUM_XLOCALE_H

#if defined(_HAS_DINKUM_CLIB)

#include <cstdlib>
#include <clocale>
#include <cwctype>
#include <ctype.h>

#ifdef __cplusplus
extern "C" {
#endif

// Add definition for isascii function, which is not part of ISO C
static inline int isascii(int c) {
  return c == (c & 0x7f);
}

// Patch over lack of extended locale support
typedef void *locale_t;
static inline locale_t duplocale(locale_t) {
  return NULL;
}

static inline void freelocale(locale_t) {
}

static inline locale_t newlocale(int, const char *, locale_t) {
  return NULL;
}

static inline locale_t uselocale(locale_t) {
  return NULL;
}

#define LC_COLLATE_MASK  (LC_COLLATE)
#define LC_CTYPE_MASK    (LC_CTYPE)
#define LC_MESSAGES_MASK (LC_MESSAGES)
#define LC_MONETARY_MASK (LC_MONETARY)
#define LC_NUMERIC_MASK  (LC_NUMERIC)
#define LC_TIME_MASK     (LC_TIME)
#define LC_ALL_MASK      (LC_COLLATE_MASK  |\
                          LC_CTYPE_MASK    |\
                          LC_MONETARY_MASK |\
                          LC_NUMERIC_MASK  |\
                          LC_TIME_MASK     |\
                          LC_MESSAGES_MASK)

#ifdef __cplusplus
} // extern "C"
#endif

#include <support/xlocale/__posix_l_fallback.h>
#include <support/xlocale/__strtonum_fallback.h>

#endif // _HAS_DINKUM_CLIB

#endif // _LIBCPP_SUPPORT_DINKUM_XLOCALE_H
