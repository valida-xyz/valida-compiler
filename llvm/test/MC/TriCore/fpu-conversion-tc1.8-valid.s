# RUN: llvm-mc %s -triple=tricore -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK,CHECK-INST %s
# RUN: llvm-mc -filetype=obj -triple=tricore < %s \
# RUN:     | llvm-objdump -d - | FileCheck -check-prefix=CHECK-INST %s

# CHECK-INST: dftoi %d0, %e0
# CHECK: encoding: [0x4b,0x00,0x02,0x01]
.code32
dftoi %d0, %e0

# CHECK-INST: dftoi %d0, %e2
# CHECK: encoding: [0x4b,0x02,0x02,0x01]
.code32
dftoi %d0, %e2

# CHECK-INST: dftoi %d0, %e4
# CHECK: encoding: [0x4b,0x04,0x02,0x01]
.code32
dftoi %d0, %e4

# CHECK-INST: dftoi %d0, %e8
# CHECK: encoding: [0x4b,0x08,0x02,0x01]
.code32
dftoi %d0, %e8

# CHECK-INST: dftoi %d1, %e0
# CHECK: encoding: [0x4b,0x00,0x02,0x11]
.code32
dftoi %d1, %e0

# CHECK-INST: dftoi %d1, %e2
# CHECK: encoding: [0x4b,0x02,0x02,0x11]
.code32
dftoi %d1, %e2

# CHECK-INST: dftoi %d1, %e4
# CHECK: encoding: [0x4b,0x04,0x02,0x11]
.code32
dftoi %d1, %e4

# CHECK-INST: dftoi %d1, %e8
# CHECK: encoding: [0x4b,0x08,0x02,0x11]
.code32
dftoi %d1, %e8

# CHECK-INST: dftoi %d14, %e0
# CHECK: encoding: [0x4b,0x00,0x02,0xe1]
.code32
dftoi %d14, %e0

# CHECK-INST: dftoi %d14, %e2
# CHECK: encoding: [0x4b,0x02,0x02,0xe1]
.code32
dftoi %d14, %e2

# CHECK-INST: dftoi %d14, %e4
# CHECK: encoding: [0x4b,0x04,0x02,0xe1]
.code32
dftoi %d14, %e4

# CHECK-INST: dftoi %d14, %e8
# CHECK: encoding: [0x4b,0x08,0x02,0xe1]
.code32
dftoi %d14, %e8

# CHECK-INST: dftoi %d15, %e0
# CHECK: encoding: [0x4b,0x00,0x02,0xf1]
.code32
dftoi %d15, %e0

# CHECK-INST: dftoi %d15, %e2
# CHECK: encoding: [0x4b,0x02,0x02,0xf1]
.code32
dftoi %d15, %e2

# CHECK-INST: dftoi %d15, %e4
# CHECK: encoding: [0x4b,0x04,0x02,0xf1]
.code32
dftoi %d15, %e4

# CHECK-INST: dftoi %d15, %e8
# CHECK: encoding: [0x4b,0x08,0x02,0xf1]
.code32
dftoi %d15, %e8

# CHECK-INST: dftou %d0, %e0
# CHECK: encoding: [0x4b,0x00,0x22,0x01]
.code32
dftou %d0, %e0

# CHECK-INST: dftou %d0, %e2
# CHECK: encoding: [0x4b,0x02,0x22,0x01]
.code32
dftou %d0, %e2

# CHECK-INST: dftou %d0, %e4
# CHECK: encoding: [0x4b,0x04,0x22,0x01]
.code32
dftou %d0, %e4

# CHECK-INST: dftou %d0, %e8
# CHECK: encoding: [0x4b,0x08,0x22,0x01]
.code32
dftou %d0, %e8

# CHECK-INST: dftou %d1, %e0
# CHECK: encoding: [0x4b,0x00,0x22,0x11]
.code32
dftou %d1, %e0

# CHECK-INST: dftou %d1, %e2
# CHECK: encoding: [0x4b,0x02,0x22,0x11]
.code32
dftou %d1, %e2

# CHECK-INST: dftou %d1, %e4
# CHECK: encoding: [0x4b,0x04,0x22,0x11]
.code32
dftou %d1, %e4

# CHECK-INST: dftou %d1, %e8
# CHECK: encoding: [0x4b,0x08,0x22,0x11]
.code32
dftou %d1, %e8

# CHECK-INST: dftou %d14, %e0
# CHECK: encoding: [0x4b,0x00,0x22,0xe1]
.code32
dftou %d14, %e0

# CHECK-INST: dftou %d14, %e2
# CHECK: encoding: [0x4b,0x02,0x22,0xe1]
.code32
dftou %d14, %e2

# CHECK-INST: dftou %d14, %e4
# CHECK: encoding: [0x4b,0x04,0x22,0xe1]
.code32
dftou %d14, %e4

# CHECK-INST: dftou %d14, %e8
# CHECK: encoding: [0x4b,0x08,0x22,0xe1]
.code32
dftou %d14, %e8

# CHECK-INST: dftou %d15, %e0
# CHECK: encoding: [0x4b,0x00,0x22,0xf1]
.code32
dftou %d15, %e0

# CHECK-INST: dftou %d15, %e2
# CHECK: encoding: [0x4b,0x02,0x22,0xf1]
.code32
dftou %d15, %e2

