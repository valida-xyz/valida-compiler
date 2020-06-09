# RUN: llvm-mc %s -triple=tricore -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK,CHECK-INST %s
# RUN: llvm-mc -filetype=obj -triple=tricore < %s | llvm-objdump -d - \
# RUN:     | FileCheck -check-prefixes=CHECK-INST %s


# CHECK-INST: clz %d0, %d0
# CHECK: encoding: [0x0f,0x00,0xb0,0x01]
clz %d0, %d0

# CHECK-INST: clz %d0, %d1
# CHECK: encoding: [0x0f,0x01,0xb0,0x01]
clz %d0, %d1

# CHECK-INST: clz %d0, %d14
# CHECK: encoding: [0x0f,0x0e,0xb0,0x01]
clz %d0, %d14

# CHECK-INST: clz %d0, %d15
# CHECK: encoding: [0x0f,0x0f,0xb0,0x01]
clz %d0, %d15

# CHECK-INST: clz %d1, %d0
# CHECK: encoding: [0x0f,0x00,0xb0,0x11]
clz %d1, %d0

# CHECK-INST: clz %d1, %d1
# CHECK: encoding: [0x0f,0x01,0xb0,0x11]
clz %d1, %d1

# CHECK-INST: clz %d1, %d14
# CHECK: encoding: [0x0f,0x0e,0xb0,0x11]
clz %d1, %d14

# CHECK-INST: clz %d1, %d15
# CHECK: encoding: [0x0f,0x0f,0xb0,0x11]
clz %d1, %d15

# CHECK-INST: clz %d14, %d0
# CHECK: encoding: [0x0f,0x00,0xb0,0xe1]
clz %d14, %d0

# CHECK-INST: clz %d14, %d1
# CHECK: encoding: [0x0f,0x01,0xb0,0xe1]
clz %d14, %d1

# CHECK-INST: clz %d14, %d14
# CHECK: encoding: [0x0f,0x0e,0xb0,0xe1]
clz %d14, %d14

# CHECK-INST: clz %d14, %d15
# CHECK: encoding: [0x0f,0x0f,0xb0,0xe1]
clz %d14, %d15

# CHECK-INST: clz %d15, %d0
# CHECK: encoding: [0x0f,0x00,0xb0,0xf1]
clz %d15, %d0

# CHECK-INST: clz %d15, %d1
# CHECK: encoding: [0x0f,0x01,0xb0,0xf1]
clz %d15, %d1

# CHECK-INST: clz %d15, %d14
# CHECK: encoding: [0x0f,0x0e,0xb0,0xf1]
clz %d15, %d14

# CHECK-INST: clz %d15, %d15
# CHECK: encoding: [0x0f,0x0f,0xb0,0xf1]
clz %d15, %d15

# CHECK-INST: clo %d0, %d0
# CHECK: encoding: [0x0f,0x00,0xc0,0x01]
clo %d0, %d0

# CHECK-INST: clo %d0, %d1
# CHECK: encoding: [0x0f,0x01,0xc0,0x01]
clo %d0, %d1

# CHECK-INST: clo %d0, %d14
# CHECK: encoding: [0x0f,0x0e,0xc0,0x01]
clo %d0, %d14

# CHECK-INST: clo %d0, %d15
# CHECK: encoding: [0x0f,0x0f,0xc0,0x01]
clo %d0, %d15

# CHECK-INST: clo %d1, %d0
# CHECK: encoding: [0x0f,0x00,0xc0,0x11]
clo %d1, %d0

# CHECK-INST: clo %d1, %d1
# CHECK: encoding: [0x0f,0x01,0xc0,0x11]
clo %d1, %d1

# CHECK-INST: clo %d1, %d14
# CHECK: encoding: [0x0f,0x0e,0xc0,0x11]
clo %d1, %d14

# CHECK-INST: clo %d1, %d15
# CHECK: encoding: [0x0f,0x0f,0xc0,0x11]
clo %d1, %d15

# CHECK-INST: clo %d14, %d0
# CHECK: encoding: [0x0f,0x00,0xc0,0xe1]
clo %d14, %d0

# CHECK-INST: clo %d14, %d1
# CHECK: encoding: [0x0f,0x01,0xc0,0xe1]
clo %d14, %d1

# CHECK-INST: clo %d14, %d14
# CHECK: encoding: [0x0f,0x0e,0xc0,0xe1]
clo %d14, %d14

# CHECK-INST: clo %d14, %d15
# CHECK: encoding: [0x0f,0x0f,0xc0,0xe1]
clo %d14, %d15

# CHECK-INST: clo %d15, %d0
# CHECK: encoding: [0x0f,0x00,0xc0,0xf1]
clo %d15, %d0

# CHECK-INST: clo %d15, %d1
# CHECK: encoding: [0x0f,0x01,0xc0,0xf1]
clo %d15, %d1

# CHECK-INST: clo %d15, %d14
# CHECK: encoding: [0x0f,0x0e,0xc0,0xf1]
clo %d15, %d14

# CHECK-INST: clo %d15, %d15
# CHECK: encoding: [0x0f,0x0f,0xc0,0xf1]
clo %d15, %d15

# CHECK-INST: cls %d0, %d0
# CHECK: encoding: [0x0f,0x00,0xd0,0x01]
cls %d0, %d0

# CHECK-INST: cls %d0, %d1
# CHECK: encoding: [0x0f,0x01,0xd0,0x01]
cls %d0, %d1

# CHECK-INST: cls %d0, %d14
# CHECK: encoding: [0x0f,0x0e,0xd0,0x01]
cls %d0, %d14

# CHECK-INST: cls %d0, %d15
# CHECK: encoding: [0x0f,0x0f,0xd0,0x01]
cls %d0, %d15

# CHECK-INST: cls %d1, %d0
# CHECK: encoding: [0x0f,0x00,0xd0,0x11]
cls %d1, %d0

# CHECK-INST: cls %d1, %d1
# CHECK: encoding: [0x0f,0x01,0xd0,0x11]
cls %d1, %d1

# CHECK-INST: cls %d1, %d14
# CHECK: encoding: [0x0f,0x0e,0xd0,0x11]
cls %d1, %d14

# CHECK-INST: cls %d1, %d15
# CHECK: encoding: [0x0f,0x0f,0xd0,0x11]
cls %d1, %d15

# CHECK-INST: cls %d14, %d0
# CHECK: encoding: [0x0f,0x00,0xd0,0xe1]
cls %d14, %d0

# CHECK-INST: cls %d14, %d1
# CHECK: encoding: [0x0f,0x01,0xd0,0xe1]
cls %d14, %d1

# CHECK-INST: cls %d14, %d14
# CHECK: encoding: [0x0f,0x0e,0xd0,0xe1]
cls %d14, %d14

# CHECK-INST: cls %d14, %d15
# CHECK: encoding: [0x0f,0x0f,0xd0,0xe1]
cls %d14, %d15

# CHECK-INST: cls %d15, %d0
# CHECK: encoding: [0x0f,0x00,0xd0,0xf1]
cls %d15, %d0

# CHECK-INST: cls %d15, %d1
# CHECK: encoding: [0x0f,0x01,0xd0,0xf1]
cls %d15, %d1

# CHECK-INST: cls %d15, %d14
# CHECK: encoding: [0x0f,0x0e,0xd0,0xf1]
cls %d15, %d14

# CHECK-INST: cls %d15, %d15
# CHECK: encoding: [0x0f,0x0f,0xd0,0xf1]
cls %d15, %d15