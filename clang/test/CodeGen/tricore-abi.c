// RUN: %clang_cc1 -triple tricore -emit-llvm %s -o - | FileCheck %s

#include <stddef.h>
#include <stdint.h>

// CHECK-LABEL: define void @f_void()
void f_void(void) {}

// Scalar arguments and return values smaller than the word size are extended
// according to the sign of their type, up to 32 bits

// CHECK-LABEL: define zeroext i1 @f_scalar_0(i1 zeroext %x)
_Bool f_scalar_0(_Bool x) { return x; }

// CHECK-LABEL: define signext i8 @f_scalar_1(i8 signext %x)
int8_t f_scalar_1(int8_t x) { return x; }

// CHECK-LABEL: define zeroext i8 @f_scalar_2(i8 zeroext %x)
uint8_t f_scalar_2(uint8_t x) { return x; }

// CHECK-LABEL: define signext i16 @f_scalar_3(i16 signext %x)
int16_t f_scalar_3(int16_t x) { return x; }

// CHECK-LABEL: define zeroext i16 @f_scalar_4(i16 zeroext %x)
uint16_t f_scalar_4(uint16_t x) { return x; }

// CHECK-LABEL: define i32 @f_scalar_5(i32 %x)
int32_t f_scalar_5(int32_t x) { return x; }

// CHECK-LABEL: define i64 @f_scalar_6(i64 %x)
int64_t f_scalar_6(int64_t x) { return x; }

// CHECK-LABEL: define float @f_fp_scalar_1(float %x)
float f_fp_scalar_1(float x) { return x; }

// CHECK-LABEL: define double @f_fp_scalar_2(double %x)
double f_fp_scalar_2(double x) { return x; }

// CHECK-LABEL: define double @f_fp_scalar_3(double %x)
long double f_fp_scalar_3(long double x) { return x; }

// Empty structs or unions are ignored.

struct empty_s {};

// CHECK-LABEL: define void @f_agg_empty_struct()
struct empty_s f_agg_empty_struct(struct empty_s x) {
  return x;
}

union empty_u {};

// CHECK-LABEL: define void @f_agg_empty_union()
union empty_u f_agg_empty_union(union empty_u x) {
  return x;
}

// Structs smaller than or equal to 64-bits are passed as arrays
// They will be passed in registers if enough argument register
// are available, otherwise they will go via stack

struct tiny {
  uint8_t a, b, c, d;
};

// CHECK-LABEL: define void @f_agg_tiny([1 x i32] %x.coerce)
void f_agg_tiny(struct tiny x) {
  x.a += x.b;
  x.c += x.d;
}

// CHECK-LABEL: define [1 x i32] @f_agg_tiny_ret()
struct tiny f_agg_tiny_ret() {
  return (struct tiny){1, 2, 3, 4};
}

typedef struct struct_i32 {
  int x;
} S32;

// CHECK-LABEL: define i32 @f_s32([1 x i32] %s.coerce)
int f_s32(S32 s) {
  return s.x;
}

// CHECK-LABEL: define [1 x i32] @f_s32_return()
S32 f_s32_return(void) {
  return (S32) { 0 };
}

typedef struct struct_i32_i32 {
  int x, *y;
} S32_32;

// CHECK-LABEL: define i32 @f_s32_32([2 x i32] %s.coerce)
int f_s32_32(S32_32 s) {
  return s.x;
}

// CHECK-LABEL: define [2 x i32] @f_s32_32_ret()
S32_32 f_s32_32_ret() {
  return (S32_32){1, 0};
}

typedef struct struct_i64{
  long long x;
} S64;

// CHECK-LABEL: define i64 @f_s64([2 x i32] %s.coerce)
long long f_s64(S64 s) {
  return s.x;
}

// CHECK-LABEL: define [2 x i32] @f_s64_return()
S64 f_s64_return(void) {
  return (S64) { 0 };
}

typedef struct struct_stack {
  int x; int y; int z;
} STACK;