# CHECK-INST: dftou %d15, %e4
# CHECK: encoding: [0x4b,0x04,0x22,0xf1]
.code32
dftou %d15, %e4

# CHECK-INST: dftou %d15, %e8
# CHECK: encoding: [0x4b,0x08,0x22,0xf1]
.code32
dftou %d15, %e8

# CHECK-INST: dftoiz %d0, %e0
# CHECK: encoding: [0x4b,0x00,0x32,0x01]
.code32
dftoiz %d0, %e0

# CHECK-INST: dftoiz %d0, %e2
# CHECK: encoding: [0x4b,0x02,0x32,0x01]
.code32
dftoiz %d0, %e2

# CHECK-INST: dftoiz %d0, %e4
# CHECK: encoding: [0x4b,0x04,0x32,0x01]
.code32
dftoiz %d0, %e4

# CHECK-INST: dftoiz %d0, %e8
# CHECK: encoding: [0x4b,0x08,0x32,0x01]
.code32
dftoiz %d0, %e8

# CHECK-INST: dftoiz %d1, %e0
# CHECK: encoding: [0x4b,0x00,0x32,0x11]
.code32
dftoiz %d1, %e0

# CHECK-INST: dftoiz %d1, %e2
# CHECK: encoding: [0x4b,0x02,0x32,0x11]
.code32
dftoiz %d1, %e2

# CHECK-INST: dftoiz %d1, %e4
# CHECK: encoding: [0x4b,0x04,0x32,0x11]
.code32
dftoiz %d1, %e4

# CHECK-INST: dftoiz %d1, %e8
# CHECK: encoding: [0x4b,0x08,0x32,0x11]
.code32
dftoiz %d1, %e8

# CHECK-INST: dftoiz %d14, %e0
# CHECK: encoding: [0x4b,0x00,0x32,0xe1]
.code32
dftoiz %d14, %e0

# CHECK-INST: dftoiz %d14, %e2
# CHECK: encoding: [0x4b,0x02,0x32,0xe1]
.code32
dftoiz %d14, %e2

# CHECK-INST: dftoiz %d14, %e4
# CHECK: encoding: [0x4b,0x04,0x32,0xe1]
.code32
dftoiz %d14, %e4

# CHECK-INST: dftoiz %d14, %e8
# CHECK: encoding: [0x4b,0x08,0x32,0xe1]
.code32
dftoiz %d14, %e8

# CHECK-INST: dftoiz %d15, %e0
# CHECK: encoding: [0x4b,0x00,0x32,0xf1]
.code32
dftoiz %d15, %e0

# CHECK-INST: dftoiz %d15, %e2
# CHECK: encoding: [0x4b,0x02,0x32,0xf1]
.code32
dftoiz %d15, %e2

# CHECK-INST: dftoiz %d15, %e4
# CHECK: encoding: [0x4b,0x04,0x32,0xf1]
.code32
dftoiz %d15, %e4

# CHECK-INST: dftoiz %d15, %e8
# CHECK: encoding: [0x4b,0x08,0x32,0xf1]
.code32
dftoiz %d15, %e8

# CHECK-INST: itodf %e0, %d0
# CHECK: encoding: [0x4b,0x00,0x42,0x01]
.code32
itodf %e0, %d0

# CHECK-INST: itodf %e0, %d1
# CHECK: encoding: [0x4b,0x01,0x42,0x01]
.code32
itodf %e0, %d1

# CHECK-INST: itodf %e0, %d14
# CHECK: encoding: [0x4b,0x0e,0x42,0x01]
.code32
itodf %e0, %d14

# CHECK-INST: itodf %e0, %d15
# CHECK: encoding: [0x4b,0x0f,0x42,0x01]
.code32
itodf %e0, %d15

# CHECK-INST: itodf %e2, %d0
# CHECK: encoding: [0x4b,0x00,0x42,0x21]
.code32
itodf %e2, %d0

# CHECK-INST: itodf %e2, %d1
# CHECK: encoding: [0x4b,0x01,0x42,0x21]
.code32
itodf %e2, %d1

# CHECK-INST: itodf %e2, %d14
# CHECK: encoding: [0x4b,0x0e,0x42,0x21]
.code32
itodf %e2, %d14

# CHECK-INST: itodf %e2, %d15
# CHECK: encoding: [0x4b,0x0f,0x42,0x21]
.code32
itodf %e2, %d15

# CHECK-INST: itodf %e4, %d0
# CHECK: encoding: [0x4b,0x00,0x42,0x41]
.code32
itodf %e4, %d0

# CHECK-INST: itodf %e4, %d1
# CHECK: encoding: [0x4b,0x01,0x42,0x41]
.code32
itodf %e4, %d1

# CHECK-INST: itodf %e4, %d14
# CHECK: encoding: [0x4b,0x0e,0x42,0x41]
.code32
itodf %e4, %d14

# CHECK-INST: itodf %e4, %d15
# CHECK: encoding: [0x4b,0x0f,0x42,0x41]
.code32
itodf %e4, %d15

# CHECK-INST: itodf %e8, %d0
# CHECK: encoding: [0x4b,0x00,0x42,0x81]
.code32
itodf %e8, %d0

# CHECK-INST: itodf %e8, %d1
# CHECK: encoding: [0x4b,0x01,0x42,0x81]
.code32
itodf %e8, %d1

