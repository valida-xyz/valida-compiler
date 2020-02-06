// A basic clang -cc1 command-line, and simple environment check.

// RUN: %clang %s -### -no-canonical-prefixes -target tricore 2>&1 | FileCheck -check-prefix=CC1 %s
// CC1: clang{{.*}} "-cc1" "-triple" "tricore"
// CC1: tricore-ld

// RUN: %clang -x assembler %s -### -no-canonical-prefixes -target tricore 2>&1 | FileCheck -check-prefix=CC1AS %s
// CC1AS: clang{{.*}} "-cc1as" "-triple" "tricore" "-filetype" "obj"

// RUN: %clang -target tricore -march=tc161 %s -emit-llvm -S -o - | FileCheck %s
// RUN: %clang -target tricore -march=tc162 %s -emit-llvm -S -o - | FileCheck %s
// RUN: %clang -target tricore -march=tc18  %s -emit-llvm -S -o - | FileCheck %s

typedef __builtin_va_list va_list;
typedef __SIZE_TYPE__ size_t;
typedef __PTRDIFF_TYPE__ ptrdiff_t;
typedef __WCHAR_TYPE__ wchar_t;
typedef __WINT_TYPE__ wint_t;

// Check Alignments

// CHECK: @align_c = dso_local global i32 1
int align_c = __alignof(char);

// CHECK: @align_s = dso_local global i32 2
int align_s = __alignof(short);

// CHECK: @align_i = dso_local global i32 4
int align_i = __alignof(int);

// CHECK: @align_wc = dso_local global i32 4
int align_wc = __alignof(wchar_t);

// CHECK: @align_wi = dso_local global i32 4
int align_wi = __alignof(wint_t);

// CHECK: @align_l = dso_local global i32 4
int align_l = __alignof(long);

// CHECK: @align_ll = dso_local global i32 4
int align_ll = __alignof(long long);

// CHECK: @align_p = dso_local global i32 4
int align_p = __alignof(void *);

// CHECK: @align_f = dso_local global i32 4
int align_f = __alignof(float);

// CHECK: @align_d = dso_local global i32 4
int align_d = __alignof(double);

// CHECK: @align_ld = dso_local global i32 4
int align_ld = __alignof(long double);

// CHECK: @align_pd = dso_local global i32 4
int align_pd = __alignof(ptrdiff_t);

// CHECK: @align_vl = dso_local global i32 4
int align_vl = __alignof(va_list);

// Check Sizes

// CHECK: @size_a_c = dso_local global i32 1
int size_a_c = sizeof(char);

// CHECK: @size_a_s = dso_local global i32 2
int size_a_s = sizeof(short);

// CHECK: @size_a_i = dso_local global i32 4
int size_a_i = sizeof(int);

// CHECK: @size_a_wc = dso_local global i32 4
int size_a_wc = sizeof(wchar_t);

// CHECK: @size_a_wi = dso_local global i32 4
int size_a_wi = sizeof(wint_t);

// CHECK: @size_a_l = dso_local global i32 4
int size_a_l = sizeof(long);

// CHECK: @size_a_ll = dso_local global i32 8
int size_a_ll = sizeof(long long);

// CHECK: @size_a_p = dso_local global i32 4
int size_a_p = sizeof(void *);

// CHECK: @size_a_f = dso_local global i32 4
int size_a_f = sizeof(float);

// CHECK: @size_a_d = dso_local global i32 8
int size_a_d = sizeof(double);

// CHECK: @size_a_ld = dso_local global i32 8
int size_a_ld = sizeof(long double);

// CHECK: @size_pd = dso_local global i32 4
int size_pd = sizeof(ptrdiff_t);

// Check types

// CHECK: signext i8 @check_char()
char check_char() { return 0; }

// CHECK: define dso_local signext i16 @check_short()
short check_short() { return 0; }

// CHECK: define dso_local i32 @check_int()
int check_int() { return 0; }

// CHECK: define dso_local i32 @check_wchar_t()
wchar_t check_wchar_t() { return 0; }

// CHECK: define dso_local i32 @check_wint_t()
wint_t check_wint_t() { return 0; }

// CHECK: define dso_local i32 @check_long()
long check_long() { return 0; }

// CHECK: define dso_local i64 @check_longlong()
long long check_longlong() { return 0; }

// CHECK: define dso_local zeroext i8 @check_uchar()
unsigned char check_uchar() { return 0; }

// CHECK: define dso_local zeroext i16 @check_ushort()
unsigned short check_ushort() { return 0; }

// CHECK: define dso_local i32 @check_uint()
unsigned int check_uint() { return 0; }

// CHECK: define dso_local i32 @check_ulong()
unsigned long check_ulong() { return 0; }

// CHECK: define dso_local i64 @check_ulonglong()
unsigned long long check_ulonglong() { return 0; }

// CHECK: define dso_local i32 @check_size_t()
size_t check_size_t() { return 0; }

// CHECK: define dso_local i32 @check_ptrdiff_t()
ptrdiff_t check_ptrdiff_t() { return 0; }

// CHECK: define dso_local float @check_float()
float check_float() { return 0; }

// CHECK: define dso_local double @check_double()
double check_double() { return 0; }

// CHECK: define dso_local double @check_longdouble()
long double check_longdouble() { return 0; }