// CHECK-LABEL: define i32 @f_struct_stack(%struct.struct_stack* %s)
int f_struct_stack(STACK s) {
  return s.x;
}

// CHECK-LABEL: define void @f_sret(%struct.struct_stack* noalias sret %agg.result, i32 %x)
STACK f_sret(int x) {
  return (STACK) { 0, 1, 2};
}

// Ensure that scalars passed on the stack are still determined correctly in
// the presence of large return values that consume a register due to the need
// to pass a pointer.

// CHECK-LABEL: define void @f_sret_2(%struct.struct_stack* noalias sret %agg.result, i32 %a, i64 %b, i64 %c, double %d, i8 zeroext %e, i8 signext %f, i8 zeroext %g)
STACK f_sret_2(int32_t a, int64_t b, int64_t c, long double d,
               uint8_t e, int8_t f, uint8_t g) {
  return (STACK){a, e, f};
}

typedef struct struct_bitfields {
  int x: 16; int :0; int y: 16;
} S_BITFIELDS;

// CHECK-LABEL: define zeroext i16 @f_struct_bitfields([1 x i32] %s.coerce)
uint16_t f_struct_bitfields(S_BITFIELDS s) {
  return s.x;
}

int f_va_callee(int x, ...) {
  return x;
}

// CHECK-LABEL: define void @f_va_caller()
// CHECK: call i32 (i32, ...) @f_va_callee(i32 1, i32 2, i64 3, double 4.000000e+00, double 5.000000e+00, [1 x i32] {{%.*}}, [2 x i32] {{%.*}}, [2 x i32] {{%.*}}, %struct.struct_stack* {{%.*}})
void f_va_caller() {
  f_va_callee(1, 2, 3LL, 4.0f, 5.0, (struct tiny){6, 7, 8, 9},
              (S32_32){10, NULL}, (S64){11},
              (STACK){12, 13, 14});
}


// CHECK-LABEL: define i32 @f_va_1(i8* %fmt, ...) {{.*}} {
// CHECK:   [[FMT_ADDR:%.*]] = alloca i8*, align 4
// CHECK:   [[VA:%.*]] = alloca i8*, align 4
// CHECK:   [[V:%.*]] = alloca i32, align 4
// CHECK:   store i8* %fmt, i8** [[FMT_ADDR]], align 4
// CHECK:   [[VA1:%.*]] = bitcast i8** [[VA]] to i8*
// CHECK:   call void @llvm.va_start(i8* [[VA1]])
// CHECK:   [[ARGP_CUR:%.*]] = load i8*, i8** [[VA]], align 4
// CHECK:   [[ARGP_NEXT:%.*]] = getelementptr inbounds i8, i8* [[ARGP_CUR]], i32 4
// CHECK:   store i8* [[ARGP_NEXT]], i8** [[VA]], align 4
// CHECK:   [[TMP0:%.*]] = bitcast i8* [[ARGP_CUR]] to i32*
// CHECK:   [[TMP1:%.*]] = load i32, i32* [[TMP0]], align 4
// CHECK:   store i32 [[TMP1]], i32* [[V]], align 4
// CHECK:   [[VA2:%.*]] = bitcast i8** [[VA]] to i8*
// CHECK:   call void @llvm.va_end(i8* [[VA2]])
// CHECK:   [[TMP2:%.*]] = load i32, i32* [[V]], align 4
// CHECK:   ret i32 [[TMP2]]
// CHECK: }
int f_va_1(char *fmt, ...) {
  __builtin_va_list va;

  __builtin_va_start(va, fmt);
  int v = __builtin_va_arg(va, int);
  __builtin_va_end(va);

  return v;
}