# CHECK-INST: itodf %e8, %d14
# CHECK: encoding: [0x4b,0x0e,0x42,0x81]
.code32
itodf %e8, %d14

# CHECK-INST: itodf %e8, %d15
# CHECK: encoding: [0x4b,0x0f,0x42,0x81]
.code32
itodf %e8, %d15

# CHECK-INST: utodf %e0, %d0
# CHECK: encoding: [0x4b,0x00,0x62,0x01]
.code32
utodf %e0, %d0

# CHECK-INST: utodf %e0, %d1
# CHECK: encoding: [0x4b,0x01,0x62,0x01]
.code32
utodf %e0, %d1

# CHECK-INST: utodf %e0, %d14
# CHECK: encoding: [0x4b,0x0e,0x62,0x01]
.code32
utodf %e0, %d14

# CHECK-INST: utodf %e0, %d15
# CHECK: encoding: [0x4b,0x0f,0x62,0x01]
.code32
utodf %e0, %d15

# CHECK-INST: utodf %e2, %d0
# CHECK: encoding: [0x4b,0x00,0x62,0x21]
.code32
utodf %e2, %d0

# CHECK-INST: utodf %e2, %d1
# CHECK: encoding: [0x4b,0x01,0x62,0x21]
.code32
utodf %e2, %d1

# CHECK-INST: utodf %e2, %d14
# CHECK: encoding: [0x4b,0x0e,0x62,0x21]
.code32
utodf %e2, %d14

# CHECK-INST: utodf %e2, %d15
# CHECK: encoding: [0x4b,0x0f,0x62,0x21]
.code32
utodf %e2, %d15

# CHECK-INST: utodf %e4, %d0
# CHECK: encoding: [0x4b,0x00,0x62,0x41]
.code32
utodf %e4, %d0

# CHECK-INST: utodf %e4, %d1
# CHECK: encoding: [0x4b,0x01,0x62,0x41]
.code32
utodf %e4, %d1

# CHECK-INST: utodf %e4, %d14
# CHECK: encoding: [0x4b,0x0e,0x62,0x41]
.code32
utodf %e4, %d14

# CHECK-INST: utodf %e4, %d15
# CHECK: encoding: [0x4b,0x0f,0x62,0x41]
.code32
utodf %e4, %d15

# CHECK-INST: utodf %e8, %d0
# CHECK: encoding: [0x4b,0x00,0x62,0x81]
.code32
utodf %e8, %d0

# CHECK-INST: utodf %e8, %d1
# CHECK: encoding: [0x4b,0x01,0x62,0x81]
.code32
utodf %e8, %d1

# CHECK-INST: utodf %e8, %d14
# CHECK: encoding: [0x4b,0x0e,0x62,0x81]
.code32
utodf %e8, %d14

# CHECK-INST: utodf %e8, %d15
# CHECK: encoding: [0x4b,0x0f,0x62,0x81]
.code32
utodf %e8, %d15

# CHECK-INST: dftouz %d0, %e0
# CHECK: encoding: [0x4b,0x00,0x72,0x01]
.code32
dftouz %d0, %e0

# CHECK-INST: dftouz %d0, %e2
# CHECK: encoding: [0x4b,0x02,0x72,0x01]
.code32
dftouz %d0, %e2

# CHECK-INST: dftouz %d0, %e4
# CHECK: encoding: [0x4b,0x04,0x72,0x01]
.code32
dftouz %d0, %e4

# CHECK-INST: dftouz %d0, %e8
# CHECK: encoding: [0x4b,0x08,0x72,0x01]
.code32
dftouz %d0, %e8

# CHECK-INST: dftouz %d1, %e0
# CHECK: encoding: [0x4b,0x00,0x72,0x11]
.code32
dftouz %d1, %e0

# CHECK-INST: dftouz %d1, %e2
# CHECK: encoding: [0x4b,0x02,0x72,0x11]
.code32
dftouz %d1, %e2

# CHECK-INST: dftouz %d1, %e4
# CHECK: encoding: [0x4b,0x04,0x72,0x11]
.code32
dftouz %d1, %e4

# CHECK-INST: dftouz %d1, %e8
# CHECK: encoding: [0x4b,0x08,0x72,0x11]
.code32
dftouz %d1, %e8

# CHECK-INST: dftouz %d14, %e0
# CHECK: encoding: [0x4b,0x00,0x72,0xe1]
.code32
dftouz %d14, %e0

# CHECK-INST: dftouz %d14, %e2
# CHECK: encoding: [0x4b,0x02,0x72,0xe1]
.code32
dftouz %d14, %e2

# CHECK-INST: dftouz %d14, %e4
# CHECK: encoding: [0x4b,0x04,0x72,0xe1]
.code32
dftouz %d14, %e4

# CHECK-INST: dftouz %d14, %e8
# CHECK: encoding: [0x4b,0x08,0x72,0xe1]
.code32
dftouz %d14, %e8

# CHECK-INST: dftouz %d15, %e0
# CHECK: encoding: [0x4b,0x00,0x72,0xf1]
.code32
dftouz %d15, %e0

# CHECK-INST: dftouz %d15, %e2
# CHECK: encoding: [0x4b,0x02,0x72,0xf1]
.code32
dftouz %d15, %e2

# CHECK-INST: dftouz %d15, %e4
# CHECK: encoding: [0x4b,0x04,0x72,0xf1]
.code32
dftouz %d15, %e4

