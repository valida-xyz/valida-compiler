// -*- C++ -*-
//===------------  support/hightec/locale_htc.h -----------------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is dual licensed under the MIT and the University of Illinois Open
// Source Licenses. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//

#ifndef _LIBCPP_SUPPORT_HIGHTEC_LOCALE_HTC_H
#define _LIBCPP_SUPPORT_HIGHTEC_LOCALE_HTC_H

#include <clocale>

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
#define LC_ALL_MASK (LC_COLLATE_MASK|\
                     LC_CTYPE_MASK|\
                     LC_MONETARY_MASK|\
                     LC_NUMERIC_MASK|\
                     LC_TIME_MASK|\
                     LC_MESSAGES_MASK)

#include <support/xlocale/__posix_l_fallback.h>
#include <support/xlocale/__strtonum_fallback.h>


#endif // _LIBCPP_SUPPORT_HIGHTEC_LOCALE_HTC_H