// CHECK-LABEL: @f_va_2(
// CHECK:         [[FMT_ADDR:%.*]] = alloca i8*, align 4
// CHECK-NEXT:    [[VA:%.*]] = alloca i8*, align 4
// CHECK-NEXT:    [[V:%.*]] = alloca double, align 4
// CHECK-NEXT:    store i8* [[FMT:%.*]], i8** [[FMT_ADDR]], align 4
// CHECK-NEXT:    [[VA1:%.*]] = bitcast i8** [[VA]] to i8*
// CHECK-NEXT:    call void @llvm.va_start(i8* [[VA1]])
// CHECK-NEXT:    [[ARGP_CUR:%.*]] = load i8*, i8** [[VA]], align 4
// CHECK-NEXT:    [[ARGP_NEXT:%.*]] = getelementptr inbounds i8, i8* [[ARGP_CUR]], i32 8
// CHECK-NEXT:    store i8* [[ARGP_NEXT]], i8** [[VA]], align 4
// CHECK-NEXT:    [[TMP0:%.*]] = bitcast i8* [[ARGP_CUR]] to double*
// CHECK-NEXT:    [[TMP1:%.*]] = load double, double* [[TMP0]], align 4
// CHECK-NEXT:    store double [[TMP1]], double* [[V]], align 4
// CHECK-NEXT:    [[VA2:%.*]] = bitcast i8** [[VA]] to i8*
// CHECK-NEXT:    call void @llvm.va_end(i8* [[VA2]])
// CHECK-NEXT:    [[TMP2:%.*]] = load double, double* [[V]], align 4
// CHECK-NEXT:    ret double [[TMP2]]
double f_va_2(char *fmt, ...) {
  __builtin_va_list va;

  __builtin_va_start(va, fmt);
  double v = __builtin_va_arg(va, double);
  __builtin_va_end(va);

  return v;
}