# CHECK-INST: dftouz %d15, %e8
# CHECK: encoding: [0x4b,0x08,0x72,0xf1]
.code32
dftouz %d15, %e8

# CHECK-INST: dftol %e0, %e0
# CHECK: encoding: [0x4b,0x00,0xa2,0x01]
.code32
dftol %e0, %e0

# CHECK-INST: dftol %e0, %e2
# CHECK: encoding: [0x4b,0x02,0xa2,0x01]
.code32
dftol %e0, %e2

# CHECK-INST: dftol %e0, %e4
# CHECK: encoding: [0x4b,0x04,0xa2,0x01]
.code32
dftol %e0, %e4

# CHECK-INST: dftol %e0, %e8
# CHECK: encoding: [0x4b,0x08,0xa2,0x01]
.code32
dftol %e0, %e8

# CHECK-INST: dftol %e2, %e0
# CHECK: encoding: [0x4b,0x00,0xa2,0x21]
.code32
dftol %e2, %e0

# CHECK-INST: dftol %e2, %e2
# CHECK: encoding: [0x4b,0x02,0xa2,0x21]
.code32
dftol %e2, %e2

# CHECK-INST: dftol %e2, %e4
# CHECK: encoding: [0x4b,0x04,0xa2,0x21]
.code32
dftol %e2, %e4

# CHECK-INST: dftol %e2, %e8
# CHECK: encoding: [0x4b,0x08,0xa2,0x21]
.code32
dftol %e2, %e8

# CHECK-INST: dftol %e4, %e0
# CHECK: encoding: [0x4b,0x00,0xa2,0x41]
.code32
dftol %e4, %e0

# CHECK-INST: dftol %e4, %e2
# CHECK: encoding: [0x4b,0x02,0xa2,0x41]
.code32
dftol %e4, %e2

# CHECK-INST: dftol %e4, %e4
# CHECK: encoding: [0x4b,0x04,0xa2,0x41]
.code32
dftol %e4, %e4

# CHECK-INST: dftol %e4, %e8
# CHECK: encoding: [0x4b,0x08,0xa2,0x41]
.code32
dftol %e4, %e8

# CHECK-INST: dftol %e8, %e0
# CHECK: encoding: [0x4b,0x00,0xa2,0x81]
.code32
dftol %e8, %e0

# CHECK-INST: dftol %e8, %e2
# CHECK: encoding: [0x4b,0x02,0xa2,0x81]
.code32
dftol %e8, %e2

# CHECK-INST: dftol %e8, %e4
# CHECK: encoding: [0x4b,0x04,0xa2,0x81]
.code32
dftol %e8, %e4

# CHECK-INST: dftol %e8, %e8
# CHECK: encoding: [0x4b,0x08,0xa2,0x81]
.code32
dftol %e8, %e8

# CHECK-INST: dftolz %e0, %e0
# CHECK: encoding: [0x4b,0x00,0xb2,0x01]
.code32
dftolz %e0, %e0

# CHECK-INST: dftolz %e0, %e2
# CHECK: encoding: [0x4b,0x02,0xb2,0x01]
.code32
dftolz %e0, %e2

# CHECK-INST: dftolz %e0, %e4
# CHECK: encoding: [0x4b,0x04,0xb2,0x01]
.code32
dftolz %e0, %e4

# CHECK-INST: dftolz %e0, %e8
# CHECK: encoding: [0x4b,0x08,0xb2,0x01]
.code32
dftolz %e0, %e8

# CHECK-INST: dftolz %e2, %e0
# CHECK: encoding: [0x4b,0x00,0xb2,0x21]
.code32
dftolz %e2, %e0

# CHECK-INST: dftolz %e2, %e2
# CHECK: encoding: [0x4b,0x02,0xb2,0x21]
.code32
dftolz %e2, %e2

# CHECK-INST: dftolz %e2, %e4
# CHECK: encoding: [0x4b,0x04,0xb2,0x21]
.code32
dftolz %e2, %e4

# CHECK-INST: dftolz %e2, %e8
# CHECK: encoding: [0x4b,0x08,0xb2,0x21]
.code32
dftolz %e2, %e8

# CHECK-INST: dftolz %e4, %e0
# CHECK: encoding: [0x4b,0x00,0xb2,0x41]
.code32
dftolz %e4, %e0

# CHECK-INST: dftolz %e4, %e2
# CHECK: encoding: [0x4b,0x02,0xb2,0x41]
.code32
dftolz %e4, %e2

# CHECK-INST: dftolz %e4, %e4
# CHECK: encoding: [0x4b,0x04,0xb2,0x41]
.code32
dftolz %e4, %e4

# CHECK-INST: dftolz %e4, %e8
# CHECK: encoding: [0x4b,0x08,0xb2,0x41]
.code32
dftolz %e4, %e8

# CHECK-INST: dftolz %e8, %e0
# CHECK: encoding: [0x4b,0x00,0xb2,0x81]
.code32
dftolz %e8, %e0

# CHECK-INST: dftolz %e8, %e2
# CHECK: encoding: [0x4b,0x02,0xb2,0x81]
.code32
dftolz %e8, %e2

# CHECK-INST: dftolz %e8, %e4
# CHECK: encoding: [0x4b,0x04,0xb2,0x81]
.code32
dftolz %e8, %e4