// CHECK-LABEL: define i32 @f_va_4(i8* %fmt, ...) {{.*}} {
// CHECK:         [[FMT_ADDR:%.*]] = alloca i8*, align 4
// CHECK-NEXT:    [[VA:%.*]] = alloca i8*, align 4
// CHECK-NEXT:    [[V:%.*]] = alloca i32, align 4
// CHECK-NEXT:    [[LD:%.*]] = alloca double, align 4
// CHECK-NEXT:    [[TS:%.*]] = alloca [[STRUCT_TINY:%.*]], align 2
// CHECK-NEXT:    [[S32_32:%.*]] = alloca [[STRUCT_S32_S32:%.*]], align 4
// CHECK-NEXT:    [[STACK:%.*]] = alloca [[STRUCT_STACK:%.*]], align 4
// CHECK-NEXT:    [[RET:%.*]] = alloca i32, align 4
// CHECK-NEXT:    store i8* [[FMT:%.*]], i8** [[FMT_ADDR]], align 4
// CHECK-NEXT:    [[VA1:%.*]] = bitcast i8** [[VA]] to i8*
// CHECK-NEXT:    call void @llvm.va_start(i8* [[VA1]])
// CHECK-NEXT:    [[ARGP_CUR:%.*]] = load i8*, i8** [[VA]], align 4
// CHECK-NEXT:    [[ARGP_NEXT:%.*]] = getelementptr inbounds i8, i8* [[ARGP_CUR]], i32 4
// CHECK-NEXT:    store i8* [[ARGP_NEXT]], i8** [[VA]], align 4
// CHECK-NEXT:    [[TMP0:%.*]] = bitcast i8* [[ARGP_CUR]] to i32*
// CHECK-NEXT:    [[TMP1:%.*]] = load i32, i32* [[TMP0]], align 4
// CHECK-NEXT:    store i32 [[TMP1]], i32* [[V]], align 4
// CHECK-NEXT:    [[ARGP_CUR2:%.*]] = load i8*, i8** [[VA]], align 4
// CHECK-NEXT:    [[ARGP_NEXT3:%.*]] = getelementptr inbounds i8, i8* [[ARGP_CUR2]], i32 8
// CHECK-NEXT:    store i8* [[ARGP_NEXT3]], i8** [[VA]], align 4
// CHECK-NEXT:    [[TMP2:%.*]] = bitcast i8* [[ARGP_CUR2]] to double*
// CHECK-NEXT:    [[TMP3:%.*]] = load double, double* [[TMP2]], align 4
// CHECK-NEXT:    store double [[TMP3]], double* [[LD]], align 4
// CHECK-NEXT:    [[ARGP_CUR4:%.*]] = load i8*, i8** [[VA]], align 4
// CHECK-NEXT:    [[ARGP_NEXT5:%.*]] = getelementptr inbounds i8, i8* [[ARGP_CUR4]], i32 4
// CHECK-NEXT:    store i8* [[ARGP_NEXT5]], i8** [[VA]], align 4
// CHECK-NEXT:    [[TMP4:%.*]] = bitcast i8* [[ARGP_CUR4]] to %struct.tiny*
// CHECK-NEXT:    [[TMP5:%.*]] = bitcast %struct.tiny* [[TS]] to i8*
// CHECK-NEXT:    [[TMP6:%.*]] = bitcast %struct.tiny* [[TMP4]] to i8*
// CHECK-NEXT:    call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 2 [[TMP5]], i8* align 4 [[TMP6]], i32 4, i1 false)
// CHECK-NEXT:    [[ARGP_CUR6:%.*]] = load i8*, i8** [[VA]], align 4
// CHECK-NEXT:    [[ARGP_NEXT7:%.*]] = getelementptr inbounds i8, i8* [[ARGP_CUR6]], i32 8
// CHECK-NEXT:    store i8* [[ARGP_NEXT7]], i8** [[VA]], align 4
// CHECK-NEXT:    [[TMP7:%.*]] = bitcast i8* [[ARGP_CUR6]] to %struct.struct_i32_i32*
// CHECK-NEXT:    [[TMP8:%.*]] = bitcast %struct.struct_i32_i32* [[S32_32]] to i8*
// CHECK-NEXT:    [[TMP9:%.*]] = bitcast %struct.struct_i32_i32* [[TMP7]] to i8*
// CHECK-NEXT:    call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 [[TMP8]], i8* align 4 [[TMP9]], i32 8, i1 false)
// CHECK-NEXT:    [[ARGP_CUR8:%.*]] = load i8*, i8** [[VA]], align 4
// CHECK-NEXT:    [[ARGP_NEXT9:%.*]] = getelementptr inbounds i8, i8* [[ARGP_CUR8]], i32 4
// CHECK-NEXT:    store i8* [[ARGP_NEXT9]], i8** [[VA]], align 4
// CHECK-NEXT:    [[TMP10:%.*]] = bitcast i8* [[ARGP_CUR8]] to %struct.struct_stack**
// CHECK-NEXT:    [[TMP11:%.*]] = load %struct.struct_stack*, %struct.struct_stack** [[TMP10]], align 4
// CHECK-NEXT:    [[TMP12:%.*]] = bitcast %struct.struct_stack* [[STACK]] to i8*
// CHECK-NEXT:    [[TMP13:%.*]] = bitcast %struct.struct_stack* [[TMP11]] to i8*
// CHECK-NEXT:    call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 [[TMP12]], i8* align 4 [[TMP13]], i32 12, i1 false)
// CHECK-NEXT:    [[VA10:%.*]] = bitcast i8** [[VA]] to i8*
// CHECK-NEXT:    call void @llvm.va_end(i8* [[VA10]])
int f_va_4(char *fmt, ...) {
  __builtin_va_list va;

  __builtin_va_start(va, fmt);
  int v = __builtin_va_arg(va, int);
  long double ld = __builtin_va_arg(va, long double);
  struct tiny ts = __builtin_va_arg(va, struct tiny);
  S32_32 ss = __builtin_va_arg(va, S32_32);
  STACK ls = __builtin_va_arg(va, STACK);
  __builtin_va_end(va);

  int ret = (int)((long double)v + ld);
  ret = ret + ts.a + ts.b + ts.c + ts.d;
  ret = ret + ss.x + (int)ss.y;
  ret = ret + ls.x + ls.y + ls.z;

  return ret;
}