# CHECK-INST: dftolz %e8, %e8
# CHECK: encoding: [0x4b,0x08,0xb2,0x81]
.code32
dftolz %e8, %e8

# CHECK-INST: dftoul %e0, %e0
# CHECK: encoding: [0x4b,0x00,0xe2,0x01]
.code32
dftoul %e0, %e0

# CHECK-INST: dftoul %e0, %e2
# CHECK: encoding: [0x4b,0x02,0xe2,0x01]
.code32
dftoul %e0, %e2

# CHECK-INST: dftoul %e0, %e4
# CHECK: encoding: [0x4b,0x04,0xe2,0x01]
.code32
dftoul %e0, %e4

# CHECK-INST: dftoul %e0, %e8
# CHECK: encoding: [0x4b,0x08,0xe2,0x01]
.code32
dftoul %e0, %e8

# CHECK-INST: dftoul %e2, %e0
# CHECK: encoding: [0x4b,0x00,0xe2,0x21]
.code32
dftoul %e2, %e0

# CHECK-INST: dftoul %e2, %e2
# CHECK: encoding: [0x4b,0x02,0xe2,0x21]
.code32
dftoul %e2, %e2

# CHECK-INST: dftoul %e2, %e4
# CHECK: encoding: [0x4b,0x04,0xe2,0x21]
.code32
dftoul %e2, %e4

# CHECK-INST: dftoul %e2, %e8
# CHECK: encoding: [0x4b,0x08,0xe2,0x21]
.code32
dftoul %e2, %e8

# CHECK-INST: dftoul %e4, %e0
# CHECK: encoding: [0x4b,0x00,0xe2,0x41]
.code32
dftoul %e4, %e0

# CHECK-INST: dftoul %e4, %e2
# CHECK: encoding: [0x4b,0x02,0xe2,0x41]
.code32
dftoul %e4, %e2

# CHECK-INST: dftoul %e4, %e4
# CHECK: encoding: [0x4b,0x04,0xe2,0x41]
.code32
dftoul %e4, %e4

# CHECK-INST: dftoul %e4, %e8
# CHECK: encoding: [0x4b,0x08,0xe2,0x41]
.code32
dftoul %e4, %e8

# CHECK-INST: dftoul %e8, %e0
# CHECK: encoding: [0x4b,0x00,0xe2,0x81]
.code32
dftoul %e8, %e0

# CHECK-INST: dftoul %e8, %e2
# CHECK: encoding: [0x4b,0x02,0xe2,0x81]
.code32
dftoul %e8, %e2

# CHECK-INST: dftoul %e8, %e4
# CHECK: encoding: [0x4b,0x04,0xe2,0x81]
.code32
dftoul %e8, %e4

# CHECK-INST: dftoul %e8, %e8
# CHECK: encoding: [0x4b,0x08,0xe2,0x81]
.code32
dftoul %e8, %e8

# CHECK-INST: dftoulz %e0, %e0
# CHECK: encoding: [0x4b,0x00,0xf2,0x01]
.code32
dftoulz %e0, %e0

# CHECK-INST: dftoulz %e0, %e2
# CHECK: encoding: [0x4b,0x02,0xf2,0x01]
.code32
dftoulz %e0, %e2

# CHECK-INST: dftoulz %e0, %e4
# CHECK: encoding: [0x4b,0x04,0xf2,0x01]
.code32
dftoulz %e0, %e4

# CHECK-INST: dftoulz %e0, %e8
# CHECK: encoding: [0x4b,0x08,0xf2,0x01]
.code32
dftoulz %e0, %e8

# CHECK-INST: dftoulz %e2, %e0
# CHECK: encoding: [0x4b,0x00,0xf2,0x21]
.code32
dftoulz %e2, %e0

# CHECK-INST: dftoulz %e2, %e2
# CHECK: encoding: [0x4b,0x02,0xf2,0x21]
.code32
dftoulz %e2, %e2

# CHECK-INST: dftoulz %e2, %e4
# CHECK: encoding: [0x4b,0x04,0xf2,0x21]
.code32
dftoulz %e2, %e4

# CHECK-INST: dftoulz %e2, %e8
# CHECK: encoding: [0x4b,0x08,0xf2,0x21]
.code32
dftoulz %e2, %e8

# CHECK-INST: dftoulz %e4, %e0
# CHECK: encoding: [0x4b,0x00,0xf2,0x41]
.code32
dftoulz %e4, %e0

# CHECK-INST: dftoulz %e4, %e2
# CHECK: encoding: [0x4b,0x02,0xf2,0x41]
.code32
dftoulz %e4, %e2

# CHECK-INST: dftoulz %e4, %e4
# CHECK: encoding: [0x4b,0x04,0xf2,0x41]
.code32
dftoulz %e4, %e4

# CHECK-INST: dftoulz %e4, %e8
# CHECK: encoding: [0x4b,0x08,0xf2,0x41]
.code32
dftoulz %e4, %e8

# CHECK-INST: dftoulz %e8, %e0
# CHECK: encoding: [0x4b,0x00,0xf2,0x81]
.code32
dftoulz %e8, %e0

# CHECK-INST: dftoulz %e8, %e2
# CHECK: encoding: [0x4b,0x02,0xf2,0x81]
.code32
dftoulz %e8, %e2

# CHECK-INST: dftoulz %e8, %e4
# CHECK: encoding: [0x4b,0x04,0xf2,0x81]
.code32
dftoulz %e8, %e4

# CHECK-INST: dftoulz %e8, %e8
# CHECK: encoding: [0x4b,0x08,0xf2,0x81]
.code32
dftoulz %e8, %e8

# CHECK-INST: ltodf %e0, %e0
# CHECK: encoding: [0x4b,0x00,0x62,0x02]
.code32
ltodf %e0, %e0

# CHECK-INST: ltodf %e0, %e2
# CHECK: encoding: [0x4b,0x02,0x62,0x02]
.code32
ltodf %e0, %e2

# CHECK-INST: ltodf %e0, %e4
# CHECK: encoding: [0x4b,0x04,0x62,0x02]
.code32
ltodf %e0, %e4

# CHECK-INST: ltodf %e0, %e8
# CHECK: encoding: [0x4b,0x08,0x62,0x02]
.code32
ltodf %e0, %e8

# CHECK-INST: ltodf %e2, %e0
# CHECK: encoding: [0x4b,0x00,0x62,0x22]
.code32
ltodf %e2, %e0

# CHECK-INST: ltodf %e2, %e2
# CHECK: encoding: [0x4b,0x02,0x62,0x22]
.code32
ltodf %e2, %e2

# CHECK-INST: ltodf %e2, %e4
# CHECK: encoding: [0x4b,0x04,0x62,0x22]
.code32
ltodf %e2, %e4

# CHECK-INST: ltodf %e2, %e8
# CHECK: encoding: [0x4b,0x08,0x62,0x22]
.code32
ltodf %e2, %e8

# CHECK-INST: ltodf %e4, %e0
# CHECK: encoding: [0x4b,0x00,0x62,0x42]
.code32
ltodf %e4, %e0

# CHECK-INST: ltodf %e4, %e2
# CHECK: encoding: [0x4b,0x02,0x62,0x42]
.code32
ltodf %e4, %e2

# CHECK-INST: ltodf %e4, %e4
# CHECK: encoding: [0x4b,0x04,0x62,0x42]
.code32
ltodf %e4, %e4

# CHECK-INST: ltodf %e4, %e8
# CHECK: encoding: [0x4b,0x08,0x62,0x42]
.code32
ltodf %e4, %e8

# CHECK-INST: ltodf %e8, %e0
# CHECK: encoding: [0x4b,0x00,0x62,0x82]
.code32
ltodf %e8, %e0

# CHECK-INST: ltodf %e8, %e2
# CHECK: encoding: [0x4b,0x02,0x62,0x82]
.code32
ltodf %e8, %e2

# CHECK-INST: ltodf %e8, %e4
# CHECK: encoding: [0x4b,0x04,0x62,0x82]
.code32
ltodf %e8, %e4

# CHECK-INST: ltodf %e8, %e8
# CHECK: encoding: [0x4b,0x08,0x62,0x82]
.code32
ltodf %e8, %e8

# CHECK-INST: ultodf %e0, %e0
# CHECK: encoding: [0x4b,0x00,0x72,0x02]
.code32
ultodf %e0, %e0

# CHECK-INST: ultodf %e0, %e2
# CHECK: encoding: [0x4b,0x02,0x72,0x02]
.code32
ultodf %e0, %e2

# CHECK-INST: ultodf %e0, %e4
# CHECK: encoding: [0x4b,0x04,0x72,0x02]
.code32
ultodf %e0, %e4

# CHECK-INST: ultodf %e0, %e8
# CHECK: encoding: [0x4b,0x08,0x72,0x02]
.code32
ultodf %e0, %e8

# CHECK-INST: ultodf %e2, %e0
# CHECK: encoding: [0x4b,0x00,0x72,0x22]
.code32
ultodf %e2, %e0

# CHECK-INST: ultodf %e2, %e2
# CHECK: encoding: [0x4b,0x02,0x72,0x22]
.code32
ultodf %e2, %e2

# CHECK-INST: ultodf %e2, %e4
# CHECK: encoding: [0x4b,0x04,0x72,0x22]
.code32
ultodf %e2, %e4

# CHECK-INST: ultodf %e2, %e8
# CHECK: encoding: [0x4b,0x08,0x72,0x22]
.code32
ultodf %e2, %e8

# CHECK-INST: ultodf %e4, %e0
# CHECK: encoding: [0x4b,0x00,0x72,0x42]
.code32
ultodf %e4, %e0

# CHECK-INST: ultodf %e4, %e2
# CHECK: encoding: [0x4b,0x02,0x72,0x42]
.code32
ultodf %e4, %e2

# CHECK-INST: ultodf %e4, %e4
# CHECK: encoding: [0x4b,0x04,0x72,0x42]
.code32
ultodf %e4, %e4

# CHECK-INST: ultodf %e4, %e8
# CHECK: encoding: [0x4b,0x08,0x72,0x42]
.code32
ultodf %e4, %e8

# CHECK-INST: ultodf %e8, %e0
# CHECK: encoding: [0x4b,0x00,0x72,0x82]
.code32
ultodf %e8, %e0

# CHECK-INST: ultodf %e8, %e2
# CHECK: encoding: [0x4b,0x02,0x72,0x82]
.code32
ultodf %e8, %e2

# CHECK-INST: ultodf %e8, %e4
# CHECK: encoding: [0x4b,0x04,0x72,0x82]
.code32
ultodf %e8, %e4

# CHECK-INST: ultodf %e8, %e8
# CHECK: encoding: [0x4b,0x08,0x72,0x82]
.code32
ultodf %e8, %e8

# CHECK-INST: dftof %d0, %e0
# CHECK: encoding: [0x4b,0x00,0x82,0x02]
.code32
dftof %d0, %e0

# CHECK-INST: dftof %d0, %e2
# CHECK: encoding: [0x4b,0x02,0x82,0x02]
.code32
dftof %d0, %e2

# CHECK-INST: dftof %d0, %e4
# CHECK: encoding: [0x4b,0x04,0x82,0x02]
.code32
dftof %d0, %e4

# CHECK-INST: dftof %d0, %e8
# CHECK: encoding: [0x4b,0x08,0x82,0x02]
.code32
dftof %d0, %e8

# CHECK-INST: dftof %d1, %e0
# CHECK: encoding: [0x4b,0x00,0x82,0x12]
.code32
dftof %d1, %e0

# CHECK-INST: dftof %d1, %e2
# CHECK: encoding: [0x4b,0x02,0x82,0x12]
.code32
dftof %d1, %e2

# CHECK-INST: dftof %d1, %e4
# CHECK: encoding: [0x4b,0x04,0x82,0x12]
.code32
dftof %d1, %e4

# CHECK-INST: dftof %d1, %e8
# CHECK: encoding: [0x4b,0x08,0x82,0x12]
.code32
dftof %d1, %e8

# CHECK-INST: dftof %d14, %e0
# CHECK: encoding: [0x4b,0x00,0x82,0xe2]
.code32
dftof %d14, %e0

# CHECK-INST: dftof %d14, %e2
# CHECK: encoding: [0x4b,0x02,0x82,0xe2]
.code32
dftof %d14, %e2

# CHECK-INST: dftof %d14, %e4
# CHECK: encoding: [0x4b,0x04,0x82,0xe2]
.code32
dftof %d14, %e4

# CHECK-INST: dftof %d14, %e8
# CHECK: encoding: [0x4b,0x08,0x82,0xe2]
.code32
dftof %d14, %e8

# CHECK-INST: dftof %d15, %e0
# CHECK: encoding: [0x4b,0x00,0x82,0xf2]
.code32
dftof %d15, %e0

# CHECK-INST: dftof %d15, %e2
# CHECK: encoding: [0x4b,0x02,0x82,0xf2]
.code32
dftof %d15, %e2

# CHECK-INST: dftof %d15, %e4
# CHECK: encoding: [0x4b,0x04,0x82,0xf2]
.code32
dftof %d15, %e4

# CHECK-INST: dftof %d15, %e8
# CHECK: encoding: [0x4b,0x08,0x82,0xf2]
.code32
dftof %d15, %e8

# CHECK-INST: ftodf %e0, %d0
# CHECK: encoding: [0x4b,0x00,0x92,0x02]
.code32
ftodf %e0, %d0

# CHECK-INST: ftodf %e0, %d1
# CHECK: encoding: [0x4b,0x01,0x92,0x02]
.code32
ftodf %e0, %d1

# CHECK-INST: ftodf %e0, %d14
# CHECK: encoding: [0x4b,0x0e,0x92,0x02]
.code32
ftodf %e0, %d14

# CHECK-INST: ftodf %e0, %d15
# CHECK: encoding: [0x4b,0x0f,0x92,0x02]
.code32
ftodf %e0, %d15

# CHECK-INST: ftodf %e2, %d0
# CHECK: encoding: [0x4b,0x00,0x92,0x22]
.code32
ftodf %e2, %d0

# CHECK-INST: ftodf %e2, %d1
# CHECK: encoding: [0x4b,0x01,0x92,0x22]
.code32
ftodf %e2, %d1

# CHECK-INST: ftodf %e2, %d14
# CHECK: encoding: [0x4b,0x0e,0x92,0x22]
.code32
ftodf %e2, %d14

# CHECK-INST: ftodf %e2, %d15
# CHECK: encoding: [0x4b,0x0f,0x92,0x22]
.code32
ftodf %e2, %d15

# CHECK-INST: ftodf %e4, %d0
# CHECK: encoding: [0x4b,0x00,0x92,0x42]
.code32
ftodf %e4, %d0

# CHECK-INST: ftodf %e4, %d1
# CHECK: encoding: [0x4b,0x01,0x92,0x42]
.code32
ftodf %e4, %d1

# CHECK-INST: ftodf %e4, %d14
# CHECK: encoding: [0x4b,0x0e,0x92,0x42]
.code32
ftodf %e4, %d14

# CHECK-INST: ftodf %e4, %d15
# CHECK: encoding: [0x4b,0x0f,0x92,0x42]
.code32
ftodf %e4, %d15

# CHECK-INST: ftodf %e8, %d0
# CHECK: encoding: [0x4b,0x00,0x92,0x82]
.code32
ftodf %e8, %d0

# CHECK-INST: ftodf %e8, %d1
# CHECK: encoding: [0x4b,0x01,0x92,0x82]
.code32
ftodf %e8, %d1

# CHECK-INST: ftodf %e8, %d14
# CHECK: encoding: [0x4b,0x0e,0x92,0x82]
.code32
ftodf %e8, %d14

# CHECK-INST: ftodf %e8, %d15
# CHECK: encoding: [0x4b,0x0f,0x92,0x82]
.code32
ftodf %e8, %d15

# CHECK-INST: ftoin %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x71,0x03]
.code32
ftoin %d0, %d0

# CHECK-INST: ftoin %d0, %d1
# CHECK: encoding: [0x4b,0x01,0x71,0x03]
.code32
ftoin %d0, %d1

# CHECK-INST: ftoin %d0, %d14
# CHECK: encoding: [0x4b,0x0e,0x71,0x03]
.code32
ftoin %d0, %d14

# CHECK-INST: ftoin %d0, %d15
# CHECK: encoding: [0x4b,0x0f,0x71,0x03]
.code32
ftoin %d0, %d15

# CHECK-INST: ftoin %d1, %d0
# CHECK: encoding: [0x4b,0x00,0x71,0x13]
.code32
ftoin %d1, %d0

# CHECK-INST: ftoin %d1, %d1
# CHECK: encoding: [0x4b,0x01,0x71,0x13]
.code32
ftoin %d1, %d1

# CHECK-INST: ftoin %d1, %d14
# CHECK: encoding: [0x4b,0x0e,0x71,0x13]
.code32
ftoin %d1, %d14

# CHECK-INST: ftoin %d1, %d15
# CHECK: encoding: [0x4b,0x0f,0x71,0x13]
.code32
ftoin %d1, %d15

# CHECK-INST: ftoin %d14, %d0
# CHECK: encoding: [0x4b,0x00,0x71,0xe3]
.code32
ftoin %d14, %d0

# CHECK-INST: ftoin %d14, %d1
# CHECK: encoding: [0x4b,0x01,0x71,0xe3]
.code32
ftoin %d14, %d1

# CHECK-INST: ftoin %d14, %d14
# CHECK: encoding: [0x4b,0x0e,0x71,0xe3]
.code32
ftoin %d14, %d14

# CHECK-INST: ftoin %d14, %d15
# CHECK: encoding: [0x4b,0x0f,0x71,0xe3]
.code32
ftoin %d14, %d15

# CHECK-INST: ftoin %d15, %d0
# CHECK: encoding: [0x4b,0x00,0x71,0xf3]
.code32
ftoin %d15, %d0

# CHECK-INST: ftoin %d15, %d1
# CHECK: encoding: [0x4b,0x01,0x71,0xf3]
.code32
ftoin %d15, %d1

# CHECK-INST: ftoin %d15, %d14
# CHECK: encoding: [0x4b,0x0e,0x71,0xf3]
.code32
ftoin %d15, %d14

# CHECK-INST: ftoin %d15, %d15
# CHECK: encoding: [0x4b,0x0f,0x71,0xf3]
.code32
ftoin %d15, %d15

# CHECK-INST: dftoin %d0, %e0
# CHECK: encoding: [0x4b,0x00,0x72,0x03]
.code32
dftoin %d0, %e0

# CHECK-INST: dftoin %d0, %e2
# CHECK: encoding: [0x4b,0x02,0x72,0x03]
.code32
dftoin %d0, %e2

# CHECK-INST: dftoin %d0, %e4
# CHECK: encoding: [0x4b,0x04,0x72,0x03]
.code32
dftoin %d0, %e4

# CHECK-INST: dftoin %d0, %e8
# CHECK: encoding: [0x4b,0x08,0x72,0x03]
.code32
dftoin %d0, %e8

# CHECK-INST: dftoin %d1, %e0
# CHECK: encoding: [0x4b,0x00,0x72,0x13]
.code32
dftoin %d1, %e0

# CHECK-INST: dftoin %d1, %e2
# CHECK: encoding: [0x4b,0x02,0x72,0x13]
.code32
dftoin %d1, %e2

# CHECK-INST: dftoin %d1, %e4
# CHECK: encoding: [0x4b,0x04,0x72,0x13]
.code32
dftoin %d1, %e4

# CHECK-INST: dftoin %d1, %e8
# CHECK: encoding: [0x4b,0x08,0x72,0x13]
.code32
dftoin %d1, %e8

# CHECK-INST: dftoin %d14, %e0
# CHECK: encoding: [0x4b,0x00,0x72,0xe3]
.code32
dftoin %d14, %e0

# CHECK-INST: dftoin %d14, %e2
# CHECK: encoding: [0x4b,0x02,0x72,0xe3]
.code32
dftoin %d14, %e2

# CHECK-INST: dftoin %d14, %e4
# CHECK: encoding: [0x4b,0x04,0x72,0xe3]
.code32
dftoin %d14, %e4

# CHECK-INST: dftoin %d14, %e8
# CHECK: encoding: [0x4b,0x08,0x72,0xe3]
.code32
dftoin %d14, %e8

# CHECK-INST: dftoin %d15, %e0
# CHECK: encoding: [0x4b,0x00,0x72,0xf3]
.code32
dftoin %d15, %e0

# CHECK-INST: dftoin %d15, %e2
# CHECK: encoding: [0x4b,0x02,0x72,0xf3]
.code32
dftoin %d15, %e2

# CHECK-INST: dftoin %d15, %e4
# CHECK: encoding: [0x4b,0x04,0x72,0xf3]
.code32
dftoin %d15, %e4

# CHECK-INST: dftoin %d15, %e8
# CHECK: encoding: [0x4b,0x08,0x72,0xf3]
.code32
dftoin %d15, %e8

