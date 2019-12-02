# RUN: llvm-mc %s -triple=tricore -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK,CHECK-INST %s


# CHECK-INST: st.t 1, 0, 0
# CHECK: encoding: [0xd5,0x00,0x01,0x00]
.code32
st.t 1, 0, 0

# CHECK-INST: st.t 1, 0, 0
# CHECK: encoding: [0xd5,0x00,0x01,0x00]
.code32
st.t 1, 0, 0

# CHECK-INST: st.t 1, 0, 1
# CHECK: encoding: [0xd5,0x08,0x01,0x00]
.code32
st.t 1, 0, 1

# CHECK-INST: st.t 1, 0, 1
# CHECK: encoding: [0xd5,0x08,0x01,0x00]
.code32
st.t 1, 0, 1

# CHECK-INST: st.t 1, 1, 0
# CHECK: encoding: [0xd5,0x01,0x01,0x00]
.code32
st.t 1, 1, 0

# CHECK-INST: st.t 1, 1, 0
# CHECK: encoding: [0xd5,0x01,0x01,0x00]
.code32
st.t 1, 1, 0

# CHECK-INST: st.t 1, 1, 1
# CHECK: encoding: [0xd5,0x09,0x01,0x00]
.code32
st.t 1, 1, 1

# CHECK-INST: st.t 1, 1, 1
# CHECK: encoding: [0xd5,0x09,0x01,0x00]
.code32
st.t 1, 1, 1

# CHECK-INST: st.t 1, 6, 0
# CHECK: encoding: [0xd5,0x06,0x01,0x00]
.code32
st.t 1, 6, 0

# CHECK-INST: st.t 1, 6, 0
# CHECK: encoding: [0xd5,0x06,0x01,0x00]
.code32
st.t 1, 6, 0

# CHECK-INST: st.t 1, 6, 1
# CHECK: encoding: [0xd5,0x0e,0x01,0x00]
.code32
st.t 1, 6, 1

# CHECK-INST: st.t 1, 6, 1
# CHECK: encoding: [0xd5,0x0e,0x01,0x00]
.code32
st.t 1, 6, 1

# CHECK-INST: st.t 1, 7, 0
# CHECK: encoding: [0xd5,0x07,0x01,0x00]
.code32
st.t 1, 7, 0

# CHECK-INST: st.t 1, 7, 0
# CHECK: encoding: [0xd5,0x07,0x01,0x00]
.code32
st.t 1, 7, 0

# CHECK-INST: st.t 1, 7, 1
# CHECK: encoding: [0xd5,0x0f,0x01,0x00]
.code32
st.t 1, 7, 1

# CHECK-INST: st.t 1, 7, 1
# CHECK: encoding: [0xd5,0x0f,0x01,0x00]
.code32
st.t 1, 7, 1

# CHECK-INST: st.t 2, 0, 0
# CHECK: encoding: [0xd5,0x00,0x02,0x00]
.code32
st.t 2, 0, 0

# CHECK-INST: st.t 2, 0, 0
# CHECK: encoding: [0xd5,0x00,0x02,0x00]
.code32
st.t 2, 0, 0

# CHECK-INST: st.t 2, 0, 1
# CHECK: encoding: [0xd5,0x08,0x02,0x00]
.code32
st.t 2, 0, 1

# CHECK-INST: st.t 2, 0, 1
# CHECK: encoding: [0xd5,0x08,0x02,0x00]
.code32
st.t 2, 0, 1

# CHECK-INST: st.t 2, 1, 0
# CHECK: encoding: [0xd5,0x01,0x02,0x00]
.code32
st.t 2, 1, 0

# CHECK-INST: st.t 2, 1, 0
# CHECK: encoding: [0xd5,0x01,0x02,0x00]
.code32
st.t 2, 1, 0

# CHECK-INST: st.t 2, 1, 1
# CHECK: encoding: [0xd5,0x09,0x02,0x00]
.code32
st.t 2, 1, 1

# CHECK-INST: st.t 2, 1, 1
# CHECK: encoding: [0xd5,0x09,0x02,0x00]
.code32
st.t 2, 1, 1

# CHECK-INST: st.t 2, 6, 0
# CHECK: encoding: [0xd5,0x06,0x02,0x00]
.code32
st.t 2, 6, 0

# CHECK-INST: st.t 2, 6, 0
# CHECK: encoding: [0xd5,0x06,0x02,0x00]
.code32
st.t 2, 6, 0

# CHECK-INST: st.t 2, 6, 1
# CHECK: encoding: [0xd5,0x0e,0x02,0x00]
.code32
st.t 2, 6, 1

# CHECK-INST: st.t 2, 6, 1
# CHECK: encoding: [0xd5,0x0e,0x02,0x00]
.code32
st.t 2, 6, 1

# CHECK-INST: st.t 2, 7, 0
# CHECK: encoding: [0xd5,0x07,0x02,0x00]
.code32
st.t 2, 7, 0

# CHECK-INST: st.t 2, 7, 0
# CHECK: encoding: [0xd5,0x07,0x02,0x00]
.code32
st.t 2, 7, 0

# CHECK-INST: st.t 2, 7, 1
# CHECK: encoding: [0xd5,0x0f,0x02,0x00]
.code32
st.t 2, 7, 1

# CHECK-INST: st.t 2, 7, 1
# CHECK: encoding: [0xd5,0x0f,0x02,0x00]
.code32
st.t 2, 7, 1

# CHECK-INST: st.t 4, 0, 0
# CHECK: encoding: [0xd5,0x00,0x04,0x00]
.code32
st.t 4, 0, 0

# CHECK-INST: st.t 4, 0, 0
# CHECK: encoding: [0xd5,0x00,0x04,0x00]
.code32
st.t 4, 0, 0

# CHECK-INST: st.t 4, 0, 1
# CHECK: encoding: [0xd5,0x08,0x04,0x00]
.code32
st.t 4, 0, 1

# CHECK-INST: st.t 4, 0, 1
# CHECK: encoding: [0xd5,0x08,0x04,0x00]
.code32
st.t 4, 0, 1

# CHECK-INST: st.t 4, 1, 0
# CHECK: encoding: [0xd5,0x01,0x04,0x00]
.code32
st.t 4, 1, 0

# CHECK-INST: st.t 4, 1, 0
# CHECK: encoding: [0xd5,0x01,0x04,0x00]
.code32
st.t 4, 1, 0

# CHECK-INST: st.t 4, 1, 1
# CHECK: encoding: [0xd5,0x09,0x04,0x00]
.code32
st.t 4, 1, 1

# CHECK-INST: st.t 4, 1, 1
# CHECK: encoding: [0xd5,0x09,0x04,0x00]
.code32
st.t 4, 1, 1

# CHECK-INST: st.t 4, 6, 0
# CHECK: encoding: [0xd5,0x06,0x04,0x00]
.code32
st.t 4, 6, 0

# CHECK-INST: st.t 4, 6, 0
# CHECK: encoding: [0xd5,0x06,0x04,0x00]
.code32
st.t 4, 6, 0

# CHECK-INST: st.t 4, 6, 1
# CHECK: encoding: [0xd5,0x0e,0x04,0x00]
.code32
st.t 4, 6, 1

# CHECK-INST: st.t 4, 6, 1
# CHECK: encoding: [0xd5,0x0e,0x04,0x00]
.code32
st.t 4, 6, 1

# CHECK-INST: st.t 4, 7, 0
# CHECK: encoding: [0xd5,0x07,0x04,0x00]
.code32
st.t 4, 7, 0

# CHECK-INST: st.t 4, 7, 0
# CHECK: encoding: [0xd5,0x07,0x04,0x00]
.code32
st.t 4, 7, 0

# CHECK-INST: st.t 4, 7, 1
# CHECK: encoding: [0xd5,0x0f,0x04,0x00]
.code32
st.t 4, 7, 1

# CHECK-INST: st.t 4, 7, 1
# CHECK: encoding: [0xd5,0x0f,0x04,0x00]
.code32
st.t 4, 7, 1

# CHECK-INST: st.t 8, 0, 0
# CHECK: encoding: [0xd5,0x00,0x08,0x00]
.code32
st.t 8, 0, 0

# CHECK-INST: st.t 8, 0, 0
# CHECK: encoding: [0xd5,0x00,0x08,0x00]
.code32
st.t 8, 0, 0

# CHECK-INST: st.t 8, 0, 1
# CHECK: encoding: [0xd5,0x08,0x08,0x00]
.code32
st.t 8, 0, 1

# CHECK-INST: st.t 8, 0, 1
# CHECK: encoding: [0xd5,0x08,0x08,0x00]
.code32
st.t 8, 0, 1

# CHECK-INST: st.t 8, 1, 0
# CHECK: encoding: [0xd5,0x01,0x08,0x00]
.code32
st.t 8, 1, 0

# CHECK-INST: st.t 8, 1, 0
# CHECK: encoding: [0xd5,0x01,0x08,0x00]
.code32
st.t 8, 1, 0

# CHECK-INST: st.t 8, 1, 1
# CHECK: encoding: [0xd5,0x09,0x08,0x00]
.code32
st.t 8, 1, 1

# CHECK-INST: st.t 8, 1, 1
# CHECK: encoding: [0xd5,0x09,0x08,0x00]
.code32
st.t 8, 1, 1

# CHECK-INST: st.t 8, 6, 0
# CHECK: encoding: [0xd5,0x06,0x08,0x00]
.code32
st.t 8, 6, 0

# CHECK-INST: st.t 8, 6, 0
# CHECK: encoding: [0xd5,0x06,0x08,0x00]
.code32
st.t 8, 6, 0

# CHECK-INST: st.t 8, 6, 1
# CHECK: encoding: [0xd5,0x0e,0x08,0x00]
.code32
st.t 8, 6, 1

# CHECK-INST: st.t 8, 6, 1
# CHECK: encoding: [0xd5,0x0e,0x08,0x00]
.code32
st.t 8, 6, 1

# CHECK-INST: st.t 8, 7, 0
# CHECK: encoding: [0xd5,0x07,0x08,0x00]
.code32
st.t 8, 7, 0

# CHECK-INST: st.t 8, 7, 0
# CHECK: encoding: [0xd5,0x07,0x08,0x00]
.code32
st.t 8, 7, 0

# CHECK-INST: st.t 8, 7, 1
# CHECK: encoding: [0xd5,0x0f,0x08,0x00]
.code32
st.t 8, 7, 1

# CHECK-INST: st.t 8, 7, 1
# CHECK: encoding: [0xd5,0x0f,0x08,0x00]
.code32
st.t 8, 7, 1

# CHECK-INST: st.t 16, 0, 0
# CHECK: encoding: [0xd5,0x00,0x10,0x00]
.code32
st.t 16, 0, 0

# CHECK-INST: st.t 16, 0, 0
# CHECK: encoding: [0xd5,0x00,0x10,0x00]
.code32
st.t 16, 0, 0

# CHECK-INST: st.t 16, 0, 1
# CHECK: encoding: [0xd5,0x08,0x10,0x00]
.code32
st.t 16, 0, 1

# CHECK-INST: st.t 16, 0, 1
# CHECK: encoding: [0xd5,0x08,0x10,0x00]
.code32
st.t 16, 0, 1

# CHECK-INST: st.t 16, 1, 0
# CHECK: encoding: [0xd5,0x01,0x10,0x00]
.code32
st.t 16, 1, 0

# CHECK-INST: st.t 16, 1, 0
# CHECK: encoding: [0xd5,0x01,0x10,0x00]
.code32
st.t 16, 1, 0

# CHECK-INST: st.t 16, 1, 1
# CHECK: encoding: [0xd5,0x09,0x10,0x00]
.code32
st.t 16, 1, 1

# CHECK-INST: st.t 16, 1, 1
# CHECK: encoding: [0xd5,0x09,0x10,0x00]
.code32
st.t 16, 1, 1

# CHECK-INST: st.t 16, 6, 0
# CHECK: encoding: [0xd5,0x06,0x10,0x00]
.code32
st.t 16, 6, 0

# CHECK-INST: st.t 16, 6, 0
# CHECK: encoding: [0xd5,0x06,0x10,0x00]
.code32
st.t 16, 6, 0

# CHECK-INST: st.t 16, 6, 1
# CHECK: encoding: [0xd5,0x0e,0x10,0x00]
.code32
st.t 16, 6, 1

# CHECK-INST: st.t 16, 6, 1
# CHECK: encoding: [0xd5,0x0e,0x10,0x00]
.code32
st.t 16, 6, 1

# CHECK-INST: st.t 16, 7, 0
# CHECK: encoding: [0xd5,0x07,0x10,0x00]
.code32
st.t 16, 7, 0

# CHECK-INST: st.t 16, 7, 0
# CHECK: encoding: [0xd5,0x07,0x10,0x00]
.code32
st.t 16, 7, 0

# CHECK-INST: st.t 16, 7, 1
# CHECK: encoding: [0xd5,0x0f,0x10,0x00]
.code32
st.t 16, 7, 1

# CHECK-INST: st.t 16, 7, 1
# CHECK: encoding: [0xd5,0x0f,0x10,0x00]
.code32
st.t 16, 7, 1

# CHECK-INST: st.t 32, 0, 0
# CHECK: encoding: [0xd5,0x00,0x20,0x00]
.code32
st.t 32, 0, 0

# CHECK-INST: st.t 32, 0, 0
# CHECK: encoding: [0xd5,0x00,0x20,0x00]
.code32
st.t 32, 0, 0

# CHECK-INST: st.t 32, 0, 1
# CHECK: encoding: [0xd5,0x08,0x20,0x00]
.code32
st.t 32, 0, 1

# CHECK-INST: st.t 32, 0, 1
# CHECK: encoding: [0xd5,0x08,0x20,0x00]
.code32
st.t 32, 0, 1

# CHECK-INST: st.t 32, 1, 0
# CHECK: encoding: [0xd5,0x01,0x20,0x00]
.code32
st.t 32, 1, 0

# CHECK-INST: st.t 32, 1, 0
# CHECK: encoding: [0xd5,0x01,0x20,0x00]
.code32
st.t 32, 1, 0

# CHECK-INST: st.t 32, 1, 1
# CHECK: encoding: [0xd5,0x09,0x20,0x00]
.code32
st.t 32, 1, 1

# CHECK-INST: st.t 32, 1, 1
# CHECK: encoding: [0xd5,0x09,0x20,0x00]
.code32
st.t 32, 1, 1

# CHECK-INST: st.t 32, 6, 0
# CHECK: encoding: [0xd5,0x06,0x20,0x00]
.code32
st.t 32, 6, 0

# CHECK-INST: st.t 32, 6, 0
# CHECK: encoding: [0xd5,0x06,0x20,0x00]
.code32
st.t 32, 6, 0

# CHECK-INST: st.t 32, 6, 1
# CHECK: encoding: [0xd5,0x0e,0x20,0x00]
.code32
st.t 32, 6, 1

# CHECK-INST: st.t 32, 6, 1
# CHECK: encoding: [0xd5,0x0e,0x20,0x00]
.code32
st.t 32, 6, 1

# CHECK-INST: st.t 32, 7, 0
# CHECK: encoding: [0xd5,0x07,0x20,0x00]
.code32
st.t 32, 7, 0

# CHECK-INST: st.t 32, 7, 0
# CHECK: encoding: [0xd5,0x07,0x20,0x00]
.code32
st.t 32, 7, 0

# CHECK-INST: st.t 32, 7, 1
# CHECK: encoding: [0xd5,0x0f,0x20,0x00]
.code32
st.t 32, 7, 1

# CHECK-INST: st.t 32, 7, 1
# CHECK: encoding: [0xd5,0x0f,0x20,0x00]
.code32
st.t 32, 7, 1

# CHECK-INST: st.t 64, 0, 0
# CHECK: encoding: [0xd5,0x00,0x00,0x10]
.code32
st.t 64, 0, 0

# CHECK-INST: st.t 64, 0, 0
# CHECK: encoding: [0xd5,0x00,0x00,0x10]
.code32
st.t 64, 0, 0

# CHECK-INST: st.t 64, 0, 1
# CHECK: encoding: [0xd5,0x08,0x00,0x10]
.code32
st.t 64, 0, 1

# CHECK-INST: st.t 64, 0, 1
# CHECK: encoding: [0xd5,0x08,0x00,0x10]
.code32
st.t 64, 0, 1

# CHECK-INST: st.t 64, 1, 0
# CHECK: encoding: [0xd5,0x01,0x00,0x10]
.code32
st.t 64, 1, 0

# CHECK-INST: st.t 64, 1, 0
# CHECK: encoding: [0xd5,0x01,0x00,0x10]
.code32
st.t 64, 1, 0

# CHECK-INST: st.t 64, 1, 1
# CHECK: encoding: [0xd5,0x09,0x00,0x10]
.code32
st.t 64, 1, 1

# CHECK-INST: st.t 64, 1, 1
# CHECK: encoding: [0xd5,0x09,0x00,0x10]
.code32
st.t 64, 1, 1

# CHECK-INST: st.t 64, 6, 0
# CHECK: encoding: [0xd5,0x06,0x00,0x10]
.code32
st.t 64, 6, 0

# CHECK-INST: st.t 64, 6, 0
# CHECK: encoding: [0xd5,0x06,0x00,0x10]
.code32
st.t 64, 6, 0

# CHECK-INST: st.t 64, 6, 1
# CHECK: encoding: [0xd5,0x0e,0x00,0x10]
.code32
st.t 64, 6, 1

# CHECK-INST: st.t 64, 6, 1
# CHECK: encoding: [0xd5,0x0e,0x00,0x10]
.code32
st.t 64, 6, 1

# CHECK-INST: st.t 64, 7, 0
# CHECK: encoding: [0xd5,0x07,0x00,0x10]
.code32
st.t 64, 7, 0

# CHECK-INST: st.t 64, 7, 0
# CHECK: encoding: [0xd5,0x07,0x00,0x10]
.code32
st.t 64, 7, 0

# CHECK-INST: st.t 64, 7, 1
# CHECK: encoding: [0xd5,0x0f,0x00,0x10]
.code32
st.t 64, 7, 1

# CHECK-INST: st.t 64, 7, 1
# CHECK: encoding: [0xd5,0x0f,0x00,0x10]
.code32
st.t 64, 7, 1

# CHECK-INST: st.t 128, 0, 0
# CHECK: encoding: [0xd5,0x00,0x00,0x20]
.code32
st.t 128, 0, 0

# CHECK-INST: st.t 128, 0, 0
# CHECK: encoding: [0xd5,0x00,0x00,0x20]
.code32
st.t 128, 0, 0

# CHECK-INST: st.t 128, 0, 1
# CHECK: encoding: [0xd5,0x08,0x00,0x20]
.code32
st.t 128, 0, 1

# CHECK-INST: st.t 128, 0, 1
# CHECK: encoding: [0xd5,0x08,0x00,0x20]
.code32
st.t 128, 0, 1

# CHECK-INST: st.t 128, 1, 0
# CHECK: encoding: [0xd5,0x01,0x00,0x20]
.code32
st.t 128, 1, 0

# CHECK-INST: st.t 128, 1, 0
# CHECK: encoding: [0xd5,0x01,0x00,0x20]
.code32
st.t 128, 1, 0

# CHECK-INST: st.t 128, 1, 1
# CHECK: encoding: [0xd5,0x09,0x00,0x20]
.code32
st.t 128, 1, 1

# CHECK-INST: st.t 128, 1, 1
# CHECK: encoding: [0xd5,0x09,0x00,0x20]
.code32
st.t 128, 1, 1

# CHECK-INST: st.t 128, 6, 0
# CHECK: encoding: [0xd5,0x06,0x00,0x20]
.code32
st.t 128, 6, 0

# CHECK-INST: st.t 128, 6, 0
# CHECK: encoding: [0xd5,0x06,0x00,0x20]
.code32
st.t 128, 6, 0

# CHECK-INST: st.t 128, 6, 1
# CHECK: encoding: [0xd5,0x0e,0x00,0x20]
.code32
st.t 128, 6, 1

# CHECK-INST: st.t 128, 6, 1
# CHECK: encoding: [0xd5,0x0e,0x00,0x20]
.code32
st.t 128, 6, 1

# CHECK-INST: st.t 128, 7, 0
# CHECK: encoding: [0xd5,0x07,0x00,0x20]
.code32
st.t 128, 7, 0

# CHECK-INST: st.t 128, 7, 0
# CHECK: encoding: [0xd5,0x07,0x00,0x20]
.code32
st.t 128, 7, 0

# CHECK-INST: st.t 128, 7, 1
# CHECK: encoding: [0xd5,0x0f,0x00,0x20]
.code32
st.t 128, 7, 1

# CHECK-INST: st.t 128, 7, 1
# CHECK: encoding: [0xd5,0x0f,0x00,0x20]
.code32
st.t 128, 7, 1

# CHECK-INST: st.t 256, 0, 0
# CHECK: encoding: [0xd5,0x00,0x00,0x40]
.code32
st.t 256, 0, 0

# CHECK-INST: st.t 256, 0, 0
# CHECK: encoding: [0xd5,0x00,0x00,0x40]
.code32
st.t 256, 0, 0

# CHECK-INST: st.t 256, 0, 1
# CHECK: encoding: [0xd5,0x08,0x00,0x40]
.code32
st.t 256, 0, 1

# CHECK-INST: st.t 256, 0, 1
# CHECK: encoding: [0xd5,0x08,0x00,0x40]
.code32
st.t 256, 0, 1

# CHECK-INST: st.t 256, 1, 0
# CHECK: encoding: [0xd5,0x01,0x00,0x40]
.code32
st.t 256, 1, 0

# CHECK-INST: st.t 256, 1, 0
# CHECK: encoding: [0xd5,0x01,0x00,0x40]
.code32
st.t 256, 1, 0

# CHECK-INST: st.t 256, 1, 1
# CHECK: encoding: [0xd5,0x09,0x00,0x40]
.code32
st.t 256, 1, 1

# CHECK-INST: st.t 256, 1, 1
# CHECK: encoding: [0xd5,0x09,0x00,0x40]
.code32
st.t 256, 1, 1

# CHECK-INST: st.t 256, 6, 0
# CHECK: encoding: [0xd5,0x06,0x00,0x40]
.code32
st.t 256, 6, 0

# CHECK-INST: st.t 256, 6, 0
# CHECK: encoding: [0xd5,0x06,0x00,0x40]
.code32
st.t 256, 6, 0

# CHECK-INST: st.t 256, 6, 1
# CHECK: encoding: [0xd5,0x0e,0x00,0x40]
.code32
st.t 256, 6, 1

# CHECK-INST: st.t 256, 6, 1
# CHECK: encoding: [0xd5,0x0e,0x00,0x40]
.code32
st.t 256, 6, 1

# CHECK-INST: st.t 256, 7, 0
# CHECK: encoding: [0xd5,0x07,0x00,0x40]
.code32
st.t 256, 7, 0

# CHECK-INST: st.t 256, 7, 0
# CHECK: encoding: [0xd5,0x07,0x00,0x40]
.code32
st.t 256, 7, 0

# CHECK-INST: st.t 256, 7, 1
# CHECK: encoding: [0xd5,0x0f,0x00,0x40]
.code32
st.t 256, 7, 1

# CHECK-INST: st.t 256, 7, 1
# CHECK: encoding: [0xd5,0x0f,0x00,0x40]
.code32
st.t 256, 7, 1

# CHECK-INST: st.t 512, 0, 0
# CHECK: encoding: [0xd5,0x00,0x00,0x80]
.code32
st.t 512, 0, 0

# CHECK-INST: st.t 512, 0, 0
# CHECK: encoding: [0xd5,0x00,0x00,0x80]
.code32
st.t 512, 0, 0

# CHECK-INST: st.t 512, 0, 1
# CHECK: encoding: [0xd5,0x08,0x00,0x80]
.code32
st.t 512, 0, 1

# CHECK-INST: st.t 512, 0, 1
# CHECK: encoding: [0xd5,0x08,0x00,0x80]
.code32
st.t 512, 0, 1

# CHECK-INST: st.t 512, 1, 0
# CHECK: encoding: [0xd5,0x01,0x00,0x80]
.code32
st.t 512, 1, 0

# CHECK-INST: st.t 512, 1, 0
# CHECK: encoding: [0xd5,0x01,0x00,0x80]
.code32
st.t 512, 1, 0

# CHECK-INST: st.t 512, 1, 1
# CHECK: encoding: [0xd5,0x09,0x00,0x80]
.code32
st.t 512, 1, 1

# CHECK-INST: st.t 512, 1, 1
# CHECK: encoding: [0xd5,0x09,0x00,0x80]
.code32
st.t 512, 1, 1

# CHECK-INST: st.t 512, 6, 0
# CHECK: encoding: [0xd5,0x06,0x00,0x80]
.code32
st.t 512, 6, 0

# CHECK-INST: st.t 512, 6, 0
# CHECK: encoding: [0xd5,0x06,0x00,0x80]
.code32
st.t 512, 6, 0

# CHECK-INST: st.t 512, 6, 1
# CHECK: encoding: [0xd5,0x0e,0x00,0x80]
.code32
st.t 512, 6, 1

# CHECK-INST: st.t 512, 6, 1
# CHECK: encoding: [0xd5,0x0e,0x00,0x80]
.code32
st.t 512, 6, 1

# CHECK-INST: st.t 512, 7, 0
# CHECK: encoding: [0xd5,0x07,0x00,0x80]
.code32
st.t 512, 7, 0

# CHECK-INST: st.t 512, 7, 0
# CHECK: encoding: [0xd5,0x07,0x00,0x80]
.code32
st.t 512, 7, 0

# CHECK-INST: st.t 512, 7, 1
# CHECK: encoding: [0xd5,0x0f,0x00,0x80]
.code32
st.t 512, 7, 1

# CHECK-INST: st.t 512, 7, 1
# CHECK: encoding: [0xd5,0x0f,0x00,0x80]
.code32
st.t 512, 7, 1

# CHECK-INST: st.t 1024, 0, 0
# CHECK: encoding: [0xd5,0x00,0x40,0x00]
.code32
st.t 1024, 0, 0

# CHECK-INST: st.t 1024, 0, 0
# CHECK: encoding: [0xd5,0x00,0x40,0x00]
.code32
st.t 1024, 0, 0

# CHECK-INST: st.t 1024, 0, 1
# CHECK: encoding: [0xd5,0x08,0x40,0x00]
.code32
st.t 1024, 0, 1

# CHECK-INST: st.t 1024, 0, 1
# CHECK: encoding: [0xd5,0x08,0x40,0x00]
.code32
st.t 1024, 0, 1

# CHECK-INST: st.t 1024, 1, 0
# CHECK: encoding: [0xd5,0x01,0x40,0x00]
.code32
st.t 1024, 1, 0

# CHECK-INST: st.t 1024, 1, 0
# CHECK: encoding: [0xd5,0x01,0x40,0x00]
.code32
st.t 1024, 1, 0

# CHECK-INST: st.t 1024, 1, 1
# CHECK: encoding: [0xd5,0x09,0x40,0x00]
.code32
st.t 1024, 1, 1

# CHECK-INST: st.t 1024, 1, 1
# CHECK: encoding: [0xd5,0x09,0x40,0x00]
.code32
st.t 1024, 1, 1

# CHECK-INST: st.t 1024, 6, 0
# CHECK: encoding: [0xd5,0x06,0x40,0x00]
.code32
st.t 1024, 6, 0

# CHECK-INST: st.t 1024, 6, 0
# CHECK: encoding: [0xd5,0x06,0x40,0x00]
.code32
st.t 1024, 6, 0

# CHECK-INST: st.t 1024, 6, 1
# CHECK: encoding: [0xd5,0x0e,0x40,0x00]
.code32
st.t 1024, 6, 1

# CHECK-INST: st.t 1024, 6, 1
# CHECK: encoding: [0xd5,0x0e,0x40,0x00]
.code32
st.t 1024, 6, 1

# CHECK-INST: st.t 1024, 7, 0
# CHECK: encoding: [0xd5,0x07,0x40,0x00]
.code32
st.t 1024, 7, 0

# CHECK-INST: st.t 1024, 7, 0
# CHECK: encoding: [0xd5,0x07,0x40,0x00]
.code32
st.t 1024, 7, 0

# CHECK-INST: st.t 1024, 7, 1
# CHECK: encoding: [0xd5,0x0f,0x40,0x00]
.code32
st.t 1024, 7, 1

# CHECK-INST: st.t 1024, 7, 1
# CHECK: encoding: [0xd5,0x0f,0x40,0x00]
.code32
st.t 1024, 7, 1

# CHECK-INST: st.t 2048, 0, 0
# CHECK: encoding: [0xd5,0x00,0x80,0x00]
.code32
st.t 2048, 0, 0

# CHECK-INST: st.t 2048, 0, 0
# CHECK: encoding: [0xd5,0x00,0x80,0x00]
.code32
st.t 2048, 0, 0

# CHECK-INST: st.t 2048, 0, 1
# CHECK: encoding: [0xd5,0x08,0x80,0x00]
.code32
st.t 2048, 0, 1

# CHECK-INST: st.t 2048, 0, 1
# CHECK: encoding: [0xd5,0x08,0x80,0x00]
.code32
st.t 2048, 0, 1

# CHECK-INST: st.t 2048, 1, 0
# CHECK: encoding: [0xd5,0x01,0x80,0x00]
.code32
st.t 2048, 1, 0

# CHECK-INST: st.t 2048, 1, 0
# CHECK: encoding: [0xd5,0x01,0x80,0x00]
.code32
st.t 2048, 1, 0

# CHECK-INST: st.t 2048, 1, 1
# CHECK: encoding: [0xd5,0x09,0x80,0x00]
.code32
st.t 2048, 1, 1

# CHECK-INST: st.t 2048, 1, 1
# CHECK: encoding: [0xd5,0x09,0x80,0x00]
.code32
st.t 2048, 1, 1

# CHECK-INST: st.t 2048, 6, 0
# CHECK: encoding: [0xd5,0x06,0x80,0x00]
.code32
st.t 2048, 6, 0

# CHECK-INST: st.t 2048, 6, 0
# CHECK: encoding: [0xd5,0x06,0x80,0x00]
.code32
st.t 2048, 6, 0

# CHECK-INST: st.t 2048, 6, 1
# CHECK: encoding: [0xd5,0x0e,0x80,0x00]
.code32
st.t 2048, 6, 1

# CHECK-INST: st.t 2048, 6, 1
# CHECK: encoding: [0xd5,0x0e,0x80,0x00]
.code32
st.t 2048, 6, 1

# CHECK-INST: st.t 2048, 7, 0
# CHECK: encoding: [0xd5,0x07,0x80,0x00]
.code32
st.t 2048, 7, 0

# CHECK-INST: st.t 2048, 7, 0
# CHECK: encoding: [0xd5,0x07,0x80,0x00]
.code32
st.t 2048, 7, 0

# CHECK-INST: st.t 2048, 7, 1
# CHECK: encoding: [0xd5,0x0f,0x80,0x00]
.code32
st.t 2048, 7, 1

# CHECK-INST: st.t 2048, 7, 1
# CHECK: encoding: [0xd5,0x0f,0x80,0x00]
.code32
st.t 2048, 7, 1

# CHECK-INST: st.t 4096, 0, 0
# CHECK: encoding: [0xd5,0x00,0x00,0x01]
.code32
st.t 4096, 0, 0

# CHECK-INST: st.t 4096, 0, 0
# CHECK: encoding: [0xd5,0x00,0x00,0x01]
.code32
st.t 4096, 0, 0

# CHECK-INST: st.t 4096, 0, 1
# CHECK: encoding: [0xd5,0x08,0x00,0x01]
.code32
st.t 4096, 0, 1

# CHECK-INST: st.t 4096, 0, 1
# CHECK: encoding: [0xd5,0x08,0x00,0x01]
.code32
st.t 4096, 0, 1

# CHECK-INST: st.t 4096, 1, 0
# CHECK: encoding: [0xd5,0x01,0x00,0x01]
.code32
st.t 4096, 1, 0

# CHECK-INST: st.t 4096, 1, 0
# CHECK: encoding: [0xd5,0x01,0x00,0x01]
.code32
st.t 4096, 1, 0

# CHECK-INST: st.t 4096, 1, 1
# CHECK: encoding: [0xd5,0x09,0x00,0x01]
.code32
st.t 4096, 1, 1

# CHECK-INST: st.t 4096, 1, 1
# CHECK: encoding: [0xd5,0x09,0x00,0x01]
.code32
st.t 4096, 1, 1

# CHECK-INST: st.t 4096, 6, 0
# CHECK: encoding: [0xd5,0x06,0x00,0x01]
.code32
st.t 4096, 6, 0

# CHECK-INST: st.t 4096, 6, 0
# CHECK: encoding: [0xd5,0x06,0x00,0x01]
.code32
st.t 4096, 6, 0

# CHECK-INST: st.t 4096, 6, 1
# CHECK: encoding: [0xd5,0x0e,0x00,0x01]
.code32
st.t 4096, 6, 1

# CHECK-INST: st.t 4096, 6, 1
# CHECK: encoding: [0xd5,0x0e,0x00,0x01]
.code32
st.t 4096, 6, 1

# CHECK-INST: st.t 4096, 7, 0
# CHECK: encoding: [0xd5,0x07,0x00,0x01]
.code32
st.t 4096, 7, 0

# CHECK-INST: st.t 4096, 7, 0
# CHECK: encoding: [0xd5,0x07,0x00,0x01]
.code32
st.t 4096, 7, 0

# CHECK-INST: st.t 4096, 7, 1
# CHECK: encoding: [0xd5,0x0f,0x00,0x01]
.code32
st.t 4096, 7, 1

# CHECK-INST: st.t 4096, 7, 1
# CHECK: encoding: [0xd5,0x0f,0x00,0x01]
.code32
st.t 4096, 7, 1

# CHECK-INST: st.t 8192, 0, 0
# CHECK: encoding: [0xd5,0x00,0x00,0x02]
.code32
st.t 8192, 0, 0

# CHECK-INST: st.t 8192, 0, 0
# CHECK: encoding: [0xd5,0x00,0x00,0x02]
.code32
st.t 8192, 0, 0

# CHECK-INST: st.t 8192, 0, 1
# CHECK: encoding: [0xd5,0x08,0x00,0x02]
.code32
st.t 8192, 0, 1

# CHECK-INST: st.t 8192, 0, 1
# CHECK: encoding: [0xd5,0x08,0x00,0x02]
.code32
st.t 8192, 0, 1

# CHECK-INST: st.t 8192, 1, 0
# CHECK: encoding: [0xd5,0x01,0x00,0x02]
.code32
st.t 8192, 1, 0

# CHECK-INST: st.t 8192, 1, 0
# CHECK: encoding: [0xd5,0x01,0x00,0x02]
.code32
st.t 8192, 1, 0

# CHECK-INST: st.t 8192, 1, 1
# CHECK: encoding: [0xd5,0x09,0x00,0x02]
.code32
st.t 8192, 1, 1

# CHECK-INST: st.t 8192, 1, 1
# CHECK: encoding: [0xd5,0x09,0x00,0x02]
.code32
st.t 8192, 1, 1

# CHECK-INST: st.t 8192, 6, 0
# CHECK: encoding: [0xd5,0x06,0x00,0x02]
.code32
st.t 8192, 6, 0

# CHECK-INST: st.t 8192, 6, 0
# CHECK: encoding: [0xd5,0x06,0x00,0x02]
.code32
st.t 8192, 6, 0

# CHECK-INST: st.t 8192, 6, 1
# CHECK: encoding: [0xd5,0x0e,0x00,0x02]
.code32
st.t 8192, 6, 1

# CHECK-INST: st.t 8192, 6, 1
# CHECK: encoding: [0xd5,0x0e,0x00,0x02]
.code32
st.t 8192, 6, 1

# CHECK-INST: st.t 8192, 7, 0
# CHECK: encoding: [0xd5,0x07,0x00,0x02]
.code32
st.t 8192, 7, 0

# CHECK-INST: st.t 8192, 7, 0
# CHECK: encoding: [0xd5,0x07,0x00,0x02]
.code32
st.t 8192, 7, 0

# CHECK-INST: st.t 8192, 7, 1
# CHECK: encoding: [0xd5,0x0f,0x00,0x02]
.code32
st.t 8192, 7, 1

# CHECK-INST: st.t 8192, 7, 1
# CHECK: encoding: [0xd5,0x0f,0x00,0x02]
.code32
st.t 8192, 7, 1

# CHECK-INST: st.t 268435456, 0, 0
# CHECK: encoding: [0xd5,0x10,0x00,0x00]
.code32
st.t 268435456, 0, 0

# CHECK-INST: st.t 268435456, 0, 0
# CHECK: encoding: [0xd5,0x10,0x00,0x00]
.code32
st.t 268435456, 0, 0

# CHECK-INST: st.t 268435456, 0, 1
# CHECK: encoding: [0xd5,0x18,0x00,0x00]
.code32
st.t 268435456, 0, 1

# CHECK-INST: st.t 268435456, 0, 1
# CHECK: encoding: [0xd5,0x18,0x00,0x00]
.code32
st.t 268435456, 0, 1

# CHECK-INST: st.t 268435456, 1, 0
# CHECK: encoding: [0xd5,0x11,0x00,0x00]
.code32
st.t 268435456, 1, 0

# CHECK-INST: st.t 268435456, 1, 0
# CHECK: encoding: [0xd5,0x11,0x00,0x00]
.code32
st.t 268435456, 1, 0

# CHECK-INST: st.t 268435456, 1, 1
# CHECK: encoding: [0xd5,0x19,0x00,0x00]
.code32
st.t 268435456, 1, 1

# CHECK-INST: st.t 268435456, 1, 1
# CHECK: encoding: [0xd5,0x19,0x00,0x00]
.code32
st.t 268435456, 1, 1

# CHECK-INST: st.t 268435456, 6, 0
# CHECK: encoding: [0xd5,0x16,0x00,0x00]
.code32
st.t 268435456, 6, 0

# CHECK-INST: st.t 268435456, 6, 0
# CHECK: encoding: [0xd5,0x16,0x00,0x00]
.code32
st.t 268435456, 6, 0

# CHECK-INST: st.t 268435456, 6, 1
# CHECK: encoding: [0xd5,0x1e,0x00,0x00]
.code32
st.t 268435456, 6, 1

# CHECK-INST: st.t 268435456, 6, 1
# CHECK: encoding: [0xd5,0x1e,0x00,0x00]
.code32
st.t 268435456, 6, 1

# CHECK-INST: st.t 268435456, 7, 0
# CHECK: encoding: [0xd5,0x17,0x00,0x00]
.code32
st.t 268435456, 7, 0

# CHECK-INST: st.t 268435456, 7, 0
# CHECK: encoding: [0xd5,0x17,0x00,0x00]
.code32
st.t 268435456, 7, 0

# CHECK-INST: st.t 268435456, 7, 1
# CHECK: encoding: [0xd5,0x1f,0x00,0x00]
.code32
st.t 268435456, 7, 1

# CHECK-INST: st.t 268435456, 7, 1
# CHECK: encoding: [0xd5,0x1f,0x00,0x00]
.code32
st.t 268435456, 7, 1

# CHECK-INST: st.t 536870912, 0, 0
# CHECK: encoding: [0xd5,0x20,0x00,0x00]
.code32
st.t 536870912, 0, 0

# CHECK-INST: st.t 536870912, 0, 0
# CHECK: encoding: [0xd5,0x20,0x00,0x00]
.code32
st.t 536870912, 0, 0

# CHECK-INST: st.t 536870912, 0, 1
# CHECK: encoding: [0xd5,0x28,0x00,0x00]
.code32
st.t 536870912, 0, 1

# CHECK-INST: st.t 536870912, 0, 1
# CHECK: encoding: [0xd5,0x28,0x00,0x00]
.code32
st.t 536870912, 0, 1

# CHECK-INST: st.t 536870912, 1, 0
# CHECK: encoding: [0xd5,0x21,0x00,0x00]
.code32
st.t 536870912, 1, 0

# CHECK-INST: st.t 536870912, 1, 0
# CHECK: encoding: [0xd5,0x21,0x00,0x00]
.code32
st.t 536870912, 1, 0

# CHECK-INST: st.t 536870912, 1, 1
# CHECK: encoding: [0xd5,0x29,0x00,0x00]
.code32
st.t 536870912, 1, 1

# CHECK-INST: st.t 536870912, 1, 1
# CHECK: encoding: [0xd5,0x29,0x00,0x00]
.code32
st.t 536870912, 1, 1

# CHECK-INST: st.t 536870912, 6, 0
# CHECK: encoding: [0xd5,0x26,0x00,0x00]
.code32
st.t 536870912, 6, 0

# CHECK-INST: st.t 536870912, 6, 0
# CHECK: encoding: [0xd5,0x26,0x00,0x00]
.code32
st.t 536870912, 6, 0

# CHECK-INST: st.t 536870912, 6, 1
# CHECK: encoding: [0xd5,0x2e,0x00,0x00]
.code32
st.t 536870912, 6, 1

# CHECK-INST: st.t 536870912, 6, 1
# CHECK: encoding: [0xd5,0x2e,0x00,0x00]
.code32
st.t 536870912, 6, 1

# CHECK-INST: st.t 536870912, 7, 0
# CHECK: encoding: [0xd5,0x27,0x00,0x00]
.code32
st.t 536870912, 7, 0

# CHECK-INST: st.t 536870912, 7, 0
# CHECK: encoding: [0xd5,0x27,0x00,0x00]
.code32
st.t 536870912, 7, 0

# CHECK-INST: st.t 536870912, 7, 1
# CHECK: encoding: [0xd5,0x2f,0x00,0x00]
.code32
st.t 536870912, 7, 1

# CHECK-INST: st.t 536870912, 7, 1
# CHECK: encoding: [0xd5,0x2f,0x00,0x00]
.code32
st.t 536870912, 7, 1

# CHECK-INST: st.t 1073741824, 0, 0
# CHECK: encoding: [0xd5,0x40,0x00,0x00]
.code32
st.t 1073741824, 0, 0

# CHECK-INST: st.t 1073741824, 0, 0
# CHECK: encoding: [0xd5,0x40,0x00,0x00]
.code32
st.t 1073741824, 0, 0

# CHECK-INST: st.t 1073741824, 0, 1
# CHECK: encoding: [0xd5,0x48,0x00,0x00]
.code32
st.t 1073741824, 0, 1

# CHECK-INST: st.t 1073741824, 0, 1
# CHECK: encoding: [0xd5,0x48,0x00,0x00]
.code32
st.t 1073741824, 0, 1

# CHECK-INST: st.t 1073741824, 1, 0
# CHECK: encoding: [0xd5,0x41,0x00,0x00]
.code32
st.t 1073741824, 1, 0

# CHECK-INST: st.t 1073741824, 1, 0
# CHECK: encoding: [0xd5,0x41,0x00,0x00]
.code32
st.t 1073741824, 1, 0

# CHECK-INST: st.t 1073741824, 1, 1
# CHECK: encoding: [0xd5,0x49,0x00,0x00]
.code32
st.t 1073741824, 1, 1

# CHECK-INST: st.t 1073741824, 1, 1
# CHECK: encoding: [0xd5,0x49,0x00,0x00]
.code32
st.t 1073741824, 1, 1

# CHECK-INST: st.t 1073741824, 6, 0
# CHECK: encoding: [0xd5,0x46,0x00,0x00]
.code32
st.t 1073741824, 6, 0

# CHECK-INST: st.t 1073741824, 6, 0
# CHECK: encoding: [0xd5,0x46,0x00,0x00]
.code32
st.t 1073741824, 6, 0

# CHECK-INST: st.t 1073741824, 6, 1
# CHECK: encoding: [0xd5,0x4e,0x00,0x00]
.code32
st.t 1073741824, 6, 1

# CHECK-INST: st.t 1073741824, 6, 1
# CHECK: encoding: [0xd5,0x4e,0x00,0x00]
.code32
st.t 1073741824, 6, 1

# CHECK-INST: st.t 1073741824, 7, 0
# CHECK: encoding: [0xd5,0x47,0x00,0x00]
.code32
st.t 1073741824, 7, 0

# CHECK-INST: st.t 1073741824, 7, 0
# CHECK: encoding: [0xd5,0x47,0x00,0x00]
.code32
st.t 1073741824, 7, 0

# CHECK-INST: st.t 1073741824, 7, 1
# CHECK: encoding: [0xd5,0x4f,0x00,0x00]
.code32
st.t 1073741824, 7, 1

# CHECK-INST: st.t 1073741824, 7, 1
# CHECK: encoding: [0xd5,0x4f,0x00,0x00]
.code32
st.t 1073741824, 7, 1

# CHECK-INST: st.t 2147483648, 0, 0
# CHECK: encoding: [0xd5,0x80,0x00,0x00]
.code32
st.t 2147483648, 0, 0

# CHECK-INST: st.t 2147483648, 0, 0
# CHECK: encoding: [0xd5,0x80,0x00,0x00]
.code32
st.t 2147483648, 0, 0

# CHECK-INST: st.t 2147483648, 0, 1
# CHECK: encoding: [0xd5,0x88,0x00,0x00]
.code32
st.t 2147483648, 0, 1

# CHECK-INST: st.t 2147483648, 0, 1
# CHECK: encoding: [0xd5,0x88,0x00,0x00]
.code32
st.t 2147483648, 0, 1

# CHECK-INST: st.t 2147483648, 1, 0
# CHECK: encoding: [0xd5,0x81,0x00,0x00]
.code32
st.t 2147483648, 1, 0

# CHECK-INST: st.t 2147483648, 1, 0
# CHECK: encoding: [0xd5,0x81,0x00,0x00]
.code32
st.t 2147483648, 1, 0

# CHECK-INST: st.t 2147483648, 1, 1
# CHECK: encoding: [0xd5,0x89,0x00,0x00]
.code32
st.t 2147483648, 1, 1

# CHECK-INST: st.t 2147483648, 1, 1
# CHECK: encoding: [0xd5,0x89,0x00,0x00]
.code32
st.t 2147483648, 1, 1

# CHECK-INST: st.t 2147483648, 6, 0
# CHECK: encoding: [0xd5,0x86,0x00,0x00]
.code32
st.t 2147483648, 6, 0

# CHECK-INST: st.t 2147483648, 6, 0
# CHECK: encoding: [0xd5,0x86,0x00,0x00]
.code32
st.t 2147483648, 6, 0

# CHECK-INST: st.t 2147483648, 6, 1
# CHECK: encoding: [0xd5,0x8e,0x00,0x00]
.code32
st.t 2147483648, 6, 1

# CHECK-INST: st.t 2147483648, 6, 1
# CHECK: encoding: [0xd5,0x8e,0x00,0x00]
.code32
st.t 2147483648, 6, 1

# CHECK-INST: st.t 2147483648, 7, 0
# CHECK: encoding: [0xd5,0x87,0x00,0x00]
.code32
st.t 2147483648, 7, 0

# CHECK-INST: st.t 2147483648, 7, 0
# CHECK: encoding: [0xd5,0x87,0x00,0x00]
.code32
st.t 2147483648, 7, 0

# CHECK-INST: st.t 2147483648, 7, 1
# CHECK: encoding: [0xd5,0x8f,0x00,0x00]
.code32
st.t 2147483648, 7, 1

# CHECK-INST: st.t 2147483648, 7, 1
# CHECK: encoding: [0xd5,0x8f,0x00,0x00]
.code32
st.t 2147483648, 7, 1

# CHECK-INST: st.t 4026548223, 0, 0
# CHECK: encoding: [0xd5,0xf0,0xff,0xf3]
.code32
st.t 4026548223, 0, 0

# CHECK-INST: st.t 4026548223, 0, 0
# CHECK: encoding: [0xd5,0xf0,0xff,0xf3]
.code32
st.t 4026548223, 0, 0

# CHECK-INST: st.t 4026548223, 0, 1
# CHECK: encoding: [0xd5,0xf8,0xff,0xf3]
.code32
st.t 4026548223, 0, 1

# CHECK-INST: st.t 4026548223, 0, 1
# CHECK: encoding: [0xd5,0xf8,0xff,0xf3]
.code32
st.t 4026548223, 0, 1

# CHECK-INST: st.t 4026548223, 1, 0
# CHECK: encoding: [0xd5,0xf1,0xff,0xf3]
.code32
st.t 4026548223, 1, 0

# CHECK-INST: st.t 4026548223, 1, 0
# CHECK: encoding: [0xd5,0xf1,0xff,0xf3]
.code32
st.t 4026548223, 1, 0

# CHECK-INST: st.t 4026548223, 1, 1
# CHECK: encoding: [0xd5,0xf9,0xff,0xf3]
.code32
st.t 4026548223, 1, 1

# CHECK-INST: st.t 4026548223, 1, 1
# CHECK: encoding: [0xd5,0xf9,0xff,0xf3]
.code32
st.t 4026548223, 1, 1

# CHECK-INST: st.t 4026548223, 6, 0
# CHECK: encoding: [0xd5,0xf6,0xff,0xf3]
.code32
st.t 4026548223, 6, 0

# CHECK-INST: st.t 4026548223, 6, 0
# CHECK: encoding: [0xd5,0xf6,0xff,0xf3]
.code32
st.t 4026548223, 6, 0

# CHECK-INST: st.t 4026548223, 6, 1
# CHECK: encoding: [0xd5,0xfe,0xff,0xf3]
.code32
st.t 4026548223, 6, 1

# CHECK-INST: st.t 4026548223, 6, 1
# CHECK: encoding: [0xd5,0xfe,0xff,0xf3]
.code32
st.t 4026548223, 6, 1

# CHECK-INST: st.t 4026548223, 7, 0
# CHECK: encoding: [0xd5,0xf7,0xff,0xf3]
.code32
st.t 4026548223, 7, 0

# CHECK-INST: st.t 4026548223, 7, 0
# CHECK: encoding: [0xd5,0xf7,0xff,0xf3]
.code32
st.t 4026548223, 7, 0

# CHECK-INST: st.t 4026548223, 7, 1
# CHECK: encoding: [0xd5,0xff,0xff,0xf3]
.code32
st.t 4026548223, 7, 1

# CHECK-INST: st.t 4026548223, 7, 1
# CHECK: encoding: [0xd5,0xff,0xff,0xf3]
.code32
st.t 4026548223, 7, 1

# CHECK-INST: ldmst 1, %e0
# CHECK: encoding: [0xe5,0x00,0x01,0x04]
.code32
ldmst 1, %e0

# CHECK-INST: ldmst 1, %e2
# CHECK: encoding: [0xe5,0x02,0x01,0x04]
.code32
ldmst 1, %e2

# CHECK-INST: ldmst 1, %e4
# CHECK: encoding: [0xe5,0x04,0x01,0x04]
.code32
ldmst 1, %e4

# CHECK-INST: ldmst 1, %e8
# CHECK: encoding: [0xe5,0x08,0x01,0x04]
.code32
ldmst 1, %e8

# CHECK-INST: ldmst 2, %e0
# CHECK: encoding: [0xe5,0x00,0x02,0x04]
.code32
ldmst 2, %e0

# CHECK-INST: ldmst 2, %e2
# CHECK: encoding: [0xe5,0x02,0x02,0x04]
.code32
ldmst 2, %e2

# CHECK-INST: ldmst 2, %e4
# CHECK: encoding: [0xe5,0x04,0x02,0x04]
.code32
ldmst 2, %e4

# CHECK-INST: ldmst 2, %e8
# CHECK: encoding: [0xe5,0x08,0x02,0x04]
.code32
ldmst 2, %e8

# CHECK-INST: ldmst 4, %e0
# CHECK: encoding: [0xe5,0x00,0x04,0x04]
.code32
ldmst 4, %e0

# CHECK-INST: ldmst 4, %e2
# CHECK: encoding: [0xe5,0x02,0x04,0x04]
.code32
ldmst 4, %e2

# CHECK-INST: ldmst 4, %e4
# CHECK: encoding: [0xe5,0x04,0x04,0x04]
.code32
ldmst 4, %e4

# CHECK-INST: ldmst 4, %e8
# CHECK: encoding: [0xe5,0x08,0x04,0x04]
.code32
ldmst 4, %e8

# CHECK-INST: ldmst 8, %e0
# CHECK: encoding: [0xe5,0x00,0x08,0x04]
.code32
ldmst 8, %e0

# CHECK-INST: ldmst 8, %e2
# CHECK: encoding: [0xe5,0x02,0x08,0x04]
.code32
ldmst 8, %e2

# CHECK-INST: ldmst 8, %e4
# CHECK: encoding: [0xe5,0x04,0x08,0x04]
.code32
ldmst 8, %e4

# CHECK-INST: ldmst 8, %e8
# CHECK: encoding: [0xe5,0x08,0x08,0x04]
.code32
ldmst 8, %e8

# CHECK-INST: ldmst 16, %e0
# CHECK: encoding: [0xe5,0x00,0x10,0x04]
.code32
ldmst 16, %e0

# CHECK-INST: ldmst 16, %e2
# CHECK: encoding: [0xe5,0x02,0x10,0x04]
.code32
ldmst 16, %e2

# CHECK-INST: ldmst 16, %e4
# CHECK: encoding: [0xe5,0x04,0x10,0x04]
.code32
ldmst 16, %e4

# CHECK-INST: ldmst 16, %e8
# CHECK: encoding: [0xe5,0x08,0x10,0x04]
.code32
ldmst 16, %e8

# CHECK-INST: ldmst 32, %e0
# CHECK: encoding: [0xe5,0x00,0x20,0x04]
.code32
ldmst 32, %e0

# CHECK-INST: ldmst 32, %e2
# CHECK: encoding: [0xe5,0x02,0x20,0x04]
.code32
ldmst 32, %e2

# CHECK-INST: ldmst 32, %e4
# CHECK: encoding: [0xe5,0x04,0x20,0x04]
.code32
ldmst 32, %e4

# CHECK-INST: ldmst 32, %e8
# CHECK: encoding: [0xe5,0x08,0x20,0x04]
.code32
ldmst 32, %e8

# CHECK-INST: ldmst 64, %e0
# CHECK: encoding: [0xe5,0x00,0x00,0x14]
.code32
ldmst 64, %e0

# CHECK-INST: ldmst 64, %e2
# CHECK: encoding: [0xe5,0x02,0x00,0x14]
.code32
ldmst 64, %e2

# CHECK-INST: ldmst 64, %e4
# CHECK: encoding: [0xe5,0x04,0x00,0x14]
.code32
ldmst 64, %e4

# CHECK-INST: ldmst 64, %e8
# CHECK: encoding: [0xe5,0x08,0x00,0x14]
.code32
ldmst 64, %e8

# CHECK-INST: ldmst 128, %e0
# CHECK: encoding: [0xe5,0x00,0x00,0x24]
.code32
ldmst 128, %e0

# CHECK-INST: ldmst 128, %e2
# CHECK: encoding: [0xe5,0x02,0x00,0x24]
.code32
ldmst 128, %e2

# CHECK-INST: ldmst 128, %e4
# CHECK: encoding: [0xe5,0x04,0x00,0x24]
.code32
ldmst 128, %e4

# CHECK-INST: ldmst 128, %e8
# CHECK: encoding: [0xe5,0x08,0x00,0x24]
.code32
ldmst 128, %e8

# CHECK-INST: ldmst 256, %e0
# CHECK: encoding: [0xe5,0x00,0x00,0x44]
.code32
ldmst 256, %e0

# CHECK-INST: ldmst 256, %e2
# CHECK: encoding: [0xe5,0x02,0x00,0x44]
.code32
ldmst 256, %e2

# CHECK-INST: ldmst 256, %e4
# CHECK: encoding: [0xe5,0x04,0x00,0x44]
.code32
ldmst 256, %e4

# CHECK-INST: ldmst 256, %e8
# CHECK: encoding: [0xe5,0x08,0x00,0x44]
.code32
ldmst 256, %e8

# CHECK-INST: ldmst 512, %e0
# CHECK: encoding: [0xe5,0x00,0x00,0x84]
.code32
ldmst 512, %e0

# CHECK-INST: ldmst 512, %e2
# CHECK: encoding: [0xe5,0x02,0x00,0x84]
.code32
ldmst 512, %e2

# CHECK-INST: ldmst 512, %e4
# CHECK: encoding: [0xe5,0x04,0x00,0x84]
.code32
ldmst 512, %e4

# CHECK-INST: ldmst 512, %e8
# CHECK: encoding: [0xe5,0x08,0x00,0x84]
.code32
ldmst 512, %e8

# CHECK-INST: ldmst 1024, %e0
# CHECK: encoding: [0xe5,0x00,0x40,0x04]
.code32
ldmst 1024, %e0

# CHECK-INST: ldmst 1024, %e2
# CHECK: encoding: [0xe5,0x02,0x40,0x04]
.code32
ldmst 1024, %e2

# CHECK-INST: ldmst 1024, %e4
# CHECK: encoding: [0xe5,0x04,0x40,0x04]
.code32
ldmst 1024, %e4

# CHECK-INST: ldmst 1024, %e8
# CHECK: encoding: [0xe5,0x08,0x40,0x04]
.code32
ldmst 1024, %e8

# CHECK-INST: ldmst 2048, %e0
# CHECK: encoding: [0xe5,0x00,0x80,0x04]
.code32
ldmst 2048, %e0

# CHECK-INST: ldmst 2048, %e2
# CHECK: encoding: [0xe5,0x02,0x80,0x04]
.code32
ldmst 2048, %e2

# CHECK-INST: ldmst 2048, %e4
# CHECK: encoding: [0xe5,0x04,0x80,0x04]
.code32
ldmst 2048, %e4

# CHECK-INST: ldmst 2048, %e8
# CHECK: encoding: [0xe5,0x08,0x80,0x04]
.code32
ldmst 2048, %e8

# CHECK-INST: ldmst 4096, %e0
# CHECK: encoding: [0xe5,0x00,0x00,0x05]
.code32
ldmst 4096, %e0

# CHECK-INST: ldmst 4096, %e2
# CHECK: encoding: [0xe5,0x02,0x00,0x05]
.code32
ldmst 4096, %e2

# CHECK-INST: ldmst 4096, %e4
# CHECK: encoding: [0xe5,0x04,0x00,0x05]
.code32
ldmst 4096, %e4

# CHECK-INST: ldmst 4096, %e8
# CHECK: encoding: [0xe5,0x08,0x00,0x05]
.code32
ldmst 4096, %e8

# CHECK-INST: ldmst 8192, %e0
# CHECK: encoding: [0xe5,0x00,0x00,0x06]
.code32
ldmst 8192, %e0

# CHECK-INST: ldmst 8192, %e2
# CHECK: encoding: [0xe5,0x02,0x00,0x06]
.code32
ldmst 8192, %e2

# CHECK-INST: ldmst 8192, %e4
# CHECK: encoding: [0xe5,0x04,0x00,0x06]
.code32
ldmst 8192, %e4

# CHECK-INST: ldmst 8192, %e8
# CHECK: encoding: [0xe5,0x08,0x00,0x06]
.code32
ldmst 8192, %e8

# CHECK-INST: ldmst 268435456, %e0
# CHECK: encoding: [0xe5,0x10,0x00,0x04]
.code32
ldmst 268435456, %e0

# CHECK-INST: ldmst 268435456, %e2
# CHECK: encoding: [0xe5,0x12,0x00,0x04]
.code32
ldmst 268435456, %e2

# CHECK-INST: ldmst 268435456, %e4
# CHECK: encoding: [0xe5,0x14,0x00,0x04]
.code32
ldmst 268435456, %e4

# CHECK-INST: ldmst 268435456, %e8
# CHECK: encoding: [0xe5,0x18,0x00,0x04]
.code32
ldmst 268435456, %e8

# CHECK-INST: ldmst 536870912, %e0
# CHECK: encoding: [0xe5,0x20,0x00,0x04]
.code32
ldmst 536870912, %e0

# CHECK-INST: ldmst 536870912, %e2
# CHECK: encoding: [0xe5,0x22,0x00,0x04]
.code32
ldmst 536870912, %e2

# CHECK-INST: ldmst 536870912, %e4
# CHECK: encoding: [0xe5,0x24,0x00,0x04]
.code32
ldmst 536870912, %e4

# CHECK-INST: ldmst 536870912, %e8
# CHECK: encoding: [0xe5,0x28,0x00,0x04]
.code32
ldmst 536870912, %e8

# CHECK-INST: ldmst 1073741824, %e0
# CHECK: encoding: [0xe5,0x40,0x00,0x04]
.code32
ldmst 1073741824, %e0

# CHECK-INST: ldmst 1073741824, %e2
# CHECK: encoding: [0xe5,0x42,0x00,0x04]
.code32
ldmst 1073741824, %e2

# CHECK-INST: ldmst 1073741824, %e4
# CHECK: encoding: [0xe5,0x44,0x00,0x04]
.code32
ldmst 1073741824, %e4

# CHECK-INST: ldmst 1073741824, %e8
# CHECK: encoding: [0xe5,0x48,0x00,0x04]
.code32
ldmst 1073741824, %e8

# CHECK-INST: ldmst 2147483648, %e0
# CHECK: encoding: [0xe5,0x80,0x00,0x04]
.code32
ldmst 2147483648, %e0

# CHECK-INST: ldmst 2147483648, %e2
# CHECK: encoding: [0xe5,0x82,0x00,0x04]
.code32
ldmst 2147483648, %e2

# CHECK-INST: ldmst 2147483648, %e4
# CHECK: encoding: [0xe5,0x84,0x00,0x04]
.code32
ldmst 2147483648, %e4

# CHECK-INST: ldmst 2147483648, %e8
# CHECK: encoding: [0xe5,0x88,0x00,0x04]
.code32
ldmst 2147483648, %e8

# CHECK-INST: ldmst 4026548223, %e0
# CHECK: encoding: [0xe5,0xf0,0xff,0xf7]
.code32
ldmst 4026548223, %e0

# CHECK-INST: ldmst 4026548223, %e2
# CHECK: encoding: [0xe5,0xf2,0xff,0xf7]
.code32
ldmst 4026548223, %e2

# CHECK-INST: ldmst 4026548223, %e4
# CHECK: encoding: [0xe5,0xf4,0xff,0xf7]
.code32
ldmst 4026548223, %e4

# CHECK-INST: ldmst 4026548223, %e8
# CHECK: encoding: [0xe5,0xf8,0xff,0xf7]
.code32
ldmst 4026548223, %e8

# CHECK-INST: ldmst [%a0], -512, %e0
# CHECK: encoding: [0x49,0x00,0x40,0x88]
.code32
ldmst [%a0], -512, %e0

# CHECK-INST: ldmst [%a0], -512, %e2
# CHECK: encoding: [0x49,0x02,0x40,0x88]
.code32
ldmst [%a0], -512, %e2

# CHECK-INST: ldmst [%a0], -512, %e4
# CHECK: encoding: [0x49,0x04,0x40,0x88]
.code32
ldmst [%a0], -512, %e4

# CHECK-INST: ldmst [%a0], -512, %e8
# CHECK: encoding: [0x49,0x08,0x40,0x88]
.code32
ldmst [%a0], -512, %e8

# CHECK-INST: ldmst [%a0], -511, %e0
# CHECK: encoding: [0x49,0x00,0x41,0x88]
.code32
ldmst [%a0], -511, %e0

# CHECK-INST: ldmst [%a0], -511, %e2
# CHECK: encoding: [0x49,0x02,0x41,0x88]
.code32
ldmst [%a0], -511, %e2

# CHECK-INST: ldmst [%a0], -511, %e4
# CHECK: encoding: [0x49,0x04,0x41,0x88]
.code32
ldmst [%a0], -511, %e4

# CHECK-INST: ldmst [%a0], -511, %e8
# CHECK: encoding: [0x49,0x08,0x41,0x88]
.code32
ldmst [%a0], -511, %e8

# CHECK-INST: ldmst [%a0], -2, %e0
# CHECK: encoding: [0x49,0x00,0x7e,0xf8]
.code32
ldmst [%a0], -2, %e0

# CHECK-INST: ldmst [%a0], -2, %e2
# CHECK: encoding: [0x49,0x02,0x7e,0xf8]
.code32
ldmst [%a0], -2, %e2

# CHECK-INST: ldmst [%a0], -2, %e4
# CHECK: encoding: [0x49,0x04,0x7e,0xf8]
.code32
ldmst [%a0], -2, %e4

# CHECK-INST: ldmst [%a0], -2, %e8
# CHECK: encoding: [0x49,0x08,0x7e,0xf8]
.code32
ldmst [%a0], -2, %e8

# CHECK-INST: ldmst [%a0], -1, %e0
# CHECK: encoding: [0x49,0x00,0x7f,0xf8]
.code32
ldmst [%a0], -1, %e0

# CHECK-INST: ldmst [%a0], -1, %e2
# CHECK: encoding: [0x49,0x02,0x7f,0xf8]
.code32
ldmst [%a0], -1, %e2

# CHECK-INST: ldmst [%a0], -1, %e4
# CHECK: encoding: [0x49,0x04,0x7f,0xf8]
.code32
ldmst [%a0], -1, %e4

# CHECK-INST: ldmst [%a0], -1, %e8
# CHECK: encoding: [0x49,0x08,0x7f,0xf8]
.code32
ldmst [%a0], -1, %e8

# CHECK-INST: ldmst [%a0], 0, %e0
# CHECK: encoding: [0x49,0x00,0x40,0x08]
.code32
ldmst [%a0], 0, %e0

# CHECK-INST: ldmst [%a0], 0, %e2
# CHECK: encoding: [0x49,0x02,0x40,0x08]
.code32
ldmst [%a0], 0, %e2

# CHECK-INST: ldmst [%a0], 0, %e4
# CHECK: encoding: [0x49,0x04,0x40,0x08]
.code32
ldmst [%a0], 0, %e4

# CHECK-INST: ldmst [%a0], 0, %e8
# CHECK: encoding: [0x49,0x08,0x40,0x08]
.code32
ldmst [%a0], 0, %e8

# CHECK-INST: ldmst [%a0], 1, %e0
# CHECK: encoding: [0x49,0x00,0x41,0x08]
.code32
ldmst [%a0], 1, %e0

# CHECK-INST: ldmst [%a0], 1, %e2
# CHECK: encoding: [0x49,0x02,0x41,0x08]
.code32
ldmst [%a0], 1, %e2

# CHECK-INST: ldmst [%a0], 1, %e4
# CHECK: encoding: [0x49,0x04,0x41,0x08]
.code32
ldmst [%a0], 1, %e4

# CHECK-INST: ldmst [%a0], 1, %e8
# CHECK: encoding: [0x49,0x08,0x41,0x08]
.code32
ldmst [%a0], 1, %e8

# CHECK-INST: ldmst [%a0], 510, %e0
# CHECK: encoding: [0x49,0x00,0x7e,0x78]
.code32
ldmst [%a0], 510, %e0

# CHECK-INST: ldmst [%a0], 510, %e2
# CHECK: encoding: [0x49,0x02,0x7e,0x78]
.code32
ldmst [%a0], 510, %e2

# CHECK-INST: ldmst [%a0], 510, %e4
# CHECK: encoding: [0x49,0x04,0x7e,0x78]
.code32
ldmst [%a0], 510, %e4

# CHECK-INST: ldmst [%a0], 510, %e8
# CHECK: encoding: [0x49,0x08,0x7e,0x78]
.code32
ldmst [%a0], 510, %e8

# CHECK-INST: ldmst [%a0], 511, %e0
# CHECK: encoding: [0x49,0x00,0x7f,0x78]
.code32
ldmst [%a0], 511, %e0

# CHECK-INST: ldmst [%a0], 511, %e2
# CHECK: encoding: [0x49,0x02,0x7f,0x78]
.code32
ldmst [%a0], 511, %e2

# CHECK-INST: ldmst [%a0], 511, %e4
# CHECK: encoding: [0x49,0x04,0x7f,0x78]
.code32
ldmst [%a0], 511, %e4

# CHECK-INST: ldmst [%a0], 511, %e8
# CHECK: encoding: [0x49,0x08,0x7f,0x78]
.code32
ldmst [%a0], 511, %e8

# CHECK-INST: ldmst [%a1], -512, %e0
# CHECK: encoding: [0x49,0x10,0x40,0x88]
.code32
ldmst [%a1], -512, %e0

# CHECK-INST: ldmst [%a1], -512, %e2
# CHECK: encoding: [0x49,0x12,0x40,0x88]
.code32
ldmst [%a1], -512, %e2

# CHECK-INST: ldmst [%a1], -512, %e4
# CHECK: encoding: [0x49,0x14,0x40,0x88]
.code32
ldmst [%a1], -512, %e4

# CHECK-INST: ldmst [%a1], -512, %e8
# CHECK: encoding: [0x49,0x18,0x40,0x88]
.code32
ldmst [%a1], -512, %e8

# CHECK-INST: ldmst [%a1], -511, %e0
# CHECK: encoding: [0x49,0x10,0x41,0x88]
.code32
ldmst [%a1], -511, %e0

# CHECK-INST: ldmst [%a1], -511, %e2
# CHECK: encoding: [0x49,0x12,0x41,0x88]
.code32
ldmst [%a1], -511, %e2

# CHECK-INST: ldmst [%a1], -511, %e4
# CHECK: encoding: [0x49,0x14,0x41,0x88]
.code32
ldmst [%a1], -511, %e4

# CHECK-INST: ldmst [%a1], -511, %e8
# CHECK: encoding: [0x49,0x18,0x41,0x88]
.code32
ldmst [%a1], -511, %e8

# CHECK-INST: ldmst [%a1], -2, %e0
# CHECK: encoding: [0x49,0x10,0x7e,0xf8]
.code32
ldmst [%a1], -2, %e0

# CHECK-INST: ldmst [%a1], -2, %e2
# CHECK: encoding: [0x49,0x12,0x7e,0xf8]
.code32
ldmst [%a1], -2, %e2

# CHECK-INST: ldmst [%a1], -2, %e4
# CHECK: encoding: [0x49,0x14,0x7e,0xf8]
.code32
ldmst [%a1], -2, %e4

# CHECK-INST: ldmst [%a1], -2, %e8
# CHECK: encoding: [0x49,0x18,0x7e,0xf8]
.code32
ldmst [%a1], -2, %e8

# CHECK-INST: ldmst [%a1], -1, %e0
# CHECK: encoding: [0x49,0x10,0x7f,0xf8]
.code32
ldmst [%a1], -1, %e0

# CHECK-INST: ldmst [%a1], -1, %e2
# CHECK: encoding: [0x49,0x12,0x7f,0xf8]
.code32
ldmst [%a1], -1, %e2

# CHECK-INST: ldmst [%a1], -1, %e4
# CHECK: encoding: [0x49,0x14,0x7f,0xf8]
.code32
ldmst [%a1], -1, %e4

# CHECK-INST: ldmst [%a1], -1, %e8
# CHECK: encoding: [0x49,0x18,0x7f,0xf8]
.code32
ldmst [%a1], -1, %e8

# CHECK-INST: ldmst [%a1], 0, %e0
# CHECK: encoding: [0x49,0x10,0x40,0x08]
.code32
ldmst [%a1], 0, %e0

# CHECK-INST: ldmst [%a1], 0, %e2
# CHECK: encoding: [0x49,0x12,0x40,0x08]
.code32
ldmst [%a1], 0, %e2

# CHECK-INST: ldmst [%a1], 0, %e4
# CHECK: encoding: [0x49,0x14,0x40,0x08]
.code32
ldmst [%a1], 0, %e4

# CHECK-INST: ldmst [%a1], 0, %e8
# CHECK: encoding: [0x49,0x18,0x40,0x08]
.code32
ldmst [%a1], 0, %e8

# CHECK-INST: ldmst [%a1], 1, %e0
# CHECK: encoding: [0x49,0x10,0x41,0x08]
.code32
ldmst [%a1], 1, %e0

# CHECK-INST: ldmst [%a1], 1, %e2
# CHECK: encoding: [0x49,0x12,0x41,0x08]
.code32
ldmst [%a1], 1, %e2

# CHECK-INST: ldmst [%a1], 1, %e4
# CHECK: encoding: [0x49,0x14,0x41,0x08]
.code32
ldmst [%a1], 1, %e4

# CHECK-INST: ldmst [%a1], 1, %e8
# CHECK: encoding: [0x49,0x18,0x41,0x08]
.code32
ldmst [%a1], 1, %e8

# CHECK-INST: ldmst [%a1], 510, %e0
# CHECK: encoding: [0x49,0x10,0x7e,0x78]
.code32
ldmst [%a1], 510, %e0

# CHECK-INST: ldmst [%a1], 510, %e2
# CHECK: encoding: [0x49,0x12,0x7e,0x78]
.code32
ldmst [%a1], 510, %e2

# CHECK-INST: ldmst [%a1], 510, %e4
# CHECK: encoding: [0x49,0x14,0x7e,0x78]
.code32
ldmst [%a1], 510, %e4

# CHECK-INST: ldmst [%a1], 510, %e8
# CHECK: encoding: [0x49,0x18,0x7e,0x78]
.code32
ldmst [%a1], 510, %e8

# CHECK-INST: ldmst [%a1], 511, %e0
# CHECK: encoding: [0x49,0x10,0x7f,0x78]
.code32
ldmst [%a1], 511, %e0

# CHECK-INST: ldmst [%a1], 511, %e2
# CHECK: encoding: [0x49,0x12,0x7f,0x78]
.code32
ldmst [%a1], 511, %e2

# CHECK-INST: ldmst [%a1], 511, %e4
# CHECK: encoding: [0x49,0x14,0x7f,0x78]
.code32
ldmst [%a1], 511, %e4

# CHECK-INST: ldmst [%a1], 511, %e8
# CHECK: encoding: [0x49,0x18,0x7f,0x78]
.code32
ldmst [%a1], 511, %e8

# CHECK-INST: ldmst [%a14], -512, %e0
# CHECK: encoding: [0x49,0xe0,0x40,0x88]
.code32
ldmst [%a14], -512, %e0

# CHECK-INST: ldmst [%a14], -512, %e2
# CHECK: encoding: [0x49,0xe2,0x40,0x88]
.code32
ldmst [%a14], -512, %e2

# CHECK-INST: ldmst [%a14], -512, %e4
# CHECK: encoding: [0x49,0xe4,0x40,0x88]
.code32
ldmst [%a14], -512, %e4

# CHECK-INST: ldmst [%a14], -512, %e8
# CHECK: encoding: [0x49,0xe8,0x40,0x88]
.code32
ldmst [%a14], -512, %e8

# CHECK-INST: ldmst [%a14], -511, %e0
# CHECK: encoding: [0x49,0xe0,0x41,0x88]
.code32
ldmst [%a14], -511, %e0

# CHECK-INST: ldmst [%a14], -511, %e2
# CHECK: encoding: [0x49,0xe2,0x41,0x88]
.code32
ldmst [%a14], -511, %e2

# CHECK-INST: ldmst [%a14], -511, %e4
# CHECK: encoding: [0x49,0xe4,0x41,0x88]
.code32
ldmst [%a14], -511, %e4

# CHECK-INST: ldmst [%a14], -511, %e8
# CHECK: encoding: [0x49,0xe8,0x41,0x88]
.code32
ldmst [%a14], -511, %e8

# CHECK-INST: ldmst [%a14], -2, %e0
# CHECK: encoding: [0x49,0xe0,0x7e,0xf8]
.code32
ldmst [%a14], -2, %e0

# CHECK-INST: ldmst [%a14], -2, %e2
# CHECK: encoding: [0x49,0xe2,0x7e,0xf8]
.code32
ldmst [%a14], -2, %e2

# CHECK-INST: ldmst [%a14], -2, %e4
# CHECK: encoding: [0x49,0xe4,0x7e,0xf8]
.code32
ldmst [%a14], -2, %e4

# CHECK-INST: ldmst [%a14], -2, %e8
# CHECK: encoding: [0x49,0xe8,0x7e,0xf8]
.code32
ldmst [%a14], -2, %e8

# CHECK-INST: ldmst [%a14], -1, %e0
# CHECK: encoding: [0x49,0xe0,0x7f,0xf8]
.code32
ldmst [%a14], -1, %e0

# CHECK-INST: ldmst [%a14], -1, %e2
# CHECK: encoding: [0x49,0xe2,0x7f,0xf8]
.code32
ldmst [%a14], -1, %e2

# CHECK-INST: ldmst [%a14], -1, %e4
# CHECK: encoding: [0x49,0xe4,0x7f,0xf8]
.code32
ldmst [%a14], -1, %e4

# CHECK-INST: ldmst [%a14], -1, %e8
# CHECK: encoding: [0x49,0xe8,0x7f,0xf8]
.code32
ldmst [%a14], -1, %e8

# CHECK-INST: ldmst [%a14], 0, %e0
# CHECK: encoding: [0x49,0xe0,0x40,0x08]
.code32
ldmst [%a14], 0, %e0

# CHECK-INST: ldmst [%a14], 0, %e2
# CHECK: encoding: [0x49,0xe2,0x40,0x08]
.code32
ldmst [%a14], 0, %e2

# CHECK-INST: ldmst [%a14], 0, %e4
# CHECK: encoding: [0x49,0xe4,0x40,0x08]
.code32
ldmst [%a14], 0, %e4

# CHECK-INST: ldmst [%a14], 0, %e8
# CHECK: encoding: [0x49,0xe8,0x40,0x08]
.code32
ldmst [%a14], 0, %e8

# CHECK-INST: ldmst [%a14], 1, %e0
# CHECK: encoding: [0x49,0xe0,0x41,0x08]
.code32
ldmst [%a14], 1, %e0

# CHECK-INST: ldmst [%a14], 1, %e2
# CHECK: encoding: [0x49,0xe2,0x41,0x08]
.code32
ldmst [%a14], 1, %e2

# CHECK-INST: ldmst [%a14], 1, %e4
# CHECK: encoding: [0x49,0xe4,0x41,0x08]
.code32
ldmst [%a14], 1, %e4

# CHECK-INST: ldmst [%a14], 1, %e8
# CHECK: encoding: [0x49,0xe8,0x41,0x08]
.code32
ldmst [%a14], 1, %e8

# CHECK-INST: ldmst [%a14], 510, %e0
# CHECK: encoding: [0x49,0xe0,0x7e,0x78]
.code32
ldmst [%a14], 510, %e0

# CHECK-INST: ldmst [%a14], 510, %e2
# CHECK: encoding: [0x49,0xe2,0x7e,0x78]
.code32
ldmst [%a14], 510, %e2

# CHECK-INST: ldmst [%a14], 510, %e4
# CHECK: encoding: [0x49,0xe4,0x7e,0x78]
.code32
ldmst [%a14], 510, %e4

# CHECK-INST: ldmst [%a14], 510, %e8
# CHECK: encoding: [0x49,0xe8,0x7e,0x78]
.code32
ldmst [%a14], 510, %e8

# CHECK-INST: ldmst [%a14], 511, %e0
# CHECK: encoding: [0x49,0xe0,0x7f,0x78]
.code32
ldmst [%a14], 511, %e0

# CHECK-INST: ldmst [%a14], 511, %e2
# CHECK: encoding: [0x49,0xe2,0x7f,0x78]
.code32
ldmst [%a14], 511, %e2

# CHECK-INST: ldmst [%a14], 511, %e4
# CHECK: encoding: [0x49,0xe4,0x7f,0x78]
.code32
ldmst [%a14], 511, %e4

# CHECK-INST: ldmst [%a14], 511, %e8
# CHECK: encoding: [0x49,0xe8,0x7f,0x78]
.code32
ldmst [%a14], 511, %e8

# CHECK-INST: ldmst [%a15], -512, %e0
# CHECK: encoding: [0x49,0xf0,0x40,0x88]
.code32
ldmst [%a15], -512, %e0

# CHECK-INST: ldmst [%a15], -512, %e2
# CHECK: encoding: [0x49,0xf2,0x40,0x88]
.code32
ldmst [%a15], -512, %e2

# CHECK-INST: ldmst [%a15], -512, %e4
# CHECK: encoding: [0x49,0xf4,0x40,0x88]
.code32
ldmst [%a15], -512, %e4

# CHECK-INST: ldmst [%a15], -512, %e8
# CHECK: encoding: [0x49,0xf8,0x40,0x88]
.code32
ldmst [%a15], -512, %e8

# CHECK-INST: ldmst [%a15], -511, %e0
# CHECK: encoding: [0x49,0xf0,0x41,0x88]
.code32
ldmst [%a15], -511, %e0

# CHECK-INST: ldmst [%a15], -511, %e2
# CHECK: encoding: [0x49,0xf2,0x41,0x88]
.code32
ldmst [%a15], -511, %e2

# CHECK-INST: ldmst [%a15], -511, %e4
# CHECK: encoding: [0x49,0xf4,0x41,0x88]
.code32
ldmst [%a15], -511, %e4

# CHECK-INST: ldmst [%a15], -511, %e8
# CHECK: encoding: [0x49,0xf8,0x41,0x88]
.code32
ldmst [%a15], -511, %e8

# CHECK-INST: ldmst [%a15], -2, %e0
# CHECK: encoding: [0x49,0xf0,0x7e,0xf8]
.code32
ldmst [%a15], -2, %e0

# CHECK-INST: ldmst [%a15], -2, %e2
# CHECK: encoding: [0x49,0xf2,0x7e,0xf8]
.code32
ldmst [%a15], -2, %e2

# CHECK-INST: ldmst [%a15], -2, %e4
# CHECK: encoding: [0x49,0xf4,0x7e,0xf8]
.code32
ldmst [%a15], -2, %e4

# CHECK-INST: ldmst [%a15], -2, %e8
# CHECK: encoding: [0x49,0xf8,0x7e,0xf8]
.code32
ldmst [%a15], -2, %e8

# CHECK-INST: ldmst [%a15], -1, %e0
# CHECK: encoding: [0x49,0xf0,0x7f,0xf8]
.code32
ldmst [%a15], -1, %e0

# CHECK-INST: ldmst [%a15], -1, %e2
# CHECK: encoding: [0x49,0xf2,0x7f,0xf8]
.code32
ldmst [%a15], -1, %e2

# CHECK-INST: ldmst [%a15], -1, %e4
# CHECK: encoding: [0x49,0xf4,0x7f,0xf8]
.code32
ldmst [%a15], -1, %e4

# CHECK-INST: ldmst [%a15], -1, %e8
# CHECK: encoding: [0x49,0xf8,0x7f,0xf8]
.code32
ldmst [%a15], -1, %e8

# CHECK-INST: ldmst [%a15], 0, %e0
# CHECK: encoding: [0x49,0xf0,0x40,0x08]
.code32
ldmst [%a15], 0, %e0

# CHECK-INST: ldmst [%a15], 0, %e2
# CHECK: encoding: [0x49,0xf2,0x40,0x08]
.code32
ldmst [%a15], 0, %e2

# CHECK-INST: ldmst [%a15], 0, %e4
# CHECK: encoding: [0x49,0xf4,0x40,0x08]
.code32
ldmst [%a15], 0, %e4

# CHECK-INST: ldmst [%a15], 0, %e8
# CHECK: encoding: [0x49,0xf8,0x40,0x08]
.code32
ldmst [%a15], 0, %e8

# CHECK-INST: ldmst [%a15], 1, %e0
# CHECK: encoding: [0x49,0xf0,0x41,0x08]
.code32
ldmst [%a15], 1, %e0

# CHECK-INST: ldmst [%a15], 1, %e2
# CHECK: encoding: [0x49,0xf2,0x41,0x08]
.code32
ldmst [%a15], 1, %e2

# CHECK-INST: ldmst [%a15], 1, %e4
# CHECK: encoding: [0x49,0xf4,0x41,0x08]
.code32
ldmst [%a15], 1, %e4

# CHECK-INST: ldmst [%a15], 1, %e8
# CHECK: encoding: [0x49,0xf8,0x41,0x08]
.code32
ldmst [%a15], 1, %e8

# CHECK-INST: ldmst [%a15], 510, %e0
# CHECK: encoding: [0x49,0xf0,0x7e,0x78]
.code32
ldmst [%a15], 510, %e0

# CHECK-INST: ldmst [%a15], 510, %e2
# CHECK: encoding: [0x49,0xf2,0x7e,0x78]
.code32
ldmst [%a15], 510, %e2

# CHECK-INST: ldmst [%a15], 510, %e4
# CHECK: encoding: [0x49,0xf4,0x7e,0x78]
.code32
ldmst [%a15], 510, %e4

# CHECK-INST: ldmst [%a15], 510, %e8
# CHECK: encoding: [0x49,0xf8,0x7e,0x78]
.code32
ldmst [%a15], 510, %e8

# CHECK-INST: ldmst [%a15], 511, %e0
# CHECK: encoding: [0x49,0xf0,0x7f,0x78]
.code32
ldmst [%a15], 511, %e0

# CHECK-INST: ldmst [%a15], 511, %e2
# CHECK: encoding: [0x49,0xf2,0x7f,0x78]
.code32
ldmst [%a15], 511, %e2

# CHECK-INST: ldmst [%a15], 511, %e4
# CHECK: encoding: [0x49,0xf4,0x7f,0x78]
.code32
ldmst [%a15], 511, %e4

# CHECK-INST: ldmst [%a15], 511, %e8
# CHECK: encoding: [0x49,0xf8,0x7f,0x78]
.code32
ldmst [%a15], 511, %e8

# CHECK-INST: ldmst [%p0 + r], %e0
# CHECK: encoding: [0x69,0x00,0x40,0x00]
.code32
ldmst [%p0 + r], %e0

# CHECK-INST: ldmst [%p0 + r], %e2
# CHECK: encoding: [0x69,0x02,0x40,0x00]
.code32
ldmst [%p0 + r], %e2

# CHECK-INST: ldmst [%p0 + r], %e4
# CHECK: encoding: [0x69,0x04,0x40,0x00]
.code32
ldmst [%p0 + r], %e4

# CHECK-INST: ldmst [%p0 + r], %e8
# CHECK: encoding: [0x69,0x08,0x40,0x00]
.code32
ldmst [%p0 + r], %e8

# CHECK-INST: ldmst [%p2 + r], %e0
# CHECK: encoding: [0x69,0x20,0x40,0x00]
.code32
ldmst [%p2 + r], %e0

# CHECK-INST: ldmst [%p2 + r], %e2
# CHECK: encoding: [0x69,0x22,0x40,0x00]
.code32
ldmst [%p2 + r], %e2

# CHECK-INST: ldmst [%p2 + r], %e4
# CHECK: encoding: [0x69,0x24,0x40,0x00]
.code32
ldmst [%p2 + r], %e4

# CHECK-INST: ldmst [%p2 + r], %e8
# CHECK: encoding: [0x69,0x28,0x40,0x00]
.code32
ldmst [%p2 + r], %e8

# CHECK-INST: ldmst [%p4 + r], %e0
# CHECK: encoding: [0x69,0x40,0x40,0x00]
.code32
ldmst [%p4 + r], %e0

# CHECK-INST: ldmst [%p4 + r], %e2
# CHECK: encoding: [0x69,0x42,0x40,0x00]
.code32
ldmst [%p4 + r], %e2

# CHECK-INST: ldmst [%p4 + r], %e4
# CHECK: encoding: [0x69,0x44,0x40,0x00]
.code32
ldmst [%p4 + r], %e4

# CHECK-INST: ldmst [%p4 + r], %e8
# CHECK: encoding: [0x69,0x48,0x40,0x00]
.code32
ldmst [%p4 + r], %e8

# CHECK-INST: ldmst [%p8 + r], %e0
# CHECK: encoding: [0x69,0x80,0x40,0x00]
.code32
ldmst [%p8 + r], %e0

# CHECK-INST: ldmst [%p8 + r], %e2
# CHECK: encoding: [0x69,0x82,0x40,0x00]
.code32
ldmst [%p8 + r], %e2

# CHECK-INST: ldmst [%p8 + r], %e4
# CHECK: encoding: [0x69,0x84,0x40,0x00]
.code32
ldmst [%p8 + r], %e4

# CHECK-INST: ldmst [%p8 + r], %e8
# CHECK: encoding: [0x69,0x88,0x40,0x00]
.code32
ldmst [%p8 + r], %e8

# CHECK-INST: ldmst [%p0 + c], -512, %e0
# CHECK: encoding: [0x69,0x00,0x40,0x84]
.code32
ldmst [%p0 + c], -512, %e0

# CHECK-INST: ldmst [%p0 + c], -512, %e2
# CHECK: encoding: [0x69,0x02,0x40,0x84]
.code32
ldmst [%p0 + c], -512, %e2

# CHECK-INST: ldmst [%p0 + c], -512, %e4
# CHECK: encoding: [0x69,0x04,0x40,0x84]
.code32
ldmst [%p0 + c], -512, %e4

# CHECK-INST: ldmst [%p0 + c], -512, %e8
# CHECK: encoding: [0x69,0x08,0x40,0x84]
.code32
ldmst [%p0 + c], -512, %e8

# CHECK-INST: ldmst [%p0 + c], -511, %e0
# CHECK: encoding: [0x69,0x00,0x41,0x84]
.code32
ldmst [%p0 + c], -511, %e0

# CHECK-INST: ldmst [%p0 + c], -511, %e2
# CHECK: encoding: [0x69,0x02,0x41,0x84]
.code32
ldmst [%p0 + c], -511, %e2

# CHECK-INST: ldmst [%p0 + c], -511, %e4
# CHECK: encoding: [0x69,0x04,0x41,0x84]
.code32
ldmst [%p0 + c], -511, %e4

# CHECK-INST: ldmst [%p0 + c], -511, %e8
# CHECK: encoding: [0x69,0x08,0x41,0x84]
.code32
ldmst [%p0 + c], -511, %e8

# CHECK-INST: ldmst [%p0 + c], -2, %e0
# CHECK: encoding: [0x69,0x00,0x7e,0xf4]
.code32
ldmst [%p0 + c], -2, %e0

# CHECK-INST: ldmst [%p0 + c], -2, %e2
# CHECK: encoding: [0x69,0x02,0x7e,0xf4]
.code32
ldmst [%p0 + c], -2, %e2

# CHECK-INST: ldmst [%p0 + c], -2, %e4
# CHECK: encoding: [0x69,0x04,0x7e,0xf4]
.code32
ldmst [%p0 + c], -2, %e4

# CHECK-INST: ldmst [%p0 + c], -2, %e8
# CHECK: encoding: [0x69,0x08,0x7e,0xf4]
.code32
ldmst [%p0 + c], -2, %e8

# CHECK-INST: ldmst [%p0 + c], -1, %e0
# CHECK: encoding: [0x69,0x00,0x7f,0xf4]
.code32
ldmst [%p0 + c], -1, %e0

# CHECK-INST: ldmst [%p0 + c], -1, %e2
# CHECK: encoding: [0x69,0x02,0x7f,0xf4]
.code32
ldmst [%p0 + c], -1, %e2

# CHECK-INST: ldmst [%p0 + c], -1, %e4
# CHECK: encoding: [0x69,0x04,0x7f,0xf4]
.code32
ldmst [%p0 + c], -1, %e4

# CHECK-INST: ldmst [%p0 + c], -1, %e8
# CHECK: encoding: [0x69,0x08,0x7f,0xf4]
.code32
ldmst [%p0 + c], -1, %e8

# CHECK-INST: ldmst [%p0 + c], 0, %e0
# CHECK: encoding: [0x69,0x00,0x40,0x04]
.code32
ldmst [%p0 + c], 0, %e0

# CHECK-INST: ldmst [%p0 + c], 0, %e2
# CHECK: encoding: [0x69,0x02,0x40,0x04]
.code32
ldmst [%p0 + c], 0, %e2

# CHECK-INST: ldmst [%p0 + c], 0, %e4
# CHECK: encoding: [0x69,0x04,0x40,0x04]
.code32
ldmst [%p0 + c], 0, %e4

# CHECK-INST: ldmst [%p0 + c], 0, %e8
# CHECK: encoding: [0x69,0x08,0x40,0x04]
.code32
ldmst [%p0 + c], 0, %e8

# CHECK-INST: ldmst [%p0 + c], 1, %e0
# CHECK: encoding: [0x69,0x00,0x41,0x04]
.code32
ldmst [%p0 + c], 1, %e0

# CHECK-INST: ldmst [%p0 + c], 1, %e2
# CHECK: encoding: [0x69,0x02,0x41,0x04]
.code32
ldmst [%p0 + c], 1, %e2

# CHECK-INST: ldmst [%p0 + c], 1, %e4
# CHECK: encoding: [0x69,0x04,0x41,0x04]
.code32
ldmst [%p0 + c], 1, %e4

# CHECK-INST: ldmst [%p0 + c], 1, %e8
# CHECK: encoding: [0x69,0x08,0x41,0x04]
.code32
ldmst [%p0 + c], 1, %e8

# CHECK-INST: ldmst [%p0 + c], 510, %e0
# CHECK: encoding: [0x69,0x00,0x7e,0x74]
.code32
ldmst [%p0 + c], 510, %e0

# CHECK-INST: ldmst [%p0 + c], 510, %e2
# CHECK: encoding: [0x69,0x02,0x7e,0x74]
.code32
ldmst [%p0 + c], 510, %e2

# CHECK-INST: ldmst [%p0 + c], 510, %e4
# CHECK: encoding: [0x69,0x04,0x7e,0x74]
.code32
ldmst [%p0 + c], 510, %e4

# CHECK-INST: ldmst [%p0 + c], 510, %e8
# CHECK: encoding: [0x69,0x08,0x7e,0x74]
.code32
ldmst [%p0 + c], 510, %e8

# CHECK-INST: ldmst [%p0 + c], 511, %e0
# CHECK: encoding: [0x69,0x00,0x7f,0x74]
.code32
ldmst [%p0 + c], 511, %e0

# CHECK-INST: ldmst [%p0 + c], 511, %e2
# CHECK: encoding: [0x69,0x02,0x7f,0x74]
.code32
ldmst [%p0 + c], 511, %e2

# CHECK-INST: ldmst [%p0 + c], 511, %e4
# CHECK: encoding: [0x69,0x04,0x7f,0x74]
.code32
ldmst [%p0 + c], 511, %e4

# CHECK-INST: ldmst [%p0 + c], 511, %e8
# CHECK: encoding: [0x69,0x08,0x7f,0x74]
.code32
ldmst [%p0 + c], 511, %e8

# CHECK-INST: ldmst [%p2 + c], -512, %e0
# CHECK: encoding: [0x69,0x20,0x40,0x84]
.code32
ldmst [%p2 + c], -512, %e0

# CHECK-INST: ldmst [%p2 + c], -512, %e2
# CHECK: encoding: [0x69,0x22,0x40,0x84]
.code32
ldmst [%p2 + c], -512, %e2

# CHECK-INST: ldmst [%p2 + c], -512, %e4
# CHECK: encoding: [0x69,0x24,0x40,0x84]
.code32
ldmst [%p2 + c], -512, %e4

# CHECK-INST: ldmst [%p2 + c], -512, %e8
# CHECK: encoding: [0x69,0x28,0x40,0x84]
.code32
ldmst [%p2 + c], -512, %e8

# CHECK-INST: ldmst [%p2 + c], -511, %e0
# CHECK: encoding: [0x69,0x20,0x41,0x84]
.code32
ldmst [%p2 + c], -511, %e0

# CHECK-INST: ldmst [%p2 + c], -511, %e2
# CHECK: encoding: [0x69,0x22,0x41,0x84]
.code32
ldmst [%p2 + c], -511, %e2

# CHECK-INST: ldmst [%p2 + c], -511, %e4
# CHECK: encoding: [0x69,0x24,0x41,0x84]
.code32
ldmst [%p2 + c], -511, %e4

# CHECK-INST: ldmst [%p2 + c], -511, %e8
# CHECK: encoding: [0x69,0x28,0x41,0x84]
.code32
ldmst [%p2 + c], -511, %e8

# CHECK-INST: ldmst [%p2 + c], -2, %e0
# CHECK: encoding: [0x69,0x20,0x7e,0xf4]
.code32
ldmst [%p2 + c], -2, %e0

# CHECK-INST: ldmst [%p2 + c], -2, %e2
# CHECK: encoding: [0x69,0x22,0x7e,0xf4]
.code32
ldmst [%p2 + c], -2, %e2

# CHECK-INST: ldmst [%p2 + c], -2, %e4
# CHECK: encoding: [0x69,0x24,0x7e,0xf4]
.code32
ldmst [%p2 + c], -2, %e4

# CHECK-INST: ldmst [%p2 + c], -2, %e8
# CHECK: encoding: [0x69,0x28,0x7e,0xf4]
.code32
ldmst [%p2 + c], -2, %e8

# CHECK-INST: ldmst [%p2 + c], -1, %e0
# CHECK: encoding: [0x69,0x20,0x7f,0xf4]
.code32
ldmst [%p2 + c], -1, %e0

# CHECK-INST: ldmst [%p2 + c], -1, %e2
# CHECK: encoding: [0x69,0x22,0x7f,0xf4]
.code32
ldmst [%p2 + c], -1, %e2

# CHECK-INST: ldmst [%p2 + c], -1, %e4
# CHECK: encoding: [0x69,0x24,0x7f,0xf4]
.code32
ldmst [%p2 + c], -1, %e4

# CHECK-INST: ldmst [%p2 + c], -1, %e8
# CHECK: encoding: [0x69,0x28,0x7f,0xf4]
.code32
ldmst [%p2 + c], -1, %e8

# CHECK-INST: ldmst [%p2 + c], 0, %e0
# CHECK: encoding: [0x69,0x20,0x40,0x04]
.code32
ldmst [%p2 + c], 0, %e0

# CHECK-INST: ldmst [%p2 + c], 0, %e2
# CHECK: encoding: [0x69,0x22,0x40,0x04]
.code32
ldmst [%p2 + c], 0, %e2

# CHECK-INST: ldmst [%p2 + c], 0, %e4
# CHECK: encoding: [0x69,0x24,0x40,0x04]
.code32
ldmst [%p2 + c], 0, %e4

# CHECK-INST: ldmst [%p2 + c], 0, %e8
# CHECK: encoding: [0x69,0x28,0x40,0x04]
.code32
ldmst [%p2 + c], 0, %e8

# CHECK-INST: ldmst [%p2 + c], 1, %e0
# CHECK: encoding: [0x69,0x20,0x41,0x04]
.code32
ldmst [%p2 + c], 1, %e0

# CHECK-INST: ldmst [%p2 + c], 1, %e2
# CHECK: encoding: [0x69,0x22,0x41,0x04]
.code32
ldmst [%p2 + c], 1, %e2

# CHECK-INST: ldmst [%p2 + c], 1, %e4
# CHECK: encoding: [0x69,0x24,0x41,0x04]
.code32
ldmst [%p2 + c], 1, %e4

# CHECK-INST: ldmst [%p2 + c], 1, %e8
# CHECK: encoding: [0x69,0x28,0x41,0x04]
.code32
ldmst [%p2 + c], 1, %e8

# CHECK-INST: ldmst [%p2 + c], 510, %e0
# CHECK: encoding: [0x69,0x20,0x7e,0x74]
.code32
ldmst [%p2 + c], 510, %e0

# CHECK-INST: ldmst [%p2 + c], 510, %e2
# CHECK: encoding: [0x69,0x22,0x7e,0x74]
.code32
ldmst [%p2 + c], 510, %e2

# CHECK-INST: ldmst [%p2 + c], 510, %e4
# CHECK: encoding: [0x69,0x24,0x7e,0x74]
.code32
ldmst [%p2 + c], 510, %e4

# CHECK-INST: ldmst [%p2 + c], 510, %e8
# CHECK: encoding: [0x69,0x28,0x7e,0x74]
.code32
ldmst [%p2 + c], 510, %e8

# CHECK-INST: ldmst [%p2 + c], 511, %e0
# CHECK: encoding: [0x69,0x20,0x7f,0x74]
.code32
ldmst [%p2 + c], 511, %e0

# CHECK-INST: ldmst [%p2 + c], 511, %e2
# CHECK: encoding: [0x69,0x22,0x7f,0x74]
.code32
ldmst [%p2 + c], 511, %e2

# CHECK-INST: ldmst [%p2 + c], 511, %e4
# CHECK: encoding: [0x69,0x24,0x7f,0x74]
.code32
ldmst [%p2 + c], 511, %e4

# CHECK-INST: ldmst [%p2 + c], 511, %e8
# CHECK: encoding: [0x69,0x28,0x7f,0x74]
.code32
ldmst [%p2 + c], 511, %e8

# CHECK-INST: ldmst [%p4 + c], -512, %e0
# CHECK: encoding: [0x69,0x40,0x40,0x84]
.code32
ldmst [%p4 + c], -512, %e0

# CHECK-INST: ldmst [%p4 + c], -512, %e2
# CHECK: encoding: [0x69,0x42,0x40,0x84]
.code32
ldmst [%p4 + c], -512, %e2

# CHECK-INST: ldmst [%p4 + c], -512, %e4
# CHECK: encoding: [0x69,0x44,0x40,0x84]
.code32
ldmst [%p4 + c], -512, %e4

# CHECK-INST: ldmst [%p4 + c], -512, %e8
# CHECK: encoding: [0x69,0x48,0x40,0x84]
.code32
ldmst [%p4 + c], -512, %e8

# CHECK-INST: ldmst [%p4 + c], -511, %e0
# CHECK: encoding: [0x69,0x40,0x41,0x84]
.code32
ldmst [%p4 + c], -511, %e0

# CHECK-INST: ldmst [%p4 + c], -511, %e2
# CHECK: encoding: [0x69,0x42,0x41,0x84]
.code32
ldmst [%p4 + c], -511, %e2

# CHECK-INST: ldmst [%p4 + c], -511, %e4
# CHECK: encoding: [0x69,0x44,0x41,0x84]
.code32
ldmst [%p4 + c], -511, %e4

# CHECK-INST: ldmst [%p4 + c], -511, %e8
# CHECK: encoding: [0x69,0x48,0x41,0x84]
.code32
ldmst [%p4 + c], -511, %e8

# CHECK-INST: ldmst [%p4 + c], -2, %e0
# CHECK: encoding: [0x69,0x40,0x7e,0xf4]
.code32
ldmst [%p4 + c], -2, %e0

# CHECK-INST: ldmst [%p4 + c], -2, %e2
# CHECK: encoding: [0x69,0x42,0x7e,0xf4]
.code32
ldmst [%p4 + c], -2, %e2

# CHECK-INST: ldmst [%p4 + c], -2, %e4
# CHECK: encoding: [0x69,0x44,0x7e,0xf4]
.code32
ldmst [%p4 + c], -2, %e4

# CHECK-INST: ldmst [%p4 + c], -2, %e8
# CHECK: encoding: [0x69,0x48,0x7e,0xf4]
.code32
ldmst [%p4 + c], -2, %e8

# CHECK-INST: ldmst [%p4 + c], -1, %e0
# CHECK: encoding: [0x69,0x40,0x7f,0xf4]
.code32
ldmst [%p4 + c], -1, %e0

# CHECK-INST: ldmst [%p4 + c], -1, %e2
# CHECK: encoding: [0x69,0x42,0x7f,0xf4]
.code32
ldmst [%p4 + c], -1, %e2

# CHECK-INST: ldmst [%p4 + c], -1, %e4
# CHECK: encoding: [0x69,0x44,0x7f,0xf4]
.code32
ldmst [%p4 + c], -1, %e4

# CHECK-INST: ldmst [%p4 + c], -1, %e8
# CHECK: encoding: [0x69,0x48,0x7f,0xf4]
.code32
ldmst [%p4 + c], -1, %e8

# CHECK-INST: ldmst [%p4 + c], 0, %e0
# CHECK: encoding: [0x69,0x40,0x40,0x04]
.code32
ldmst [%p4 + c], 0, %e0

# CHECK-INST: ldmst [%p4 + c], 0, %e2
# CHECK: encoding: [0x69,0x42,0x40,0x04]
.code32
ldmst [%p4 + c], 0, %e2

# CHECK-INST: ldmst [%p4 + c], 0, %e4
# CHECK: encoding: [0x69,0x44,0x40,0x04]
.code32
ldmst [%p4 + c], 0, %e4

# CHECK-INST: ldmst [%p4 + c], 0, %e8
# CHECK: encoding: [0x69,0x48,0x40,0x04]
.code32
ldmst [%p4 + c], 0, %e8

# CHECK-INST: ldmst [%p4 + c], 1, %e0
# CHECK: encoding: [0x69,0x40,0x41,0x04]
.code32
ldmst [%p4 + c], 1, %e0

# CHECK-INST: ldmst [%p4 + c], 1, %e2
# CHECK: encoding: [0x69,0x42,0x41,0x04]
.code32
ldmst [%p4 + c], 1, %e2

# CHECK-INST: ldmst [%p4 + c], 1, %e4
# CHECK: encoding: [0x69,0x44,0x41,0x04]
.code32
ldmst [%p4 + c], 1, %e4

# CHECK-INST: ldmst [%p4 + c], 1, %e8
# CHECK: encoding: [0x69,0x48,0x41,0x04]
.code32
ldmst [%p4 + c], 1, %e8

# CHECK-INST: ldmst [%p4 + c], 510, %e0
# CHECK: encoding: [0x69,0x40,0x7e,0x74]
.code32
ldmst [%p4 + c], 510, %e0

# CHECK-INST: ldmst [%p4 + c], 510, %e2
# CHECK: encoding: [0x69,0x42,0x7e,0x74]
.code32
ldmst [%p4 + c], 510, %e2

# CHECK-INST: ldmst [%p4 + c], 510, %e4
# CHECK: encoding: [0x69,0x44,0x7e,0x74]
.code32
ldmst [%p4 + c], 510, %e4

# CHECK-INST: ldmst [%p4 + c], 510, %e8
# CHECK: encoding: [0x69,0x48,0x7e,0x74]
.code32
ldmst [%p4 + c], 510, %e8

# CHECK-INST: ldmst [%p4 + c], 511, %e0
# CHECK: encoding: [0x69,0x40,0x7f,0x74]
.code32
ldmst [%p4 + c], 511, %e0

# CHECK-INST: ldmst [%p4 + c], 511, %e2
# CHECK: encoding: [0x69,0x42,0x7f,0x74]
.code32
ldmst [%p4 + c], 511, %e2

# CHECK-INST: ldmst [%p4 + c], 511, %e4
# CHECK: encoding: [0x69,0x44,0x7f,0x74]
.code32
ldmst [%p4 + c], 511, %e4

# CHECK-INST: ldmst [%p4 + c], 511, %e8
# CHECK: encoding: [0x69,0x48,0x7f,0x74]
.code32
ldmst [%p4 + c], 511, %e8

# CHECK-INST: ldmst [%p8 + c], -512, %e0
# CHECK: encoding: [0x69,0x80,0x40,0x84]
.code32
ldmst [%p8 + c], -512, %e0

# CHECK-INST: ldmst [%p8 + c], -512, %e2
# CHECK: encoding: [0x69,0x82,0x40,0x84]
.code32
ldmst [%p8 + c], -512, %e2

# CHECK-INST: ldmst [%p8 + c], -512, %e4
# CHECK: encoding: [0x69,0x84,0x40,0x84]
.code32
ldmst [%p8 + c], -512, %e4

# CHECK-INST: ldmst [%p8 + c], -512, %e8
# CHECK: encoding: [0x69,0x88,0x40,0x84]
.code32
ldmst [%p8 + c], -512, %e8

# CHECK-INST: ldmst [%p8 + c], -511, %e0
# CHECK: encoding: [0x69,0x80,0x41,0x84]
.code32
ldmst [%p8 + c], -511, %e0

# CHECK-INST: ldmst [%p8 + c], -511, %e2
# CHECK: encoding: [0x69,0x82,0x41,0x84]
.code32
ldmst [%p8 + c], -511, %e2

# CHECK-INST: ldmst [%p8 + c], -511, %e4
# CHECK: encoding: [0x69,0x84,0x41,0x84]
.code32
ldmst [%p8 + c], -511, %e4

# CHECK-INST: ldmst [%p8 + c], -511, %e8
# CHECK: encoding: [0x69,0x88,0x41,0x84]
.code32
ldmst [%p8 + c], -511, %e8

# CHECK-INST: ldmst [%p8 + c], -2, %e0
# CHECK: encoding: [0x69,0x80,0x7e,0xf4]
.code32
ldmst [%p8 + c], -2, %e0

# CHECK-INST: ldmst [%p8 + c], -2, %e2
# CHECK: encoding: [0x69,0x82,0x7e,0xf4]
.code32
ldmst [%p8 + c], -2, %e2

# CHECK-INST: ldmst [%p8 + c], -2, %e4
# CHECK: encoding: [0x69,0x84,0x7e,0xf4]
.code32
ldmst [%p8 + c], -2, %e4

# CHECK-INST: ldmst [%p8 + c], -2, %e8
# CHECK: encoding: [0x69,0x88,0x7e,0xf4]
.code32
ldmst [%p8 + c], -2, %e8

# CHECK-INST: ldmst [%p8 + c], -1, %e0
# CHECK: encoding: [0x69,0x80,0x7f,0xf4]
.code32
ldmst [%p8 + c], -1, %e0

# CHECK-INST: ldmst [%p8 + c], -1, %e2
# CHECK: encoding: [0x69,0x82,0x7f,0xf4]
.code32
ldmst [%p8 + c], -1, %e2

# CHECK-INST: ldmst [%p8 + c], -1, %e4
# CHECK: encoding: [0x69,0x84,0x7f,0xf4]
.code32
ldmst [%p8 + c], -1, %e4

# CHECK-INST: ldmst [%p8 + c], -1, %e8
# CHECK: encoding: [0x69,0x88,0x7f,0xf4]
.code32
ldmst [%p8 + c], -1, %e8

# CHECK-INST: ldmst [%p8 + c], 0, %e0
# CHECK: encoding: [0x69,0x80,0x40,0x04]
.code32
ldmst [%p8 + c], 0, %e0

# CHECK-INST: ldmst [%p8 + c], 0, %e2
# CHECK: encoding: [0x69,0x82,0x40,0x04]
.code32
ldmst [%p8 + c], 0, %e2

# CHECK-INST: ldmst [%p8 + c], 0, %e4
# CHECK: encoding: [0x69,0x84,0x40,0x04]
.code32
ldmst [%p8 + c], 0, %e4

# CHECK-INST: ldmst [%p8 + c], 0, %e8
# CHECK: encoding: [0x69,0x88,0x40,0x04]
.code32
ldmst [%p8 + c], 0, %e8

# CHECK-INST: ldmst [%p8 + c], 1, %e0
# CHECK: encoding: [0x69,0x80,0x41,0x04]
.code32
ldmst [%p8 + c], 1, %e0

# CHECK-INST: ldmst [%p8 + c], 1, %e2
# CHECK: encoding: [0x69,0x82,0x41,0x04]
.code32
ldmst [%p8 + c], 1, %e2

# CHECK-INST: ldmst [%p8 + c], 1, %e4
# CHECK: encoding: [0x69,0x84,0x41,0x04]
.code32
ldmst [%p8 + c], 1, %e4

# CHECK-INST: ldmst [%p8 + c], 1, %e8
# CHECK: encoding: [0x69,0x88,0x41,0x04]
.code32
ldmst [%p8 + c], 1, %e8

# CHECK-INST: ldmst [%p8 + c], 510, %e0
# CHECK: encoding: [0x69,0x80,0x7e,0x74]
.code32
ldmst [%p8 + c], 510, %e0

# CHECK-INST: ldmst [%p8 + c], 510, %e2
# CHECK: encoding: [0x69,0x82,0x7e,0x74]
.code32
ldmst [%p8 + c], 510, %e2

# CHECK-INST: ldmst [%p8 + c], 510, %e4
# CHECK: encoding: [0x69,0x84,0x7e,0x74]
.code32
ldmst [%p8 + c], 510, %e4

# CHECK-INST: ldmst [%p8 + c], 510, %e8
# CHECK: encoding: [0x69,0x88,0x7e,0x74]
.code32
ldmst [%p8 + c], 510, %e8

# CHECK-INST: ldmst [%p8 + c], 511, %e0
# CHECK: encoding: [0x69,0x80,0x7f,0x74]
.code32
ldmst [%p8 + c], 511, %e0

# CHECK-INST: ldmst [%p8 + c], 511, %e2
# CHECK: encoding: [0x69,0x82,0x7f,0x74]
.code32
ldmst [%p8 + c], 511, %e2

# CHECK-INST: ldmst [%p8 + c], 511, %e4
# CHECK: encoding: [0x69,0x84,0x7f,0x74]
.code32
ldmst [%p8 + c], 511, %e4

# CHECK-INST: ldmst [%p8 + c], 511, %e8
# CHECK: encoding: [0x69,0x88,0x7f,0x74]
.code32
ldmst [%p8 + c], 511, %e8

# CHECK-INST: ldmst [%a0+], -512, %e0
# CHECK: encoding: [0x49,0x00,0x40,0x80]
.code32
ldmst [%a0+], -512, %e0

# CHECK-INST: ldmst [%a0+], -512, %e2
# CHECK: encoding: [0x49,0x02,0x40,0x80]
.code32
ldmst [%a0+], -512, %e2

# CHECK-INST: ldmst [%a0+], -512, %e4
# CHECK: encoding: [0x49,0x04,0x40,0x80]
.code32
ldmst [%a0+], -512, %e4

# CHECK-INST: ldmst [%a0+], -512, %e8
# CHECK: encoding: [0x49,0x08,0x40,0x80]
.code32
ldmst [%a0+], -512, %e8

# CHECK-INST: ldmst [%a0+], -511, %e0
# CHECK: encoding: [0x49,0x00,0x41,0x80]
.code32
ldmst [%a0+], -511, %e0

# CHECK-INST: ldmst [%a0+], -511, %e2
# CHECK: encoding: [0x49,0x02,0x41,0x80]
.code32
ldmst [%a0+], -511, %e2

# CHECK-INST: ldmst [%a0+], -511, %e4
# CHECK: encoding: [0x49,0x04,0x41,0x80]
.code32
ldmst [%a0+], -511, %e4

# CHECK-INST: ldmst [%a0+], -511, %e8
# CHECK: encoding: [0x49,0x08,0x41,0x80]
.code32
ldmst [%a0+], -511, %e8

# CHECK-INST: ldmst [%a0+], -2, %e0
# CHECK: encoding: [0x49,0x00,0x7e,0xf0]
.code32
ldmst [%a0+], -2, %e0

# CHECK-INST: ldmst [%a0+], -2, %e2
# CHECK: encoding: [0x49,0x02,0x7e,0xf0]
.code32
ldmst [%a0+], -2, %e2

# CHECK-INST: ldmst [%a0+], -2, %e4
# CHECK: encoding: [0x49,0x04,0x7e,0xf0]
.code32
ldmst [%a0+], -2, %e4

# CHECK-INST: ldmst [%a0+], -2, %e8
# CHECK: encoding: [0x49,0x08,0x7e,0xf0]
.code32
ldmst [%a0+], -2, %e8

# CHECK-INST: ldmst [%a0+], -1, %e0
# CHECK: encoding: [0x49,0x00,0x7f,0xf0]
.code32
ldmst [%a0+], -1, %e0

# CHECK-INST: ldmst [%a0+], -1, %e2
# CHECK: encoding: [0x49,0x02,0x7f,0xf0]
.code32
ldmst [%a0+], -1, %e2

# CHECK-INST: ldmst [%a0+], -1, %e4
# CHECK: encoding: [0x49,0x04,0x7f,0xf0]
.code32
ldmst [%a0+], -1, %e4

# CHECK-INST: ldmst [%a0+], -1, %e8
# CHECK: encoding: [0x49,0x08,0x7f,0xf0]
.code32
ldmst [%a0+], -1, %e8

# CHECK-INST: ldmst [%a0+], 0, %e0
# CHECK: encoding: [0x49,0x00,0x40,0x00]
.code32
ldmst [%a0+], 0, %e0

# CHECK-INST: ldmst [%a0+], 0, %e2
# CHECK: encoding: [0x49,0x02,0x40,0x00]
.code32
ldmst [%a0+], 0, %e2

# CHECK-INST: ldmst [%a0+], 0, %e4
# CHECK: encoding: [0x49,0x04,0x40,0x00]
.code32
ldmst [%a0+], 0, %e4

# CHECK-INST: ldmst [%a0+], 0, %e8
# CHECK: encoding: [0x49,0x08,0x40,0x00]
.code32
ldmst [%a0+], 0, %e8

# CHECK-INST: ldmst [%a0+], 1, %e0
# CHECK: encoding: [0x49,0x00,0x41,0x00]
.code32
ldmst [%a0+], 1, %e0

# CHECK-INST: ldmst [%a0+], 1, %e2
# CHECK: encoding: [0x49,0x02,0x41,0x00]
.code32
ldmst [%a0+], 1, %e2

# CHECK-INST: ldmst [%a0+], 1, %e4
# CHECK: encoding: [0x49,0x04,0x41,0x00]
.code32
ldmst [%a0+], 1, %e4

# CHECK-INST: ldmst [%a0+], 1, %e8
# CHECK: encoding: [0x49,0x08,0x41,0x00]
.code32
ldmst [%a0+], 1, %e8

# CHECK-INST: ldmst [%a0+], 510, %e0
# CHECK: encoding: [0x49,0x00,0x7e,0x70]
.code32
ldmst [%a0+], 510, %e0

# CHECK-INST: ldmst [%a0+], 510, %e2
# CHECK: encoding: [0x49,0x02,0x7e,0x70]
.code32
ldmst [%a0+], 510, %e2

# CHECK-INST: ldmst [%a0+], 510, %e4
# CHECK: encoding: [0x49,0x04,0x7e,0x70]
.code32
ldmst [%a0+], 510, %e4

# CHECK-INST: ldmst [%a0+], 510, %e8
# CHECK: encoding: [0x49,0x08,0x7e,0x70]
.code32
ldmst [%a0+], 510, %e8

# CHECK-INST: ldmst [%a0+], 511, %e0
# CHECK: encoding: [0x49,0x00,0x7f,0x70]
.code32
ldmst [%a0+], 511, %e0

# CHECK-INST: ldmst [%a0+], 511, %e2
# CHECK: encoding: [0x49,0x02,0x7f,0x70]
.code32
ldmst [%a0+], 511, %e2

# CHECK-INST: ldmst [%a0+], 511, %e4
# CHECK: encoding: [0x49,0x04,0x7f,0x70]
.code32
ldmst [%a0+], 511, %e4

# CHECK-INST: ldmst [%a0+], 511, %e8
# CHECK: encoding: [0x49,0x08,0x7f,0x70]
.code32
ldmst [%a0+], 511, %e8

# CHECK-INST: ldmst [%a1+], -512, %e0
# CHECK: encoding: [0x49,0x10,0x40,0x80]
.code32
ldmst [%a1+], -512, %e0

# CHECK-INST: ldmst [%a1+], -512, %e2
# CHECK: encoding: [0x49,0x12,0x40,0x80]
.code32
ldmst [%a1+], -512, %e2

# CHECK-INST: ldmst [%a1+], -512, %e4
# CHECK: encoding: [0x49,0x14,0x40,0x80]
.code32
ldmst [%a1+], -512, %e4

# CHECK-INST: ldmst [%a1+], -512, %e8
# CHECK: encoding: [0x49,0x18,0x40,0x80]
.code32
ldmst [%a1+], -512, %e8

# CHECK-INST: ldmst [%a1+], -511, %e0
# CHECK: encoding: [0x49,0x10,0x41,0x80]
.code32
ldmst [%a1+], -511, %e0

# CHECK-INST: ldmst [%a1+], -511, %e2
# CHECK: encoding: [0x49,0x12,0x41,0x80]
.code32
ldmst [%a1+], -511, %e2

# CHECK-INST: ldmst [%a1+], -511, %e4
# CHECK: encoding: [0x49,0x14,0x41,0x80]
.code32
ldmst [%a1+], -511, %e4

# CHECK-INST: ldmst [%a1+], -511, %e8
# CHECK: encoding: [0x49,0x18,0x41,0x80]
.code32
ldmst [%a1+], -511, %e8

# CHECK-INST: ldmst [%a1+], -2, %e0
# CHECK: encoding: [0x49,0x10,0x7e,0xf0]
.code32
ldmst [%a1+], -2, %e0

# CHECK-INST: ldmst [%a1+], -2, %e2
# CHECK: encoding: [0x49,0x12,0x7e,0xf0]
.code32
ldmst [%a1+], -2, %e2

# CHECK-INST: ldmst [%a1+], -2, %e4
# CHECK: encoding: [0x49,0x14,0x7e,0xf0]
.code32
ldmst [%a1+], -2, %e4

# CHECK-INST: ldmst [%a1+], -2, %e8
# CHECK: encoding: [0x49,0x18,0x7e,0xf0]
.code32
ldmst [%a1+], -2, %e8

# CHECK-INST: ldmst [%a1+], -1, %e0
# CHECK: encoding: [0x49,0x10,0x7f,0xf0]
.code32
ldmst [%a1+], -1, %e0

# CHECK-INST: ldmst [%a1+], -1, %e2
# CHECK: encoding: [0x49,0x12,0x7f,0xf0]
.code32
ldmst [%a1+], -1, %e2

# CHECK-INST: ldmst [%a1+], -1, %e4
# CHECK: encoding: [0x49,0x14,0x7f,0xf0]
.code32
ldmst [%a1+], -1, %e4

# CHECK-INST: ldmst [%a1+], -1, %e8
# CHECK: encoding: [0x49,0x18,0x7f,0xf0]
.code32
ldmst [%a1+], -1, %e8

# CHECK-INST: ldmst [%a1+], 0, %e0
# CHECK: encoding: [0x49,0x10,0x40,0x00]
.code32
ldmst [%a1+], 0, %e0

# CHECK-INST: ldmst [%a1+], 0, %e2
# CHECK: encoding: [0x49,0x12,0x40,0x00]
.code32
ldmst [%a1+], 0, %e2

# CHECK-INST: ldmst [%a1+], 0, %e4
# CHECK: encoding: [0x49,0x14,0x40,0x00]
.code32
ldmst [%a1+], 0, %e4

# CHECK-INST: ldmst [%a1+], 0, %e8
# CHECK: encoding: [0x49,0x18,0x40,0x00]
.code32
ldmst [%a1+], 0, %e8

# CHECK-INST: ldmst [%a1+], 1, %e0
# CHECK: encoding: [0x49,0x10,0x41,0x00]
.code32
ldmst [%a1+], 1, %e0

# CHECK-INST: ldmst [%a1+], 1, %e2
# CHECK: encoding: [0x49,0x12,0x41,0x00]
.code32
ldmst [%a1+], 1, %e2

# CHECK-INST: ldmst [%a1+], 1, %e4
# CHECK: encoding: [0x49,0x14,0x41,0x00]
.code32
ldmst [%a1+], 1, %e4

# CHECK-INST: ldmst [%a1+], 1, %e8
# CHECK: encoding: [0x49,0x18,0x41,0x00]
.code32
ldmst [%a1+], 1, %e8

# CHECK-INST: ldmst [%a1+], 510, %e0
# CHECK: encoding: [0x49,0x10,0x7e,0x70]
.code32
ldmst [%a1+], 510, %e0

# CHECK-INST: ldmst [%a1+], 510, %e2
# CHECK: encoding: [0x49,0x12,0x7e,0x70]
.code32
ldmst [%a1+], 510, %e2

# CHECK-INST: ldmst [%a1+], 510, %e4
# CHECK: encoding: [0x49,0x14,0x7e,0x70]
.code32
ldmst [%a1+], 510, %e4

# CHECK-INST: ldmst [%a1+], 510, %e8
# CHECK: encoding: [0x49,0x18,0x7e,0x70]
.code32
ldmst [%a1+], 510, %e8

# CHECK-INST: ldmst [%a1+], 511, %e0
# CHECK: encoding: [0x49,0x10,0x7f,0x70]
.code32
ldmst [%a1+], 511, %e0

# CHECK-INST: ldmst [%a1+], 511, %e2
# CHECK: encoding: [0x49,0x12,0x7f,0x70]
.code32
ldmst [%a1+], 511, %e2

# CHECK-INST: ldmst [%a1+], 511, %e4
# CHECK: encoding: [0x49,0x14,0x7f,0x70]
.code32
ldmst [%a1+], 511, %e4

# CHECK-INST: ldmst [%a1+], 511, %e8
# CHECK: encoding: [0x49,0x18,0x7f,0x70]
.code32
ldmst [%a1+], 511, %e8

# CHECK-INST: ldmst [%a14+], -512, %e0
# CHECK: encoding: [0x49,0xe0,0x40,0x80]
.code32
ldmst [%a14+], -512, %e0

# CHECK-INST: ldmst [%a14+], -512, %e2
# CHECK: encoding: [0x49,0xe2,0x40,0x80]
.code32
ldmst [%a14+], -512, %e2

# CHECK-INST: ldmst [%a14+], -512, %e4
# CHECK: encoding: [0x49,0xe4,0x40,0x80]
.code32
ldmst [%a14+], -512, %e4

# CHECK-INST: ldmst [%a14+], -512, %e8
# CHECK: encoding: [0x49,0xe8,0x40,0x80]
.code32
ldmst [%a14+], -512, %e8

# CHECK-INST: ldmst [%a14+], -511, %e0
# CHECK: encoding: [0x49,0xe0,0x41,0x80]
.code32
ldmst [%a14+], -511, %e0

# CHECK-INST: ldmst [%a14+], -511, %e2
# CHECK: encoding: [0x49,0xe2,0x41,0x80]
.code32
ldmst [%a14+], -511, %e2

# CHECK-INST: ldmst [%a14+], -511, %e4
# CHECK: encoding: [0x49,0xe4,0x41,0x80]
.code32
ldmst [%a14+], -511, %e4

# CHECK-INST: ldmst [%a14+], -511, %e8
# CHECK: encoding: [0x49,0xe8,0x41,0x80]
.code32
ldmst [%a14+], -511, %e8

# CHECK-INST: ldmst [%a14+], -2, %e0
# CHECK: encoding: [0x49,0xe0,0x7e,0xf0]
.code32
ldmst [%a14+], -2, %e0

# CHECK-INST: ldmst [%a14+], -2, %e2
# CHECK: encoding: [0x49,0xe2,0x7e,0xf0]
.code32
ldmst [%a14+], -2, %e2

# CHECK-INST: ldmst [%a14+], -2, %e4
# CHECK: encoding: [0x49,0xe4,0x7e,0xf0]
.code32
ldmst [%a14+], -2, %e4

# CHECK-INST: ldmst [%a14+], -2, %e8
# CHECK: encoding: [0x49,0xe8,0x7e,0xf0]
.code32
ldmst [%a14+], -2, %e8

# CHECK-INST: ldmst [%a14+], -1, %e0
# CHECK: encoding: [0x49,0xe0,0x7f,0xf0]
.code32
ldmst [%a14+], -1, %e0

# CHECK-INST: ldmst [%a14+], -1, %e2
# CHECK: encoding: [0x49,0xe2,0x7f,0xf0]
.code32
ldmst [%a14+], -1, %e2

# CHECK-INST: ldmst [%a14+], -1, %e4
# CHECK: encoding: [0x49,0xe4,0x7f,0xf0]
.code32
ldmst [%a14+], -1, %e4

# CHECK-INST: ldmst [%a14+], -1, %e8
# CHECK: encoding: [0x49,0xe8,0x7f,0xf0]
.code32
ldmst [%a14+], -1, %e8

# CHECK-INST: ldmst [%a14+], 0, %e0
# CHECK: encoding: [0x49,0xe0,0x40,0x00]
.code32
ldmst [%a14+], 0, %e0

# CHECK-INST: ldmst [%a14+], 0, %e2
# CHECK: encoding: [0x49,0xe2,0x40,0x00]
.code32
ldmst [%a14+], 0, %e2

# CHECK-INST: ldmst [%a14+], 0, %e4
# CHECK: encoding: [0x49,0xe4,0x40,0x00]
.code32
ldmst [%a14+], 0, %e4

# CHECK-INST: ldmst [%a14+], 0, %e8
# CHECK: encoding: [0x49,0xe8,0x40,0x00]
.code32
ldmst [%a14+], 0, %e8

# CHECK-INST: ldmst [%a14+], 1, %e0
# CHECK: encoding: [0x49,0xe0,0x41,0x00]
.code32
ldmst [%a14+], 1, %e0

# CHECK-INST: ldmst [%a14+], 1, %e2
# CHECK: encoding: [0x49,0xe2,0x41,0x00]
.code32
ldmst [%a14+], 1, %e2

# CHECK-INST: ldmst [%a14+], 1, %e4
# CHECK: encoding: [0x49,0xe4,0x41,0x00]
.code32
ldmst [%a14+], 1, %e4

# CHECK-INST: ldmst [%a14+], 1, %e8
# CHECK: encoding: [0x49,0xe8,0x41,0x00]
.code32
ldmst [%a14+], 1, %e8

# CHECK-INST: ldmst [%a14+], 510, %e0
# CHECK: encoding: [0x49,0xe0,0x7e,0x70]
.code32
ldmst [%a14+], 510, %e0

# CHECK-INST: ldmst [%a14+], 510, %e2
# CHECK: encoding: [0x49,0xe2,0x7e,0x70]
.code32
ldmst [%a14+], 510, %e2

# CHECK-INST: ldmst [%a14+], 510, %e4
# CHECK: encoding: [0x49,0xe4,0x7e,0x70]
.code32
ldmst [%a14+], 510, %e4

# CHECK-INST: ldmst [%a14+], 510, %e8
# CHECK: encoding: [0x49,0xe8,0x7e,0x70]
.code32
ldmst [%a14+], 510, %e8

# CHECK-INST: ldmst [%a14+], 511, %e0
# CHECK: encoding: [0x49,0xe0,0x7f,0x70]
.code32
ldmst [%a14+], 511, %e0

# CHECK-INST: ldmst [%a14+], 511, %e2
# CHECK: encoding: [0x49,0xe2,0x7f,0x70]
.code32
ldmst [%a14+], 511, %e2

# CHECK-INST: ldmst [%a14+], 511, %e4
# CHECK: encoding: [0x49,0xe4,0x7f,0x70]
.code32
ldmst [%a14+], 511, %e4

# CHECK-INST: ldmst [%a14+], 511, %e8
# CHECK: encoding: [0x49,0xe8,0x7f,0x70]
.code32
ldmst [%a14+], 511, %e8

# CHECK-INST: ldmst [%a15+], -512, %e0
# CHECK: encoding: [0x49,0xf0,0x40,0x80]
.code32
ldmst [%a15+], -512, %e0

# CHECK-INST: ldmst [%a15+], -512, %e2
# CHECK: encoding: [0x49,0xf2,0x40,0x80]
.code32
ldmst [%a15+], -512, %e2

# CHECK-INST: ldmst [%a15+], -512, %e4
# CHECK: encoding: [0x49,0xf4,0x40,0x80]
.code32
ldmst [%a15+], -512, %e4

# CHECK-INST: ldmst [%a15+], -512, %e8
# CHECK: encoding: [0x49,0xf8,0x40,0x80]
.code32
ldmst [%a15+], -512, %e8

# CHECK-INST: ldmst [%a15+], -511, %e0
# CHECK: encoding: [0x49,0xf0,0x41,0x80]
.code32
ldmst [%a15+], -511, %e0

# CHECK-INST: ldmst [%a15+], -511, %e2
# CHECK: encoding: [0x49,0xf2,0x41,0x80]
.code32
ldmst [%a15+], -511, %e2

# CHECK-INST: ldmst [%a15+], -511, %e4
# CHECK: encoding: [0x49,0xf4,0x41,0x80]
.code32
ldmst [%a15+], -511, %e4

# CHECK-INST: ldmst [%a15+], -511, %e8
# CHECK: encoding: [0x49,0xf8,0x41,0x80]
.code32
ldmst [%a15+], -511, %e8

# CHECK-INST: ldmst [%a15+], -2, %e0
# CHECK: encoding: [0x49,0xf0,0x7e,0xf0]
.code32
ldmst [%a15+], -2, %e0

# CHECK-INST: ldmst [%a15+], -2, %e2
# CHECK: encoding: [0x49,0xf2,0x7e,0xf0]
.code32
ldmst [%a15+], -2, %e2

# CHECK-INST: ldmst [%a15+], -2, %e4
# CHECK: encoding: [0x49,0xf4,0x7e,0xf0]
.code32
ldmst [%a15+], -2, %e4

# CHECK-INST: ldmst [%a15+], -2, %e8
# CHECK: encoding: [0x49,0xf8,0x7e,0xf0]
.code32
ldmst [%a15+], -2, %e8

# CHECK-INST: ldmst [%a15+], -1, %e0
# CHECK: encoding: [0x49,0xf0,0x7f,0xf0]
.code32
ldmst [%a15+], -1, %e0

# CHECK-INST: ldmst [%a15+], -1, %e2
# CHECK: encoding: [0x49,0xf2,0x7f,0xf0]
.code32
ldmst [%a15+], -1, %e2

# CHECK-INST: ldmst [%a15+], -1, %e4
# CHECK: encoding: [0x49,0xf4,0x7f,0xf0]
.code32
ldmst [%a15+], -1, %e4

# CHECK-INST: ldmst [%a15+], -1, %e8
# CHECK: encoding: [0x49,0xf8,0x7f,0xf0]
.code32
ldmst [%a15+], -1, %e8

# CHECK-INST: ldmst [%a15+], 0, %e0
# CHECK: encoding: [0x49,0xf0,0x40,0x00]
.code32
ldmst [%a15+], 0, %e0

# CHECK-INST: ldmst [%a15+], 0, %e2
# CHECK: encoding: [0x49,0xf2,0x40,0x00]
.code32
ldmst [%a15+], 0, %e2

# CHECK-INST: ldmst [%a15+], 0, %e4
# CHECK: encoding: [0x49,0xf4,0x40,0x00]
.code32
ldmst [%a15+], 0, %e4

# CHECK-INST: ldmst [%a15+], 0, %e8
# CHECK: encoding: [0x49,0xf8,0x40,0x00]
.code32
ldmst [%a15+], 0, %e8

# CHECK-INST: ldmst [%a15+], 1, %e0
# CHECK: encoding: [0x49,0xf0,0x41,0x00]
.code32
ldmst [%a15+], 1, %e0

# CHECK-INST: ldmst [%a15+], 1, %e2
# CHECK: encoding: [0x49,0xf2,0x41,0x00]
.code32
ldmst [%a15+], 1, %e2

# CHECK-INST: ldmst [%a15+], 1, %e4
# CHECK: encoding: [0x49,0xf4,0x41,0x00]
.code32
ldmst [%a15+], 1, %e4

# CHECK-INST: ldmst [%a15+], 1, %e8
# CHECK: encoding: [0x49,0xf8,0x41,0x00]
.code32
ldmst [%a15+], 1, %e8

# CHECK-INST: ldmst [%a15+], 510, %e0
# CHECK: encoding: [0x49,0xf0,0x7e,0x70]
.code32
ldmst [%a15+], 510, %e0

# CHECK-INST: ldmst [%a15+], 510, %e2
# CHECK: encoding: [0x49,0xf2,0x7e,0x70]
.code32
ldmst [%a15+], 510, %e2

# CHECK-INST: ldmst [%a15+], 510, %e4
# CHECK: encoding: [0x49,0xf4,0x7e,0x70]
.code32
ldmst [%a15+], 510, %e4

# CHECK-INST: ldmst [%a15+], 510, %e8
# CHECK: encoding: [0x49,0xf8,0x7e,0x70]
.code32
ldmst [%a15+], 510, %e8

# CHECK-INST: ldmst [%a15+], 511, %e0
# CHECK: encoding: [0x49,0xf0,0x7f,0x70]
.code32
ldmst [%a15+], 511, %e0

# CHECK-INST: ldmst [%a15+], 511, %e2
# CHECK: encoding: [0x49,0xf2,0x7f,0x70]
.code32
ldmst [%a15+], 511, %e2

# CHECK-INST: ldmst [%a15+], 511, %e4
# CHECK: encoding: [0x49,0xf4,0x7f,0x70]
.code32
ldmst [%a15+], 511, %e4

# CHECK-INST: ldmst [%a15+], 511, %e8
# CHECK: encoding: [0x49,0xf8,0x7f,0x70]
.code32
ldmst [%a15+], 511, %e8

# CHECK-INST: ldmst [+%a0], -512, %e0
# CHECK: encoding: [0x49,0x00,0x40,0x84]
.code32
ldmst [+%a0], -512, %e0

# CHECK-INST: ldmst [+%a0], -512, %e2
# CHECK: encoding: [0x49,0x02,0x40,0x84]
.code32
ldmst [+%a0], -512, %e2

# CHECK-INST: ldmst [+%a0], -512, %e4
# CHECK: encoding: [0x49,0x04,0x40,0x84]
.code32
ldmst [+%a0], -512, %e4

# CHECK-INST: ldmst [+%a0], -512, %e8
# CHECK: encoding: [0x49,0x08,0x40,0x84]
.code32
ldmst [+%a0], -512, %e8

# CHECK-INST: ldmst [+%a0], -511, %e0
# CHECK: encoding: [0x49,0x00,0x41,0x84]
.code32
ldmst [+%a0], -511, %e0

# CHECK-INST: ldmst [+%a0], -511, %e2
# CHECK: encoding: [0x49,0x02,0x41,0x84]
.code32
ldmst [+%a0], -511, %e2

# CHECK-INST: ldmst [+%a0], -511, %e4
# CHECK: encoding: [0x49,0x04,0x41,0x84]
.code32
ldmst [+%a0], -511, %e4

# CHECK-INST: ldmst [+%a0], -511, %e8
# CHECK: encoding: [0x49,0x08,0x41,0x84]
.code32
ldmst [+%a0], -511, %e8

# CHECK-INST: ldmst [+%a0], -2, %e0
# CHECK: encoding: [0x49,0x00,0x7e,0xf4]
.code32
ldmst [+%a0], -2, %e0

# CHECK-INST: ldmst [+%a0], -2, %e2
# CHECK: encoding: [0x49,0x02,0x7e,0xf4]
.code32
ldmst [+%a0], -2, %e2

# CHECK-INST: ldmst [+%a0], -2, %e4
# CHECK: encoding: [0x49,0x04,0x7e,0xf4]
.code32
ldmst [+%a0], -2, %e4

# CHECK-INST: ldmst [+%a0], -2, %e8
# CHECK: encoding: [0x49,0x08,0x7e,0xf4]
.code32
ldmst [+%a0], -2, %e8

# CHECK-INST: ldmst [+%a0], -1, %e0
# CHECK: encoding: [0x49,0x00,0x7f,0xf4]
.code32
ldmst [+%a0], -1, %e0

# CHECK-INST: ldmst [+%a0], -1, %e2
# CHECK: encoding: [0x49,0x02,0x7f,0xf4]
.code32
ldmst [+%a0], -1, %e2

# CHECK-INST: ldmst [+%a0], -1, %e4
# CHECK: encoding: [0x49,0x04,0x7f,0xf4]
.code32
ldmst [+%a0], -1, %e4

# CHECK-INST: ldmst [+%a0], -1, %e8
# CHECK: encoding: [0x49,0x08,0x7f,0xf4]
.code32
ldmst [+%a0], -1, %e8

# CHECK-INST: ldmst [+%a0], 0, %e0
# CHECK: encoding: [0x49,0x00,0x40,0x04]
.code32
ldmst [+%a0], 0, %e0

# CHECK-INST: ldmst [+%a0], 0, %e2
# CHECK: encoding: [0x49,0x02,0x40,0x04]
.code32
ldmst [+%a0], 0, %e2

# CHECK-INST: ldmst [+%a0], 0, %e4
# CHECK: encoding: [0x49,0x04,0x40,0x04]
.code32
ldmst [+%a0], 0, %e4

# CHECK-INST: ldmst [+%a0], 0, %e8
# CHECK: encoding: [0x49,0x08,0x40,0x04]
.code32
ldmst [+%a0], 0, %e8

# CHECK-INST: ldmst [+%a0], 1, %e0
# CHECK: encoding: [0x49,0x00,0x41,0x04]
.code32
ldmst [+%a0], 1, %e0

# CHECK-INST: ldmst [+%a0], 1, %e2
# CHECK: encoding: [0x49,0x02,0x41,0x04]
.code32
ldmst [+%a0], 1, %e2

# CHECK-INST: ldmst [+%a0], 1, %e4
# CHECK: encoding: [0x49,0x04,0x41,0x04]
.code32
ldmst [+%a0], 1, %e4

# CHECK-INST: ldmst [+%a0], 1, %e8
# CHECK: encoding: [0x49,0x08,0x41,0x04]
.code32
ldmst [+%a0], 1, %e8

# CHECK-INST: ldmst [+%a0], 510, %e0
# CHECK: encoding: [0x49,0x00,0x7e,0x74]
.code32
ldmst [+%a0], 510, %e0

# CHECK-INST: ldmst [+%a0], 510, %e2
# CHECK: encoding: [0x49,0x02,0x7e,0x74]
.code32
ldmst [+%a0], 510, %e2

# CHECK-INST: ldmst [+%a0], 510, %e4
# CHECK: encoding: [0x49,0x04,0x7e,0x74]
.code32
ldmst [+%a0], 510, %e4

# CHECK-INST: ldmst [+%a0], 510, %e8
# CHECK: encoding: [0x49,0x08,0x7e,0x74]
.code32
ldmst [+%a0], 510, %e8

# CHECK-INST: ldmst [+%a0], 511, %e0
# CHECK: encoding: [0x49,0x00,0x7f,0x74]
.code32
ldmst [+%a0], 511, %e0

# CHECK-INST: ldmst [+%a0], 511, %e2
# CHECK: encoding: [0x49,0x02,0x7f,0x74]
.code32
ldmst [+%a0], 511, %e2

# CHECK-INST: ldmst [+%a0], 511, %e4
# CHECK: encoding: [0x49,0x04,0x7f,0x74]
.code32
ldmst [+%a0], 511, %e4

# CHECK-INST: ldmst [+%a0], 511, %e8
# CHECK: encoding: [0x49,0x08,0x7f,0x74]
.code32
ldmst [+%a0], 511, %e8

# CHECK-INST: ldmst [+%a1], -512, %e0
# CHECK: encoding: [0x49,0x10,0x40,0x84]
.code32
ldmst [+%a1], -512, %e0

# CHECK-INST: ldmst [+%a1], -512, %e2
# CHECK: encoding: [0x49,0x12,0x40,0x84]
.code32
ldmst [+%a1], -512, %e2

# CHECK-INST: ldmst [+%a1], -512, %e4
# CHECK: encoding: [0x49,0x14,0x40,0x84]
.code32
ldmst [+%a1], -512, %e4

# CHECK-INST: ldmst [+%a1], -512, %e8
# CHECK: encoding: [0x49,0x18,0x40,0x84]
.code32
ldmst [+%a1], -512, %e8

# CHECK-INST: ldmst [+%a1], -511, %e0
# CHECK: encoding: [0x49,0x10,0x41,0x84]
.code32
ldmst [+%a1], -511, %e0

# CHECK-INST: ldmst [+%a1], -511, %e2
# CHECK: encoding: [0x49,0x12,0x41,0x84]
.code32
ldmst [+%a1], -511, %e2

# CHECK-INST: ldmst [+%a1], -511, %e4
# CHECK: encoding: [0x49,0x14,0x41,0x84]
.code32
ldmst [+%a1], -511, %e4

# CHECK-INST: ldmst [+%a1], -511, %e8
# CHECK: encoding: [0x49,0x18,0x41,0x84]
.code32
ldmst [+%a1], -511, %e8

# CHECK-INST: ldmst [+%a1], -2, %e0
# CHECK: encoding: [0x49,0x10,0x7e,0xf4]
.code32
ldmst [+%a1], -2, %e0

# CHECK-INST: ldmst [+%a1], -2, %e2
# CHECK: encoding: [0x49,0x12,0x7e,0xf4]
.code32
ldmst [+%a1], -2, %e2

# CHECK-INST: ldmst [+%a1], -2, %e4
# CHECK: encoding: [0x49,0x14,0x7e,0xf4]
.code32
ldmst [+%a1], -2, %e4

# CHECK-INST: ldmst [+%a1], -2, %e8
# CHECK: encoding: [0x49,0x18,0x7e,0xf4]
.code32
ldmst [+%a1], -2, %e8

# CHECK-INST: ldmst [+%a1], -1, %e0
# CHECK: encoding: [0x49,0x10,0x7f,0xf4]
.code32
ldmst [+%a1], -1, %e0

# CHECK-INST: ldmst [+%a1], -1, %e2
# CHECK: encoding: [0x49,0x12,0x7f,0xf4]
.code32
ldmst [+%a1], -1, %e2

# CHECK-INST: ldmst [+%a1], -1, %e4
# CHECK: encoding: [0x49,0x14,0x7f,0xf4]
.code32
ldmst [+%a1], -1, %e4

# CHECK-INST: ldmst [+%a1], -1, %e8
# CHECK: encoding: [0x49,0x18,0x7f,0xf4]
.code32
ldmst [+%a1], -1, %e8

# CHECK-INST: ldmst [+%a1], 0, %e0
# CHECK: encoding: [0x49,0x10,0x40,0x04]
.code32
ldmst [+%a1], 0, %e0

# CHECK-INST: ldmst [+%a1], 0, %e2
# CHECK: encoding: [0x49,0x12,0x40,0x04]
.code32
ldmst [+%a1], 0, %e2

# CHECK-INST: ldmst [+%a1], 0, %e4
# CHECK: encoding: [0x49,0x14,0x40,0x04]
.code32
ldmst [+%a1], 0, %e4

# CHECK-INST: ldmst [+%a1], 0, %e8
# CHECK: encoding: [0x49,0x18,0x40,0x04]
.code32
ldmst [+%a1], 0, %e8

# CHECK-INST: ldmst [+%a1], 1, %e0
# CHECK: encoding: [0x49,0x10,0x41,0x04]
.code32
ldmst [+%a1], 1, %e0

# CHECK-INST: ldmst [+%a1], 1, %e2
# CHECK: encoding: [0x49,0x12,0x41,0x04]
.code32
ldmst [+%a1], 1, %e2

# CHECK-INST: ldmst [+%a1], 1, %e4
# CHECK: encoding: [0x49,0x14,0x41,0x04]
.code32
ldmst [+%a1], 1, %e4

# CHECK-INST: ldmst [+%a1], 1, %e8
# CHECK: encoding: [0x49,0x18,0x41,0x04]
.code32
ldmst [+%a1], 1, %e8

# CHECK-INST: ldmst [+%a1], 510, %e0
# CHECK: encoding: [0x49,0x10,0x7e,0x74]
.code32
ldmst [+%a1], 510, %e0

# CHECK-INST: ldmst [+%a1], 510, %e2
# CHECK: encoding: [0x49,0x12,0x7e,0x74]
.code32
ldmst [+%a1], 510, %e2

# CHECK-INST: ldmst [+%a1], 510, %e4
# CHECK: encoding: [0x49,0x14,0x7e,0x74]
.code32
ldmst [+%a1], 510, %e4

# CHECK-INST: ldmst [+%a1], 510, %e8
# CHECK: encoding: [0x49,0x18,0x7e,0x74]
.code32
ldmst [+%a1], 510, %e8

# CHECK-INST: ldmst [+%a1], 511, %e0
# CHECK: encoding: [0x49,0x10,0x7f,0x74]
.code32
ldmst [+%a1], 511, %e0

# CHECK-INST: ldmst [+%a1], 511, %e2
# CHECK: encoding: [0x49,0x12,0x7f,0x74]
.code32
ldmst [+%a1], 511, %e2

# CHECK-INST: ldmst [+%a1], 511, %e4
# CHECK: encoding: [0x49,0x14,0x7f,0x74]
.code32
ldmst [+%a1], 511, %e4

# CHECK-INST: ldmst [+%a1], 511, %e8
# CHECK: encoding: [0x49,0x18,0x7f,0x74]
.code32
ldmst [+%a1], 511, %e8

# CHECK-INST: ldmst [+%a14], -512, %e0
# CHECK: encoding: [0x49,0xe0,0x40,0x84]
.code32
ldmst [+%a14], -512, %e0

# CHECK-INST: ldmst [+%a14], -512, %e2
# CHECK: encoding: [0x49,0xe2,0x40,0x84]
.code32
ldmst [+%a14], -512, %e2

# CHECK-INST: ldmst [+%a14], -512, %e4
# CHECK: encoding: [0x49,0xe4,0x40,0x84]
.code32
ldmst [+%a14], -512, %e4

# CHECK-INST: ldmst [+%a14], -512, %e8
# CHECK: encoding: [0x49,0xe8,0x40,0x84]
.code32
ldmst [+%a14], -512, %e8

# CHECK-INST: ldmst [+%a14], -511, %e0
# CHECK: encoding: [0x49,0xe0,0x41,0x84]
.code32
ldmst [+%a14], -511, %e0

# CHECK-INST: ldmst [+%a14], -511, %e2
# CHECK: encoding: [0x49,0xe2,0x41,0x84]
.code32
ldmst [+%a14], -511, %e2

# CHECK-INST: ldmst [+%a14], -511, %e4
# CHECK: encoding: [0x49,0xe4,0x41,0x84]
.code32
ldmst [+%a14], -511, %e4

# CHECK-INST: ldmst [+%a14], -511, %e8
# CHECK: encoding: [0x49,0xe8,0x41,0x84]
.code32
ldmst [+%a14], -511, %e8

# CHECK-INST: ldmst [+%a14], -2, %e0
# CHECK: encoding: [0x49,0xe0,0x7e,0xf4]
.code32
ldmst [+%a14], -2, %e0

# CHECK-INST: ldmst [+%a14], -2, %e2
# CHECK: encoding: [0x49,0xe2,0x7e,0xf4]
.code32
ldmst [+%a14], -2, %e2

# CHECK-INST: ldmst [+%a14], -2, %e4
# CHECK: encoding: [0x49,0xe4,0x7e,0xf4]
.code32
ldmst [+%a14], -2, %e4

# CHECK-INST: ldmst [+%a14], -2, %e8
# CHECK: encoding: [0x49,0xe8,0x7e,0xf4]
.code32
ldmst [+%a14], -2, %e8

# CHECK-INST: ldmst [+%a14], -1, %e0
# CHECK: encoding: [0x49,0xe0,0x7f,0xf4]
.code32
ldmst [+%a14], -1, %e0

# CHECK-INST: ldmst [+%a14], -1, %e2
# CHECK: encoding: [0x49,0xe2,0x7f,0xf4]
.code32
ldmst [+%a14], -1, %e2

# CHECK-INST: ldmst [+%a14], -1, %e4
# CHECK: encoding: [0x49,0xe4,0x7f,0xf4]
.code32
ldmst [+%a14], -1, %e4

# CHECK-INST: ldmst [+%a14], -1, %e8
# CHECK: encoding: [0x49,0xe8,0x7f,0xf4]
.code32
ldmst [+%a14], -1, %e8

# CHECK-INST: ldmst [+%a14], 0, %e0
# CHECK: encoding: [0x49,0xe0,0x40,0x04]
.code32
ldmst [+%a14], 0, %e0

# CHECK-INST: ldmst [+%a14], 0, %e2
# CHECK: encoding: [0x49,0xe2,0x40,0x04]
.code32
ldmst [+%a14], 0, %e2

# CHECK-INST: ldmst [+%a14], 0, %e4
# CHECK: encoding: [0x49,0xe4,0x40,0x04]
.code32
ldmst [+%a14], 0, %e4

# CHECK-INST: ldmst [+%a14], 0, %e8
# CHECK: encoding: [0x49,0xe8,0x40,0x04]
.code32
ldmst [+%a14], 0, %e8

# CHECK-INST: ldmst [+%a14], 1, %e0
# CHECK: encoding: [0x49,0xe0,0x41,0x04]
.code32
ldmst [+%a14], 1, %e0

# CHECK-INST: ldmst [+%a14], 1, %e2
# CHECK: encoding: [0x49,0xe2,0x41,0x04]
.code32
ldmst [+%a14], 1, %e2

# CHECK-INST: ldmst [+%a14], 1, %e4
# CHECK: encoding: [0x49,0xe4,0x41,0x04]
.code32
ldmst [+%a14], 1, %e4

# CHECK-INST: ldmst [+%a14], 1, %e8
# CHECK: encoding: [0x49,0xe8,0x41,0x04]
.code32
ldmst [+%a14], 1, %e8

# CHECK-INST: ldmst [+%a14], 510, %e0
# CHECK: encoding: [0x49,0xe0,0x7e,0x74]
.code32
ldmst [+%a14], 510, %e0

# CHECK-INST: ldmst [+%a14], 510, %e2
# CHECK: encoding: [0x49,0xe2,0x7e,0x74]
.code32
ldmst [+%a14], 510, %e2

# CHECK-INST: ldmst [+%a14], 510, %e4
# CHECK: encoding: [0x49,0xe4,0x7e,0x74]
.code32
ldmst [+%a14], 510, %e4

# CHECK-INST: ldmst [+%a14], 510, %e8
# CHECK: encoding: [0x49,0xe8,0x7e,0x74]
.code32
ldmst [+%a14], 510, %e8

# CHECK-INST: ldmst [+%a14], 511, %e0
# CHECK: encoding: [0x49,0xe0,0x7f,0x74]
.code32
ldmst [+%a14], 511, %e0

# CHECK-INST: ldmst [+%a14], 511, %e2
# CHECK: encoding: [0x49,0xe2,0x7f,0x74]
.code32
ldmst [+%a14], 511, %e2

# CHECK-INST: ldmst [+%a14], 511, %e4
# CHECK: encoding: [0x49,0xe4,0x7f,0x74]
.code32
ldmst [+%a14], 511, %e4

# CHECK-INST: ldmst [+%a14], 511, %e8
# CHECK: encoding: [0x49,0xe8,0x7f,0x74]
.code32
ldmst [+%a14], 511, %e8

# CHECK-INST: ldmst [+%a15], -512, %e0
# CHECK: encoding: [0x49,0xf0,0x40,0x84]
.code32
ldmst [+%a15], -512, %e0

# CHECK-INST: ldmst [+%a15], -512, %e2
# CHECK: encoding: [0x49,0xf2,0x40,0x84]
.code32
ldmst [+%a15], -512, %e2

# CHECK-INST: ldmst [+%a15], -512, %e4
# CHECK: encoding: [0x49,0xf4,0x40,0x84]
.code32
ldmst [+%a15], -512, %e4

# CHECK-INST: ldmst [+%a15], -512, %e8
# CHECK: encoding: [0x49,0xf8,0x40,0x84]
.code32
ldmst [+%a15], -512, %e8

# CHECK-INST: ldmst [+%a15], -511, %e0
# CHECK: encoding: [0x49,0xf0,0x41,0x84]
.code32
ldmst [+%a15], -511, %e0

# CHECK-INST: ldmst [+%a15], -511, %e2
# CHECK: encoding: [0x49,0xf2,0x41,0x84]
.code32
ldmst [+%a15], -511, %e2

# CHECK-INST: ldmst [+%a15], -511, %e4
# CHECK: encoding: [0x49,0xf4,0x41,0x84]
.code32
ldmst [+%a15], -511, %e4

# CHECK-INST: ldmst [+%a15], -511, %e8
# CHECK: encoding: [0x49,0xf8,0x41,0x84]
.code32
ldmst [+%a15], -511, %e8

# CHECK-INST: ldmst [+%a15], -2, %e0
# CHECK: encoding: [0x49,0xf0,0x7e,0xf4]
.code32
ldmst [+%a15], -2, %e0

# CHECK-INST: ldmst [+%a15], -2, %e2
# CHECK: encoding: [0x49,0xf2,0x7e,0xf4]
.code32
ldmst [+%a15], -2, %e2

# CHECK-INST: ldmst [+%a15], -2, %e4
# CHECK: encoding: [0x49,0xf4,0x7e,0xf4]
.code32
ldmst [+%a15], -2, %e4

# CHECK-INST: ldmst [+%a15], -2, %e8
# CHECK: encoding: [0x49,0xf8,0x7e,0xf4]
.code32
ldmst [+%a15], -2, %e8

# CHECK-INST: ldmst [+%a15], -1, %e0
# CHECK: encoding: [0x49,0xf0,0x7f,0xf4]
.code32
ldmst [+%a15], -1, %e0

# CHECK-INST: ldmst [+%a15], -1, %e2
# CHECK: encoding: [0x49,0xf2,0x7f,0xf4]
.code32
ldmst [+%a15], -1, %e2

# CHECK-INST: ldmst [+%a15], -1, %e4
# CHECK: encoding: [0x49,0xf4,0x7f,0xf4]
.code32
ldmst [+%a15], -1, %e4

# CHECK-INST: ldmst [+%a15], -1, %e8
# CHECK: encoding: [0x49,0xf8,0x7f,0xf4]
.code32
ldmst [+%a15], -1, %e8

# CHECK-INST: ldmst [+%a15], 0, %e0
# CHECK: encoding: [0x49,0xf0,0x40,0x04]
.code32
ldmst [+%a15], 0, %e0

# CHECK-INST: ldmst [+%a15], 0, %e2
# CHECK: encoding: [0x49,0xf2,0x40,0x04]
.code32
ldmst [+%a15], 0, %e2

# CHECK-INST: ldmst [+%a15], 0, %e4
# CHECK: encoding: [0x49,0xf4,0x40,0x04]
.code32
ldmst [+%a15], 0, %e4

# CHECK-INST: ldmst [+%a15], 0, %e8
# CHECK: encoding: [0x49,0xf8,0x40,0x04]
.code32
ldmst [+%a15], 0, %e8

# CHECK-INST: ldmst [+%a15], 1, %e0
# CHECK: encoding: [0x49,0xf0,0x41,0x04]
.code32
ldmst [+%a15], 1, %e0

# CHECK-INST: ldmst [+%a15], 1, %e2
# CHECK: encoding: [0x49,0xf2,0x41,0x04]
.code32
ldmst [+%a15], 1, %e2

# CHECK-INST: ldmst [+%a15], 1, %e4
# CHECK: encoding: [0x49,0xf4,0x41,0x04]
.code32
ldmst [+%a15], 1, %e4

# CHECK-INST: ldmst [+%a15], 1, %e8
# CHECK: encoding: [0x49,0xf8,0x41,0x04]
.code32
ldmst [+%a15], 1, %e8

# CHECK-INST: ldmst [+%a15], 510, %e0
# CHECK: encoding: [0x49,0xf0,0x7e,0x74]
.code32
ldmst [+%a15], 510, %e0

# CHECK-INST: ldmst [+%a15], 510, %e2
# CHECK: encoding: [0x49,0xf2,0x7e,0x74]
.code32
ldmst [+%a15], 510, %e2

# CHECK-INST: ldmst [+%a15], 510, %e4
# CHECK: encoding: [0x49,0xf4,0x7e,0x74]
.code32
ldmst [+%a15], 510, %e4

# CHECK-INST: ldmst [+%a15], 510, %e8
# CHECK: encoding: [0x49,0xf8,0x7e,0x74]
.code32
ldmst [+%a15], 510, %e8

# CHECK-INST: ldmst [+%a15], 511, %e0
# CHECK: encoding: [0x49,0xf0,0x7f,0x74]
.code32
ldmst [+%a15], 511, %e0

# CHECK-INST: ldmst [+%a15], 511, %e2
# CHECK: encoding: [0x49,0xf2,0x7f,0x74]
.code32
ldmst [+%a15], 511, %e2

# CHECK-INST: ldmst [+%a15], 511, %e4
# CHECK: encoding: [0x49,0xf4,0x7f,0x74]
.code32
ldmst [+%a15], 511, %e4

# CHECK-INST: ldmst [+%a15], 511, %e8
# CHECK: encoding: [0x49,0xf8,0x7f,0x74]
.code32
ldmst [+%a15], 511, %e8

# CHECK-INST: swapmsk.w [%a0], -512, %e0
# CHECK: encoding: [0x49,0x00,0x80,0x88]
.code32
swapmsk.w [%a0], -512, %e0

# CHECK-INST: swapmsk.w [%a0], -512, %e2
# CHECK: encoding: [0x49,0x02,0x80,0x88]
.code32
swapmsk.w [%a0], -512, %e2

# CHECK-INST: swapmsk.w [%a0], -512, %e4
# CHECK: encoding: [0x49,0x04,0x80,0x88]
.code32
swapmsk.w [%a0], -512, %e4

# CHECK-INST: swapmsk.w [%a0], -512, %e8
# CHECK: encoding: [0x49,0x08,0x80,0x88]
.code32
swapmsk.w [%a0], -512, %e8

# CHECK-INST: swapmsk.w [%a0], -511, %e0
# CHECK: encoding: [0x49,0x00,0x81,0x88]
.code32
swapmsk.w [%a0], -511, %e0

# CHECK-INST: swapmsk.w [%a0], -511, %e2
# CHECK: encoding: [0x49,0x02,0x81,0x88]
.code32
swapmsk.w [%a0], -511, %e2

# CHECK-INST: swapmsk.w [%a0], -511, %e4
# CHECK: encoding: [0x49,0x04,0x81,0x88]
.code32
swapmsk.w [%a0], -511, %e4

# CHECK-INST: swapmsk.w [%a0], -511, %e8
# CHECK: encoding: [0x49,0x08,0x81,0x88]
.code32
swapmsk.w [%a0], -511, %e8

# CHECK-INST: swapmsk.w [%a0], -2, %e0
# CHECK: encoding: [0x49,0x00,0xbe,0xf8]
.code32
swapmsk.w [%a0], -2, %e0

# CHECK-INST: swapmsk.w [%a0], -2, %e2
# CHECK: encoding: [0x49,0x02,0xbe,0xf8]
.code32
swapmsk.w [%a0], -2, %e2

# CHECK-INST: swapmsk.w [%a0], -2, %e4
# CHECK: encoding: [0x49,0x04,0xbe,0xf8]
.code32
swapmsk.w [%a0], -2, %e4

# CHECK-INST: swapmsk.w [%a0], -2, %e8
# CHECK: encoding: [0x49,0x08,0xbe,0xf8]
.code32
swapmsk.w [%a0], -2, %e8

# CHECK-INST: swapmsk.w [%a0], -1, %e0
# CHECK: encoding: [0x49,0x00,0xbf,0xf8]
.code32
swapmsk.w [%a0], -1, %e0

# CHECK-INST: swapmsk.w [%a0], -1, %e2
# CHECK: encoding: [0x49,0x02,0xbf,0xf8]
.code32
swapmsk.w [%a0], -1, %e2

# CHECK-INST: swapmsk.w [%a0], -1, %e4
# CHECK: encoding: [0x49,0x04,0xbf,0xf8]
.code32
swapmsk.w [%a0], -1, %e4

# CHECK-INST: swapmsk.w [%a0], -1, %e8
# CHECK: encoding: [0x49,0x08,0xbf,0xf8]
.code32
swapmsk.w [%a0], -1, %e8

# CHECK-INST: swapmsk.w [%a0], 0, %e0
# CHECK: encoding: [0x49,0x00,0x80,0x08]
.code32
swapmsk.w [%a0], 0, %e0

# CHECK-INST: swapmsk.w [%a0], 0, %e2
# CHECK: encoding: [0x49,0x02,0x80,0x08]
.code32
swapmsk.w [%a0], 0, %e2

# CHECK-INST: swapmsk.w [%a0], 0, %e4
# CHECK: encoding: [0x49,0x04,0x80,0x08]
.code32
swapmsk.w [%a0], 0, %e4

# CHECK-INST: swapmsk.w [%a0], 0, %e8
# CHECK: encoding: [0x49,0x08,0x80,0x08]
.code32
swapmsk.w [%a0], 0, %e8

# CHECK-INST: swapmsk.w [%a0], 1, %e0
# CHECK: encoding: [0x49,0x00,0x81,0x08]
.code32
swapmsk.w [%a0], 1, %e0

# CHECK-INST: swapmsk.w [%a0], 1, %e2
# CHECK: encoding: [0x49,0x02,0x81,0x08]
.code32
swapmsk.w [%a0], 1, %e2

# CHECK-INST: swapmsk.w [%a0], 1, %e4
# CHECK: encoding: [0x49,0x04,0x81,0x08]
.code32
swapmsk.w [%a0], 1, %e4

# CHECK-INST: swapmsk.w [%a0], 1, %e8
# CHECK: encoding: [0x49,0x08,0x81,0x08]
.code32
swapmsk.w [%a0], 1, %e8

# CHECK-INST: swapmsk.w [%a0], 510, %e0
# CHECK: encoding: [0x49,0x00,0xbe,0x78]
.code32
swapmsk.w [%a0], 510, %e0

# CHECK-INST: swapmsk.w [%a0], 510, %e2
# CHECK: encoding: [0x49,0x02,0xbe,0x78]
.code32
swapmsk.w [%a0], 510, %e2

# CHECK-INST: swapmsk.w [%a0], 510, %e4
# CHECK: encoding: [0x49,0x04,0xbe,0x78]
.code32
swapmsk.w [%a0], 510, %e4

# CHECK-INST: swapmsk.w [%a0], 510, %e8
# CHECK: encoding: [0x49,0x08,0xbe,0x78]
.code32
swapmsk.w [%a0], 510, %e8

# CHECK-INST: swapmsk.w [%a0], 511, %e0
# CHECK: encoding: [0x49,0x00,0xbf,0x78]
.code32
swapmsk.w [%a0], 511, %e0

# CHECK-INST: swapmsk.w [%a0], 511, %e2
# CHECK: encoding: [0x49,0x02,0xbf,0x78]
.code32
swapmsk.w [%a0], 511, %e2

# CHECK-INST: swapmsk.w [%a0], 511, %e4
# CHECK: encoding: [0x49,0x04,0xbf,0x78]
.code32
swapmsk.w [%a0], 511, %e4

# CHECK-INST: swapmsk.w [%a0], 511, %e8
# CHECK: encoding: [0x49,0x08,0xbf,0x78]
.code32
swapmsk.w [%a0], 511, %e8

# CHECK-INST: swapmsk.w [%a1], -512, %e0
# CHECK: encoding: [0x49,0x10,0x80,0x88]
.code32
swapmsk.w [%a1], -512, %e0

# CHECK-INST: swapmsk.w [%a1], -512, %e2
# CHECK: encoding: [0x49,0x12,0x80,0x88]
.code32
swapmsk.w [%a1], -512, %e2

# CHECK-INST: swapmsk.w [%a1], -512, %e4
# CHECK: encoding: [0x49,0x14,0x80,0x88]
.code32
swapmsk.w [%a1], -512, %e4

# CHECK-INST: swapmsk.w [%a1], -512, %e8
# CHECK: encoding: [0x49,0x18,0x80,0x88]
.code32
swapmsk.w [%a1], -512, %e8

# CHECK-INST: swapmsk.w [%a1], -511, %e0
# CHECK: encoding: [0x49,0x10,0x81,0x88]
.code32
swapmsk.w [%a1], -511, %e0

# CHECK-INST: swapmsk.w [%a1], -511, %e2
# CHECK: encoding: [0x49,0x12,0x81,0x88]
.code32
swapmsk.w [%a1], -511, %e2

# CHECK-INST: swapmsk.w [%a1], -511, %e4
# CHECK: encoding: [0x49,0x14,0x81,0x88]
.code32
swapmsk.w [%a1], -511, %e4

# CHECK-INST: swapmsk.w [%a1], -511, %e8
# CHECK: encoding: [0x49,0x18,0x81,0x88]
.code32
swapmsk.w [%a1], -511, %e8

# CHECK-INST: swapmsk.w [%a1], -2, %e0
# CHECK: encoding: [0x49,0x10,0xbe,0xf8]
.code32
swapmsk.w [%a1], -2, %e0

# CHECK-INST: swapmsk.w [%a1], -2, %e2
# CHECK: encoding: [0x49,0x12,0xbe,0xf8]
.code32
swapmsk.w [%a1], -2, %e2

# CHECK-INST: swapmsk.w [%a1], -2, %e4
# CHECK: encoding: [0x49,0x14,0xbe,0xf8]
.code32
swapmsk.w [%a1], -2, %e4

# CHECK-INST: swapmsk.w [%a1], -2, %e8
# CHECK: encoding: [0x49,0x18,0xbe,0xf8]
.code32
swapmsk.w [%a1], -2, %e8

# CHECK-INST: swapmsk.w [%a1], -1, %e0
# CHECK: encoding: [0x49,0x10,0xbf,0xf8]
.code32
swapmsk.w [%a1], -1, %e0

# CHECK-INST: swapmsk.w [%a1], -1, %e2
# CHECK: encoding: [0x49,0x12,0xbf,0xf8]
.code32
swapmsk.w [%a1], -1, %e2

# CHECK-INST: swapmsk.w [%a1], -1, %e4
# CHECK: encoding: [0x49,0x14,0xbf,0xf8]
.code32
swapmsk.w [%a1], -1, %e4

# CHECK-INST: swapmsk.w [%a1], -1, %e8
# CHECK: encoding: [0x49,0x18,0xbf,0xf8]
.code32
swapmsk.w [%a1], -1, %e8

# CHECK-INST: swapmsk.w [%a1], 0, %e0
# CHECK: encoding: [0x49,0x10,0x80,0x08]
.code32
swapmsk.w [%a1], 0, %e0

# CHECK-INST: swapmsk.w [%a1], 0, %e2
# CHECK: encoding: [0x49,0x12,0x80,0x08]
.code32
swapmsk.w [%a1], 0, %e2

# CHECK-INST: swapmsk.w [%a1], 0, %e4
# CHECK: encoding: [0x49,0x14,0x80,0x08]
.code32
swapmsk.w [%a1], 0, %e4

# CHECK-INST: swapmsk.w [%a1], 0, %e8
# CHECK: encoding: [0x49,0x18,0x80,0x08]
.code32
swapmsk.w [%a1], 0, %e8

# CHECK-INST: swapmsk.w [%a1], 1, %e0
# CHECK: encoding: [0x49,0x10,0x81,0x08]
.code32
swapmsk.w [%a1], 1, %e0

# CHECK-INST: swapmsk.w [%a1], 1, %e2
# CHECK: encoding: [0x49,0x12,0x81,0x08]
.code32
swapmsk.w [%a1], 1, %e2

# CHECK-INST: swapmsk.w [%a1], 1, %e4
# CHECK: encoding: [0x49,0x14,0x81,0x08]
.code32
swapmsk.w [%a1], 1, %e4

# CHECK-INST: swapmsk.w [%a1], 1, %e8
# CHECK: encoding: [0x49,0x18,0x81,0x08]
.code32
swapmsk.w [%a1], 1, %e8

# CHECK-INST: swapmsk.w [%a1], 510, %e0
# CHECK: encoding: [0x49,0x10,0xbe,0x78]
.code32
swapmsk.w [%a1], 510, %e0

# CHECK-INST: swapmsk.w [%a1], 510, %e2
# CHECK: encoding: [0x49,0x12,0xbe,0x78]
.code32
swapmsk.w [%a1], 510, %e2

# CHECK-INST: swapmsk.w [%a1], 510, %e4
# CHECK: encoding: [0x49,0x14,0xbe,0x78]
.code32
swapmsk.w [%a1], 510, %e4

# CHECK-INST: swapmsk.w [%a1], 510, %e8
# CHECK: encoding: [0x49,0x18,0xbe,0x78]
.code32
swapmsk.w [%a1], 510, %e8

# CHECK-INST: swapmsk.w [%a1], 511, %e0
# CHECK: encoding: [0x49,0x10,0xbf,0x78]
.code32
swapmsk.w [%a1], 511, %e0

# CHECK-INST: swapmsk.w [%a1], 511, %e2
# CHECK: encoding: [0x49,0x12,0xbf,0x78]
.code32
swapmsk.w [%a1], 511, %e2

# CHECK-INST: swapmsk.w [%a1], 511, %e4
# CHECK: encoding: [0x49,0x14,0xbf,0x78]
.code32
swapmsk.w [%a1], 511, %e4

# CHECK-INST: swapmsk.w [%a1], 511, %e8
# CHECK: encoding: [0x49,0x18,0xbf,0x78]
.code32
swapmsk.w [%a1], 511, %e8

# CHECK-INST: swapmsk.w [%a14], -512, %e0
# CHECK: encoding: [0x49,0xe0,0x80,0x88]
.code32
swapmsk.w [%a14], -512, %e0

# CHECK-INST: swapmsk.w [%a14], -512, %e2
# CHECK: encoding: [0x49,0xe2,0x80,0x88]
.code32
swapmsk.w [%a14], -512, %e2

# CHECK-INST: swapmsk.w [%a14], -512, %e4
# CHECK: encoding: [0x49,0xe4,0x80,0x88]
.code32
swapmsk.w [%a14], -512, %e4

# CHECK-INST: swapmsk.w [%a14], -512, %e8
# CHECK: encoding: [0x49,0xe8,0x80,0x88]
.code32
swapmsk.w [%a14], -512, %e8

# CHECK-INST: swapmsk.w [%a14], -511, %e0
# CHECK: encoding: [0x49,0xe0,0x81,0x88]
.code32
swapmsk.w [%a14], -511, %e0

# CHECK-INST: swapmsk.w [%a14], -511, %e2
# CHECK: encoding: [0x49,0xe2,0x81,0x88]
.code32
swapmsk.w [%a14], -511, %e2

# CHECK-INST: swapmsk.w [%a14], -511, %e4
# CHECK: encoding: [0x49,0xe4,0x81,0x88]
.code32
swapmsk.w [%a14], -511, %e4

# CHECK-INST: swapmsk.w [%a14], -511, %e8
# CHECK: encoding: [0x49,0xe8,0x81,0x88]
.code32
swapmsk.w [%a14], -511, %e8

# CHECK-INST: swapmsk.w [%a14], -2, %e0
# CHECK: encoding: [0x49,0xe0,0xbe,0xf8]
.code32
swapmsk.w [%a14], -2, %e0

# CHECK-INST: swapmsk.w [%a14], -2, %e2
# CHECK: encoding: [0x49,0xe2,0xbe,0xf8]
.code32
swapmsk.w [%a14], -2, %e2

# CHECK-INST: swapmsk.w [%a14], -2, %e4
# CHECK: encoding: [0x49,0xe4,0xbe,0xf8]
.code32
swapmsk.w [%a14], -2, %e4

# CHECK-INST: swapmsk.w [%a14], -2, %e8
# CHECK: encoding: [0x49,0xe8,0xbe,0xf8]
.code32
swapmsk.w [%a14], -2, %e8

# CHECK-INST: swapmsk.w [%a14], -1, %e0
# CHECK: encoding: [0x49,0xe0,0xbf,0xf8]
.code32
swapmsk.w [%a14], -1, %e0

# CHECK-INST: swapmsk.w [%a14], -1, %e2
# CHECK: encoding: [0x49,0xe2,0xbf,0xf8]
.code32
swapmsk.w [%a14], -1, %e2

# CHECK-INST: swapmsk.w [%a14], -1, %e4
# CHECK: encoding: [0x49,0xe4,0xbf,0xf8]
.code32
swapmsk.w [%a14], -1, %e4

# CHECK-INST: swapmsk.w [%a14], -1, %e8
# CHECK: encoding: [0x49,0xe8,0xbf,0xf8]
.code32
swapmsk.w [%a14], -1, %e8

# CHECK-INST: swapmsk.w [%a14], 0, %e0
# CHECK: encoding: [0x49,0xe0,0x80,0x08]
.code32
swapmsk.w [%a14], 0, %e0

# CHECK-INST: swapmsk.w [%a14], 0, %e2
# CHECK: encoding: [0x49,0xe2,0x80,0x08]
.code32
swapmsk.w [%a14], 0, %e2

# CHECK-INST: swapmsk.w [%a14], 0, %e4
# CHECK: encoding: [0x49,0xe4,0x80,0x08]
.code32
swapmsk.w [%a14], 0, %e4

# CHECK-INST: swapmsk.w [%a14], 0, %e8
# CHECK: encoding: [0x49,0xe8,0x80,0x08]
.code32
swapmsk.w [%a14], 0, %e8

# CHECK-INST: swapmsk.w [%a14], 1, %e0
# CHECK: encoding: [0x49,0xe0,0x81,0x08]
.code32
swapmsk.w [%a14], 1, %e0

# CHECK-INST: swapmsk.w [%a14], 1, %e2
# CHECK: encoding: [0x49,0xe2,0x81,0x08]
.code32
swapmsk.w [%a14], 1, %e2

# CHECK-INST: swapmsk.w [%a14], 1, %e4
# CHECK: encoding: [0x49,0xe4,0x81,0x08]
.code32
swapmsk.w [%a14], 1, %e4

# CHECK-INST: swapmsk.w [%a14], 1, %e8
# CHECK: encoding: [0x49,0xe8,0x81,0x08]
.code32
swapmsk.w [%a14], 1, %e8

# CHECK-INST: swapmsk.w [%a14], 510, %e0
# CHECK: encoding: [0x49,0xe0,0xbe,0x78]
.code32
swapmsk.w [%a14], 510, %e0

# CHECK-INST: swapmsk.w [%a14], 510, %e2
# CHECK: encoding: [0x49,0xe2,0xbe,0x78]
.code32
swapmsk.w [%a14], 510, %e2

# CHECK-INST: swapmsk.w [%a14], 510, %e4
# CHECK: encoding: [0x49,0xe4,0xbe,0x78]
.code32
swapmsk.w [%a14], 510, %e4

# CHECK-INST: swapmsk.w [%a14], 510, %e8
# CHECK: encoding: [0x49,0xe8,0xbe,0x78]
.code32
swapmsk.w [%a14], 510, %e8

# CHECK-INST: swapmsk.w [%a14], 511, %e0
# CHECK: encoding: [0x49,0xe0,0xbf,0x78]
.code32
swapmsk.w [%a14], 511, %e0

# CHECK-INST: swapmsk.w [%a14], 511, %e2
# CHECK: encoding: [0x49,0xe2,0xbf,0x78]
.code32
swapmsk.w [%a14], 511, %e2

# CHECK-INST: swapmsk.w [%a14], 511, %e4
# CHECK: encoding: [0x49,0xe4,0xbf,0x78]
.code32
swapmsk.w [%a14], 511, %e4

# CHECK-INST: swapmsk.w [%a14], 511, %e8
# CHECK: encoding: [0x49,0xe8,0xbf,0x78]
.code32
swapmsk.w [%a14], 511, %e8

# CHECK-INST: swapmsk.w [%a15], -512, %e0
# CHECK: encoding: [0x49,0xf0,0x80,0x88]
.code32
swapmsk.w [%a15], -512, %e0

# CHECK-INST: swapmsk.w [%a15], -512, %e2
# CHECK: encoding: [0x49,0xf2,0x80,0x88]
.code32
swapmsk.w [%a15], -512, %e2

# CHECK-INST: swapmsk.w [%a15], -512, %e4
# CHECK: encoding: [0x49,0xf4,0x80,0x88]
.code32
swapmsk.w [%a15], -512, %e4

# CHECK-INST: swapmsk.w [%a15], -512, %e8
# CHECK: encoding: [0x49,0xf8,0x80,0x88]
.code32
swapmsk.w [%a15], -512, %e8

# CHECK-INST: swapmsk.w [%a15], -511, %e0
# CHECK: encoding: [0x49,0xf0,0x81,0x88]
.code32
swapmsk.w [%a15], -511, %e0

# CHECK-INST: swapmsk.w [%a15], -511, %e2
# CHECK: encoding: [0x49,0xf2,0x81,0x88]
.code32
swapmsk.w [%a15], -511, %e2

# CHECK-INST: swapmsk.w [%a15], -511, %e4
# CHECK: encoding: [0x49,0xf4,0x81,0x88]
.code32
swapmsk.w [%a15], -511, %e4

# CHECK-INST: swapmsk.w [%a15], -511, %e8
# CHECK: encoding: [0x49,0xf8,0x81,0x88]
.code32
swapmsk.w [%a15], -511, %e8

# CHECK-INST: swapmsk.w [%a15], -2, %e0
# CHECK: encoding: [0x49,0xf0,0xbe,0xf8]
.code32
swapmsk.w [%a15], -2, %e0

# CHECK-INST: swapmsk.w [%a15], -2, %e2
# CHECK: encoding: [0x49,0xf2,0xbe,0xf8]
.code32
swapmsk.w [%a15], -2, %e2

# CHECK-INST: swapmsk.w [%a15], -2, %e4
# CHECK: encoding: [0x49,0xf4,0xbe,0xf8]
.code32
swapmsk.w [%a15], -2, %e4

# CHECK-INST: swapmsk.w [%a15], -2, %e8
# CHECK: encoding: [0x49,0xf8,0xbe,0xf8]
.code32
swapmsk.w [%a15], -2, %e8

# CHECK-INST: swapmsk.w [%a15], -1, %e0
# CHECK: encoding: [0x49,0xf0,0xbf,0xf8]
.code32
swapmsk.w [%a15], -1, %e0

# CHECK-INST: swapmsk.w [%a15], -1, %e2
# CHECK: encoding: [0x49,0xf2,0xbf,0xf8]
.code32
swapmsk.w [%a15], -1, %e2

# CHECK-INST: swapmsk.w [%a15], -1, %e4
# CHECK: encoding: [0x49,0xf4,0xbf,0xf8]
.code32
swapmsk.w [%a15], -1, %e4

# CHECK-INST: swapmsk.w [%a15], -1, %e8
# CHECK: encoding: [0x49,0xf8,0xbf,0xf8]
.code32
swapmsk.w [%a15], -1, %e8

# CHECK-INST: swapmsk.w [%a15], 0, %e0
# CHECK: encoding: [0x49,0xf0,0x80,0x08]
.code32
swapmsk.w [%a15], 0, %e0

# CHECK-INST: swapmsk.w [%a15], 0, %e2
# CHECK: encoding: [0x49,0xf2,0x80,0x08]
.code32
swapmsk.w [%a15], 0, %e2

# CHECK-INST: swapmsk.w [%a15], 0, %e4
# CHECK: encoding: [0x49,0xf4,0x80,0x08]
.code32
swapmsk.w [%a15], 0, %e4

# CHECK-INST: swapmsk.w [%a15], 0, %e8
# CHECK: encoding: [0x49,0xf8,0x80,0x08]
.code32
swapmsk.w [%a15], 0, %e8

# CHECK-INST: swapmsk.w [%a15], 1, %e0
# CHECK: encoding: [0x49,0xf0,0x81,0x08]
.code32
swapmsk.w [%a15], 1, %e0

# CHECK-INST: swapmsk.w [%a15], 1, %e2
# CHECK: encoding: [0x49,0xf2,0x81,0x08]
.code32
swapmsk.w [%a15], 1, %e2

# CHECK-INST: swapmsk.w [%a15], 1, %e4
# CHECK: encoding: [0x49,0xf4,0x81,0x08]
.code32
swapmsk.w [%a15], 1, %e4

# CHECK-INST: swapmsk.w [%a15], 1, %e8
# CHECK: encoding: [0x49,0xf8,0x81,0x08]
.code32
swapmsk.w [%a15], 1, %e8

# CHECK-INST: swapmsk.w [%a15], 510, %e0
# CHECK: encoding: [0x49,0xf0,0xbe,0x78]
.code32
swapmsk.w [%a15], 510, %e0

# CHECK-INST: swapmsk.w [%a15], 510, %e2
# CHECK: encoding: [0x49,0xf2,0xbe,0x78]
.code32
swapmsk.w [%a15], 510, %e2

# CHECK-INST: swapmsk.w [%a15], 510, %e4
# CHECK: encoding: [0x49,0xf4,0xbe,0x78]
.code32
swapmsk.w [%a15], 510, %e4

# CHECK-INST: swapmsk.w [%a15], 510, %e8
# CHECK: encoding: [0x49,0xf8,0xbe,0x78]
.code32
swapmsk.w [%a15], 510, %e8

# CHECK-INST: swapmsk.w [%a15], 511, %e0
# CHECK: encoding: [0x49,0xf0,0xbf,0x78]
.code32
swapmsk.w [%a15], 511, %e0

# CHECK-INST: swapmsk.w [%a15], 511, %e2
# CHECK: encoding: [0x49,0xf2,0xbf,0x78]
.code32
swapmsk.w [%a15], 511, %e2

# CHECK-INST: swapmsk.w [%a15], 511, %e4
# CHECK: encoding: [0x49,0xf4,0xbf,0x78]
.code32
swapmsk.w [%a15], 511, %e4

# CHECK-INST: swapmsk.w [%a15], 511, %e8
# CHECK: encoding: [0x49,0xf8,0xbf,0x78]
.code32
swapmsk.w [%a15], 511, %e8

# CHECK-INST: swapmsk.w [%p0 + r], %e0
# CHECK: encoding: [0x69,0x00,0x80,0x00]
.code32
swapmsk.w [%p0 + r], %e0

# CHECK-INST: swapmsk.w [%p0 + r], %e2
# CHECK: encoding: [0x69,0x02,0x80,0x00]
.code32
swapmsk.w [%p0 + r], %e2

# CHECK-INST: swapmsk.w [%p0 + r], %e4
# CHECK: encoding: [0x69,0x04,0x80,0x00]
.code32
swapmsk.w [%p0 + r], %e4

# CHECK-INST: swapmsk.w [%p0 + r], %e8
# CHECK: encoding: [0x69,0x08,0x80,0x00]
.code32
swapmsk.w [%p0 + r], %e8

# CHECK-INST: swapmsk.w [%p2 + r], %e0
# CHECK: encoding: [0x69,0x20,0x80,0x00]
.code32
swapmsk.w [%p2 + r], %e0

# CHECK-INST: swapmsk.w [%p2 + r], %e2
# CHECK: encoding: [0x69,0x22,0x80,0x00]
.code32
swapmsk.w [%p2 + r], %e2

# CHECK-INST: swapmsk.w [%p2 + r], %e4
# CHECK: encoding: [0x69,0x24,0x80,0x00]
.code32
swapmsk.w [%p2 + r], %e4

# CHECK-INST: swapmsk.w [%p2 + r], %e8
# CHECK: encoding: [0x69,0x28,0x80,0x00]
.code32
swapmsk.w [%p2 + r], %e8

# CHECK-INST: swapmsk.w [%p4 + r], %e0
# CHECK: encoding: [0x69,0x40,0x80,0x00]
.code32
swapmsk.w [%p4 + r], %e0

# CHECK-INST: swapmsk.w [%p4 + r], %e2
# CHECK: encoding: [0x69,0x42,0x80,0x00]
.code32
swapmsk.w [%p4 + r], %e2

# CHECK-INST: swapmsk.w [%p4 + r], %e4
# CHECK: encoding: [0x69,0x44,0x80,0x00]
.code32
swapmsk.w [%p4 + r], %e4

# CHECK-INST: swapmsk.w [%p4 + r], %e8
# CHECK: encoding: [0x69,0x48,0x80,0x00]
.code32
swapmsk.w [%p4 + r], %e8

# CHECK-INST: swapmsk.w [%p8 + r], %e0
# CHECK: encoding: [0x69,0x80,0x80,0x00]
.code32
swapmsk.w [%p8 + r], %e0

# CHECK-INST: swapmsk.w [%p8 + r], %e2
# CHECK: encoding: [0x69,0x82,0x80,0x00]
.code32
swapmsk.w [%p8 + r], %e2

# CHECK-INST: swapmsk.w [%p8 + r], %e4
# CHECK: encoding: [0x69,0x84,0x80,0x00]
.code32
swapmsk.w [%p8 + r], %e4

# CHECK-INST: swapmsk.w [%p8 + r], %e8
# CHECK: encoding: [0x69,0x88,0x80,0x00]
.code32
swapmsk.w [%p8 + r], %e8

# CHECK-INST: swapmsk.w [%p0 + c], -512, %e0
# CHECK: encoding: [0x69,0x00,0x80,0x84]
.code32
swapmsk.w [%p0 + c], -512, %e0

# CHECK-INST: swapmsk.w [%p0 + c], -512, %e2
# CHECK: encoding: [0x69,0x02,0x80,0x84]
.code32
swapmsk.w [%p0 + c], -512, %e2

# CHECK-INST: swapmsk.w [%p0 + c], -512, %e4
# CHECK: encoding: [0x69,0x04,0x80,0x84]
.code32
swapmsk.w [%p0 + c], -512, %e4

# CHECK-INST: swapmsk.w [%p0 + c], -512, %e8
# CHECK: encoding: [0x69,0x08,0x80,0x84]
.code32
swapmsk.w [%p0 + c], -512, %e8

# CHECK-INST: swapmsk.w [%p0 + c], -511, %e0
# CHECK: encoding: [0x69,0x00,0x81,0x84]
.code32
swapmsk.w [%p0 + c], -511, %e0

# CHECK-INST: swapmsk.w [%p0 + c], -511, %e2
# CHECK: encoding: [0x69,0x02,0x81,0x84]
.code32
swapmsk.w [%p0 + c], -511, %e2

# CHECK-INST: swapmsk.w [%p0 + c], -511, %e4
# CHECK: encoding: [0x69,0x04,0x81,0x84]
.code32
swapmsk.w [%p0 + c], -511, %e4

# CHECK-INST: swapmsk.w [%p0 + c], -511, %e8
# CHECK: encoding: [0x69,0x08,0x81,0x84]
.code32
swapmsk.w [%p0 + c], -511, %e8

# CHECK-INST: swapmsk.w [%p0 + c], -2, %e0
# CHECK: encoding: [0x69,0x00,0xbe,0xf4]
.code32
swapmsk.w [%p0 + c], -2, %e0

# CHECK-INST: swapmsk.w [%p0 + c], -2, %e2
# CHECK: encoding: [0x69,0x02,0xbe,0xf4]
.code32
swapmsk.w [%p0 + c], -2, %e2

# CHECK-INST: swapmsk.w [%p0 + c], -2, %e4
# CHECK: encoding: [0x69,0x04,0xbe,0xf4]
.code32
swapmsk.w [%p0 + c], -2, %e4

# CHECK-INST: swapmsk.w [%p0 + c], -2, %e8
# CHECK: encoding: [0x69,0x08,0xbe,0xf4]
.code32
swapmsk.w [%p0 + c], -2, %e8

# CHECK-INST: swapmsk.w [%p0 + c], -1, %e0
# CHECK: encoding: [0x69,0x00,0xbf,0xf4]
.code32
swapmsk.w [%p0 + c], -1, %e0

# CHECK-INST: swapmsk.w [%p0 + c], -1, %e2
# CHECK: encoding: [0x69,0x02,0xbf,0xf4]
.code32
swapmsk.w [%p0 + c], -1, %e2

# CHECK-INST: swapmsk.w [%p0 + c], -1, %e4
# CHECK: encoding: [0x69,0x04,0xbf,0xf4]
.code32
swapmsk.w [%p0 + c], -1, %e4

# CHECK-INST: swapmsk.w [%p0 + c], -1, %e8
# CHECK: encoding: [0x69,0x08,0xbf,0xf4]
.code32
swapmsk.w [%p0 + c], -1, %e8

# CHECK-INST: swapmsk.w [%p0 + c], 0, %e0
# CHECK: encoding: [0x69,0x00,0x80,0x04]
.code32
swapmsk.w [%p0 + c], 0, %e0

# CHECK-INST: swapmsk.w [%p0 + c], 0, %e2
# CHECK: encoding: [0x69,0x02,0x80,0x04]
.code32
swapmsk.w [%p0 + c], 0, %e2

# CHECK-INST: swapmsk.w [%p0 + c], 0, %e4
# CHECK: encoding: [0x69,0x04,0x80,0x04]
.code32
swapmsk.w [%p0 + c], 0, %e4

# CHECK-INST: swapmsk.w [%p0 + c], 0, %e8
# CHECK: encoding: [0x69,0x08,0x80,0x04]
.code32
swapmsk.w [%p0 + c], 0, %e8

# CHECK-INST: swapmsk.w [%p0 + c], 1, %e0
# CHECK: encoding: [0x69,0x00,0x81,0x04]
.code32
swapmsk.w [%p0 + c], 1, %e0

# CHECK-INST: swapmsk.w [%p0 + c], 1, %e2
# CHECK: encoding: [0x69,0x02,0x81,0x04]
.code32
swapmsk.w [%p0 + c], 1, %e2

# CHECK-INST: swapmsk.w [%p0 + c], 1, %e4
# CHECK: encoding: [0x69,0x04,0x81,0x04]
.code32
swapmsk.w [%p0 + c], 1, %e4

# CHECK-INST: swapmsk.w [%p0 + c], 1, %e8
# CHECK: encoding: [0x69,0x08,0x81,0x04]
.code32
swapmsk.w [%p0 + c], 1, %e8

# CHECK-INST: swapmsk.w [%p0 + c], 510, %e0
# CHECK: encoding: [0x69,0x00,0xbe,0x74]
.code32
swapmsk.w [%p0 + c], 510, %e0

# CHECK-INST: swapmsk.w [%p0 + c], 510, %e2
# CHECK: encoding: [0x69,0x02,0xbe,0x74]
.code32
swapmsk.w [%p0 + c], 510, %e2

# CHECK-INST: swapmsk.w [%p0 + c], 510, %e4
# CHECK: encoding: [0x69,0x04,0xbe,0x74]
.code32
swapmsk.w [%p0 + c], 510, %e4

# CHECK-INST: swapmsk.w [%p0 + c], 510, %e8
# CHECK: encoding: [0x69,0x08,0xbe,0x74]
.code32
swapmsk.w [%p0 + c], 510, %e8

# CHECK-INST: swapmsk.w [%p0 + c], 511, %e0
# CHECK: encoding: [0x69,0x00,0xbf,0x74]
.code32
swapmsk.w [%p0 + c], 511, %e0

# CHECK-INST: swapmsk.w [%p0 + c], 511, %e2
# CHECK: encoding: [0x69,0x02,0xbf,0x74]
.code32
swapmsk.w [%p0 + c], 511, %e2

# CHECK-INST: swapmsk.w [%p0 + c], 511, %e4
# CHECK: encoding: [0x69,0x04,0xbf,0x74]
.code32
swapmsk.w [%p0 + c], 511, %e4

# CHECK-INST: swapmsk.w [%p0 + c], 511, %e8
# CHECK: encoding: [0x69,0x08,0xbf,0x74]
.code32
swapmsk.w [%p0 + c], 511, %e8

# CHECK-INST: swapmsk.w [%p2 + c], -512, %e0
# CHECK: encoding: [0x69,0x20,0x80,0x84]
.code32
swapmsk.w [%p2 + c], -512, %e0

# CHECK-INST: swapmsk.w [%p2 + c], -512, %e2
# CHECK: encoding: [0x69,0x22,0x80,0x84]
.code32
swapmsk.w [%p2 + c], -512, %e2

# CHECK-INST: swapmsk.w [%p2 + c], -512, %e4
# CHECK: encoding: [0x69,0x24,0x80,0x84]
.code32
swapmsk.w [%p2 + c], -512, %e4

# CHECK-INST: swapmsk.w [%p2 + c], -512, %e8
# CHECK: encoding: [0x69,0x28,0x80,0x84]
.code32
swapmsk.w [%p2 + c], -512, %e8

# CHECK-INST: swapmsk.w [%p2 + c], -511, %e0
# CHECK: encoding: [0x69,0x20,0x81,0x84]
.code32
swapmsk.w [%p2 + c], -511, %e0

# CHECK-INST: swapmsk.w [%p2 + c], -511, %e2
# CHECK: encoding: [0x69,0x22,0x81,0x84]
.code32
swapmsk.w [%p2 + c], -511, %e2

# CHECK-INST: swapmsk.w [%p2 + c], -511, %e4
# CHECK: encoding: [0x69,0x24,0x81,0x84]
.code32
swapmsk.w [%p2 + c], -511, %e4

# CHECK-INST: swapmsk.w [%p2 + c], -511, %e8
# CHECK: encoding: [0x69,0x28,0x81,0x84]
.code32
swapmsk.w [%p2 + c], -511, %e8

# CHECK-INST: swapmsk.w [%p2 + c], -2, %e0
# CHECK: encoding: [0x69,0x20,0xbe,0xf4]
.code32
swapmsk.w [%p2 + c], -2, %e0

# CHECK-INST: swapmsk.w [%p2 + c], -2, %e2
# CHECK: encoding: [0x69,0x22,0xbe,0xf4]
.code32
swapmsk.w [%p2 + c], -2, %e2

# CHECK-INST: swapmsk.w [%p2 + c], -2, %e4
# CHECK: encoding: [0x69,0x24,0xbe,0xf4]
.code32
swapmsk.w [%p2 + c], -2, %e4

# CHECK-INST: swapmsk.w [%p2 + c], -2, %e8
# CHECK: encoding: [0x69,0x28,0xbe,0xf4]
.code32
swapmsk.w [%p2 + c], -2, %e8

# CHECK-INST: swapmsk.w [%p2 + c], -1, %e0
# CHECK: encoding: [0x69,0x20,0xbf,0xf4]
.code32
swapmsk.w [%p2 + c], -1, %e0

# CHECK-INST: swapmsk.w [%p2 + c], -1, %e2
# CHECK: encoding: [0x69,0x22,0xbf,0xf4]
.code32
swapmsk.w [%p2 + c], -1, %e2

# CHECK-INST: swapmsk.w [%p2 + c], -1, %e4
# CHECK: encoding: [0x69,0x24,0xbf,0xf4]
.code32
swapmsk.w [%p2 + c], -1, %e4

# CHECK-INST: swapmsk.w [%p2 + c], -1, %e8
# CHECK: encoding: [0x69,0x28,0xbf,0xf4]
.code32
swapmsk.w [%p2 + c], -1, %e8

# CHECK-INST: swapmsk.w [%p2 + c], 0, %e0
# CHECK: encoding: [0x69,0x20,0x80,0x04]
.code32
swapmsk.w [%p2 + c], 0, %e0

# CHECK-INST: swapmsk.w [%p2 + c], 0, %e2
# CHECK: encoding: [0x69,0x22,0x80,0x04]
.code32
swapmsk.w [%p2 + c], 0, %e2

# CHECK-INST: swapmsk.w [%p2 + c], 0, %e4
# CHECK: encoding: [0x69,0x24,0x80,0x04]
.code32
swapmsk.w [%p2 + c], 0, %e4

# CHECK-INST: swapmsk.w [%p2 + c], 0, %e8
# CHECK: encoding: [0x69,0x28,0x80,0x04]
.code32
swapmsk.w [%p2 + c], 0, %e8

# CHECK-INST: swapmsk.w [%p2 + c], 1, %e0
# CHECK: encoding: [0x69,0x20,0x81,0x04]
.code32
swapmsk.w [%p2 + c], 1, %e0

# CHECK-INST: swapmsk.w [%p2 + c], 1, %e2
# CHECK: encoding: [0x69,0x22,0x81,0x04]
.code32
swapmsk.w [%p2 + c], 1, %e2

# CHECK-INST: swapmsk.w [%p2 + c], 1, %e4
# CHECK: encoding: [0x69,0x24,0x81,0x04]
.code32
swapmsk.w [%p2 + c], 1, %e4

# CHECK-INST: swapmsk.w [%p2 + c], 1, %e8
# CHECK: encoding: [0x69,0x28,0x81,0x04]
.code32
swapmsk.w [%p2 + c], 1, %e8

# CHECK-INST: swapmsk.w [%p2 + c], 510, %e0
# CHECK: encoding: [0x69,0x20,0xbe,0x74]
.code32
swapmsk.w [%p2 + c], 510, %e0

# CHECK-INST: swapmsk.w [%p2 + c], 510, %e2
# CHECK: encoding: [0x69,0x22,0xbe,0x74]
.code32
swapmsk.w [%p2 + c], 510, %e2

# CHECK-INST: swapmsk.w [%p2 + c], 510, %e4
# CHECK: encoding: [0x69,0x24,0xbe,0x74]
.code32
swapmsk.w [%p2 + c], 510, %e4

# CHECK-INST: swapmsk.w [%p2 + c], 510, %e8
# CHECK: encoding: [0x69,0x28,0xbe,0x74]
.code32
swapmsk.w [%p2 + c], 510, %e8

# CHECK-INST: swapmsk.w [%p2 + c], 511, %e0
# CHECK: encoding: [0x69,0x20,0xbf,0x74]
.code32
swapmsk.w [%p2 + c], 511, %e0

# CHECK-INST: swapmsk.w [%p2 + c], 511, %e2
# CHECK: encoding: [0x69,0x22,0xbf,0x74]
.code32
swapmsk.w [%p2 + c], 511, %e2

# CHECK-INST: swapmsk.w [%p2 + c], 511, %e4
# CHECK: encoding: [0x69,0x24,0xbf,0x74]
.code32
swapmsk.w [%p2 + c], 511, %e4

# CHECK-INST: swapmsk.w [%p2 + c], 511, %e8
# CHECK: encoding: [0x69,0x28,0xbf,0x74]
.code32
swapmsk.w [%p2 + c], 511, %e8

# CHECK-INST: swapmsk.w [%p4 + c], -512, %e0
# CHECK: encoding: [0x69,0x40,0x80,0x84]
.code32
swapmsk.w [%p4 + c], -512, %e0

# CHECK-INST: swapmsk.w [%p4 + c], -512, %e2
# CHECK: encoding: [0x69,0x42,0x80,0x84]
.code32
swapmsk.w [%p4 + c], -512, %e2

# CHECK-INST: swapmsk.w [%p4 + c], -512, %e4
# CHECK: encoding: [0x69,0x44,0x80,0x84]
.code32
swapmsk.w [%p4 + c], -512, %e4

# CHECK-INST: swapmsk.w [%p4 + c], -512, %e8
# CHECK: encoding: [0x69,0x48,0x80,0x84]
.code32
swapmsk.w [%p4 + c], -512, %e8

# CHECK-INST: swapmsk.w [%p4 + c], -511, %e0
# CHECK: encoding: [0x69,0x40,0x81,0x84]
.code32
swapmsk.w [%p4 + c], -511, %e0

# CHECK-INST: swapmsk.w [%p4 + c], -511, %e2
# CHECK: encoding: [0x69,0x42,0x81,0x84]
.code32
swapmsk.w [%p4 + c], -511, %e2

# CHECK-INST: swapmsk.w [%p4 + c], -511, %e4
# CHECK: encoding: [0x69,0x44,0x81,0x84]
.code32
swapmsk.w [%p4 + c], -511, %e4

# CHECK-INST: swapmsk.w [%p4 + c], -511, %e8
# CHECK: encoding: [0x69,0x48,0x81,0x84]
.code32
swapmsk.w [%p4 + c], -511, %e8

# CHECK-INST: swapmsk.w [%p4 + c], -2, %e0
# CHECK: encoding: [0x69,0x40,0xbe,0xf4]
.code32
swapmsk.w [%p4 + c], -2, %e0

# CHECK-INST: swapmsk.w [%p4 + c], -2, %e2
# CHECK: encoding: [0x69,0x42,0xbe,0xf4]
.code32
swapmsk.w [%p4 + c], -2, %e2

# CHECK-INST: swapmsk.w [%p4 + c], -2, %e4
# CHECK: encoding: [0x69,0x44,0xbe,0xf4]
.code32
swapmsk.w [%p4 + c], -2, %e4

# CHECK-INST: swapmsk.w [%p4 + c], -2, %e8
# CHECK: encoding: [0x69,0x48,0xbe,0xf4]
.code32
swapmsk.w [%p4 + c], -2, %e8

# CHECK-INST: swapmsk.w [%p4 + c], -1, %e0
# CHECK: encoding: [0x69,0x40,0xbf,0xf4]
.code32
swapmsk.w [%p4 + c], -1, %e0

# CHECK-INST: swapmsk.w [%p4 + c], -1, %e2
# CHECK: encoding: [0x69,0x42,0xbf,0xf4]
.code32
swapmsk.w [%p4 + c], -1, %e2

# CHECK-INST: swapmsk.w [%p4 + c], -1, %e4
# CHECK: encoding: [0x69,0x44,0xbf,0xf4]
.code32
swapmsk.w [%p4 + c], -1, %e4

# CHECK-INST: swapmsk.w [%p4 + c], -1, %e8
# CHECK: encoding: [0x69,0x48,0xbf,0xf4]
.code32
swapmsk.w [%p4 + c], -1, %e8

# CHECK-INST: swapmsk.w [%p4 + c], 0, %e0
# CHECK: encoding: [0x69,0x40,0x80,0x04]
.code32
swapmsk.w [%p4 + c], 0, %e0

# CHECK-INST: swapmsk.w [%p4 + c], 0, %e2
# CHECK: encoding: [0x69,0x42,0x80,0x04]
.code32
swapmsk.w [%p4 + c], 0, %e2

# CHECK-INST: swapmsk.w [%p4 + c], 0, %e4
# CHECK: encoding: [0x69,0x44,0x80,0x04]
.code32
swapmsk.w [%p4 + c], 0, %e4

# CHECK-INST: swapmsk.w [%p4 + c], 0, %e8
# CHECK: encoding: [0x69,0x48,0x80,0x04]
.code32
swapmsk.w [%p4 + c], 0, %e8

# CHECK-INST: swapmsk.w [%p4 + c], 1, %e0
# CHECK: encoding: [0x69,0x40,0x81,0x04]
.code32
swapmsk.w [%p4 + c], 1, %e0

# CHECK-INST: swapmsk.w [%p4 + c], 1, %e2
# CHECK: encoding: [0x69,0x42,0x81,0x04]
.code32
swapmsk.w [%p4 + c], 1, %e2

# CHECK-INST: swapmsk.w [%p4 + c], 1, %e4
# CHECK: encoding: [0x69,0x44,0x81,0x04]
.code32
swapmsk.w [%p4 + c], 1, %e4

# CHECK-INST: swapmsk.w [%p4 + c], 1, %e8
# CHECK: encoding: [0x69,0x48,0x81,0x04]
.code32
swapmsk.w [%p4 + c], 1, %e8

# CHECK-INST: swapmsk.w [%p4 + c], 510, %e0
# CHECK: encoding: [0x69,0x40,0xbe,0x74]
.code32
swapmsk.w [%p4 + c], 510, %e0

# CHECK-INST: swapmsk.w [%p4 + c], 510, %e2
# CHECK: encoding: [0x69,0x42,0xbe,0x74]
.code32
swapmsk.w [%p4 + c], 510, %e2

# CHECK-INST: swapmsk.w [%p4 + c], 510, %e4
# CHECK: encoding: [0x69,0x44,0xbe,0x74]
.code32
swapmsk.w [%p4 + c], 510, %e4

# CHECK-INST: swapmsk.w [%p4 + c], 510, %e8
# CHECK: encoding: [0x69,0x48,0xbe,0x74]
.code32
swapmsk.w [%p4 + c], 510, %e8

# CHECK-INST: swapmsk.w [%p4 + c], 511, %e0
# CHECK: encoding: [0x69,0x40,0xbf,0x74]
.code32
swapmsk.w [%p4 + c], 511, %e0

# CHECK-INST: swapmsk.w [%p4 + c], 511, %e2
# CHECK: encoding: [0x69,0x42,0xbf,0x74]
.code32
swapmsk.w [%p4 + c], 511, %e2

# CHECK-INST: swapmsk.w [%p4 + c], 511, %e4
# CHECK: encoding: [0x69,0x44,0xbf,0x74]
.code32
swapmsk.w [%p4 + c], 511, %e4

# CHECK-INST: swapmsk.w [%p4 + c], 511, %e8
# CHECK: encoding: [0x69,0x48,0xbf,0x74]
.code32
swapmsk.w [%p4 + c], 511, %e8

# CHECK-INST: swapmsk.w [%p8 + c], -512, %e0
# CHECK: encoding: [0x69,0x80,0x80,0x84]
.code32
swapmsk.w [%p8 + c], -512, %e0

# CHECK-INST: swapmsk.w [%p8 + c], -512, %e2
# CHECK: encoding: [0x69,0x82,0x80,0x84]
.code32
swapmsk.w [%p8 + c], -512, %e2

# CHECK-INST: swapmsk.w [%p8 + c], -512, %e4
# CHECK: encoding: [0x69,0x84,0x80,0x84]
.code32
swapmsk.w [%p8 + c], -512, %e4

# CHECK-INST: swapmsk.w [%p8 + c], -512, %e8
# CHECK: encoding: [0x69,0x88,0x80,0x84]
.code32
swapmsk.w [%p8 + c], -512, %e8

# CHECK-INST: swapmsk.w [%p8 + c], -511, %e0
# CHECK: encoding: [0x69,0x80,0x81,0x84]
.code32
swapmsk.w [%p8 + c], -511, %e0

# CHECK-INST: swapmsk.w [%p8 + c], -511, %e2
# CHECK: encoding: [0x69,0x82,0x81,0x84]
.code32
swapmsk.w [%p8 + c], -511, %e2

# CHECK-INST: swapmsk.w [%p8 + c], -511, %e4
# CHECK: encoding: [0x69,0x84,0x81,0x84]
.code32
swapmsk.w [%p8 + c], -511, %e4

# CHECK-INST: swapmsk.w [%p8 + c], -511, %e8
# CHECK: encoding: [0x69,0x88,0x81,0x84]
.code32
swapmsk.w [%p8 + c], -511, %e8

# CHECK-INST: swapmsk.w [%p8 + c], -2, %e0
# CHECK: encoding: [0x69,0x80,0xbe,0xf4]
.code32
swapmsk.w [%p8 + c], -2, %e0

# CHECK-INST: swapmsk.w [%p8 + c], -2, %e2
# CHECK: encoding: [0x69,0x82,0xbe,0xf4]
.code32
swapmsk.w [%p8 + c], -2, %e2

# CHECK-INST: swapmsk.w [%p8 + c], -2, %e4
# CHECK: encoding: [0x69,0x84,0xbe,0xf4]
.code32
swapmsk.w [%p8 + c], -2, %e4

# CHECK-INST: swapmsk.w [%p8 + c], -2, %e8
# CHECK: encoding: [0x69,0x88,0xbe,0xf4]
.code32
swapmsk.w [%p8 + c], -2, %e8

# CHECK-INST: swapmsk.w [%p8 + c], -1, %e0
# CHECK: encoding: [0x69,0x80,0xbf,0xf4]
.code32
swapmsk.w [%p8 + c], -1, %e0

# CHECK-INST: swapmsk.w [%p8 + c], -1, %e2
# CHECK: encoding: [0x69,0x82,0xbf,0xf4]
.code32
swapmsk.w [%p8 + c], -1, %e2

# CHECK-INST: swapmsk.w [%p8 + c], -1, %e4
# CHECK: encoding: [0x69,0x84,0xbf,0xf4]
.code32
swapmsk.w [%p8 + c], -1, %e4

# CHECK-INST: swapmsk.w [%p8 + c], -1, %e8
# CHECK: encoding: [0x69,0x88,0xbf,0xf4]
.code32
swapmsk.w [%p8 + c], -1, %e8

# CHECK-INST: swapmsk.w [%p8 + c], 0, %e0
# CHECK: encoding: [0x69,0x80,0x80,0x04]
.code32
swapmsk.w [%p8 + c], 0, %e0

# CHECK-INST: swapmsk.w [%p8 + c], 0, %e2
# CHECK: encoding: [0x69,0x82,0x80,0x04]
.code32
swapmsk.w [%p8 + c], 0, %e2

# CHECK-INST: swapmsk.w [%p8 + c], 0, %e4
# CHECK: encoding: [0x69,0x84,0x80,0x04]
.code32
swapmsk.w [%p8 + c], 0, %e4

# CHECK-INST: swapmsk.w [%p8 + c], 0, %e8
# CHECK: encoding: [0x69,0x88,0x80,0x04]
.code32
swapmsk.w [%p8 + c], 0, %e8

# CHECK-INST: swapmsk.w [%p8 + c], 1, %e0
# CHECK: encoding: [0x69,0x80,0x81,0x04]
.code32
swapmsk.w [%p8 + c], 1, %e0

# CHECK-INST: swapmsk.w [%p8 + c], 1, %e2
# CHECK: encoding: [0x69,0x82,0x81,0x04]
.code32
swapmsk.w [%p8 + c], 1, %e2

# CHECK-INST: swapmsk.w [%p8 + c], 1, %e4
# CHECK: encoding: [0x69,0x84,0x81,0x04]
.code32
swapmsk.w [%p8 + c], 1, %e4

# CHECK-INST: swapmsk.w [%p8 + c], 1, %e8
# CHECK: encoding: [0x69,0x88,0x81,0x04]
.code32
swapmsk.w [%p8 + c], 1, %e8

# CHECK-INST: swapmsk.w [%p8 + c], 510, %e0
# CHECK: encoding: [0x69,0x80,0xbe,0x74]
.code32
swapmsk.w [%p8 + c], 510, %e0

# CHECK-INST: swapmsk.w [%p8 + c], 510, %e2
# CHECK: encoding: [0x69,0x82,0xbe,0x74]
.code32
swapmsk.w [%p8 + c], 510, %e2

# CHECK-INST: swapmsk.w [%p8 + c], 510, %e4
# CHECK: encoding: [0x69,0x84,0xbe,0x74]
.code32
swapmsk.w [%p8 + c], 510, %e4

# CHECK-INST: swapmsk.w [%p8 + c], 510, %e8
# CHECK: encoding: [0x69,0x88,0xbe,0x74]
.code32
swapmsk.w [%p8 + c], 510, %e8

# CHECK-INST: swapmsk.w [%p8 + c], 511, %e0
# CHECK: encoding: [0x69,0x80,0xbf,0x74]
.code32
swapmsk.w [%p8 + c], 511, %e0

# CHECK-INST: swapmsk.w [%p8 + c], 511, %e2
# CHECK: encoding: [0x69,0x82,0xbf,0x74]
.code32
swapmsk.w [%p8 + c], 511, %e2

# CHECK-INST: swapmsk.w [%p8 + c], 511, %e4
# CHECK: encoding: [0x69,0x84,0xbf,0x74]
.code32
swapmsk.w [%p8 + c], 511, %e4

# CHECK-INST: swapmsk.w [%p8 + c], 511, %e8
# CHECK: encoding: [0x69,0x88,0xbf,0x74]
.code32
swapmsk.w [%p8 + c], 511, %e8

# CHECK-INST: swapmsk.w [%a0+], -512, %e0
# CHECK: encoding: [0x49,0x00,0x80,0x80]
.code32
swapmsk.w [%a0+], -512, %e0

# CHECK-INST: swapmsk.w [%a0+], -512, %e2
# CHECK: encoding: [0x49,0x02,0x80,0x80]
.code32
swapmsk.w [%a0+], -512, %e2

# CHECK-INST: swapmsk.w [%a0+], -512, %e4
# CHECK: encoding: [0x49,0x04,0x80,0x80]
.code32
swapmsk.w [%a0+], -512, %e4

# CHECK-INST: swapmsk.w [%a0+], -512, %e8
# CHECK: encoding: [0x49,0x08,0x80,0x80]
.code32
swapmsk.w [%a0+], -512, %e8

# CHECK-INST: swapmsk.w [%a0+], -511, %e0
# CHECK: encoding: [0x49,0x00,0x81,0x80]
.code32
swapmsk.w [%a0+], -511, %e0

# CHECK-INST: swapmsk.w [%a0+], -511, %e2
# CHECK: encoding: [0x49,0x02,0x81,0x80]
.code32
swapmsk.w [%a0+], -511, %e2

# CHECK-INST: swapmsk.w [%a0+], -511, %e4
# CHECK: encoding: [0x49,0x04,0x81,0x80]
.code32
swapmsk.w [%a0+], -511, %e4

# CHECK-INST: swapmsk.w [%a0+], -511, %e8
# CHECK: encoding: [0x49,0x08,0x81,0x80]
.code32
swapmsk.w [%a0+], -511, %e8

# CHECK-INST: swapmsk.w [%a0+], -2, %e0
# CHECK: encoding: [0x49,0x00,0xbe,0xf0]
.code32
swapmsk.w [%a0+], -2, %e0

# CHECK-INST: swapmsk.w [%a0+], -2, %e2
# CHECK: encoding: [0x49,0x02,0xbe,0xf0]
.code32
swapmsk.w [%a0+], -2, %e2

# CHECK-INST: swapmsk.w [%a0+], -2, %e4
# CHECK: encoding: [0x49,0x04,0xbe,0xf0]
.code32
swapmsk.w [%a0+], -2, %e4

# CHECK-INST: swapmsk.w [%a0+], -2, %e8
# CHECK: encoding: [0x49,0x08,0xbe,0xf0]
.code32
swapmsk.w [%a0+], -2, %e8

# CHECK-INST: swapmsk.w [%a0+], -1, %e0
# CHECK: encoding: [0x49,0x00,0xbf,0xf0]
.code32
swapmsk.w [%a0+], -1, %e0

# CHECK-INST: swapmsk.w [%a0+], -1, %e2
# CHECK: encoding: [0x49,0x02,0xbf,0xf0]
.code32
swapmsk.w [%a0+], -1, %e2

# CHECK-INST: swapmsk.w [%a0+], -1, %e4
# CHECK: encoding: [0x49,0x04,0xbf,0xf0]
.code32
swapmsk.w [%a0+], -1, %e4

# CHECK-INST: swapmsk.w [%a0+], -1, %e8
# CHECK: encoding: [0x49,0x08,0xbf,0xf0]
.code32
swapmsk.w [%a0+], -1, %e8

# CHECK-INST: swapmsk.w [%a0+], 0, %e0
# CHECK: encoding: [0x49,0x00,0x80,0x00]
.code32
swapmsk.w [%a0+], 0, %e0

# CHECK-INST: swapmsk.w [%a0+], 0, %e2
# CHECK: encoding: [0x49,0x02,0x80,0x00]
.code32
swapmsk.w [%a0+], 0, %e2

# CHECK-INST: swapmsk.w [%a0+], 0, %e4
# CHECK: encoding: [0x49,0x04,0x80,0x00]
.code32
swapmsk.w [%a0+], 0, %e4

# CHECK-INST: swapmsk.w [%a0+], 0, %e8
# CHECK: encoding: [0x49,0x08,0x80,0x00]
.code32
swapmsk.w [%a0+], 0, %e8

# CHECK-INST: swapmsk.w [%a0+], 1, %e0
# CHECK: encoding: [0x49,0x00,0x81,0x00]
.code32
swapmsk.w [%a0+], 1, %e0

# CHECK-INST: swapmsk.w [%a0+], 1, %e2
# CHECK: encoding: [0x49,0x02,0x81,0x00]
.code32
swapmsk.w [%a0+], 1, %e2

# CHECK-INST: swapmsk.w [%a0+], 1, %e4
# CHECK: encoding: [0x49,0x04,0x81,0x00]
.code32
swapmsk.w [%a0+], 1, %e4

# CHECK-INST: swapmsk.w [%a0+], 1, %e8
# CHECK: encoding: [0x49,0x08,0x81,0x00]
.code32
swapmsk.w [%a0+], 1, %e8

# CHECK-INST: swapmsk.w [%a0+], 510, %e0
# CHECK: encoding: [0x49,0x00,0xbe,0x70]
.code32
swapmsk.w [%a0+], 510, %e0

# CHECK-INST: swapmsk.w [%a0+], 510, %e2
# CHECK: encoding: [0x49,0x02,0xbe,0x70]
.code32
swapmsk.w [%a0+], 510, %e2

# CHECK-INST: swapmsk.w [%a0+], 510, %e4
# CHECK: encoding: [0x49,0x04,0xbe,0x70]
.code32
swapmsk.w [%a0+], 510, %e4

# CHECK-INST: swapmsk.w [%a0+], 510, %e8
# CHECK: encoding: [0x49,0x08,0xbe,0x70]
.code32
swapmsk.w [%a0+], 510, %e8

# CHECK-INST: swapmsk.w [%a0+], 511, %e0
# CHECK: encoding: [0x49,0x00,0xbf,0x70]
.code32
swapmsk.w [%a0+], 511, %e0

# CHECK-INST: swapmsk.w [%a0+], 511, %e2
# CHECK: encoding: [0x49,0x02,0xbf,0x70]
.code32
swapmsk.w [%a0+], 511, %e2

# CHECK-INST: swapmsk.w [%a0+], 511, %e4
# CHECK: encoding: [0x49,0x04,0xbf,0x70]
.code32
swapmsk.w [%a0+], 511, %e4

# CHECK-INST: swapmsk.w [%a0+], 511, %e8
# CHECK: encoding: [0x49,0x08,0xbf,0x70]
.code32
swapmsk.w [%a0+], 511, %e8

# CHECK-INST: swapmsk.w [%a1+], -512, %e0
# CHECK: encoding: [0x49,0x10,0x80,0x80]
.code32
swapmsk.w [%a1+], -512, %e0

# CHECK-INST: swapmsk.w [%a1+], -512, %e2
# CHECK: encoding: [0x49,0x12,0x80,0x80]
.code32
swapmsk.w [%a1+], -512, %e2

# CHECK-INST: swapmsk.w [%a1+], -512, %e4
# CHECK: encoding: [0x49,0x14,0x80,0x80]
.code32
swapmsk.w [%a1+], -512, %e4

# CHECK-INST: swapmsk.w [%a1+], -512, %e8
# CHECK: encoding: [0x49,0x18,0x80,0x80]
.code32
swapmsk.w [%a1+], -512, %e8

# CHECK-INST: swapmsk.w [%a1+], -511, %e0
# CHECK: encoding: [0x49,0x10,0x81,0x80]
.code32
swapmsk.w [%a1+], -511, %e0

# CHECK-INST: swapmsk.w [%a1+], -511, %e2
# CHECK: encoding: [0x49,0x12,0x81,0x80]
.code32
swapmsk.w [%a1+], -511, %e2

# CHECK-INST: swapmsk.w [%a1+], -511, %e4
# CHECK: encoding: [0x49,0x14,0x81,0x80]
.code32
swapmsk.w [%a1+], -511, %e4

# CHECK-INST: swapmsk.w [%a1+], -511, %e8
# CHECK: encoding: [0x49,0x18,0x81,0x80]
.code32
swapmsk.w [%a1+], -511, %e8

# CHECK-INST: swapmsk.w [%a1+], -2, %e0
# CHECK: encoding: [0x49,0x10,0xbe,0xf0]
.code32
swapmsk.w [%a1+], -2, %e0

# CHECK-INST: swapmsk.w [%a1+], -2, %e2
# CHECK: encoding: [0x49,0x12,0xbe,0xf0]
.code32
swapmsk.w [%a1+], -2, %e2

# CHECK-INST: swapmsk.w [%a1+], -2, %e4
# CHECK: encoding: [0x49,0x14,0xbe,0xf0]
.code32
swapmsk.w [%a1+], -2, %e4

# CHECK-INST: swapmsk.w [%a1+], -2, %e8
# CHECK: encoding: [0x49,0x18,0xbe,0xf0]
.code32
swapmsk.w [%a1+], -2, %e8

# CHECK-INST: swapmsk.w [%a1+], -1, %e0
# CHECK: encoding: [0x49,0x10,0xbf,0xf0]
.code32
swapmsk.w [%a1+], -1, %e0

# CHECK-INST: swapmsk.w [%a1+], -1, %e2
# CHECK: encoding: [0x49,0x12,0xbf,0xf0]
.code32
swapmsk.w [%a1+], -1, %e2

# CHECK-INST: swapmsk.w [%a1+], -1, %e4
# CHECK: encoding: [0x49,0x14,0xbf,0xf0]
.code32
swapmsk.w [%a1+], -1, %e4

# CHECK-INST: swapmsk.w [%a1+], -1, %e8
# CHECK: encoding: [0x49,0x18,0xbf,0xf0]
.code32
swapmsk.w [%a1+], -1, %e8

# CHECK-INST: swapmsk.w [%a1+], 0, %e0
# CHECK: encoding: [0x49,0x10,0x80,0x00]
.code32
swapmsk.w [%a1+], 0, %e0

# CHECK-INST: swapmsk.w [%a1+], 0, %e2
# CHECK: encoding: [0x49,0x12,0x80,0x00]
.code32
swapmsk.w [%a1+], 0, %e2

# CHECK-INST: swapmsk.w [%a1+], 0, %e4
# CHECK: encoding: [0x49,0x14,0x80,0x00]
.code32
swapmsk.w [%a1+], 0, %e4

# CHECK-INST: swapmsk.w [%a1+], 0, %e8
# CHECK: encoding: [0x49,0x18,0x80,0x00]
.code32
swapmsk.w [%a1+], 0, %e8

# CHECK-INST: swapmsk.w [%a1+], 1, %e0
# CHECK: encoding: [0x49,0x10,0x81,0x00]
.code32
swapmsk.w [%a1+], 1, %e0

# CHECK-INST: swapmsk.w [%a1+], 1, %e2
# CHECK: encoding: [0x49,0x12,0x81,0x00]
.code32
swapmsk.w [%a1+], 1, %e2

# CHECK-INST: swapmsk.w [%a1+], 1, %e4
# CHECK: encoding: [0x49,0x14,0x81,0x00]
.code32
swapmsk.w [%a1+], 1, %e4

# CHECK-INST: swapmsk.w [%a1+], 1, %e8
# CHECK: encoding: [0x49,0x18,0x81,0x00]
.code32
swapmsk.w [%a1+], 1, %e8

# CHECK-INST: swapmsk.w [%a1+], 510, %e0
# CHECK: encoding: [0x49,0x10,0xbe,0x70]
.code32
swapmsk.w [%a1+], 510, %e0

# CHECK-INST: swapmsk.w [%a1+], 510, %e2
# CHECK: encoding: [0x49,0x12,0xbe,0x70]
.code32
swapmsk.w [%a1+], 510, %e2

# CHECK-INST: swapmsk.w [%a1+], 510, %e4
# CHECK: encoding: [0x49,0x14,0xbe,0x70]
.code32
swapmsk.w [%a1+], 510, %e4

# CHECK-INST: swapmsk.w [%a1+], 510, %e8
# CHECK: encoding: [0x49,0x18,0xbe,0x70]
.code32
swapmsk.w [%a1+], 510, %e8

# CHECK-INST: swapmsk.w [%a1+], 511, %e0
# CHECK: encoding: [0x49,0x10,0xbf,0x70]
.code32
swapmsk.w [%a1+], 511, %e0

# CHECK-INST: swapmsk.w [%a1+], 511, %e2
# CHECK: encoding: [0x49,0x12,0xbf,0x70]
.code32
swapmsk.w [%a1+], 511, %e2

# CHECK-INST: swapmsk.w [%a1+], 511, %e4
# CHECK: encoding: [0x49,0x14,0xbf,0x70]
.code32
swapmsk.w [%a1+], 511, %e4

# CHECK-INST: swapmsk.w [%a1+], 511, %e8
# CHECK: encoding: [0x49,0x18,0xbf,0x70]
.code32
swapmsk.w [%a1+], 511, %e8

# CHECK-INST: swapmsk.w [%a14+], -512, %e0
# CHECK: encoding: [0x49,0xe0,0x80,0x80]
.code32
swapmsk.w [%a14+], -512, %e0

# CHECK-INST: swapmsk.w [%a14+], -512, %e2
# CHECK: encoding: [0x49,0xe2,0x80,0x80]
.code32
swapmsk.w [%a14+], -512, %e2

# CHECK-INST: swapmsk.w [%a14+], -512, %e4
# CHECK: encoding: [0x49,0xe4,0x80,0x80]
.code32
swapmsk.w [%a14+], -512, %e4

# CHECK-INST: swapmsk.w [%a14+], -512, %e8
# CHECK: encoding: [0x49,0xe8,0x80,0x80]
.code32
swapmsk.w [%a14+], -512, %e8

# CHECK-INST: swapmsk.w [%a14+], -511, %e0
# CHECK: encoding: [0x49,0xe0,0x81,0x80]
.code32
swapmsk.w [%a14+], -511, %e0

# CHECK-INST: swapmsk.w [%a14+], -511, %e2
# CHECK: encoding: [0x49,0xe2,0x81,0x80]
.code32
swapmsk.w [%a14+], -511, %e2

# CHECK-INST: swapmsk.w [%a14+], -511, %e4
# CHECK: encoding: [0x49,0xe4,0x81,0x80]
.code32
swapmsk.w [%a14+], -511, %e4

# CHECK-INST: swapmsk.w [%a14+], -511, %e8
# CHECK: encoding: [0x49,0xe8,0x81,0x80]
.code32
swapmsk.w [%a14+], -511, %e8

# CHECK-INST: swapmsk.w [%a14+], -2, %e0
# CHECK: encoding: [0x49,0xe0,0xbe,0xf0]
.code32
swapmsk.w [%a14+], -2, %e0

# CHECK-INST: swapmsk.w [%a14+], -2, %e2
# CHECK: encoding: [0x49,0xe2,0xbe,0xf0]
.code32
swapmsk.w [%a14+], -2, %e2

# CHECK-INST: swapmsk.w [%a14+], -2, %e4
# CHECK: encoding: [0x49,0xe4,0xbe,0xf0]
.code32
swapmsk.w [%a14+], -2, %e4

# CHECK-INST: swapmsk.w [%a14+], -2, %e8
# CHECK: encoding: [0x49,0xe8,0xbe,0xf0]
.code32
swapmsk.w [%a14+], -2, %e8

# CHECK-INST: swapmsk.w [%a14+], -1, %e0
# CHECK: encoding: [0x49,0xe0,0xbf,0xf0]
.code32
swapmsk.w [%a14+], -1, %e0

# CHECK-INST: swapmsk.w [%a14+], -1, %e2
# CHECK: encoding: [0x49,0xe2,0xbf,0xf0]
.code32
swapmsk.w [%a14+], -1, %e2

# CHECK-INST: swapmsk.w [%a14+], -1, %e4
# CHECK: encoding: [0x49,0xe4,0xbf,0xf0]
.code32
swapmsk.w [%a14+], -1, %e4

# CHECK-INST: swapmsk.w [%a14+], -1, %e8
# CHECK: encoding: [0x49,0xe8,0xbf,0xf0]
.code32
swapmsk.w [%a14+], -1, %e8

# CHECK-INST: swapmsk.w [%a14+], 0, %e0
# CHECK: encoding: [0x49,0xe0,0x80,0x00]
.code32
swapmsk.w [%a14+], 0, %e0

# CHECK-INST: swapmsk.w [%a14+], 0, %e2
# CHECK: encoding: [0x49,0xe2,0x80,0x00]
.code32
swapmsk.w [%a14+], 0, %e2

# CHECK-INST: swapmsk.w [%a14+], 0, %e4
# CHECK: encoding: [0x49,0xe4,0x80,0x00]
.code32
swapmsk.w [%a14+], 0, %e4

# CHECK-INST: swapmsk.w [%a14+], 0, %e8
# CHECK: encoding: [0x49,0xe8,0x80,0x00]
.code32
swapmsk.w [%a14+], 0, %e8

# CHECK-INST: swapmsk.w [%a14+], 1, %e0
# CHECK: encoding: [0x49,0xe0,0x81,0x00]
.code32
swapmsk.w [%a14+], 1, %e0

# CHECK-INST: swapmsk.w [%a14+], 1, %e2
# CHECK: encoding: [0x49,0xe2,0x81,0x00]
.code32
swapmsk.w [%a14+], 1, %e2

# CHECK-INST: swapmsk.w [%a14+], 1, %e4
# CHECK: encoding: [0x49,0xe4,0x81,0x00]
.code32
swapmsk.w [%a14+], 1, %e4

# CHECK-INST: swapmsk.w [%a14+], 1, %e8
# CHECK: encoding: [0x49,0xe8,0x81,0x00]
.code32
swapmsk.w [%a14+], 1, %e8

# CHECK-INST: swapmsk.w [%a14+], 510, %e0
# CHECK: encoding: [0x49,0xe0,0xbe,0x70]
.code32
swapmsk.w [%a14+], 510, %e0

# CHECK-INST: swapmsk.w [%a14+], 510, %e2
# CHECK: encoding: [0x49,0xe2,0xbe,0x70]
.code32
swapmsk.w [%a14+], 510, %e2

# CHECK-INST: swapmsk.w [%a14+], 510, %e4
# CHECK: encoding: [0x49,0xe4,0xbe,0x70]
.code32
swapmsk.w [%a14+], 510, %e4

# CHECK-INST: swapmsk.w [%a14+], 510, %e8
# CHECK: encoding: [0x49,0xe8,0xbe,0x70]
.code32
swapmsk.w [%a14+], 510, %e8

# CHECK-INST: swapmsk.w [%a14+], 511, %e0
# CHECK: encoding: [0x49,0xe0,0xbf,0x70]
.code32
swapmsk.w [%a14+], 511, %e0

# CHECK-INST: swapmsk.w [%a14+], 511, %e2
# CHECK: encoding: [0x49,0xe2,0xbf,0x70]
.code32
swapmsk.w [%a14+], 511, %e2

# CHECK-INST: swapmsk.w [%a14+], 511, %e4
# CHECK: encoding: [0x49,0xe4,0xbf,0x70]
.code32
swapmsk.w [%a14+], 511, %e4

# CHECK-INST: swapmsk.w [%a14+], 511, %e8
# CHECK: encoding: [0x49,0xe8,0xbf,0x70]
.code32
swapmsk.w [%a14+], 511, %e8

# CHECK-INST: swapmsk.w [%a15+], -512, %e0
# CHECK: encoding: [0x49,0xf0,0x80,0x80]
.code32
swapmsk.w [%a15+], -512, %e0

# CHECK-INST: swapmsk.w [%a15+], -512, %e2
# CHECK: encoding: [0x49,0xf2,0x80,0x80]
.code32
swapmsk.w [%a15+], -512, %e2

# CHECK-INST: swapmsk.w [%a15+], -512, %e4
# CHECK: encoding: [0x49,0xf4,0x80,0x80]
.code32
swapmsk.w [%a15+], -512, %e4

# CHECK-INST: swapmsk.w [%a15+], -512, %e8
# CHECK: encoding: [0x49,0xf8,0x80,0x80]
.code32
swapmsk.w [%a15+], -512, %e8

# CHECK-INST: swapmsk.w [%a15+], -511, %e0
# CHECK: encoding: [0x49,0xf0,0x81,0x80]
.code32
swapmsk.w [%a15+], -511, %e0

# CHECK-INST: swapmsk.w [%a15+], -511, %e2
# CHECK: encoding: [0x49,0xf2,0x81,0x80]
.code32
swapmsk.w [%a15+], -511, %e2

# CHECK-INST: swapmsk.w [%a15+], -511, %e4
# CHECK: encoding: [0x49,0xf4,0x81,0x80]
.code32
swapmsk.w [%a15+], -511, %e4

# CHECK-INST: swapmsk.w [%a15+], -511, %e8
# CHECK: encoding: [0x49,0xf8,0x81,0x80]
.code32
swapmsk.w [%a15+], -511, %e8

# CHECK-INST: swapmsk.w [%a15+], -2, %e0
# CHECK: encoding: [0x49,0xf0,0xbe,0xf0]
.code32
swapmsk.w [%a15+], -2, %e0

# CHECK-INST: swapmsk.w [%a15+], -2, %e2
# CHECK: encoding: [0x49,0xf2,0xbe,0xf0]
.code32
swapmsk.w [%a15+], -2, %e2

# CHECK-INST: swapmsk.w [%a15+], -2, %e4
# CHECK: encoding: [0x49,0xf4,0xbe,0xf0]
.code32
swapmsk.w [%a15+], -2, %e4

# CHECK-INST: swapmsk.w [%a15+], -2, %e8
# CHECK: encoding: [0x49,0xf8,0xbe,0xf0]
.code32
swapmsk.w [%a15+], -2, %e8

# CHECK-INST: swapmsk.w [%a15+], -1, %e0
# CHECK: encoding: [0x49,0xf0,0xbf,0xf0]
.code32
swapmsk.w [%a15+], -1, %e0

# CHECK-INST: swapmsk.w [%a15+], -1, %e2
# CHECK: encoding: [0x49,0xf2,0xbf,0xf0]
.code32
swapmsk.w [%a15+], -1, %e2

# CHECK-INST: swapmsk.w [%a15+], -1, %e4
# CHECK: encoding: [0x49,0xf4,0xbf,0xf0]
.code32
swapmsk.w [%a15+], -1, %e4

# CHECK-INST: swapmsk.w [%a15+], -1, %e8
# CHECK: encoding: [0x49,0xf8,0xbf,0xf0]
.code32
swapmsk.w [%a15+], -1, %e8

# CHECK-INST: swapmsk.w [%a15+], 0, %e0
# CHECK: encoding: [0x49,0xf0,0x80,0x00]
.code32
swapmsk.w [%a15+], 0, %e0

# CHECK-INST: swapmsk.w [%a15+], 0, %e2
# CHECK: encoding: [0x49,0xf2,0x80,0x00]
.code32
swapmsk.w [%a15+], 0, %e2

# CHECK-INST: swapmsk.w [%a15+], 0, %e4
# CHECK: encoding: [0x49,0xf4,0x80,0x00]
.code32
swapmsk.w [%a15+], 0, %e4

# CHECK-INST: swapmsk.w [%a15+], 0, %e8
# CHECK: encoding: [0x49,0xf8,0x80,0x00]
.code32
swapmsk.w [%a15+], 0, %e8

# CHECK-INST: swapmsk.w [%a15+], 1, %e0
# CHECK: encoding: [0x49,0xf0,0x81,0x00]
.code32
swapmsk.w [%a15+], 1, %e0

# CHECK-INST: swapmsk.w [%a15+], 1, %e2
# CHECK: encoding: [0x49,0xf2,0x81,0x00]
.code32
swapmsk.w [%a15+], 1, %e2

# CHECK-INST: swapmsk.w [%a15+], 1, %e4
# CHECK: encoding: [0x49,0xf4,0x81,0x00]
.code32
swapmsk.w [%a15+], 1, %e4

# CHECK-INST: swapmsk.w [%a15+], 1, %e8
# CHECK: encoding: [0x49,0xf8,0x81,0x00]
.code32
swapmsk.w [%a15+], 1, %e8

# CHECK-INST: swapmsk.w [%a15+], 510, %e0
# CHECK: encoding: [0x49,0xf0,0xbe,0x70]
.code32
swapmsk.w [%a15+], 510, %e0

# CHECK-INST: swapmsk.w [%a15+], 510, %e2
# CHECK: encoding: [0x49,0xf2,0xbe,0x70]
.code32
swapmsk.w [%a15+], 510, %e2

# CHECK-INST: swapmsk.w [%a15+], 510, %e4
# CHECK: encoding: [0x49,0xf4,0xbe,0x70]
.code32
swapmsk.w [%a15+], 510, %e4

# CHECK-INST: swapmsk.w [%a15+], 510, %e8
# CHECK: encoding: [0x49,0xf8,0xbe,0x70]
.code32
swapmsk.w [%a15+], 510, %e8

# CHECK-INST: swapmsk.w [%a15+], 511, %e0
# CHECK: encoding: [0x49,0xf0,0xbf,0x70]
.code32
swapmsk.w [%a15+], 511, %e0

# CHECK-INST: swapmsk.w [%a15+], 511, %e2
# CHECK: encoding: [0x49,0xf2,0xbf,0x70]
.code32
swapmsk.w [%a15+], 511, %e2

# CHECK-INST: swapmsk.w [%a15+], 511, %e4
# CHECK: encoding: [0x49,0xf4,0xbf,0x70]
.code32
swapmsk.w [%a15+], 511, %e4

# CHECK-INST: swapmsk.w [%a15+], 511, %e8
# CHECK: encoding: [0x49,0xf8,0xbf,0x70]
.code32
swapmsk.w [%a15+], 511, %e8

# CHECK-INST: swapmsk.w [+%a0], -512, %e0
# CHECK: encoding: [0x49,0x00,0x80,0x84]
.code32
swapmsk.w [+%a0], -512, %e0

# CHECK-INST: swapmsk.w [+%a0], -512, %e2
# CHECK: encoding: [0x49,0x02,0x80,0x84]
.code32
swapmsk.w [+%a0], -512, %e2

# CHECK-INST: swapmsk.w [+%a0], -512, %e4
# CHECK: encoding: [0x49,0x04,0x80,0x84]
.code32
swapmsk.w [+%a0], -512, %e4

# CHECK-INST: swapmsk.w [+%a0], -512, %e8
# CHECK: encoding: [0x49,0x08,0x80,0x84]
.code32
swapmsk.w [+%a0], -512, %e8

# CHECK-INST: swapmsk.w [+%a0], -511, %e0
# CHECK: encoding: [0x49,0x00,0x81,0x84]
.code32
swapmsk.w [+%a0], -511, %e0

# CHECK-INST: swapmsk.w [+%a0], -511, %e2
# CHECK: encoding: [0x49,0x02,0x81,0x84]
.code32
swapmsk.w [+%a0], -511, %e2

# CHECK-INST: swapmsk.w [+%a0], -511, %e4
# CHECK: encoding: [0x49,0x04,0x81,0x84]
.code32
swapmsk.w [+%a0], -511, %e4

# CHECK-INST: swapmsk.w [+%a0], -511, %e8
# CHECK: encoding: [0x49,0x08,0x81,0x84]
.code32
swapmsk.w [+%a0], -511, %e8

# CHECK-INST: swapmsk.w [+%a0], -2, %e0
# CHECK: encoding: [0x49,0x00,0xbe,0xf4]
.code32
swapmsk.w [+%a0], -2, %e0

# CHECK-INST: swapmsk.w [+%a0], -2, %e2
# CHECK: encoding: [0x49,0x02,0xbe,0xf4]
.code32
swapmsk.w [+%a0], -2, %e2

# CHECK-INST: swapmsk.w [+%a0], -2, %e4
# CHECK: encoding: [0x49,0x04,0xbe,0xf4]
.code32
swapmsk.w [+%a0], -2, %e4

# CHECK-INST: swapmsk.w [+%a0], -2, %e8
# CHECK: encoding: [0x49,0x08,0xbe,0xf4]
.code32
swapmsk.w [+%a0], -2, %e8

# CHECK-INST: swapmsk.w [+%a0], -1, %e0
# CHECK: encoding: [0x49,0x00,0xbf,0xf4]
.code32
swapmsk.w [+%a0], -1, %e0

# CHECK-INST: swapmsk.w [+%a0], -1, %e2
# CHECK: encoding: [0x49,0x02,0xbf,0xf4]
.code32
swapmsk.w [+%a0], -1, %e2

# CHECK-INST: swapmsk.w [+%a0], -1, %e4
# CHECK: encoding: [0x49,0x04,0xbf,0xf4]
.code32
swapmsk.w [+%a0], -1, %e4

# CHECK-INST: swapmsk.w [+%a0], -1, %e8
# CHECK: encoding: [0x49,0x08,0xbf,0xf4]
.code32
swapmsk.w [+%a0], -1, %e8

# CHECK-INST: swapmsk.w [+%a0], 0, %e0
# CHECK: encoding: [0x49,0x00,0x80,0x04]
.code32
swapmsk.w [+%a0], 0, %e0

# CHECK-INST: swapmsk.w [+%a0], 0, %e2
# CHECK: encoding: [0x49,0x02,0x80,0x04]
.code32
swapmsk.w [+%a0], 0, %e2

# CHECK-INST: swapmsk.w [+%a0], 0, %e4
# CHECK: encoding: [0x49,0x04,0x80,0x04]
.code32
swapmsk.w [+%a0], 0, %e4

# CHECK-INST: swapmsk.w [+%a0], 0, %e8
# CHECK: encoding: [0x49,0x08,0x80,0x04]
.code32
swapmsk.w [+%a0], 0, %e8

# CHECK-INST: swapmsk.w [+%a0], 1, %e0
# CHECK: encoding: [0x49,0x00,0x81,0x04]
.code32
swapmsk.w [+%a0], 1, %e0

# CHECK-INST: swapmsk.w [+%a0], 1, %e2
# CHECK: encoding: [0x49,0x02,0x81,0x04]
.code32
swapmsk.w [+%a0], 1, %e2

# CHECK-INST: swapmsk.w [+%a0], 1, %e4
# CHECK: encoding: [0x49,0x04,0x81,0x04]
.code32
swapmsk.w [+%a0], 1, %e4

# CHECK-INST: swapmsk.w [+%a0], 1, %e8
# CHECK: encoding: [0x49,0x08,0x81,0x04]
.code32
swapmsk.w [+%a0], 1, %e8

# CHECK-INST: swapmsk.w [+%a0], 510, %e0
# CHECK: encoding: [0x49,0x00,0xbe,0x74]
.code32
swapmsk.w [+%a0], 510, %e0

# CHECK-INST: swapmsk.w [+%a0], 510, %e2
# CHECK: encoding: [0x49,0x02,0xbe,0x74]
.code32
swapmsk.w [+%a0], 510, %e2

# CHECK-INST: swapmsk.w [+%a0], 510, %e4
# CHECK: encoding: [0x49,0x04,0xbe,0x74]
.code32
swapmsk.w [+%a0], 510, %e4

# CHECK-INST: swapmsk.w [+%a0], 510, %e8
# CHECK: encoding: [0x49,0x08,0xbe,0x74]
.code32
swapmsk.w [+%a0], 510, %e8

# CHECK-INST: swapmsk.w [+%a0], 511, %e0
# CHECK: encoding: [0x49,0x00,0xbf,0x74]
.code32
swapmsk.w [+%a0], 511, %e0

# CHECK-INST: swapmsk.w [+%a0], 511, %e2
# CHECK: encoding: [0x49,0x02,0xbf,0x74]
.code32
swapmsk.w [+%a0], 511, %e2

# CHECK-INST: swapmsk.w [+%a0], 511, %e4
# CHECK: encoding: [0x49,0x04,0xbf,0x74]
.code32
swapmsk.w [+%a0], 511, %e4

# CHECK-INST: swapmsk.w [+%a0], 511, %e8
# CHECK: encoding: [0x49,0x08,0xbf,0x74]
.code32
swapmsk.w [+%a0], 511, %e8

# CHECK-INST: swapmsk.w [+%a1], -512, %e0
# CHECK: encoding: [0x49,0x10,0x80,0x84]
.code32
swapmsk.w [+%a1], -512, %e0

# CHECK-INST: swapmsk.w [+%a1], -512, %e2
# CHECK: encoding: [0x49,0x12,0x80,0x84]
.code32
swapmsk.w [+%a1], -512, %e2

# CHECK-INST: swapmsk.w [+%a1], -512, %e4
# CHECK: encoding: [0x49,0x14,0x80,0x84]
.code32
swapmsk.w [+%a1], -512, %e4

# CHECK-INST: swapmsk.w [+%a1], -512, %e8
# CHECK: encoding: [0x49,0x18,0x80,0x84]
.code32
swapmsk.w [+%a1], -512, %e8

# CHECK-INST: swapmsk.w [+%a1], -511, %e0
# CHECK: encoding: [0x49,0x10,0x81,0x84]
.code32
swapmsk.w [+%a1], -511, %e0

# CHECK-INST: swapmsk.w [+%a1], -511, %e2
# CHECK: encoding: [0x49,0x12,0x81,0x84]
.code32
swapmsk.w [+%a1], -511, %e2

# CHECK-INST: swapmsk.w [+%a1], -511, %e4
# CHECK: encoding: [0x49,0x14,0x81,0x84]
.code32
swapmsk.w [+%a1], -511, %e4

# CHECK-INST: swapmsk.w [+%a1], -511, %e8
# CHECK: encoding: [0x49,0x18,0x81,0x84]
.code32
swapmsk.w [+%a1], -511, %e8

# CHECK-INST: swapmsk.w [+%a1], -2, %e0
# CHECK: encoding: [0x49,0x10,0xbe,0xf4]
.code32
swapmsk.w [+%a1], -2, %e0

# CHECK-INST: swapmsk.w [+%a1], -2, %e2
# CHECK: encoding: [0x49,0x12,0xbe,0xf4]
.code32
swapmsk.w [+%a1], -2, %e2

# CHECK-INST: swapmsk.w [+%a1], -2, %e4
# CHECK: encoding: [0x49,0x14,0xbe,0xf4]
.code32
swapmsk.w [+%a1], -2, %e4

# CHECK-INST: swapmsk.w [+%a1], -2, %e8
# CHECK: encoding: [0x49,0x18,0xbe,0xf4]
.code32
swapmsk.w [+%a1], -2, %e8

# CHECK-INST: swapmsk.w [+%a1], -1, %e0
# CHECK: encoding: [0x49,0x10,0xbf,0xf4]
.code32
swapmsk.w [+%a1], -1, %e0

# CHECK-INST: swapmsk.w [+%a1], -1, %e2
# CHECK: encoding: [0x49,0x12,0xbf,0xf4]
.code32
swapmsk.w [+%a1], -1, %e2

# CHECK-INST: swapmsk.w [+%a1], -1, %e4
# CHECK: encoding: [0x49,0x14,0xbf,0xf4]
.code32
swapmsk.w [+%a1], -1, %e4

# CHECK-INST: swapmsk.w [+%a1], -1, %e8
# CHECK: encoding: [0x49,0x18,0xbf,0xf4]
.code32
swapmsk.w [+%a1], -1, %e8

# CHECK-INST: swapmsk.w [+%a1], 0, %e0
# CHECK: encoding: [0x49,0x10,0x80,0x04]
.code32
swapmsk.w [+%a1], 0, %e0

# CHECK-INST: swapmsk.w [+%a1], 0, %e2
# CHECK: encoding: [0x49,0x12,0x80,0x04]
.code32
swapmsk.w [+%a1], 0, %e2

# CHECK-INST: swapmsk.w [+%a1], 0, %e4
# CHECK: encoding: [0x49,0x14,0x80,0x04]
.code32
swapmsk.w [+%a1], 0, %e4

# CHECK-INST: swapmsk.w [+%a1], 0, %e8
# CHECK: encoding: [0x49,0x18,0x80,0x04]
.code32
swapmsk.w [+%a1], 0, %e8

# CHECK-INST: swapmsk.w [+%a1], 1, %e0
# CHECK: encoding: [0x49,0x10,0x81,0x04]
.code32
swapmsk.w [+%a1], 1, %e0

# CHECK-INST: swapmsk.w [+%a1], 1, %e2
# CHECK: encoding: [0x49,0x12,0x81,0x04]
.code32
swapmsk.w [+%a1], 1, %e2

# CHECK-INST: swapmsk.w [+%a1], 1, %e4
# CHECK: encoding: [0x49,0x14,0x81,0x04]
.code32
swapmsk.w [+%a1], 1, %e4

# CHECK-INST: swapmsk.w [+%a1], 1, %e8
# CHECK: encoding: [0x49,0x18,0x81,0x04]
.code32
swapmsk.w [+%a1], 1, %e8

# CHECK-INST: swapmsk.w [+%a1], 510, %e0
# CHECK: encoding: [0x49,0x10,0xbe,0x74]
.code32
swapmsk.w [+%a1], 510, %e0

# CHECK-INST: swapmsk.w [+%a1], 510, %e2
# CHECK: encoding: [0x49,0x12,0xbe,0x74]
.code32
swapmsk.w [+%a1], 510, %e2

# CHECK-INST: swapmsk.w [+%a1], 510, %e4
# CHECK: encoding: [0x49,0x14,0xbe,0x74]
.code32
swapmsk.w [+%a1], 510, %e4

# CHECK-INST: swapmsk.w [+%a1], 510, %e8
# CHECK: encoding: [0x49,0x18,0xbe,0x74]
.code32
swapmsk.w [+%a1], 510, %e8

# CHECK-INST: swapmsk.w [+%a1], 511, %e0
# CHECK: encoding: [0x49,0x10,0xbf,0x74]
.code32
swapmsk.w [+%a1], 511, %e0

# CHECK-INST: swapmsk.w [+%a1], 511, %e2
# CHECK: encoding: [0x49,0x12,0xbf,0x74]
.code32
swapmsk.w [+%a1], 511, %e2

# CHECK-INST: swapmsk.w [+%a1], 511, %e4
# CHECK: encoding: [0x49,0x14,0xbf,0x74]
.code32
swapmsk.w [+%a1], 511, %e4

# CHECK-INST: swapmsk.w [+%a1], 511, %e8
# CHECK: encoding: [0x49,0x18,0xbf,0x74]
.code32
swapmsk.w [+%a1], 511, %e8

# CHECK-INST: swapmsk.w [+%a14], -512, %e0
# CHECK: encoding: [0x49,0xe0,0x80,0x84]
.code32
swapmsk.w [+%a14], -512, %e0

# CHECK-INST: swapmsk.w [+%a14], -512, %e2
# CHECK: encoding: [0x49,0xe2,0x80,0x84]
.code32
swapmsk.w [+%a14], -512, %e2

# CHECK-INST: swapmsk.w [+%a14], -512, %e4
# CHECK: encoding: [0x49,0xe4,0x80,0x84]
.code32
swapmsk.w [+%a14], -512, %e4

# CHECK-INST: swapmsk.w [+%a14], -512, %e8
# CHECK: encoding: [0x49,0xe8,0x80,0x84]
.code32
swapmsk.w [+%a14], -512, %e8

# CHECK-INST: swapmsk.w [+%a14], -511, %e0
# CHECK: encoding: [0x49,0xe0,0x81,0x84]
.code32
swapmsk.w [+%a14], -511, %e0

# CHECK-INST: swapmsk.w [+%a14], -511, %e2
# CHECK: encoding: [0x49,0xe2,0x81,0x84]
.code32
swapmsk.w [+%a14], -511, %e2

# CHECK-INST: swapmsk.w [+%a14], -511, %e4
# CHECK: encoding: [0x49,0xe4,0x81,0x84]
.code32
swapmsk.w [+%a14], -511, %e4

# CHECK-INST: swapmsk.w [+%a14], -511, %e8
# CHECK: encoding: [0x49,0xe8,0x81,0x84]
.code32
swapmsk.w [+%a14], -511, %e8

# CHECK-INST: swapmsk.w [+%a14], -2, %e0
# CHECK: encoding: [0x49,0xe0,0xbe,0xf4]
.code32
swapmsk.w [+%a14], -2, %e0

# CHECK-INST: swapmsk.w [+%a14], -2, %e2
# CHECK: encoding: [0x49,0xe2,0xbe,0xf4]
.code32
swapmsk.w [+%a14], -2, %e2

# CHECK-INST: swapmsk.w [+%a14], -2, %e4
# CHECK: encoding: [0x49,0xe4,0xbe,0xf4]
.code32
swapmsk.w [+%a14], -2, %e4

# CHECK-INST: swapmsk.w [+%a14], -2, %e8
# CHECK: encoding: [0x49,0xe8,0xbe,0xf4]
.code32
swapmsk.w [+%a14], -2, %e8

# CHECK-INST: swapmsk.w [+%a14], -1, %e0
# CHECK: encoding: [0x49,0xe0,0xbf,0xf4]
.code32
swapmsk.w [+%a14], -1, %e0

# CHECK-INST: swapmsk.w [+%a14], -1, %e2
# CHECK: encoding: [0x49,0xe2,0xbf,0xf4]
.code32
swapmsk.w [+%a14], -1, %e2

# CHECK-INST: swapmsk.w [+%a14], -1, %e4
# CHECK: encoding: [0x49,0xe4,0xbf,0xf4]
.code32
swapmsk.w [+%a14], -1, %e4

# CHECK-INST: swapmsk.w [+%a14], -1, %e8
# CHECK: encoding: [0x49,0xe8,0xbf,0xf4]
.code32
swapmsk.w [+%a14], -1, %e8

# CHECK-INST: swapmsk.w [+%a14], 0, %e0
# CHECK: encoding: [0x49,0xe0,0x80,0x04]
.code32
swapmsk.w [+%a14], 0, %e0

# CHECK-INST: swapmsk.w [+%a14], 0, %e2
# CHECK: encoding: [0x49,0xe2,0x80,0x04]
.code32
swapmsk.w [+%a14], 0, %e2

# CHECK-INST: swapmsk.w [+%a14], 0, %e4
# CHECK: encoding: [0x49,0xe4,0x80,0x04]
.code32
swapmsk.w [+%a14], 0, %e4

# CHECK-INST: swapmsk.w [+%a14], 0, %e8
# CHECK: encoding: [0x49,0xe8,0x80,0x04]
.code32
swapmsk.w [+%a14], 0, %e8

# CHECK-INST: swapmsk.w [+%a14], 1, %e0
# CHECK: encoding: [0x49,0xe0,0x81,0x04]
.code32
swapmsk.w [+%a14], 1, %e0

# CHECK-INST: swapmsk.w [+%a14], 1, %e2
# CHECK: encoding: [0x49,0xe2,0x81,0x04]
.code32
swapmsk.w [+%a14], 1, %e2

# CHECK-INST: swapmsk.w [+%a14], 1, %e4
# CHECK: encoding: [0x49,0xe4,0x81,0x04]
.code32
swapmsk.w [+%a14], 1, %e4

# CHECK-INST: swapmsk.w [+%a14], 1, %e8
# CHECK: encoding: [0x49,0xe8,0x81,0x04]
.code32
swapmsk.w [+%a14], 1, %e8

# CHECK-INST: swapmsk.w [+%a14], 510, %e0
# CHECK: encoding: [0x49,0xe0,0xbe,0x74]
.code32
swapmsk.w [+%a14], 510, %e0

# CHECK-INST: swapmsk.w [+%a14], 510, %e2
# CHECK: encoding: [0x49,0xe2,0xbe,0x74]
.code32
swapmsk.w [+%a14], 510, %e2

# CHECK-INST: swapmsk.w [+%a14], 510, %e4
# CHECK: encoding: [0x49,0xe4,0xbe,0x74]
.code32
swapmsk.w [+%a14], 510, %e4

# CHECK-INST: swapmsk.w [+%a14], 510, %e8
# CHECK: encoding: [0x49,0xe8,0xbe,0x74]
.code32
swapmsk.w [+%a14], 510, %e8

# CHECK-INST: swapmsk.w [+%a14], 511, %e0
# CHECK: encoding: [0x49,0xe0,0xbf,0x74]
.code32
swapmsk.w [+%a14], 511, %e0

# CHECK-INST: swapmsk.w [+%a14], 511, %e2
# CHECK: encoding: [0x49,0xe2,0xbf,0x74]
.code32
swapmsk.w [+%a14], 511, %e2

# CHECK-INST: swapmsk.w [+%a14], 511, %e4
# CHECK: encoding: [0x49,0xe4,0xbf,0x74]
.code32
swapmsk.w [+%a14], 511, %e4

# CHECK-INST: swapmsk.w [+%a14], 511, %e8
# CHECK: encoding: [0x49,0xe8,0xbf,0x74]
.code32
swapmsk.w [+%a14], 511, %e8

# CHECK-INST: swapmsk.w [+%a15], -512, %e0
# CHECK: encoding: [0x49,0xf0,0x80,0x84]
.code32
swapmsk.w [+%a15], -512, %e0

# CHECK-INST: swapmsk.w [+%a15], -512, %e2
# CHECK: encoding: [0x49,0xf2,0x80,0x84]
.code32
swapmsk.w [+%a15], -512, %e2

# CHECK-INST: swapmsk.w [+%a15], -512, %e4
# CHECK: encoding: [0x49,0xf4,0x80,0x84]
.code32
swapmsk.w [+%a15], -512, %e4

# CHECK-INST: swapmsk.w [+%a15], -512, %e8
# CHECK: encoding: [0x49,0xf8,0x80,0x84]
.code32
swapmsk.w [+%a15], -512, %e8

# CHECK-INST: swapmsk.w [+%a15], -511, %e0
# CHECK: encoding: [0x49,0xf0,0x81,0x84]
.code32
swapmsk.w [+%a15], -511, %e0

# CHECK-INST: swapmsk.w [+%a15], -511, %e2
# CHECK: encoding: [0x49,0xf2,0x81,0x84]
.code32
swapmsk.w [+%a15], -511, %e2

# CHECK-INST: swapmsk.w [+%a15], -511, %e4
# CHECK: encoding: [0x49,0xf4,0x81,0x84]
.code32
swapmsk.w [+%a15], -511, %e4

# CHECK-INST: swapmsk.w [+%a15], -511, %e8
# CHECK: encoding: [0x49,0xf8,0x81,0x84]
.code32
swapmsk.w [+%a15], -511, %e8

# CHECK-INST: swapmsk.w [+%a15], -2, %e0
# CHECK: encoding: [0x49,0xf0,0xbe,0xf4]
.code32
swapmsk.w [+%a15], -2, %e0

# CHECK-INST: swapmsk.w [+%a15], -2, %e2
# CHECK: encoding: [0x49,0xf2,0xbe,0xf4]
.code32
swapmsk.w [+%a15], -2, %e2

# CHECK-INST: swapmsk.w [+%a15], -2, %e4
# CHECK: encoding: [0x49,0xf4,0xbe,0xf4]
.code32
swapmsk.w [+%a15], -2, %e4

# CHECK-INST: swapmsk.w [+%a15], -2, %e8
# CHECK: encoding: [0x49,0xf8,0xbe,0xf4]
.code32
swapmsk.w [+%a15], -2, %e8

# CHECK-INST: swapmsk.w [+%a15], -1, %e0
# CHECK: encoding: [0x49,0xf0,0xbf,0xf4]
.code32
swapmsk.w [+%a15], -1, %e0

# CHECK-INST: swapmsk.w [+%a15], -1, %e2
# CHECK: encoding: [0x49,0xf2,0xbf,0xf4]
.code32
swapmsk.w [+%a15], -1, %e2

# CHECK-INST: swapmsk.w [+%a15], -1, %e4
# CHECK: encoding: [0x49,0xf4,0xbf,0xf4]
.code32
swapmsk.w [+%a15], -1, %e4

# CHECK-INST: swapmsk.w [+%a15], -1, %e8
# CHECK: encoding: [0x49,0xf8,0xbf,0xf4]
.code32
swapmsk.w [+%a15], -1, %e8

# CHECK-INST: swapmsk.w [+%a15], 0, %e0
# CHECK: encoding: [0x49,0xf0,0x80,0x04]
.code32
swapmsk.w [+%a15], 0, %e0

# CHECK-INST: swapmsk.w [+%a15], 0, %e2
# CHECK: encoding: [0x49,0xf2,0x80,0x04]
.code32
swapmsk.w [+%a15], 0, %e2

# CHECK-INST: swapmsk.w [+%a15], 0, %e4
# CHECK: encoding: [0x49,0xf4,0x80,0x04]
.code32
swapmsk.w [+%a15], 0, %e4

# CHECK-INST: swapmsk.w [+%a15], 0, %e8
# CHECK: encoding: [0x49,0xf8,0x80,0x04]
.code32
swapmsk.w [+%a15], 0, %e8

# CHECK-INST: swapmsk.w [+%a15], 1, %e0
# CHECK: encoding: [0x49,0xf0,0x81,0x04]
.code32
swapmsk.w [+%a15], 1, %e0

# CHECK-INST: swapmsk.w [+%a15], 1, %e2
# CHECK: encoding: [0x49,0xf2,0x81,0x04]
.code32
swapmsk.w [+%a15], 1, %e2

# CHECK-INST: swapmsk.w [+%a15], 1, %e4
# CHECK: encoding: [0x49,0xf4,0x81,0x04]
.code32
swapmsk.w [+%a15], 1, %e4

# CHECK-INST: swapmsk.w [+%a15], 1, %e8
# CHECK: encoding: [0x49,0xf8,0x81,0x04]
.code32
swapmsk.w [+%a15], 1, %e8

# CHECK-INST: swapmsk.w [+%a15], 510, %e0
# CHECK: encoding: [0x49,0xf0,0xbe,0x74]
.code32
swapmsk.w [+%a15], 510, %e0

# CHECK-INST: swapmsk.w [+%a15], 510, %e2
# CHECK: encoding: [0x49,0xf2,0xbe,0x74]
.code32
swapmsk.w [+%a15], 510, %e2

# CHECK-INST: swapmsk.w [+%a15], 510, %e4
# CHECK: encoding: [0x49,0xf4,0xbe,0x74]
.code32
swapmsk.w [+%a15], 510, %e4

# CHECK-INST: swapmsk.w [+%a15], 510, %e8
# CHECK: encoding: [0x49,0xf8,0xbe,0x74]
.code32
swapmsk.w [+%a15], 510, %e8

# CHECK-INST: swapmsk.w [+%a15], 511, %e0
# CHECK: encoding: [0x49,0xf0,0xbf,0x74]
.code32
swapmsk.w [+%a15], 511, %e0

# CHECK-INST: swapmsk.w [+%a15], 511, %e2
# CHECK: encoding: [0x49,0xf2,0xbf,0x74]
.code32
swapmsk.w [+%a15], 511, %e2

# CHECK-INST: swapmsk.w [+%a15], 511, %e4
# CHECK: encoding: [0x49,0xf4,0xbf,0x74]
.code32
swapmsk.w [+%a15], 511, %e4

# CHECK-INST: swapmsk.w [+%a15], 511, %e8
# CHECK: encoding: [0x49,0xf8,0xbf,0x74]
.code32
swapmsk.w [+%a15], 511, %e8

# CHECK-INST: swap.w 1, %d0
# CHECK: encoding: [0xe5,0x00,0x01,0x00]
.code32
swap.w 1, %d0

# CHECK-INST: swap.w 1, %d1
# CHECK: encoding: [0xe5,0x01,0x01,0x00]
.code32
swap.w 1, %d1

# CHECK-INST: swap.w 1, %d14
# CHECK: encoding: [0xe5,0x0e,0x01,0x00]
.code32
swap.w 1, %d14

# CHECK-INST: swap.w 1, %d15
# CHECK: encoding: [0xe5,0x0f,0x01,0x00]
.code32
swap.w 1, %d15

# CHECK-INST: swap.w 2, %d0
# CHECK: encoding: [0xe5,0x00,0x02,0x00]
.code32
swap.w 2, %d0

# CHECK-INST: swap.w 2, %d1
# CHECK: encoding: [0xe5,0x01,0x02,0x00]
.code32
swap.w 2, %d1

# CHECK-INST: swap.w 2, %d14
# CHECK: encoding: [0xe5,0x0e,0x02,0x00]
.code32
swap.w 2, %d14

# CHECK-INST: swap.w 2, %d15
# CHECK: encoding: [0xe5,0x0f,0x02,0x00]
.code32
swap.w 2, %d15

# CHECK-INST: swap.w 4, %d0
# CHECK: encoding: [0xe5,0x00,0x04,0x00]
.code32
swap.w 4, %d0

# CHECK-INST: swap.w 4, %d1
# CHECK: encoding: [0xe5,0x01,0x04,0x00]
.code32
swap.w 4, %d1

# CHECK-INST: swap.w 4, %d14
# CHECK: encoding: [0xe5,0x0e,0x04,0x00]
.code32
swap.w 4, %d14

# CHECK-INST: swap.w 4, %d15
# CHECK: encoding: [0xe5,0x0f,0x04,0x00]
.code32
swap.w 4, %d15

# CHECK-INST: swap.w 8, %d0
# CHECK: encoding: [0xe5,0x00,0x08,0x00]
.code32
swap.w 8, %d0

# CHECK-INST: swap.w 8, %d1
# CHECK: encoding: [0xe5,0x01,0x08,0x00]
.code32
swap.w 8, %d1

# CHECK-INST: swap.w 8, %d14
# CHECK: encoding: [0xe5,0x0e,0x08,0x00]
.code32
swap.w 8, %d14

# CHECK-INST: swap.w 8, %d15
# CHECK: encoding: [0xe5,0x0f,0x08,0x00]
.code32
swap.w 8, %d15

# CHECK-INST: swap.w 16, %d0
# CHECK: encoding: [0xe5,0x00,0x10,0x00]
.code32
swap.w 16, %d0

# CHECK-INST: swap.w 16, %d1
# CHECK: encoding: [0xe5,0x01,0x10,0x00]
.code32
swap.w 16, %d1

# CHECK-INST: swap.w 16, %d14
# CHECK: encoding: [0xe5,0x0e,0x10,0x00]
.code32
swap.w 16, %d14

# CHECK-INST: swap.w 16, %d15
# CHECK: encoding: [0xe5,0x0f,0x10,0x00]
.code32
swap.w 16, %d15

# CHECK-INST: swap.w 32, %d0
# CHECK: encoding: [0xe5,0x00,0x20,0x00]
.code32
swap.w 32, %d0

# CHECK-INST: swap.w 32, %d1
# CHECK: encoding: [0xe5,0x01,0x20,0x00]
.code32
swap.w 32, %d1

# CHECK-INST: swap.w 32, %d14
# CHECK: encoding: [0xe5,0x0e,0x20,0x00]
.code32
swap.w 32, %d14

# CHECK-INST: swap.w 32, %d15
# CHECK: encoding: [0xe5,0x0f,0x20,0x00]
.code32
swap.w 32, %d15

# CHECK-INST: swap.w 64, %d0
# CHECK: encoding: [0xe5,0x00,0x00,0x10]
.code32
swap.w 64, %d0

# CHECK-INST: swap.w 64, %d1
# CHECK: encoding: [0xe5,0x01,0x00,0x10]
.code32
swap.w 64, %d1

# CHECK-INST: swap.w 64, %d14
# CHECK: encoding: [0xe5,0x0e,0x00,0x10]
.code32
swap.w 64, %d14

# CHECK-INST: swap.w 64, %d15
# CHECK: encoding: [0xe5,0x0f,0x00,0x10]
.code32
swap.w 64, %d15

# CHECK-INST: swap.w 128, %d0
# CHECK: encoding: [0xe5,0x00,0x00,0x20]
.code32
swap.w 128, %d0

# CHECK-INST: swap.w 128, %d1
# CHECK: encoding: [0xe5,0x01,0x00,0x20]
.code32
swap.w 128, %d1

# CHECK-INST: swap.w 128, %d14
# CHECK: encoding: [0xe5,0x0e,0x00,0x20]
.code32
swap.w 128, %d14

# CHECK-INST: swap.w 128, %d15
# CHECK: encoding: [0xe5,0x0f,0x00,0x20]
.code32
swap.w 128, %d15

# CHECK-INST: swap.w 256, %d0
# CHECK: encoding: [0xe5,0x00,0x00,0x40]
.code32
swap.w 256, %d0

# CHECK-INST: swap.w 256, %d1
# CHECK: encoding: [0xe5,0x01,0x00,0x40]
.code32
swap.w 256, %d1

# CHECK-INST: swap.w 256, %d14
# CHECK: encoding: [0xe5,0x0e,0x00,0x40]
.code32
swap.w 256, %d14

# CHECK-INST: swap.w 256, %d15
# CHECK: encoding: [0xe5,0x0f,0x00,0x40]
.code32
swap.w 256, %d15

# CHECK-INST: swap.w 512, %d0
# CHECK: encoding: [0xe5,0x00,0x00,0x80]
.code32
swap.w 512, %d0

# CHECK-INST: swap.w 512, %d1
# CHECK: encoding: [0xe5,0x01,0x00,0x80]
.code32
swap.w 512, %d1

# CHECK-INST: swap.w 512, %d14
# CHECK: encoding: [0xe5,0x0e,0x00,0x80]
.code32
swap.w 512, %d14

# CHECK-INST: swap.w 512, %d15
# CHECK: encoding: [0xe5,0x0f,0x00,0x80]
.code32
swap.w 512, %d15

# CHECK-INST: swap.w 1024, %d0
# CHECK: encoding: [0xe5,0x00,0x40,0x00]
.code32
swap.w 1024, %d0

# CHECK-INST: swap.w 1024, %d1
# CHECK: encoding: [0xe5,0x01,0x40,0x00]
.code32
swap.w 1024, %d1

# CHECK-INST: swap.w 1024, %d14
# CHECK: encoding: [0xe5,0x0e,0x40,0x00]
.code32
swap.w 1024, %d14

# CHECK-INST: swap.w 1024, %d15
# CHECK: encoding: [0xe5,0x0f,0x40,0x00]
.code32
swap.w 1024, %d15

# CHECK-INST: swap.w 2048, %d0
# CHECK: encoding: [0xe5,0x00,0x80,0x00]
.code32
swap.w 2048, %d0

# CHECK-INST: swap.w 2048, %d1
# CHECK: encoding: [0xe5,0x01,0x80,0x00]
.code32
swap.w 2048, %d1

# CHECK-INST: swap.w 2048, %d14
# CHECK: encoding: [0xe5,0x0e,0x80,0x00]
.code32
swap.w 2048, %d14

# CHECK-INST: swap.w 2048, %d15
# CHECK: encoding: [0xe5,0x0f,0x80,0x00]
.code32
swap.w 2048, %d15

# CHECK-INST: swap.w 4096, %d0
# CHECK: encoding: [0xe5,0x00,0x00,0x01]
.code32
swap.w 4096, %d0

# CHECK-INST: swap.w 4096, %d1
# CHECK: encoding: [0xe5,0x01,0x00,0x01]
.code32
swap.w 4096, %d1

# CHECK-INST: swap.w 4096, %d14
# CHECK: encoding: [0xe5,0x0e,0x00,0x01]
.code32
swap.w 4096, %d14

# CHECK-INST: swap.w 4096, %d15
# CHECK: encoding: [0xe5,0x0f,0x00,0x01]
.code32
swap.w 4096, %d15

# CHECK-INST: swap.w 8192, %d0
# CHECK: encoding: [0xe5,0x00,0x00,0x02]
.code32
swap.w 8192, %d0

# CHECK-INST: swap.w 8192, %d1
# CHECK: encoding: [0xe5,0x01,0x00,0x02]
.code32
swap.w 8192, %d1

# CHECK-INST: swap.w 8192, %d14
# CHECK: encoding: [0xe5,0x0e,0x00,0x02]
.code32
swap.w 8192, %d14

# CHECK-INST: swap.w 8192, %d15
# CHECK: encoding: [0xe5,0x0f,0x00,0x02]
.code32
swap.w 8192, %d15

# CHECK-INST: swap.w 268435456, %d0
# CHECK: encoding: [0xe5,0x10,0x00,0x00]
.code32
swap.w 268435456, %d0

# CHECK-INST: swap.w 268435456, %d1
# CHECK: encoding: [0xe5,0x11,0x00,0x00]
.code32
swap.w 268435456, %d1

# CHECK-INST: swap.w 268435456, %d14
# CHECK: encoding: [0xe5,0x1e,0x00,0x00]
.code32
swap.w 268435456, %d14

# CHECK-INST: swap.w 268435456, %d15
# CHECK: encoding: [0xe5,0x1f,0x00,0x00]
.code32
swap.w 268435456, %d15

# CHECK-INST: swap.w 536870912, %d0
# CHECK: encoding: [0xe5,0x20,0x00,0x00]
.code32
swap.w 536870912, %d0

# CHECK-INST: swap.w 536870912, %d1
# CHECK: encoding: [0xe5,0x21,0x00,0x00]
.code32
swap.w 536870912, %d1

# CHECK-INST: swap.w 536870912, %d14
# CHECK: encoding: [0xe5,0x2e,0x00,0x00]
.code32
swap.w 536870912, %d14

# CHECK-INST: swap.w 536870912, %d15
# CHECK: encoding: [0xe5,0x2f,0x00,0x00]
.code32
swap.w 536870912, %d15

# CHECK-INST: swap.w 1073741824, %d0
# CHECK: encoding: [0xe5,0x40,0x00,0x00]
.code32
swap.w 1073741824, %d0

# CHECK-INST: swap.w 1073741824, %d1
# CHECK: encoding: [0xe5,0x41,0x00,0x00]
.code32
swap.w 1073741824, %d1

# CHECK-INST: swap.w 1073741824, %d14
# CHECK: encoding: [0xe5,0x4e,0x00,0x00]
.code32
swap.w 1073741824, %d14

# CHECK-INST: swap.w 1073741824, %d15
# CHECK: encoding: [0xe5,0x4f,0x00,0x00]
.code32
swap.w 1073741824, %d15

# CHECK-INST: swap.w 2147483648, %d0
# CHECK: encoding: [0xe5,0x80,0x00,0x00]
.code32
swap.w 2147483648, %d0

# CHECK-INST: swap.w 2147483648, %d1
# CHECK: encoding: [0xe5,0x81,0x00,0x00]
.code32
swap.w 2147483648, %d1

# CHECK-INST: swap.w 2147483648, %d14
# CHECK: encoding: [0xe5,0x8e,0x00,0x00]
.code32
swap.w 2147483648, %d14

# CHECK-INST: swap.w 2147483648, %d15
# CHECK: encoding: [0xe5,0x8f,0x00,0x00]
.code32
swap.w 2147483648, %d15

# CHECK-INST: swap.w 4026548223, %d0
# CHECK: encoding: [0xe5,0xf0,0xff,0xf3]
.code32
swap.w 4026548223, %d0

# CHECK-INST: swap.w 4026548223, %d1
# CHECK: encoding: [0xe5,0xf1,0xff,0xf3]
.code32
swap.w 4026548223, %d1

# CHECK-INST: swap.w 4026548223, %d14
# CHECK: encoding: [0xe5,0xfe,0xff,0xf3]
.code32
swap.w 4026548223, %d14

# CHECK-INST: swap.w 4026548223, %d15
# CHECK: encoding: [0xe5,0xff,0xff,0xf3]
.code32
swap.w 4026548223, %d15

# CHECK-INST: swap.w [%a0], -512, %d0
# CHECK: encoding: [0x49,0x00,0x00,0x88]
.code32
swap.w [%a0], -512, %d0

# CHECK-INST: swap.w [%a0], -512, %d1
# CHECK: encoding: [0x49,0x01,0x00,0x88]
.code32
swap.w [%a0], -512, %d1

# CHECK-INST: swap.w [%a0], -512, %d14
# CHECK: encoding: [0x49,0x0e,0x00,0x88]
.code32
swap.w [%a0], -512, %d14

# CHECK-INST: swap.w [%a0], -512, %d15
# CHECK: encoding: [0x49,0x0f,0x00,0x88]
.code32
swap.w [%a0], -512, %d15

# CHECK-INST: swap.w [%a0], -511, %d0
# CHECK: encoding: [0x49,0x00,0x01,0x88]
.code32
swap.w [%a0], -511, %d0

# CHECK-INST: swap.w [%a0], -511, %d1
# CHECK: encoding: [0x49,0x01,0x01,0x88]
.code32
swap.w [%a0], -511, %d1

# CHECK-INST: swap.w [%a0], -511, %d14
# CHECK: encoding: [0x49,0x0e,0x01,0x88]
.code32
swap.w [%a0], -511, %d14

# CHECK-INST: swap.w [%a0], -511, %d15
# CHECK: encoding: [0x49,0x0f,0x01,0x88]
.code32
swap.w [%a0], -511, %d15

# CHECK-INST: swap.w [%a0], -2, %d0
# CHECK: encoding: [0x49,0x00,0x3e,0xf8]
.code32
swap.w [%a0], -2, %d0

# CHECK-INST: swap.w [%a0], -2, %d1
# CHECK: encoding: [0x49,0x01,0x3e,0xf8]
.code32
swap.w [%a0], -2, %d1

# CHECK-INST: swap.w [%a0], -2, %d14
# CHECK: encoding: [0x49,0x0e,0x3e,0xf8]
.code32
swap.w [%a0], -2, %d14

# CHECK-INST: swap.w [%a0], -2, %d15
# CHECK: encoding: [0x49,0x0f,0x3e,0xf8]
.code32
swap.w [%a0], -2, %d15

# CHECK-INST: swap.w [%a0], -1, %d0
# CHECK: encoding: [0x49,0x00,0x3f,0xf8]
.code32
swap.w [%a0], -1, %d0

# CHECK-INST: swap.w [%a0], -1, %d1
# CHECK: encoding: [0x49,0x01,0x3f,0xf8]
.code32
swap.w [%a0], -1, %d1

# CHECK-INST: swap.w [%a0], -1, %d14
# CHECK: encoding: [0x49,0x0e,0x3f,0xf8]
.code32
swap.w [%a0], -1, %d14

# CHECK-INST: swap.w [%a0], -1, %d15
# CHECK: encoding: [0x49,0x0f,0x3f,0xf8]
.code32
swap.w [%a0], -1, %d15

# CHECK-INST: swap.w [%a0], 0, %d0
# CHECK: encoding: [0x49,0x00,0x00,0x08]
.code32
swap.w [%a0], 0, %d0

# CHECK-INST: swap.w [%a0], 0, %d1
# CHECK: encoding: [0x49,0x01,0x00,0x08]
.code32
swap.w [%a0], 0, %d1

# CHECK-INST: swap.w [%a0], 0, %d14
# CHECK: encoding: [0x49,0x0e,0x00,0x08]
.code32
swap.w [%a0], 0, %d14

# CHECK-INST: swap.w [%a0], 0, %d15
# CHECK: encoding: [0x49,0x0f,0x00,0x08]
.code32
swap.w [%a0], 0, %d15

# CHECK-INST: swap.w [%a0], 1, %d0
# CHECK: encoding: [0x49,0x00,0x01,0x08]
.code32
swap.w [%a0], 1, %d0

# CHECK-INST: swap.w [%a0], 1, %d1
# CHECK: encoding: [0x49,0x01,0x01,0x08]
.code32
swap.w [%a0], 1, %d1

# CHECK-INST: swap.w [%a0], 1, %d14
# CHECK: encoding: [0x49,0x0e,0x01,0x08]
.code32
swap.w [%a0], 1, %d14

# CHECK-INST: swap.w [%a0], 1, %d15
# CHECK: encoding: [0x49,0x0f,0x01,0x08]
.code32
swap.w [%a0], 1, %d15

# CHECK-INST: swap.w [%a0], 510, %d0
# CHECK: encoding: [0x49,0x00,0x3e,0x78]
.code32
swap.w [%a0], 510, %d0

# CHECK-INST: swap.w [%a0], 510, %d1
# CHECK: encoding: [0x49,0x01,0x3e,0x78]
.code32
swap.w [%a0], 510, %d1

# CHECK-INST: swap.w [%a0], 510, %d14
# CHECK: encoding: [0x49,0x0e,0x3e,0x78]
.code32
swap.w [%a0], 510, %d14

# CHECK-INST: swap.w [%a0], 510, %d15
# CHECK: encoding: [0x49,0x0f,0x3e,0x78]
.code32
swap.w [%a0], 510, %d15

# CHECK-INST: swap.w [%a0], 511, %d0
# CHECK: encoding: [0x49,0x00,0x3f,0x78]
.code32
swap.w [%a0], 511, %d0

# CHECK-INST: swap.w [%a0], 511, %d1
# CHECK: encoding: [0x49,0x01,0x3f,0x78]
.code32
swap.w [%a0], 511, %d1

# CHECK-INST: swap.w [%a0], 511, %d14
# CHECK: encoding: [0x49,0x0e,0x3f,0x78]
.code32
swap.w [%a0], 511, %d14

# CHECK-INST: swap.w [%a0], 511, %d15
# CHECK: encoding: [0x49,0x0f,0x3f,0x78]
.code32
swap.w [%a0], 511, %d15

# CHECK-INST: swap.w [%a1], -512, %d0
# CHECK: encoding: [0x49,0x10,0x00,0x88]
.code32
swap.w [%a1], -512, %d0

# CHECK-INST: swap.w [%a1], -512, %d1
# CHECK: encoding: [0x49,0x11,0x00,0x88]
.code32
swap.w [%a1], -512, %d1

# CHECK-INST: swap.w [%a1], -512, %d14
# CHECK: encoding: [0x49,0x1e,0x00,0x88]
.code32
swap.w [%a1], -512, %d14

# CHECK-INST: swap.w [%a1], -512, %d15
# CHECK: encoding: [0x49,0x1f,0x00,0x88]
.code32
swap.w [%a1], -512, %d15

# CHECK-INST: swap.w [%a1], -511, %d0
# CHECK: encoding: [0x49,0x10,0x01,0x88]
.code32
swap.w [%a1], -511, %d0

# CHECK-INST: swap.w [%a1], -511, %d1
# CHECK: encoding: [0x49,0x11,0x01,0x88]
.code32
swap.w [%a1], -511, %d1

# CHECK-INST: swap.w [%a1], -511, %d14
# CHECK: encoding: [0x49,0x1e,0x01,0x88]
.code32
swap.w [%a1], -511, %d14

# CHECK-INST: swap.w [%a1], -511, %d15
# CHECK: encoding: [0x49,0x1f,0x01,0x88]
.code32
swap.w [%a1], -511, %d15

# CHECK-INST: swap.w [%a1], -2, %d0
# CHECK: encoding: [0x49,0x10,0x3e,0xf8]
.code32
swap.w [%a1], -2, %d0

# CHECK-INST: swap.w [%a1], -2, %d1
# CHECK: encoding: [0x49,0x11,0x3e,0xf8]
.code32
swap.w [%a1], -2, %d1

# CHECK-INST: swap.w [%a1], -2, %d14
# CHECK: encoding: [0x49,0x1e,0x3e,0xf8]
.code32
swap.w [%a1], -2, %d14

# CHECK-INST: swap.w [%a1], -2, %d15
# CHECK: encoding: [0x49,0x1f,0x3e,0xf8]
.code32
swap.w [%a1], -2, %d15

# CHECK-INST: swap.w [%a1], -1, %d0
# CHECK: encoding: [0x49,0x10,0x3f,0xf8]
.code32
swap.w [%a1], -1, %d0

# CHECK-INST: swap.w [%a1], -1, %d1
# CHECK: encoding: [0x49,0x11,0x3f,0xf8]
.code32
swap.w [%a1], -1, %d1

# CHECK-INST: swap.w [%a1], -1, %d14
# CHECK: encoding: [0x49,0x1e,0x3f,0xf8]
.code32
swap.w [%a1], -1, %d14

# CHECK-INST: swap.w [%a1], -1, %d15
# CHECK: encoding: [0x49,0x1f,0x3f,0xf8]
.code32
swap.w [%a1], -1, %d15

# CHECK-INST: swap.w [%a1], 0, %d0
# CHECK: encoding: [0x49,0x10,0x00,0x08]
.code32
swap.w [%a1], 0, %d0

# CHECK-INST: swap.w [%a1], 0, %d1
# CHECK: encoding: [0x49,0x11,0x00,0x08]
.code32
swap.w [%a1], 0, %d1

# CHECK-INST: swap.w [%a1], 0, %d14
# CHECK: encoding: [0x49,0x1e,0x00,0x08]
.code32
swap.w [%a1], 0, %d14

# CHECK-INST: swap.w [%a1], 0, %d15
# CHECK: encoding: [0x49,0x1f,0x00,0x08]
.code32
swap.w [%a1], 0, %d15

# CHECK-INST: swap.w [%a1], 1, %d0
# CHECK: encoding: [0x49,0x10,0x01,0x08]
.code32
swap.w [%a1], 1, %d0

# CHECK-INST: swap.w [%a1], 1, %d1
# CHECK: encoding: [0x49,0x11,0x01,0x08]
.code32
swap.w [%a1], 1, %d1

# CHECK-INST: swap.w [%a1], 1, %d14
# CHECK: encoding: [0x49,0x1e,0x01,0x08]
.code32
swap.w [%a1], 1, %d14

# CHECK-INST: swap.w [%a1], 1, %d15
# CHECK: encoding: [0x49,0x1f,0x01,0x08]
.code32
swap.w [%a1], 1, %d15

# CHECK-INST: swap.w [%a1], 510, %d0
# CHECK: encoding: [0x49,0x10,0x3e,0x78]
.code32
swap.w [%a1], 510, %d0

# CHECK-INST: swap.w [%a1], 510, %d1
# CHECK: encoding: [0x49,0x11,0x3e,0x78]
.code32
swap.w [%a1], 510, %d1

# CHECK-INST: swap.w [%a1], 510, %d14
# CHECK: encoding: [0x49,0x1e,0x3e,0x78]
.code32
swap.w [%a1], 510, %d14

# CHECK-INST: swap.w [%a1], 510, %d15
# CHECK: encoding: [0x49,0x1f,0x3e,0x78]
.code32
swap.w [%a1], 510, %d15

# CHECK-INST: swap.w [%a1], 511, %d0
# CHECK: encoding: [0x49,0x10,0x3f,0x78]
.code32
swap.w [%a1], 511, %d0

# CHECK-INST: swap.w [%a1], 511, %d1
# CHECK: encoding: [0x49,0x11,0x3f,0x78]
.code32
swap.w [%a1], 511, %d1

# CHECK-INST: swap.w [%a1], 511, %d14
# CHECK: encoding: [0x49,0x1e,0x3f,0x78]
.code32
swap.w [%a1], 511, %d14

# CHECK-INST: swap.w [%a1], 511, %d15
# CHECK: encoding: [0x49,0x1f,0x3f,0x78]
.code32
swap.w [%a1], 511, %d15

# CHECK-INST: swap.w [%a14], -512, %d0
# CHECK: encoding: [0x49,0xe0,0x00,0x88]
.code32
swap.w [%a14], -512, %d0

# CHECK-INST: swap.w [%a14], -512, %d1
# CHECK: encoding: [0x49,0xe1,0x00,0x88]
.code32
swap.w [%a14], -512, %d1

# CHECK-INST: swap.w [%a14], -512, %d14
# CHECK: encoding: [0x49,0xee,0x00,0x88]
.code32
swap.w [%a14], -512, %d14

# CHECK-INST: swap.w [%a14], -512, %d15
# CHECK: encoding: [0x49,0xef,0x00,0x88]
.code32
swap.w [%a14], -512, %d15

# CHECK-INST: swap.w [%a14], -511, %d0
# CHECK: encoding: [0x49,0xe0,0x01,0x88]
.code32
swap.w [%a14], -511, %d0

# CHECK-INST: swap.w [%a14], -511, %d1
# CHECK: encoding: [0x49,0xe1,0x01,0x88]
.code32
swap.w [%a14], -511, %d1

# CHECK-INST: swap.w [%a14], -511, %d14
# CHECK: encoding: [0x49,0xee,0x01,0x88]
.code32
swap.w [%a14], -511, %d14

# CHECK-INST: swap.w [%a14], -511, %d15
# CHECK: encoding: [0x49,0xef,0x01,0x88]
.code32
swap.w [%a14], -511, %d15

# CHECK-INST: swap.w [%a14], -2, %d0
# CHECK: encoding: [0x49,0xe0,0x3e,0xf8]
.code32
swap.w [%a14], -2, %d0

# CHECK-INST: swap.w [%a14], -2, %d1
# CHECK: encoding: [0x49,0xe1,0x3e,0xf8]
.code32
swap.w [%a14], -2, %d1

# CHECK-INST: swap.w [%a14], -2, %d14
# CHECK: encoding: [0x49,0xee,0x3e,0xf8]
.code32
swap.w [%a14], -2, %d14

# CHECK-INST: swap.w [%a14], -2, %d15
# CHECK: encoding: [0x49,0xef,0x3e,0xf8]
.code32
swap.w [%a14], -2, %d15

# CHECK-INST: swap.w [%a14], -1, %d0
# CHECK: encoding: [0x49,0xe0,0x3f,0xf8]
.code32
swap.w [%a14], -1, %d0

# CHECK-INST: swap.w [%a14], -1, %d1
# CHECK: encoding: [0x49,0xe1,0x3f,0xf8]
.code32
swap.w [%a14], -1, %d1

# CHECK-INST: swap.w [%a14], -1, %d14
# CHECK: encoding: [0x49,0xee,0x3f,0xf8]
.code32
swap.w [%a14], -1, %d14

# CHECK-INST: swap.w [%a14], -1, %d15
# CHECK: encoding: [0x49,0xef,0x3f,0xf8]
.code32
swap.w [%a14], -1, %d15

# CHECK-INST: swap.w [%a14], 0, %d0
# CHECK: encoding: [0x49,0xe0,0x00,0x08]
.code32
swap.w [%a14], 0, %d0

# CHECK-INST: swap.w [%a14], 0, %d1
# CHECK: encoding: [0x49,0xe1,0x00,0x08]
.code32
swap.w [%a14], 0, %d1

# CHECK-INST: swap.w [%a14], 0, %d14
# CHECK: encoding: [0x49,0xee,0x00,0x08]
.code32
swap.w [%a14], 0, %d14

# CHECK-INST: swap.w [%a14], 0, %d15
# CHECK: encoding: [0x49,0xef,0x00,0x08]
.code32
swap.w [%a14], 0, %d15

# CHECK-INST: swap.w [%a14], 1, %d0
# CHECK: encoding: [0x49,0xe0,0x01,0x08]
.code32
swap.w [%a14], 1, %d0

# CHECK-INST: swap.w [%a14], 1, %d1
# CHECK: encoding: [0x49,0xe1,0x01,0x08]
.code32
swap.w [%a14], 1, %d1

# CHECK-INST: swap.w [%a14], 1, %d14
# CHECK: encoding: [0x49,0xee,0x01,0x08]
.code32
swap.w [%a14], 1, %d14

# CHECK-INST: swap.w [%a14], 1, %d15
# CHECK: encoding: [0x49,0xef,0x01,0x08]
.code32
swap.w [%a14], 1, %d15

# CHECK-INST: swap.w [%a14], 510, %d0
# CHECK: encoding: [0x49,0xe0,0x3e,0x78]
.code32
swap.w [%a14], 510, %d0

# CHECK-INST: swap.w [%a14], 510, %d1
# CHECK: encoding: [0x49,0xe1,0x3e,0x78]
.code32
swap.w [%a14], 510, %d1

# CHECK-INST: swap.w [%a14], 510, %d14
# CHECK: encoding: [0x49,0xee,0x3e,0x78]
.code32
swap.w [%a14], 510, %d14

# CHECK-INST: swap.w [%a14], 510, %d15
# CHECK: encoding: [0x49,0xef,0x3e,0x78]
.code32
swap.w [%a14], 510, %d15

# CHECK-INST: swap.w [%a14], 511, %d0
# CHECK: encoding: [0x49,0xe0,0x3f,0x78]
.code32
swap.w [%a14], 511, %d0

# CHECK-INST: swap.w [%a14], 511, %d1
# CHECK: encoding: [0x49,0xe1,0x3f,0x78]
.code32
swap.w [%a14], 511, %d1

# CHECK-INST: swap.w [%a14], 511, %d14
# CHECK: encoding: [0x49,0xee,0x3f,0x78]
.code32
swap.w [%a14], 511, %d14

# CHECK-INST: swap.w [%a14], 511, %d15
# CHECK: encoding: [0x49,0xef,0x3f,0x78]
.code32
swap.w [%a14], 511, %d15

# CHECK-INST: swap.w [%a15], -512, %d0
# CHECK: encoding: [0x49,0xf0,0x00,0x88]
.code32
swap.w [%a15], -512, %d0

# CHECK-INST: swap.w [%a15], -512, %d1
# CHECK: encoding: [0x49,0xf1,0x00,0x88]
.code32
swap.w [%a15], -512, %d1

# CHECK-INST: swap.w [%a15], -512, %d14
# CHECK: encoding: [0x49,0xfe,0x00,0x88]
.code32
swap.w [%a15], -512, %d14

# CHECK-INST: swap.w [%a15], -512, %d15
# CHECK: encoding: [0x49,0xff,0x00,0x88]
.code32
swap.w [%a15], -512, %d15

# CHECK-INST: swap.w [%a15], -511, %d0
# CHECK: encoding: [0x49,0xf0,0x01,0x88]
.code32
swap.w [%a15], -511, %d0

# CHECK-INST: swap.w [%a15], -511, %d1
# CHECK: encoding: [0x49,0xf1,0x01,0x88]
.code32
swap.w [%a15], -511, %d1

# CHECK-INST: swap.w [%a15], -511, %d14
# CHECK: encoding: [0x49,0xfe,0x01,0x88]
.code32
swap.w [%a15], -511, %d14

# CHECK-INST: swap.w [%a15], -511, %d15
# CHECK: encoding: [0x49,0xff,0x01,0x88]
.code32
swap.w [%a15], -511, %d15

# CHECK-INST: swap.w [%a15], -2, %d0
# CHECK: encoding: [0x49,0xf0,0x3e,0xf8]
.code32
swap.w [%a15], -2, %d0

# CHECK-INST: swap.w [%a15], -2, %d1
# CHECK: encoding: [0x49,0xf1,0x3e,0xf8]
.code32
swap.w [%a15], -2, %d1

# CHECK-INST: swap.w [%a15], -2, %d14
# CHECK: encoding: [0x49,0xfe,0x3e,0xf8]
.code32
swap.w [%a15], -2, %d14

# CHECK-INST: swap.w [%a15], -2, %d15
# CHECK: encoding: [0x49,0xff,0x3e,0xf8]
.code32
swap.w [%a15], -2, %d15

# CHECK-INST: swap.w [%a15], -1, %d0
# CHECK: encoding: [0x49,0xf0,0x3f,0xf8]
.code32
swap.w [%a15], -1, %d0

# CHECK-INST: swap.w [%a15], -1, %d1
# CHECK: encoding: [0x49,0xf1,0x3f,0xf8]
.code32
swap.w [%a15], -1, %d1

# CHECK-INST: swap.w [%a15], -1, %d14
# CHECK: encoding: [0x49,0xfe,0x3f,0xf8]
.code32
swap.w [%a15], -1, %d14

# CHECK-INST: swap.w [%a15], -1, %d15
# CHECK: encoding: [0x49,0xff,0x3f,0xf8]
.code32
swap.w [%a15], -1, %d15

# CHECK-INST: swap.w [%a15], 0, %d0
# CHECK: encoding: [0x49,0xf0,0x00,0x08]
.code32
swap.w [%a15], 0, %d0

# CHECK-INST: swap.w [%a15], 0, %d1
# CHECK: encoding: [0x49,0xf1,0x00,0x08]
.code32
swap.w [%a15], 0, %d1

# CHECK-INST: swap.w [%a15], 0, %d14
# CHECK: encoding: [0x49,0xfe,0x00,0x08]
.code32
swap.w [%a15], 0, %d14

# CHECK-INST: swap.w [%a15], 0, %d15
# CHECK: encoding: [0x49,0xff,0x00,0x08]
.code32
swap.w [%a15], 0, %d15

# CHECK-INST: swap.w [%a15], 1, %d0
# CHECK: encoding: [0x49,0xf0,0x01,0x08]
.code32
swap.w [%a15], 1, %d0

# CHECK-INST: swap.w [%a15], 1, %d1
# CHECK: encoding: [0x49,0xf1,0x01,0x08]
.code32
swap.w [%a15], 1, %d1

# CHECK-INST: swap.w [%a15], 1, %d14
# CHECK: encoding: [0x49,0xfe,0x01,0x08]
.code32
swap.w [%a15], 1, %d14

# CHECK-INST: swap.w [%a15], 1, %d15
# CHECK: encoding: [0x49,0xff,0x01,0x08]
.code32
swap.w [%a15], 1, %d15

# CHECK-INST: swap.w [%a15], 510, %d0
# CHECK: encoding: [0x49,0xf0,0x3e,0x78]
.code32
swap.w [%a15], 510, %d0

# CHECK-INST: swap.w [%a15], 510, %d1
# CHECK: encoding: [0x49,0xf1,0x3e,0x78]
.code32
swap.w [%a15], 510, %d1

# CHECK-INST: swap.w [%a15], 510, %d14
# CHECK: encoding: [0x49,0xfe,0x3e,0x78]
.code32
swap.w [%a15], 510, %d14

# CHECK-INST: swap.w [%a15], 510, %d15
# CHECK: encoding: [0x49,0xff,0x3e,0x78]
.code32
swap.w [%a15], 510, %d15

# CHECK-INST: swap.w [%a15], 511, %d0
# CHECK: encoding: [0x49,0xf0,0x3f,0x78]
.code32
swap.w [%a15], 511, %d0

# CHECK-INST: swap.w [%a15], 511, %d1
# CHECK: encoding: [0x49,0xf1,0x3f,0x78]
.code32
swap.w [%a15], 511, %d1

# CHECK-INST: swap.w [%a15], 511, %d14
# CHECK: encoding: [0x49,0xfe,0x3f,0x78]
.code32
swap.w [%a15], 511, %d14

# CHECK-INST: swap.w [%a15], 511, %d15
# CHECK: encoding: [0x49,0xff,0x3f,0x78]
.code32
swap.w [%a15], 511, %d15

# CHECK-INST: swap.w [%p0 + r], %d0
# CHECK: encoding: [0x69,0x00,0x00,0x00]
.code32
swap.w [%p0 + r], %d0

# CHECK-INST: swap.w [%p0 + r], %d1
# CHECK: encoding: [0x69,0x01,0x00,0x00]
.code32
swap.w [%p0 + r], %d1

# CHECK-INST: swap.w [%p0 + r], %d14
# CHECK: encoding: [0x69,0x0e,0x00,0x00]
.code32
swap.w [%p0 + r], %d14

# CHECK-INST: swap.w [%p0 + r], %d15
# CHECK: encoding: [0x69,0x0f,0x00,0x00]
.code32
swap.w [%p0 + r], %d15

# CHECK-INST: swap.w [%p2 + r], %d0
# CHECK: encoding: [0x69,0x20,0x00,0x00]
.code32
swap.w [%p2 + r], %d0

# CHECK-INST: swap.w [%p2 + r], %d1
# CHECK: encoding: [0x69,0x21,0x00,0x00]
.code32
swap.w [%p2 + r], %d1

# CHECK-INST: swap.w [%p2 + r], %d14
# CHECK: encoding: [0x69,0x2e,0x00,0x00]
.code32
swap.w [%p2 + r], %d14

# CHECK-INST: swap.w [%p2 + r], %d15
# CHECK: encoding: [0x69,0x2f,0x00,0x00]
.code32
swap.w [%p2 + r], %d15

# CHECK-INST: swap.w [%p4 + r], %d0
# CHECK: encoding: [0x69,0x40,0x00,0x00]
.code32
swap.w [%p4 + r], %d0

# CHECK-INST: swap.w [%p4 + r], %d1
# CHECK: encoding: [0x69,0x41,0x00,0x00]
.code32
swap.w [%p4 + r], %d1

# CHECK-INST: swap.w [%p4 + r], %d14
# CHECK: encoding: [0x69,0x4e,0x00,0x00]
.code32
swap.w [%p4 + r], %d14

# CHECK-INST: swap.w [%p4 + r], %d15
# CHECK: encoding: [0x69,0x4f,0x00,0x00]
.code32
swap.w [%p4 + r], %d15

# CHECK-INST: swap.w [%p8 + r], %d0
# CHECK: encoding: [0x69,0x80,0x00,0x00]
.code32
swap.w [%p8 + r], %d0

# CHECK-INST: swap.w [%p8 + r], %d1
# CHECK: encoding: [0x69,0x81,0x00,0x00]
.code32
swap.w [%p8 + r], %d1

# CHECK-INST: swap.w [%p8 + r], %d14
# CHECK: encoding: [0x69,0x8e,0x00,0x00]
.code32
swap.w [%p8 + r], %d14

# CHECK-INST: swap.w [%p8 + r], %d15
# CHECK: encoding: [0x69,0x8f,0x00,0x00]
.code32
swap.w [%p8 + r], %d15

# CHECK-INST: swap.w [%p0 + c], -512, %d0
# CHECK: encoding: [0x69,0x00,0x00,0x84]
.code32
swap.w [%p0 + c], -512, %d0

# CHECK-INST: swap.w [%p0 + c], -512, %d1
# CHECK: encoding: [0x69,0x01,0x00,0x84]
.code32
swap.w [%p0 + c], -512, %d1

# CHECK-INST: swap.w [%p0 + c], -512, %d14
# CHECK: encoding: [0x69,0x0e,0x00,0x84]
.code32
swap.w [%p0 + c], -512, %d14

# CHECK-INST: swap.w [%p0 + c], -512, %d15
# CHECK: encoding: [0x69,0x0f,0x00,0x84]
.code32
swap.w [%p0 + c], -512, %d15

# CHECK-INST: swap.w [%p0 + c], -511, %d0
# CHECK: encoding: [0x69,0x00,0x01,0x84]
.code32
swap.w [%p0 + c], -511, %d0

# CHECK-INST: swap.w [%p0 + c], -511, %d1
# CHECK: encoding: [0x69,0x01,0x01,0x84]
.code32
swap.w [%p0 + c], -511, %d1

# CHECK-INST: swap.w [%p0 + c], -511, %d14
# CHECK: encoding: [0x69,0x0e,0x01,0x84]
.code32
swap.w [%p0 + c], -511, %d14

# CHECK-INST: swap.w [%p0 + c], -511, %d15
# CHECK: encoding: [0x69,0x0f,0x01,0x84]
.code32
swap.w [%p0 + c], -511, %d15

# CHECK-INST: swap.w [%p0 + c], -2, %d0
# CHECK: encoding: [0x69,0x00,0x3e,0xf4]
.code32
swap.w [%p0 + c], -2, %d0

# CHECK-INST: swap.w [%p0 + c], -2, %d1
# CHECK: encoding: [0x69,0x01,0x3e,0xf4]
.code32
swap.w [%p0 + c], -2, %d1

# CHECK-INST: swap.w [%p0 + c], -2, %d14
# CHECK: encoding: [0x69,0x0e,0x3e,0xf4]
.code32
swap.w [%p0 + c], -2, %d14

# CHECK-INST: swap.w [%p0 + c], -2, %d15
# CHECK: encoding: [0x69,0x0f,0x3e,0xf4]
.code32
swap.w [%p0 + c], -2, %d15

# CHECK-INST: swap.w [%p0 + c], -1, %d0
# CHECK: encoding: [0x69,0x00,0x3f,0xf4]
.code32
swap.w [%p0 + c], -1, %d0

# CHECK-INST: swap.w [%p0 + c], -1, %d1
# CHECK: encoding: [0x69,0x01,0x3f,0xf4]
.code32
swap.w [%p0 + c], -1, %d1

# CHECK-INST: swap.w [%p0 + c], -1, %d14
# CHECK: encoding: [0x69,0x0e,0x3f,0xf4]
.code32
swap.w [%p0 + c], -1, %d14

# CHECK-INST: swap.w [%p0 + c], -1, %d15
# CHECK: encoding: [0x69,0x0f,0x3f,0xf4]
.code32
swap.w [%p0 + c], -1, %d15

# CHECK-INST: swap.w [%p0 + c], 0, %d0
# CHECK: encoding: [0x69,0x00,0x00,0x04]
.code32
swap.w [%p0 + c], 0, %d0

# CHECK-INST: swap.w [%p0 + c], 0, %d1
# CHECK: encoding: [0x69,0x01,0x00,0x04]
.code32
swap.w [%p0 + c], 0, %d1

# CHECK-INST: swap.w [%p0 + c], 0, %d14
# CHECK: encoding: [0x69,0x0e,0x00,0x04]
.code32
swap.w [%p0 + c], 0, %d14

# CHECK-INST: swap.w [%p0 + c], 0, %d15
# CHECK: encoding: [0x69,0x0f,0x00,0x04]
.code32
swap.w [%p0 + c], 0, %d15

# CHECK-INST: swap.w [%p0 + c], 1, %d0
# CHECK: encoding: [0x69,0x00,0x01,0x04]
.code32
swap.w [%p0 + c], 1, %d0

# CHECK-INST: swap.w [%p0 + c], 1, %d1
# CHECK: encoding: [0x69,0x01,0x01,0x04]
.code32
swap.w [%p0 + c], 1, %d1

# CHECK-INST: swap.w [%p0 + c], 1, %d14
# CHECK: encoding: [0x69,0x0e,0x01,0x04]
.code32
swap.w [%p0 + c], 1, %d14

# CHECK-INST: swap.w [%p0 + c], 1, %d15
# CHECK: encoding: [0x69,0x0f,0x01,0x04]
.code32
swap.w [%p0 + c], 1, %d15

# CHECK-INST: swap.w [%p0 + c], 510, %d0
# CHECK: encoding: [0x69,0x00,0x3e,0x74]
.code32
swap.w [%p0 + c], 510, %d0

# CHECK-INST: swap.w [%p0 + c], 510, %d1
# CHECK: encoding: [0x69,0x01,0x3e,0x74]
.code32
swap.w [%p0 + c], 510, %d1

# CHECK-INST: swap.w [%p0 + c], 510, %d14
# CHECK: encoding: [0x69,0x0e,0x3e,0x74]
.code32
swap.w [%p0 + c], 510, %d14

# CHECK-INST: swap.w [%p0 + c], 510, %d15
# CHECK: encoding: [0x69,0x0f,0x3e,0x74]
.code32
swap.w [%p0 + c], 510, %d15

# CHECK-INST: swap.w [%p0 + c], 511, %d0
# CHECK: encoding: [0x69,0x00,0x3f,0x74]
.code32
swap.w [%p0 + c], 511, %d0

# CHECK-INST: swap.w [%p0 + c], 511, %d1
# CHECK: encoding: [0x69,0x01,0x3f,0x74]
.code32
swap.w [%p0 + c], 511, %d1

# CHECK-INST: swap.w [%p0 + c], 511, %d14
# CHECK: encoding: [0x69,0x0e,0x3f,0x74]
.code32
swap.w [%p0 + c], 511, %d14

# CHECK-INST: swap.w [%p0 + c], 511, %d15
# CHECK: encoding: [0x69,0x0f,0x3f,0x74]
.code32
swap.w [%p0 + c], 511, %d15

# CHECK-INST: swap.w [%p2 + c], -512, %d0
# CHECK: encoding: [0x69,0x20,0x00,0x84]
.code32
swap.w [%p2 + c], -512, %d0

# CHECK-INST: swap.w [%p2 + c], -512, %d1
# CHECK: encoding: [0x69,0x21,0x00,0x84]
.code32
swap.w [%p2 + c], -512, %d1

# CHECK-INST: swap.w [%p2 + c], -512, %d14
# CHECK: encoding: [0x69,0x2e,0x00,0x84]
.code32
swap.w [%p2 + c], -512, %d14

# CHECK-INST: swap.w [%p2 + c], -512, %d15
# CHECK: encoding: [0x69,0x2f,0x00,0x84]
.code32
swap.w [%p2 + c], -512, %d15

# CHECK-INST: swap.w [%p2 + c], -511, %d0
# CHECK: encoding: [0x69,0x20,0x01,0x84]
.code32
swap.w [%p2 + c], -511, %d0

# CHECK-INST: swap.w [%p2 + c], -511, %d1
# CHECK: encoding: [0x69,0x21,0x01,0x84]
.code32
swap.w [%p2 + c], -511, %d1

# CHECK-INST: swap.w [%p2 + c], -511, %d14
# CHECK: encoding: [0x69,0x2e,0x01,0x84]
.code32
swap.w [%p2 + c], -511, %d14

# CHECK-INST: swap.w [%p2 + c], -511, %d15
# CHECK: encoding: [0x69,0x2f,0x01,0x84]
.code32
swap.w [%p2 + c], -511, %d15

# CHECK-INST: swap.w [%p2 + c], -2, %d0
# CHECK: encoding: [0x69,0x20,0x3e,0xf4]
.code32
swap.w [%p2 + c], -2, %d0

# CHECK-INST: swap.w [%p2 + c], -2, %d1
# CHECK: encoding: [0x69,0x21,0x3e,0xf4]
.code32
swap.w [%p2 + c], -2, %d1

# CHECK-INST: swap.w [%p2 + c], -2, %d14
# CHECK: encoding: [0x69,0x2e,0x3e,0xf4]
.code32
swap.w [%p2 + c], -2, %d14

# CHECK-INST: swap.w [%p2 + c], -2, %d15
# CHECK: encoding: [0x69,0x2f,0x3e,0xf4]
.code32
swap.w [%p2 + c], -2, %d15

# CHECK-INST: swap.w [%p2 + c], -1, %d0
# CHECK: encoding: [0x69,0x20,0x3f,0xf4]
.code32
swap.w [%p2 + c], -1, %d0

# CHECK-INST: swap.w [%p2 + c], -1, %d1
# CHECK: encoding: [0x69,0x21,0x3f,0xf4]
.code32
swap.w [%p2 + c], -1, %d1

# CHECK-INST: swap.w [%p2 + c], -1, %d14
# CHECK: encoding: [0x69,0x2e,0x3f,0xf4]
.code32
swap.w [%p2 + c], -1, %d14

# CHECK-INST: swap.w [%p2 + c], -1, %d15
# CHECK: encoding: [0x69,0x2f,0x3f,0xf4]
.code32
swap.w [%p2 + c], -1, %d15

# CHECK-INST: swap.w [%p2 + c], 0, %d0
# CHECK: encoding: [0x69,0x20,0x00,0x04]
.code32
swap.w [%p2 + c], 0, %d0

# CHECK-INST: swap.w [%p2 + c], 0, %d1
# CHECK: encoding: [0x69,0x21,0x00,0x04]
.code32
swap.w [%p2 + c], 0, %d1

# CHECK-INST: swap.w [%p2 + c], 0, %d14
# CHECK: encoding: [0x69,0x2e,0x00,0x04]
.code32
swap.w [%p2 + c], 0, %d14

# CHECK-INST: swap.w [%p2 + c], 0, %d15
# CHECK: encoding: [0x69,0x2f,0x00,0x04]
.code32
swap.w [%p2 + c], 0, %d15

# CHECK-INST: swap.w [%p2 + c], 1, %d0
# CHECK: encoding: [0x69,0x20,0x01,0x04]
.code32
swap.w [%p2 + c], 1, %d0

# CHECK-INST: swap.w [%p2 + c], 1, %d1
# CHECK: encoding: [0x69,0x21,0x01,0x04]
.code32
swap.w [%p2 + c], 1, %d1

# CHECK-INST: swap.w [%p2 + c], 1, %d14
# CHECK: encoding: [0x69,0x2e,0x01,0x04]
.code32
swap.w [%p2 + c], 1, %d14

# CHECK-INST: swap.w [%p2 + c], 1, %d15
# CHECK: encoding: [0x69,0x2f,0x01,0x04]
.code32
swap.w [%p2 + c], 1, %d15

# CHECK-INST: swap.w [%p2 + c], 510, %d0
# CHECK: encoding: [0x69,0x20,0x3e,0x74]
.code32
swap.w [%p2 + c], 510, %d0

# CHECK-INST: swap.w [%p2 + c], 510, %d1
# CHECK: encoding: [0x69,0x21,0x3e,0x74]
.code32
swap.w [%p2 + c], 510, %d1

# CHECK-INST: swap.w [%p2 + c], 510, %d14
# CHECK: encoding: [0x69,0x2e,0x3e,0x74]
.code32
swap.w [%p2 + c], 510, %d14

# CHECK-INST: swap.w [%p2 + c], 510, %d15
# CHECK: encoding: [0x69,0x2f,0x3e,0x74]
.code32
swap.w [%p2 + c], 510, %d15

# CHECK-INST: swap.w [%p2 + c], 511, %d0
# CHECK: encoding: [0x69,0x20,0x3f,0x74]
.code32
swap.w [%p2 + c], 511, %d0

# CHECK-INST: swap.w [%p2 + c], 511, %d1
# CHECK: encoding: [0x69,0x21,0x3f,0x74]
.code32
swap.w [%p2 + c], 511, %d1

# CHECK-INST: swap.w [%p2 + c], 511, %d14
# CHECK: encoding: [0x69,0x2e,0x3f,0x74]
.code32
swap.w [%p2 + c], 511, %d14

# CHECK-INST: swap.w [%p2 + c], 511, %d15
# CHECK: encoding: [0x69,0x2f,0x3f,0x74]
.code32
swap.w [%p2 + c], 511, %d15

# CHECK-INST: swap.w [%p4 + c], -512, %d0
# CHECK: encoding: [0x69,0x40,0x00,0x84]
.code32
swap.w [%p4 + c], -512, %d0

# CHECK-INST: swap.w [%p4 + c], -512, %d1
# CHECK: encoding: [0x69,0x41,0x00,0x84]
.code32
swap.w [%p4 + c], -512, %d1

# CHECK-INST: swap.w [%p4 + c], -512, %d14
# CHECK: encoding: [0x69,0x4e,0x00,0x84]
.code32
swap.w [%p4 + c], -512, %d14

# CHECK-INST: swap.w [%p4 + c], -512, %d15
# CHECK: encoding: [0x69,0x4f,0x00,0x84]
.code32
swap.w [%p4 + c], -512, %d15

# CHECK-INST: swap.w [%p4 + c], -511, %d0
# CHECK: encoding: [0x69,0x40,0x01,0x84]
.code32
swap.w [%p4 + c], -511, %d0

# CHECK-INST: swap.w [%p4 + c], -511, %d1
# CHECK: encoding: [0x69,0x41,0x01,0x84]
.code32
swap.w [%p4 + c], -511, %d1

# CHECK-INST: swap.w [%p4 + c], -511, %d14
# CHECK: encoding: [0x69,0x4e,0x01,0x84]
.code32
swap.w [%p4 + c], -511, %d14

# CHECK-INST: swap.w [%p4 + c], -511, %d15
# CHECK: encoding: [0x69,0x4f,0x01,0x84]
.code32
swap.w [%p4 + c], -511, %d15

# CHECK-INST: swap.w [%p4 + c], -2, %d0
# CHECK: encoding: [0x69,0x40,0x3e,0xf4]
.code32
swap.w [%p4 + c], -2, %d0

# CHECK-INST: swap.w [%p4 + c], -2, %d1
# CHECK: encoding: [0x69,0x41,0x3e,0xf4]
.code32
swap.w [%p4 + c], -2, %d1

# CHECK-INST: swap.w [%p4 + c], -2, %d14
# CHECK: encoding: [0x69,0x4e,0x3e,0xf4]
.code32
swap.w [%p4 + c], -2, %d14

# CHECK-INST: swap.w [%p4 + c], -2, %d15
# CHECK: encoding: [0x69,0x4f,0x3e,0xf4]
.code32
swap.w [%p4 + c], -2, %d15

# CHECK-INST: swap.w [%p4 + c], -1, %d0
# CHECK: encoding: [0x69,0x40,0x3f,0xf4]
.code32
swap.w [%p4 + c], -1, %d0

# CHECK-INST: swap.w [%p4 + c], -1, %d1
# CHECK: encoding: [0x69,0x41,0x3f,0xf4]
.code32
swap.w [%p4 + c], -1, %d1

# CHECK-INST: swap.w [%p4 + c], -1, %d14
# CHECK: encoding: [0x69,0x4e,0x3f,0xf4]
.code32
swap.w [%p4 + c], -1, %d14

# CHECK-INST: swap.w [%p4 + c], -1, %d15
# CHECK: encoding: [0x69,0x4f,0x3f,0xf4]
.code32
swap.w [%p4 + c], -1, %d15

# CHECK-INST: swap.w [%p4 + c], 0, %d0
# CHECK: encoding: [0x69,0x40,0x00,0x04]
.code32
swap.w [%p4 + c], 0, %d0

# CHECK-INST: swap.w [%p4 + c], 0, %d1
# CHECK: encoding: [0x69,0x41,0x00,0x04]
.code32
swap.w [%p4 + c], 0, %d1

# CHECK-INST: swap.w [%p4 + c], 0, %d14
# CHECK: encoding: [0x69,0x4e,0x00,0x04]
.code32
swap.w [%p4 + c], 0, %d14

# CHECK-INST: swap.w [%p4 + c], 0, %d15
# CHECK: encoding: [0x69,0x4f,0x00,0x04]
.code32
swap.w [%p4 + c], 0, %d15

# CHECK-INST: swap.w [%p4 + c], 1, %d0
# CHECK: encoding: [0x69,0x40,0x01,0x04]
.code32
swap.w [%p4 + c], 1, %d0

# CHECK-INST: swap.w [%p4 + c], 1, %d1
# CHECK: encoding: [0x69,0x41,0x01,0x04]
.code32
swap.w [%p4 + c], 1, %d1

# CHECK-INST: swap.w [%p4 + c], 1, %d14
# CHECK: encoding: [0x69,0x4e,0x01,0x04]
.code32
swap.w [%p4 + c], 1, %d14

# CHECK-INST: swap.w [%p4 + c], 1, %d15
# CHECK: encoding: [0x69,0x4f,0x01,0x04]
.code32
swap.w [%p4 + c], 1, %d15

# CHECK-INST: swap.w [%p4 + c], 510, %d0
# CHECK: encoding: [0x69,0x40,0x3e,0x74]
.code32
swap.w [%p4 + c], 510, %d0

# CHECK-INST: swap.w [%p4 + c], 510, %d1
# CHECK: encoding: [0x69,0x41,0x3e,0x74]
.code32
swap.w [%p4 + c], 510, %d1

# CHECK-INST: swap.w [%p4 + c], 510, %d14
# CHECK: encoding: [0x69,0x4e,0x3e,0x74]
.code32
swap.w [%p4 + c], 510, %d14

# CHECK-INST: swap.w [%p4 + c], 510, %d15
# CHECK: encoding: [0x69,0x4f,0x3e,0x74]
.code32
swap.w [%p4 + c], 510, %d15

# CHECK-INST: swap.w [%p4 + c], 511, %d0
# CHECK: encoding: [0x69,0x40,0x3f,0x74]
.code32
swap.w [%p4 + c], 511, %d0

# CHECK-INST: swap.w [%p4 + c], 511, %d1
# CHECK: encoding: [0x69,0x41,0x3f,0x74]
.code32
swap.w [%p4 + c], 511, %d1

# CHECK-INST: swap.w [%p4 + c], 511, %d14
# CHECK: encoding: [0x69,0x4e,0x3f,0x74]
.code32
swap.w [%p4 + c], 511, %d14

# CHECK-INST: swap.w [%p4 + c], 511, %d15
# CHECK: encoding: [0x69,0x4f,0x3f,0x74]
.code32
swap.w [%p4 + c], 511, %d15

# CHECK-INST: swap.w [%p8 + c], -512, %d0
# CHECK: encoding: [0x69,0x80,0x00,0x84]
.code32
swap.w [%p8 + c], -512, %d0

# CHECK-INST: swap.w [%p8 + c], -512, %d1
# CHECK: encoding: [0x69,0x81,0x00,0x84]
.code32
swap.w [%p8 + c], -512, %d1

# CHECK-INST: swap.w [%p8 + c], -512, %d14
# CHECK: encoding: [0x69,0x8e,0x00,0x84]
.code32
swap.w [%p8 + c], -512, %d14

# CHECK-INST: swap.w [%p8 + c], -512, %d15
# CHECK: encoding: [0x69,0x8f,0x00,0x84]
.code32
swap.w [%p8 + c], -512, %d15

# CHECK-INST: swap.w [%p8 + c], -511, %d0
# CHECK: encoding: [0x69,0x80,0x01,0x84]
.code32
swap.w [%p8 + c], -511, %d0

# CHECK-INST: swap.w [%p8 + c], -511, %d1
# CHECK: encoding: [0x69,0x81,0x01,0x84]
.code32
swap.w [%p8 + c], -511, %d1

# CHECK-INST: swap.w [%p8 + c], -511, %d14
# CHECK: encoding: [0x69,0x8e,0x01,0x84]
.code32
swap.w [%p8 + c], -511, %d14

# CHECK-INST: swap.w [%p8 + c], -511, %d15
# CHECK: encoding: [0x69,0x8f,0x01,0x84]
.code32
swap.w [%p8 + c], -511, %d15

# CHECK-INST: swap.w [%p8 + c], -2, %d0
# CHECK: encoding: [0x69,0x80,0x3e,0xf4]
.code32
swap.w [%p8 + c], -2, %d0

# CHECK-INST: swap.w [%p8 + c], -2, %d1
# CHECK: encoding: [0x69,0x81,0x3e,0xf4]
.code32
swap.w [%p8 + c], -2, %d1

# CHECK-INST: swap.w [%p8 + c], -2, %d14
# CHECK: encoding: [0x69,0x8e,0x3e,0xf4]
.code32
swap.w [%p8 + c], -2, %d14

# CHECK-INST: swap.w [%p8 + c], -2, %d15
# CHECK: encoding: [0x69,0x8f,0x3e,0xf4]
.code32
swap.w [%p8 + c], -2, %d15

# CHECK-INST: swap.w [%p8 + c], -1, %d0
# CHECK: encoding: [0x69,0x80,0x3f,0xf4]
.code32
swap.w [%p8 + c], -1, %d0

# CHECK-INST: swap.w [%p8 + c], -1, %d1
# CHECK: encoding: [0x69,0x81,0x3f,0xf4]
.code32
swap.w [%p8 + c], -1, %d1

# CHECK-INST: swap.w [%p8 + c], -1, %d14
# CHECK: encoding: [0x69,0x8e,0x3f,0xf4]
.code32
swap.w [%p8 + c], -1, %d14

# CHECK-INST: swap.w [%p8 + c], -1, %d15
# CHECK: encoding: [0x69,0x8f,0x3f,0xf4]
.code32
swap.w [%p8 + c], -1, %d15

# CHECK-INST: swap.w [%p8 + c], 0, %d0
# CHECK: encoding: [0x69,0x80,0x00,0x04]
.code32
swap.w [%p8 + c], 0, %d0

# CHECK-INST: swap.w [%p8 + c], 0, %d1
# CHECK: encoding: [0x69,0x81,0x00,0x04]
.code32
swap.w [%p8 + c], 0, %d1

# CHECK-INST: swap.w [%p8 + c], 0, %d14
# CHECK: encoding: [0x69,0x8e,0x00,0x04]
.code32
swap.w [%p8 + c], 0, %d14

# CHECK-INST: swap.w [%p8 + c], 0, %d15
# CHECK: encoding: [0x69,0x8f,0x00,0x04]
.code32
swap.w [%p8 + c], 0, %d15

# CHECK-INST: swap.w [%p8 + c], 1, %d0
# CHECK: encoding: [0x69,0x80,0x01,0x04]
.code32
swap.w [%p8 + c], 1, %d0

# CHECK-INST: swap.w [%p8 + c], 1, %d1
# CHECK: encoding: [0x69,0x81,0x01,0x04]
.code32
swap.w [%p8 + c], 1, %d1

# CHECK-INST: swap.w [%p8 + c], 1, %d14
# CHECK: encoding: [0x69,0x8e,0x01,0x04]
.code32
swap.w [%p8 + c], 1, %d14

# CHECK-INST: swap.w [%p8 + c], 1, %d15
# CHECK: encoding: [0x69,0x8f,0x01,0x04]
.code32
swap.w [%p8 + c], 1, %d15

# CHECK-INST: swap.w [%p8 + c], 510, %d0
# CHECK: encoding: [0x69,0x80,0x3e,0x74]
.code32
swap.w [%p8 + c], 510, %d0

# CHECK-INST: swap.w [%p8 + c], 510, %d1
# CHECK: encoding: [0x69,0x81,0x3e,0x74]
.code32
swap.w [%p8 + c], 510, %d1

# CHECK-INST: swap.w [%p8 + c], 510, %d14
# CHECK: encoding: [0x69,0x8e,0x3e,0x74]
.code32
swap.w [%p8 + c], 510, %d14

# CHECK-INST: swap.w [%p8 + c], 510, %d15
# CHECK: encoding: [0x69,0x8f,0x3e,0x74]
.code32
swap.w [%p8 + c], 510, %d15

# CHECK-INST: swap.w [%p8 + c], 511, %d0
# CHECK: encoding: [0x69,0x80,0x3f,0x74]
.code32
swap.w [%p8 + c], 511, %d0

# CHECK-INST: swap.w [%p8 + c], 511, %d1
# CHECK: encoding: [0x69,0x81,0x3f,0x74]
.code32
swap.w [%p8 + c], 511, %d1

# CHECK-INST: swap.w [%p8 + c], 511, %d14
# CHECK: encoding: [0x69,0x8e,0x3f,0x74]
.code32
swap.w [%p8 + c], 511, %d14

# CHECK-INST: swap.w [%p8 + c], 511, %d15
# CHECK: encoding: [0x69,0x8f,0x3f,0x74]
.code32
swap.w [%p8 + c], 511, %d15

# CHECK-INST: swap.w [%a0+], -512, %d0
# CHECK: encoding: [0x49,0x00,0x00,0x80]
.code32
swap.w [%a0+], -512, %d0

# CHECK-INST: swap.w [%a0+], -512, %d1
# CHECK: encoding: [0x49,0x01,0x00,0x80]
.code32
swap.w [%a0+], -512, %d1

# CHECK-INST: swap.w [%a0+], -512, %d14
# CHECK: encoding: [0x49,0x0e,0x00,0x80]
.code32
swap.w [%a0+], -512, %d14

# CHECK-INST: swap.w [%a0+], -512, %d15
# CHECK: encoding: [0x49,0x0f,0x00,0x80]
.code32
swap.w [%a0+], -512, %d15

# CHECK-INST: swap.w [%a0+], -511, %d0
# CHECK: encoding: [0x49,0x00,0x01,0x80]
.code32
swap.w [%a0+], -511, %d0

# CHECK-INST: swap.w [%a0+], -511, %d1
# CHECK: encoding: [0x49,0x01,0x01,0x80]
.code32
swap.w [%a0+], -511, %d1

# CHECK-INST: swap.w [%a0+], -511, %d14
# CHECK: encoding: [0x49,0x0e,0x01,0x80]
.code32
swap.w [%a0+], -511, %d14

# CHECK-INST: swap.w [%a0+], -511, %d15
# CHECK: encoding: [0x49,0x0f,0x01,0x80]
.code32
swap.w [%a0+], -511, %d15

# CHECK-INST: swap.w [%a0+], -2, %d0
# CHECK: encoding: [0x49,0x00,0x3e,0xf0]
.code32
swap.w [%a0+], -2, %d0

# CHECK-INST: swap.w [%a0+], -2, %d1
# CHECK: encoding: [0x49,0x01,0x3e,0xf0]
.code32
swap.w [%a0+], -2, %d1

# CHECK-INST: swap.w [%a0+], -2, %d14
# CHECK: encoding: [0x49,0x0e,0x3e,0xf0]
.code32
swap.w [%a0+], -2, %d14

# CHECK-INST: swap.w [%a0+], -2, %d15
# CHECK: encoding: [0x49,0x0f,0x3e,0xf0]
.code32
swap.w [%a0+], -2, %d15

# CHECK-INST: swap.w [%a0+], -1, %d0
# CHECK: encoding: [0x49,0x00,0x3f,0xf0]
.code32
swap.w [%a0+], -1, %d0

# CHECK-INST: swap.w [%a0+], -1, %d1
# CHECK: encoding: [0x49,0x01,0x3f,0xf0]
.code32
swap.w [%a0+], -1, %d1

# CHECK-INST: swap.w [%a0+], -1, %d14
# CHECK: encoding: [0x49,0x0e,0x3f,0xf0]
.code32
swap.w [%a0+], -1, %d14

# CHECK-INST: swap.w [%a0+], -1, %d15
# CHECK: encoding: [0x49,0x0f,0x3f,0xf0]
.code32
swap.w [%a0+], -1, %d15

# CHECK-INST: swap.w [%a0+], 0, %d0
# CHECK: encoding: [0x49,0x00,0x00,0x00]
.code32
swap.w [%a0+], 0, %d0

# CHECK-INST: swap.w [%a0+], 0, %d1
# CHECK: encoding: [0x49,0x01,0x00,0x00]
.code32
swap.w [%a0+], 0, %d1

# CHECK-INST: swap.w [%a0+], 0, %d14
# CHECK: encoding: [0x49,0x0e,0x00,0x00]
.code32
swap.w [%a0+], 0, %d14

# CHECK-INST: swap.w [%a0+], 0, %d15
# CHECK: encoding: [0x49,0x0f,0x00,0x00]
.code32
swap.w [%a0+], 0, %d15

# CHECK-INST: swap.w [%a0+], 1, %d0
# CHECK: encoding: [0x49,0x00,0x01,0x00]
.code32
swap.w [%a0+], 1, %d0

# CHECK-INST: swap.w [%a0+], 1, %d1
# CHECK: encoding: [0x49,0x01,0x01,0x00]
.code32
swap.w [%a0+], 1, %d1

# CHECK-INST: swap.w [%a0+], 1, %d14
# CHECK: encoding: [0x49,0x0e,0x01,0x00]
.code32
swap.w [%a0+], 1, %d14

# CHECK-INST: swap.w [%a0+], 1, %d15
# CHECK: encoding: [0x49,0x0f,0x01,0x00]
.code32
swap.w [%a0+], 1, %d15

# CHECK-INST: swap.w [%a0+], 510, %d0
# CHECK: encoding: [0x49,0x00,0x3e,0x70]
.code32
swap.w [%a0+], 510, %d0

# CHECK-INST: swap.w [%a0+], 510, %d1
# CHECK: encoding: [0x49,0x01,0x3e,0x70]
.code32
swap.w [%a0+], 510, %d1

# CHECK-INST: swap.w [%a0+], 510, %d14
# CHECK: encoding: [0x49,0x0e,0x3e,0x70]
.code32
swap.w [%a0+], 510, %d14

# CHECK-INST: swap.w [%a0+], 510, %d15
# CHECK: encoding: [0x49,0x0f,0x3e,0x70]
.code32
swap.w [%a0+], 510, %d15

# CHECK-INST: swap.w [%a0+], 511, %d0
# CHECK: encoding: [0x49,0x00,0x3f,0x70]
.code32
swap.w [%a0+], 511, %d0

# CHECK-INST: swap.w [%a0+], 511, %d1
# CHECK: encoding: [0x49,0x01,0x3f,0x70]
.code32
swap.w [%a0+], 511, %d1

# CHECK-INST: swap.w [%a0+], 511, %d14
# CHECK: encoding: [0x49,0x0e,0x3f,0x70]
.code32
swap.w [%a0+], 511, %d14

# CHECK-INST: swap.w [%a0+], 511, %d15
# CHECK: encoding: [0x49,0x0f,0x3f,0x70]
.code32
swap.w [%a0+], 511, %d15

# CHECK-INST: swap.w [%a1+], -512, %d0
# CHECK: encoding: [0x49,0x10,0x00,0x80]
.code32
swap.w [%a1+], -512, %d0

# CHECK-INST: swap.w [%a1+], -512, %d1
# CHECK: encoding: [0x49,0x11,0x00,0x80]
.code32
swap.w [%a1+], -512, %d1

# CHECK-INST: swap.w [%a1+], -512, %d14
# CHECK: encoding: [0x49,0x1e,0x00,0x80]
.code32
swap.w [%a1+], -512, %d14

# CHECK-INST: swap.w [%a1+], -512, %d15
# CHECK: encoding: [0x49,0x1f,0x00,0x80]
.code32
swap.w [%a1+], -512, %d15

# CHECK-INST: swap.w [%a1+], -511, %d0
# CHECK: encoding: [0x49,0x10,0x01,0x80]
.code32
swap.w [%a1+], -511, %d0

# CHECK-INST: swap.w [%a1+], -511, %d1
# CHECK: encoding: [0x49,0x11,0x01,0x80]
.code32
swap.w [%a1+], -511, %d1

# CHECK-INST: swap.w [%a1+], -511, %d14
# CHECK: encoding: [0x49,0x1e,0x01,0x80]
.code32
swap.w [%a1+], -511, %d14

# CHECK-INST: swap.w [%a1+], -511, %d15
# CHECK: encoding: [0x49,0x1f,0x01,0x80]
.code32
swap.w [%a1+], -511, %d15

# CHECK-INST: swap.w [%a1+], -2, %d0
# CHECK: encoding: [0x49,0x10,0x3e,0xf0]
.code32
swap.w [%a1+], -2, %d0

# CHECK-INST: swap.w [%a1+], -2, %d1
# CHECK: encoding: [0x49,0x11,0x3e,0xf0]
.code32
swap.w [%a1+], -2, %d1

# CHECK-INST: swap.w [%a1+], -2, %d14
# CHECK: encoding: [0x49,0x1e,0x3e,0xf0]
.code32
swap.w [%a1+], -2, %d14

# CHECK-INST: swap.w [%a1+], -2, %d15
# CHECK: encoding: [0x49,0x1f,0x3e,0xf0]
.code32
swap.w [%a1+], -2, %d15

# CHECK-INST: swap.w [%a1+], -1, %d0
# CHECK: encoding: [0x49,0x10,0x3f,0xf0]
.code32
swap.w [%a1+], -1, %d0

# CHECK-INST: swap.w [%a1+], -1, %d1
# CHECK: encoding: [0x49,0x11,0x3f,0xf0]
.code32
swap.w [%a1+], -1, %d1

# CHECK-INST: swap.w [%a1+], -1, %d14
# CHECK: encoding: [0x49,0x1e,0x3f,0xf0]
.code32
swap.w [%a1+], -1, %d14

# CHECK-INST: swap.w [%a1+], -1, %d15
# CHECK: encoding: [0x49,0x1f,0x3f,0xf0]
.code32
swap.w [%a1+], -1, %d15

# CHECK-INST: swap.w [%a1+], 0, %d0
# CHECK: encoding: [0x49,0x10,0x00,0x00]
.code32
swap.w [%a1+], 0, %d0

# CHECK-INST: swap.w [%a1+], 0, %d1
# CHECK: encoding: [0x49,0x11,0x00,0x00]
.code32
swap.w [%a1+], 0, %d1

# CHECK-INST: swap.w [%a1+], 0, %d14
# CHECK: encoding: [0x49,0x1e,0x00,0x00]
.code32
swap.w [%a1+], 0, %d14

# CHECK-INST: swap.w [%a1+], 0, %d15
# CHECK: encoding: [0x49,0x1f,0x00,0x00]
.code32
swap.w [%a1+], 0, %d15

# CHECK-INST: swap.w [%a1+], 1, %d0
# CHECK: encoding: [0x49,0x10,0x01,0x00]
.code32
swap.w [%a1+], 1, %d0

# CHECK-INST: swap.w [%a1+], 1, %d1
# CHECK: encoding: [0x49,0x11,0x01,0x00]
.code32
swap.w [%a1+], 1, %d1

# CHECK-INST: swap.w [%a1+], 1, %d14
# CHECK: encoding: [0x49,0x1e,0x01,0x00]
.code32
swap.w [%a1+], 1, %d14

# CHECK-INST: swap.w [%a1+], 1, %d15
# CHECK: encoding: [0x49,0x1f,0x01,0x00]
.code32
swap.w [%a1+], 1, %d15

# CHECK-INST: swap.w [%a1+], 510, %d0
# CHECK: encoding: [0x49,0x10,0x3e,0x70]
.code32
swap.w [%a1+], 510, %d0

# CHECK-INST: swap.w [%a1+], 510, %d1
# CHECK: encoding: [0x49,0x11,0x3e,0x70]
.code32
swap.w [%a1+], 510, %d1

# CHECK-INST: swap.w [%a1+], 510, %d14
# CHECK: encoding: [0x49,0x1e,0x3e,0x70]
.code32
swap.w [%a1+], 510, %d14

# CHECK-INST: swap.w [%a1+], 510, %d15
# CHECK: encoding: [0x49,0x1f,0x3e,0x70]
.code32
swap.w [%a1+], 510, %d15

# CHECK-INST: swap.w [%a1+], 511, %d0
# CHECK: encoding: [0x49,0x10,0x3f,0x70]
.code32
swap.w [%a1+], 511, %d0

# CHECK-INST: swap.w [%a1+], 511, %d1
# CHECK: encoding: [0x49,0x11,0x3f,0x70]
.code32
swap.w [%a1+], 511, %d1

# CHECK-INST: swap.w [%a1+], 511, %d14
# CHECK: encoding: [0x49,0x1e,0x3f,0x70]
.code32
swap.w [%a1+], 511, %d14

# CHECK-INST: swap.w [%a1+], 511, %d15
# CHECK: encoding: [0x49,0x1f,0x3f,0x70]
.code32
swap.w [%a1+], 511, %d15

# CHECK-INST: swap.w [%a14+], -512, %d0
# CHECK: encoding: [0x49,0xe0,0x00,0x80]
.code32
swap.w [%a14+], -512, %d0

# CHECK-INST: swap.w [%a14+], -512, %d1
# CHECK: encoding: [0x49,0xe1,0x00,0x80]
.code32
swap.w [%a14+], -512, %d1

# CHECK-INST: swap.w [%a14+], -512, %d14
# CHECK: encoding: [0x49,0xee,0x00,0x80]
.code32
swap.w [%a14+], -512, %d14

# CHECK-INST: swap.w [%a14+], -512, %d15
# CHECK: encoding: [0x49,0xef,0x00,0x80]
.code32
swap.w [%a14+], -512, %d15

# CHECK-INST: swap.w [%a14+], -511, %d0
# CHECK: encoding: [0x49,0xe0,0x01,0x80]
.code32
swap.w [%a14+], -511, %d0

# CHECK-INST: swap.w [%a14+], -511, %d1
# CHECK: encoding: [0x49,0xe1,0x01,0x80]
.code32
swap.w [%a14+], -511, %d1

# CHECK-INST: swap.w [%a14+], -511, %d14
# CHECK: encoding: [0x49,0xee,0x01,0x80]
.code32
swap.w [%a14+], -511, %d14

# CHECK-INST: swap.w [%a14+], -511, %d15
# CHECK: encoding: [0x49,0xef,0x01,0x80]
.code32
swap.w [%a14+], -511, %d15

# CHECK-INST: swap.w [%a14+], -2, %d0
# CHECK: encoding: [0x49,0xe0,0x3e,0xf0]
.code32
swap.w [%a14+], -2, %d0

# CHECK-INST: swap.w [%a14+], -2, %d1
# CHECK: encoding: [0x49,0xe1,0x3e,0xf0]
.code32
swap.w [%a14+], -2, %d1

# CHECK-INST: swap.w [%a14+], -2, %d14
# CHECK: encoding: [0x49,0xee,0x3e,0xf0]
.code32
swap.w [%a14+], -2, %d14

# CHECK-INST: swap.w [%a14+], -2, %d15
# CHECK: encoding: [0x49,0xef,0x3e,0xf0]
.code32
swap.w [%a14+], -2, %d15

# CHECK-INST: swap.w [%a14+], -1, %d0
# CHECK: encoding: [0x49,0xe0,0x3f,0xf0]
.code32
swap.w [%a14+], -1, %d0

# CHECK-INST: swap.w [%a14+], -1, %d1
# CHECK: encoding: [0x49,0xe1,0x3f,0xf0]
.code32
swap.w [%a14+], -1, %d1

# CHECK-INST: swap.w [%a14+], -1, %d14
# CHECK: encoding: [0x49,0xee,0x3f,0xf0]
.code32
swap.w [%a14+], -1, %d14

# CHECK-INST: swap.w [%a14+], -1, %d15
# CHECK: encoding: [0x49,0xef,0x3f,0xf0]
.code32
swap.w [%a14+], -1, %d15

# CHECK-INST: swap.w [%a14+], 0, %d0
# CHECK: encoding: [0x49,0xe0,0x00,0x00]
.code32
swap.w [%a14+], 0, %d0

# CHECK-INST: swap.w [%a14+], 0, %d1
# CHECK: encoding: [0x49,0xe1,0x00,0x00]
.code32
swap.w [%a14+], 0, %d1

# CHECK-INST: swap.w [%a14+], 0, %d14
# CHECK: encoding: [0x49,0xee,0x00,0x00]
.code32
swap.w [%a14+], 0, %d14

# CHECK-INST: swap.w [%a14+], 0, %d15
# CHECK: encoding: [0x49,0xef,0x00,0x00]
.code32
swap.w [%a14+], 0, %d15

# CHECK-INST: swap.w [%a14+], 1, %d0
# CHECK: encoding: [0x49,0xe0,0x01,0x00]
.code32
swap.w [%a14+], 1, %d0

# CHECK-INST: swap.w [%a14+], 1, %d1
# CHECK: encoding: [0x49,0xe1,0x01,0x00]
.code32
swap.w [%a14+], 1, %d1

# CHECK-INST: swap.w [%a14+], 1, %d14
# CHECK: encoding: [0x49,0xee,0x01,0x00]
.code32
swap.w [%a14+], 1, %d14

# CHECK-INST: swap.w [%a14+], 1, %d15
# CHECK: encoding: [0x49,0xef,0x01,0x00]
.code32
swap.w [%a14+], 1, %d15

# CHECK-INST: swap.w [%a14+], 510, %d0
# CHECK: encoding: [0x49,0xe0,0x3e,0x70]
.code32
swap.w [%a14+], 510, %d0

# CHECK-INST: swap.w [%a14+], 510, %d1
# CHECK: encoding: [0x49,0xe1,0x3e,0x70]
.code32
swap.w [%a14+], 510, %d1

# CHECK-INST: swap.w [%a14+], 510, %d14
# CHECK: encoding: [0x49,0xee,0x3e,0x70]
.code32
swap.w [%a14+], 510, %d14

# CHECK-INST: swap.w [%a14+], 510, %d15
# CHECK: encoding: [0x49,0xef,0x3e,0x70]
.code32
swap.w [%a14+], 510, %d15

# CHECK-INST: swap.w [%a14+], 511, %d0
# CHECK: encoding: [0x49,0xe0,0x3f,0x70]
.code32
swap.w [%a14+], 511, %d0

# CHECK-INST: swap.w [%a14+], 511, %d1
# CHECK: encoding: [0x49,0xe1,0x3f,0x70]
.code32
swap.w [%a14+], 511, %d1

# CHECK-INST: swap.w [%a14+], 511, %d14
# CHECK: encoding: [0x49,0xee,0x3f,0x70]
.code32
swap.w [%a14+], 511, %d14

# CHECK-INST: swap.w [%a14+], 511, %d15
# CHECK: encoding: [0x49,0xef,0x3f,0x70]
.code32
swap.w [%a14+], 511, %d15

# CHECK-INST: swap.w [%a15+], -512, %d0
# CHECK: encoding: [0x49,0xf0,0x00,0x80]
.code32
swap.w [%a15+], -512, %d0

# CHECK-INST: swap.w [%a15+], -512, %d1
# CHECK: encoding: [0x49,0xf1,0x00,0x80]
.code32
swap.w [%a15+], -512, %d1

# CHECK-INST: swap.w [%a15+], -512, %d14
# CHECK: encoding: [0x49,0xfe,0x00,0x80]
.code32
swap.w [%a15+], -512, %d14

# CHECK-INST: swap.w [%a15+], -512, %d15
# CHECK: encoding: [0x49,0xff,0x00,0x80]
.code32
swap.w [%a15+], -512, %d15

# CHECK-INST: swap.w [%a15+], -511, %d0
# CHECK: encoding: [0x49,0xf0,0x01,0x80]
.code32
swap.w [%a15+], -511, %d0

# CHECK-INST: swap.w [%a15+], -511, %d1
# CHECK: encoding: [0x49,0xf1,0x01,0x80]
.code32
swap.w [%a15+], -511, %d1

# CHECK-INST: swap.w [%a15+], -511, %d14
# CHECK: encoding: [0x49,0xfe,0x01,0x80]
.code32
swap.w [%a15+], -511, %d14

# CHECK-INST: swap.w [%a15+], -511, %d15
# CHECK: encoding: [0x49,0xff,0x01,0x80]
.code32
swap.w [%a15+], -511, %d15

# CHECK-INST: swap.w [%a15+], -2, %d0
# CHECK: encoding: [0x49,0xf0,0x3e,0xf0]
.code32
swap.w [%a15+], -2, %d0

# CHECK-INST: swap.w [%a15+], -2, %d1
# CHECK: encoding: [0x49,0xf1,0x3e,0xf0]
.code32
swap.w [%a15+], -2, %d1

# CHECK-INST: swap.w [%a15+], -2, %d14
# CHECK: encoding: [0x49,0xfe,0x3e,0xf0]
.code32
swap.w [%a15+], -2, %d14

# CHECK-INST: swap.w [%a15+], -2, %d15
# CHECK: encoding: [0x49,0xff,0x3e,0xf0]
.code32
swap.w [%a15+], -2, %d15

# CHECK-INST: swap.w [%a15+], -1, %d0
# CHECK: encoding: [0x49,0xf0,0x3f,0xf0]
.code32
swap.w [%a15+], -1, %d0

# CHECK-INST: swap.w [%a15+], -1, %d1
# CHECK: encoding: [0x49,0xf1,0x3f,0xf0]
.code32
swap.w [%a15+], -1, %d1

# CHECK-INST: swap.w [%a15+], -1, %d14
# CHECK: encoding: [0x49,0xfe,0x3f,0xf0]
.code32
swap.w [%a15+], -1, %d14

# CHECK-INST: swap.w [%a15+], -1, %d15
# CHECK: encoding: [0x49,0xff,0x3f,0xf0]
.code32
swap.w [%a15+], -1, %d15

# CHECK-INST: swap.w [%a15+], 0, %d0
# CHECK: encoding: [0x49,0xf0,0x00,0x00]
.code32
swap.w [%a15+], 0, %d0

# CHECK-INST: swap.w [%a15+], 0, %d1
# CHECK: encoding: [0x49,0xf1,0x00,0x00]
.code32
swap.w [%a15+], 0, %d1

# CHECK-INST: swap.w [%a15+], 0, %d14
# CHECK: encoding: [0x49,0xfe,0x00,0x00]
.code32
swap.w [%a15+], 0, %d14

# CHECK-INST: swap.w [%a15+], 0, %d15
# CHECK: encoding: [0x49,0xff,0x00,0x00]
.code32
swap.w [%a15+], 0, %d15

# CHECK-INST: swap.w [%a15+], 1, %d0
# CHECK: encoding: [0x49,0xf0,0x01,0x00]
.code32
swap.w [%a15+], 1, %d0

# CHECK-INST: swap.w [%a15+], 1, %d1
# CHECK: encoding: [0x49,0xf1,0x01,0x00]
.code32
swap.w [%a15+], 1, %d1

# CHECK-INST: swap.w [%a15+], 1, %d14
# CHECK: encoding: [0x49,0xfe,0x01,0x00]
.code32
swap.w [%a15+], 1, %d14

# CHECK-INST: swap.w [%a15+], 1, %d15
# CHECK: encoding: [0x49,0xff,0x01,0x00]
.code32
swap.w [%a15+], 1, %d15

# CHECK-INST: swap.w [%a15+], 510, %d0
# CHECK: encoding: [0x49,0xf0,0x3e,0x70]
.code32
swap.w [%a15+], 510, %d0

# CHECK-INST: swap.w [%a15+], 510, %d1
# CHECK: encoding: [0x49,0xf1,0x3e,0x70]
.code32
swap.w [%a15+], 510, %d1

# CHECK-INST: swap.w [%a15+], 510, %d14
# CHECK: encoding: [0x49,0xfe,0x3e,0x70]
.code32
swap.w [%a15+], 510, %d14

# CHECK-INST: swap.w [%a15+], 510, %d15
# CHECK: encoding: [0x49,0xff,0x3e,0x70]
.code32
swap.w [%a15+], 510, %d15

# CHECK-INST: swap.w [%a15+], 511, %d0
# CHECK: encoding: [0x49,0xf0,0x3f,0x70]
.code32
swap.w [%a15+], 511, %d0

# CHECK-INST: swap.w [%a15+], 511, %d1
# CHECK: encoding: [0x49,0xf1,0x3f,0x70]
.code32
swap.w [%a15+], 511, %d1

# CHECK-INST: swap.w [%a15+], 511, %d14
# CHECK: encoding: [0x49,0xfe,0x3f,0x70]
.code32
swap.w [%a15+], 511, %d14

# CHECK-INST: swap.w [%a15+], 511, %d15
# CHECK: encoding: [0x49,0xff,0x3f,0x70]
.code32
swap.w [%a15+], 511, %d15

# CHECK-INST: swap.w [+%a0], -512, %d0
# CHECK: encoding: [0x49,0x00,0x00,0x84]
.code32
swap.w [+%a0], -512, %d0

# CHECK-INST: swap.w [+%a0], -512, %d1
# CHECK: encoding: [0x49,0x01,0x00,0x84]
.code32
swap.w [+%a0], -512, %d1

# CHECK-INST: swap.w [+%a0], -512, %d14
# CHECK: encoding: [0x49,0x0e,0x00,0x84]
.code32
swap.w [+%a0], -512, %d14

# CHECK-INST: swap.w [+%a0], -512, %d15
# CHECK: encoding: [0x49,0x0f,0x00,0x84]
.code32
swap.w [+%a0], -512, %d15

# CHECK-INST: swap.w [+%a0], -511, %d0
# CHECK: encoding: [0x49,0x00,0x01,0x84]
.code32
swap.w [+%a0], -511, %d0

# CHECK-INST: swap.w [+%a0], -511, %d1
# CHECK: encoding: [0x49,0x01,0x01,0x84]
.code32
swap.w [+%a0], -511, %d1

# CHECK-INST: swap.w [+%a0], -511, %d14
# CHECK: encoding: [0x49,0x0e,0x01,0x84]
.code32
swap.w [+%a0], -511, %d14

# CHECK-INST: swap.w [+%a0], -511, %d15
# CHECK: encoding: [0x49,0x0f,0x01,0x84]
.code32
swap.w [+%a0], -511, %d15

# CHECK-INST: swap.w [+%a0], -2, %d0
# CHECK: encoding: [0x49,0x00,0x3e,0xf4]
.code32
swap.w [+%a0], -2, %d0

# CHECK-INST: swap.w [+%a0], -2, %d1
# CHECK: encoding: [0x49,0x01,0x3e,0xf4]
.code32
swap.w [+%a0], -2, %d1

# CHECK-INST: swap.w [+%a0], -2, %d14
# CHECK: encoding: [0x49,0x0e,0x3e,0xf4]
.code32
swap.w [+%a0], -2, %d14

# CHECK-INST: swap.w [+%a0], -2, %d15
# CHECK: encoding: [0x49,0x0f,0x3e,0xf4]
.code32
swap.w [+%a0], -2, %d15

# CHECK-INST: swap.w [+%a0], -1, %d0
# CHECK: encoding: [0x49,0x00,0x3f,0xf4]
.code32
swap.w [+%a0], -1, %d0

# CHECK-INST: swap.w [+%a0], -1, %d1
# CHECK: encoding: [0x49,0x01,0x3f,0xf4]
.code32
swap.w [+%a0], -1, %d1

# CHECK-INST: swap.w [+%a0], -1, %d14
# CHECK: encoding: [0x49,0x0e,0x3f,0xf4]
.code32
swap.w [+%a0], -1, %d14

# CHECK-INST: swap.w [+%a0], -1, %d15
# CHECK: encoding: [0x49,0x0f,0x3f,0xf4]
.code32
swap.w [+%a0], -1, %d15

# CHECK-INST: swap.w [+%a0], 0, %d0
# CHECK: encoding: [0x49,0x00,0x00,0x04]
.code32
swap.w [+%a0], 0, %d0

# CHECK-INST: swap.w [+%a0], 0, %d1
# CHECK: encoding: [0x49,0x01,0x00,0x04]
.code32
swap.w [+%a0], 0, %d1

# CHECK-INST: swap.w [+%a0], 0, %d14
# CHECK: encoding: [0x49,0x0e,0x00,0x04]
.code32
swap.w [+%a0], 0, %d14

# CHECK-INST: swap.w [+%a0], 0, %d15
# CHECK: encoding: [0x49,0x0f,0x00,0x04]
.code32
swap.w [+%a0], 0, %d15

# CHECK-INST: swap.w [+%a0], 1, %d0
# CHECK: encoding: [0x49,0x00,0x01,0x04]
.code32
swap.w [+%a0], 1, %d0

# CHECK-INST: swap.w [+%a0], 1, %d1
# CHECK: encoding: [0x49,0x01,0x01,0x04]
.code32
swap.w [+%a0], 1, %d1

# CHECK-INST: swap.w [+%a0], 1, %d14
# CHECK: encoding: [0x49,0x0e,0x01,0x04]
.code32
swap.w [+%a0], 1, %d14

# CHECK-INST: swap.w [+%a0], 1, %d15
# CHECK: encoding: [0x49,0x0f,0x01,0x04]
.code32
swap.w [+%a0], 1, %d15

# CHECK-INST: swap.w [+%a0], 510, %d0
# CHECK: encoding: [0x49,0x00,0x3e,0x74]
.code32
swap.w [+%a0], 510, %d0

# CHECK-INST: swap.w [+%a0], 510, %d1
# CHECK: encoding: [0x49,0x01,0x3e,0x74]
.code32
swap.w [+%a0], 510, %d1

# CHECK-INST: swap.w [+%a0], 510, %d14
# CHECK: encoding: [0x49,0x0e,0x3e,0x74]
.code32
swap.w [+%a0], 510, %d14

# CHECK-INST: swap.w [+%a0], 510, %d15
# CHECK: encoding: [0x49,0x0f,0x3e,0x74]
.code32
swap.w [+%a0], 510, %d15

# CHECK-INST: swap.w [+%a0], 511, %d0
# CHECK: encoding: [0x49,0x00,0x3f,0x74]
.code32
swap.w [+%a0], 511, %d0

# CHECK-INST: swap.w [+%a0], 511, %d1
# CHECK: encoding: [0x49,0x01,0x3f,0x74]
.code32
swap.w [+%a0], 511, %d1

# CHECK-INST: swap.w [+%a0], 511, %d14
# CHECK: encoding: [0x49,0x0e,0x3f,0x74]
.code32
swap.w [+%a0], 511, %d14

# CHECK-INST: swap.w [+%a0], 511, %d15
# CHECK: encoding: [0x49,0x0f,0x3f,0x74]
.code32
swap.w [+%a0], 511, %d15

# CHECK-INST: swap.w [+%a1], -512, %d0
# CHECK: encoding: [0x49,0x10,0x00,0x84]
.code32
swap.w [+%a1], -512, %d0

# CHECK-INST: swap.w [+%a1], -512, %d1
# CHECK: encoding: [0x49,0x11,0x00,0x84]
.code32
swap.w [+%a1], -512, %d1

# CHECK-INST: swap.w [+%a1], -512, %d14
# CHECK: encoding: [0x49,0x1e,0x00,0x84]
.code32
swap.w [+%a1], -512, %d14

# CHECK-INST: swap.w [+%a1], -512, %d15
# CHECK: encoding: [0x49,0x1f,0x00,0x84]
.code32
swap.w [+%a1], -512, %d15

# CHECK-INST: swap.w [+%a1], -511, %d0
# CHECK: encoding: [0x49,0x10,0x01,0x84]
.code32
swap.w [+%a1], -511, %d0

# CHECK-INST: swap.w [+%a1], -511, %d1
# CHECK: encoding: [0x49,0x11,0x01,0x84]
.code32
swap.w [+%a1], -511, %d1

# CHECK-INST: swap.w [+%a1], -511, %d14
# CHECK: encoding: [0x49,0x1e,0x01,0x84]
.code32
swap.w [+%a1], -511, %d14

# CHECK-INST: swap.w [+%a1], -511, %d15
# CHECK: encoding: [0x49,0x1f,0x01,0x84]
.code32
swap.w [+%a1], -511, %d15

# CHECK-INST: swap.w [+%a1], -2, %d0
# CHECK: encoding: [0x49,0x10,0x3e,0xf4]
.code32
swap.w [+%a1], -2, %d0

# CHECK-INST: swap.w [+%a1], -2, %d1
# CHECK: encoding: [0x49,0x11,0x3e,0xf4]
.code32
swap.w [+%a1], -2, %d1

# CHECK-INST: swap.w [+%a1], -2, %d14
# CHECK: encoding: [0x49,0x1e,0x3e,0xf4]
.code32
swap.w [+%a1], -2, %d14

# CHECK-INST: swap.w [+%a1], -2, %d15
# CHECK: encoding: [0x49,0x1f,0x3e,0xf4]
.code32
swap.w [+%a1], -2, %d15

# CHECK-INST: swap.w [+%a1], -1, %d0
# CHECK: encoding: [0x49,0x10,0x3f,0xf4]
.code32
swap.w [+%a1], -1, %d0

# CHECK-INST: swap.w [+%a1], -1, %d1
# CHECK: encoding: [0x49,0x11,0x3f,0xf4]
.code32
swap.w [+%a1], -1, %d1

# CHECK-INST: swap.w [+%a1], -1, %d14
# CHECK: encoding: [0x49,0x1e,0x3f,0xf4]
.code32
swap.w [+%a1], -1, %d14

# CHECK-INST: swap.w [+%a1], -1, %d15
# CHECK: encoding: [0x49,0x1f,0x3f,0xf4]
.code32
swap.w [+%a1], -1, %d15

# CHECK-INST: swap.w [+%a1], 0, %d0
# CHECK: encoding: [0x49,0x10,0x00,0x04]
.code32
swap.w [+%a1], 0, %d0

# CHECK-INST: swap.w [+%a1], 0, %d1
# CHECK: encoding: [0x49,0x11,0x00,0x04]
.code32
swap.w [+%a1], 0, %d1

# CHECK-INST: swap.w [+%a1], 0, %d14
# CHECK: encoding: [0x49,0x1e,0x00,0x04]
.code32
swap.w [+%a1], 0, %d14

# CHECK-INST: swap.w [+%a1], 0, %d15
# CHECK: encoding: [0x49,0x1f,0x00,0x04]
.code32
swap.w [+%a1], 0, %d15

# CHECK-INST: swap.w [+%a1], 1, %d0
# CHECK: encoding: [0x49,0x10,0x01,0x04]
.code32
swap.w [+%a1], 1, %d0

# CHECK-INST: swap.w [+%a1], 1, %d1
# CHECK: encoding: [0x49,0x11,0x01,0x04]
.code32
swap.w [+%a1], 1, %d1

# CHECK-INST: swap.w [+%a1], 1, %d14
# CHECK: encoding: [0x49,0x1e,0x01,0x04]
.code32
swap.w [+%a1], 1, %d14

# CHECK-INST: swap.w [+%a1], 1, %d15
# CHECK: encoding: [0x49,0x1f,0x01,0x04]
.code32
swap.w [+%a1], 1, %d15

# CHECK-INST: swap.w [+%a1], 510, %d0
# CHECK: encoding: [0x49,0x10,0x3e,0x74]
.code32
swap.w [+%a1], 510, %d0

# CHECK-INST: swap.w [+%a1], 510, %d1
# CHECK: encoding: [0x49,0x11,0x3e,0x74]
.code32
swap.w [+%a1], 510, %d1

# CHECK-INST: swap.w [+%a1], 510, %d14
# CHECK: encoding: [0x49,0x1e,0x3e,0x74]
.code32
swap.w [+%a1], 510, %d14

# CHECK-INST: swap.w [+%a1], 510, %d15
# CHECK: encoding: [0x49,0x1f,0x3e,0x74]
.code32
swap.w [+%a1], 510, %d15

# CHECK-INST: swap.w [+%a1], 511, %d0
# CHECK: encoding: [0x49,0x10,0x3f,0x74]
.code32
swap.w [+%a1], 511, %d0

# CHECK-INST: swap.w [+%a1], 511, %d1
# CHECK: encoding: [0x49,0x11,0x3f,0x74]
.code32
swap.w [+%a1], 511, %d1

# CHECK-INST: swap.w [+%a1], 511, %d14
# CHECK: encoding: [0x49,0x1e,0x3f,0x74]
.code32
swap.w [+%a1], 511, %d14

# CHECK-INST: swap.w [+%a1], 511, %d15
# CHECK: encoding: [0x49,0x1f,0x3f,0x74]
.code32
swap.w [+%a1], 511, %d15

# CHECK-INST: swap.w [+%a14], -512, %d0
# CHECK: encoding: [0x49,0xe0,0x00,0x84]
.code32
swap.w [+%a14], -512, %d0

# CHECK-INST: swap.w [+%a14], -512, %d1
# CHECK: encoding: [0x49,0xe1,0x00,0x84]
.code32
swap.w [+%a14], -512, %d1

# CHECK-INST: swap.w [+%a14], -512, %d14
# CHECK: encoding: [0x49,0xee,0x00,0x84]
.code32
swap.w [+%a14], -512, %d14

# CHECK-INST: swap.w [+%a14], -512, %d15
# CHECK: encoding: [0x49,0xef,0x00,0x84]
.code32
swap.w [+%a14], -512, %d15

# CHECK-INST: swap.w [+%a14], -511, %d0
# CHECK: encoding: [0x49,0xe0,0x01,0x84]
.code32
swap.w [+%a14], -511, %d0

# CHECK-INST: swap.w [+%a14], -511, %d1
# CHECK: encoding: [0x49,0xe1,0x01,0x84]
.code32
swap.w [+%a14], -511, %d1

# CHECK-INST: swap.w [+%a14], -511, %d14
# CHECK: encoding: [0x49,0xee,0x01,0x84]
.code32
swap.w [+%a14], -511, %d14

# CHECK-INST: swap.w [+%a14], -511, %d15
# CHECK: encoding: [0x49,0xef,0x01,0x84]
.code32
swap.w [+%a14], -511, %d15

# CHECK-INST: swap.w [+%a14], -2, %d0
# CHECK: encoding: [0x49,0xe0,0x3e,0xf4]
.code32
swap.w [+%a14], -2, %d0

# CHECK-INST: swap.w [+%a14], -2, %d1
# CHECK: encoding: [0x49,0xe1,0x3e,0xf4]
.code32
swap.w [+%a14], -2, %d1

# CHECK-INST: swap.w [+%a14], -2, %d14
# CHECK: encoding: [0x49,0xee,0x3e,0xf4]
.code32
swap.w [+%a14], -2, %d14

# CHECK-INST: swap.w [+%a14], -2, %d15
# CHECK: encoding: [0x49,0xef,0x3e,0xf4]
.code32
swap.w [+%a14], -2, %d15

# CHECK-INST: swap.w [+%a14], -1, %d0
# CHECK: encoding: [0x49,0xe0,0x3f,0xf4]
.code32
swap.w [+%a14], -1, %d0

# CHECK-INST: swap.w [+%a14], -1, %d1
# CHECK: encoding: [0x49,0xe1,0x3f,0xf4]
.code32
swap.w [+%a14], -1, %d1

# CHECK-INST: swap.w [+%a14], -1, %d14
# CHECK: encoding: [0x49,0xee,0x3f,0xf4]
.code32
swap.w [+%a14], -1, %d14

# CHECK-INST: swap.w [+%a14], -1, %d15
# CHECK: encoding: [0x49,0xef,0x3f,0xf4]
.code32
swap.w [+%a14], -1, %d15

# CHECK-INST: swap.w [+%a14], 0, %d0
# CHECK: encoding: [0x49,0xe0,0x00,0x04]
.code32
swap.w [+%a14], 0, %d0

# CHECK-INST: swap.w [+%a14], 0, %d1
# CHECK: encoding: [0x49,0xe1,0x00,0x04]
.code32
swap.w [+%a14], 0, %d1

# CHECK-INST: swap.w [+%a14], 0, %d14
# CHECK: encoding: [0x49,0xee,0x00,0x04]
.code32
swap.w [+%a14], 0, %d14

# CHECK-INST: swap.w [+%a14], 0, %d15
# CHECK: encoding: [0x49,0xef,0x00,0x04]
.code32
swap.w [+%a14], 0, %d15

# CHECK-INST: swap.w [+%a14], 1, %d0
# CHECK: encoding: [0x49,0xe0,0x01,0x04]
.code32
swap.w [+%a14], 1, %d0

# CHECK-INST: swap.w [+%a14], 1, %d1
# CHECK: encoding: [0x49,0xe1,0x01,0x04]
.code32
swap.w [+%a14], 1, %d1

# CHECK-INST: swap.w [+%a14], 1, %d14
# CHECK: encoding: [0x49,0xee,0x01,0x04]
.code32
swap.w [+%a14], 1, %d14

# CHECK-INST: swap.w [+%a14], 1, %d15
# CHECK: encoding: [0x49,0xef,0x01,0x04]
.code32
swap.w [+%a14], 1, %d15

# CHECK-INST: swap.w [+%a14], 510, %d0
# CHECK: encoding: [0x49,0xe0,0x3e,0x74]
.code32
swap.w [+%a14], 510, %d0

# CHECK-INST: swap.w [+%a14], 510, %d1
# CHECK: encoding: [0x49,0xe1,0x3e,0x74]
.code32
swap.w [+%a14], 510, %d1

# CHECK-INST: swap.w [+%a14], 510, %d14
# CHECK: encoding: [0x49,0xee,0x3e,0x74]
.code32
swap.w [+%a14], 510, %d14

# CHECK-INST: swap.w [+%a14], 510, %d15
# CHECK: encoding: [0x49,0xef,0x3e,0x74]
.code32
swap.w [+%a14], 510, %d15

# CHECK-INST: swap.w [+%a14], 511, %d0
# CHECK: encoding: [0x49,0xe0,0x3f,0x74]
.code32
swap.w [+%a14], 511, %d0

# CHECK-INST: swap.w [+%a14], 511, %d1
# CHECK: encoding: [0x49,0xe1,0x3f,0x74]
.code32
swap.w [+%a14], 511, %d1

# CHECK-INST: swap.w [+%a14], 511, %d14
# CHECK: encoding: [0x49,0xee,0x3f,0x74]
.code32
swap.w [+%a14], 511, %d14

# CHECK-INST: swap.w [+%a14], 511, %d15
# CHECK: encoding: [0x49,0xef,0x3f,0x74]
.code32
swap.w [+%a14], 511, %d15

# CHECK-INST: swap.w [+%a15], -512, %d0
# CHECK: encoding: [0x49,0xf0,0x00,0x84]
.code32
swap.w [+%a15], -512, %d0

# CHECK-INST: swap.w [+%a15], -512, %d1
# CHECK: encoding: [0x49,0xf1,0x00,0x84]
.code32
swap.w [+%a15], -512, %d1

# CHECK-INST: swap.w [+%a15], -512, %d14
# CHECK: encoding: [0x49,0xfe,0x00,0x84]
.code32
swap.w [+%a15], -512, %d14

# CHECK-INST: swap.w [+%a15], -512, %d15
# CHECK: encoding: [0x49,0xff,0x00,0x84]
.code32
swap.w [+%a15], -512, %d15

# CHECK-INST: swap.w [+%a15], -511, %d0
# CHECK: encoding: [0x49,0xf0,0x01,0x84]
.code32
swap.w [+%a15], -511, %d0

# CHECK-INST: swap.w [+%a15], -511, %d1
# CHECK: encoding: [0x49,0xf1,0x01,0x84]
.code32
swap.w [+%a15], -511, %d1

# CHECK-INST: swap.w [+%a15], -511, %d14
# CHECK: encoding: [0x49,0xfe,0x01,0x84]
.code32
swap.w [+%a15], -511, %d14

# CHECK-INST: swap.w [+%a15], -511, %d15
# CHECK: encoding: [0x49,0xff,0x01,0x84]
.code32
swap.w [+%a15], -511, %d15

# CHECK-INST: swap.w [+%a15], -2, %d0
# CHECK: encoding: [0x49,0xf0,0x3e,0xf4]
.code32
swap.w [+%a15], -2, %d0

# CHECK-INST: swap.w [+%a15], -2, %d1
# CHECK: encoding: [0x49,0xf1,0x3e,0xf4]
.code32
swap.w [+%a15], -2, %d1

# CHECK-INST: swap.w [+%a15], -2, %d14
# CHECK: encoding: [0x49,0xfe,0x3e,0xf4]
.code32
swap.w [+%a15], -2, %d14

# CHECK-INST: swap.w [+%a15], -2, %d15
# CHECK: encoding: [0x49,0xff,0x3e,0xf4]
.code32
swap.w [+%a15], -2, %d15

# CHECK-INST: swap.w [+%a15], -1, %d0
# CHECK: encoding: [0x49,0xf0,0x3f,0xf4]
.code32
swap.w [+%a15], -1, %d0

# CHECK-INST: swap.w [+%a15], -1, %d1
# CHECK: encoding: [0x49,0xf1,0x3f,0xf4]
.code32
swap.w [+%a15], -1, %d1

# CHECK-INST: swap.w [+%a15], -1, %d14
# CHECK: encoding: [0x49,0xfe,0x3f,0xf4]
.code32
swap.w [+%a15], -1, %d14

# CHECK-INST: swap.w [+%a15], -1, %d15
# CHECK: encoding: [0x49,0xff,0x3f,0xf4]
.code32
swap.w [+%a15], -1, %d15

# CHECK-INST: swap.w [+%a15], 0, %d0
# CHECK: encoding: [0x49,0xf0,0x00,0x04]
.code32
swap.w [+%a15], 0, %d0

# CHECK-INST: swap.w [+%a15], 0, %d1
# CHECK: encoding: [0x49,0xf1,0x00,0x04]
.code32
swap.w [+%a15], 0, %d1

# CHECK-INST: swap.w [+%a15], 0, %d14
# CHECK: encoding: [0x49,0xfe,0x00,0x04]
.code32
swap.w [+%a15], 0, %d14

# CHECK-INST: swap.w [+%a15], 0, %d15
# CHECK: encoding: [0x49,0xff,0x00,0x04]
.code32
swap.w [+%a15], 0, %d15

# CHECK-INST: swap.w [+%a15], 1, %d0
# CHECK: encoding: [0x49,0xf0,0x01,0x04]
.code32
swap.w [+%a15], 1, %d0

# CHECK-INST: swap.w [+%a15], 1, %d1
# CHECK: encoding: [0x49,0xf1,0x01,0x04]
.code32
swap.w [+%a15], 1, %d1

# CHECK-INST: swap.w [+%a15], 1, %d14
# CHECK: encoding: [0x49,0xfe,0x01,0x04]
.code32
swap.w [+%a15], 1, %d14

# CHECK-INST: swap.w [+%a15], 1, %d15
# CHECK: encoding: [0x49,0xff,0x01,0x04]
.code32
swap.w [+%a15], 1, %d15

# CHECK-INST: swap.w [+%a15], 510, %d0
# CHECK: encoding: [0x49,0xf0,0x3e,0x74]
.code32
swap.w [+%a15], 510, %d0

# CHECK-INST: swap.w [+%a15], 510, %d1
# CHECK: encoding: [0x49,0xf1,0x3e,0x74]
.code32
swap.w [+%a15], 510, %d1

# CHECK-INST: swap.w [+%a15], 510, %d14
# CHECK: encoding: [0x49,0xfe,0x3e,0x74]
.code32
swap.w [+%a15], 510, %d14

# CHECK-INST: swap.w [+%a15], 510, %d15
# CHECK: encoding: [0x49,0xff,0x3e,0x74]
.code32
swap.w [+%a15], 510, %d15

# CHECK-INST: swap.w [+%a15], 511, %d0
# CHECK: encoding: [0x49,0xf0,0x3f,0x74]
.code32
swap.w [+%a15], 511, %d0

# CHECK-INST: swap.w [+%a15], 511, %d1
# CHECK: encoding: [0x49,0xf1,0x3f,0x74]
.code32
swap.w [+%a15], 511, %d1

# CHECK-INST: swap.w [+%a15], 511, %d14
# CHECK: encoding: [0x49,0xfe,0x3f,0x74]
.code32
swap.w [+%a15], 511, %d14

# CHECK-INST: swap.w [+%a15], 511, %d15
# CHECK: encoding: [0x49,0xff,0x3f,0x74]
.code32
swap.w [+%a15], 511, %d15

# CHECK-INST: cmpswap.w [%a0], -512, %e0
# CHECK: encoding: [0x49,0x00,0xc0,0x88]
.code32
cmpswap.w [%a0], -512, %e0

# CHECK-INST: cmpswap.w [%a0], -512, %e2
# CHECK: encoding: [0x49,0x02,0xc0,0x88]
.code32
cmpswap.w [%a0], -512, %e2

# CHECK-INST: cmpswap.w [%a0], -512, %e4
# CHECK: encoding: [0x49,0x04,0xc0,0x88]
.code32
cmpswap.w [%a0], -512, %e4

# CHECK-INST: cmpswap.w [%a0], -512, %e8
# CHECK: encoding: [0x49,0x08,0xc0,0x88]
.code32
cmpswap.w [%a0], -512, %e8

# CHECK-INST: cmpswap.w [%a0], -511, %e0
# CHECK: encoding: [0x49,0x00,0xc1,0x88]
.code32
cmpswap.w [%a0], -511, %e0

# CHECK-INST: cmpswap.w [%a0], -511, %e2
# CHECK: encoding: [0x49,0x02,0xc1,0x88]
.code32
cmpswap.w [%a0], -511, %e2

# CHECK-INST: cmpswap.w [%a0], -511, %e4
# CHECK: encoding: [0x49,0x04,0xc1,0x88]
.code32
cmpswap.w [%a0], -511, %e4

# CHECK-INST: cmpswap.w [%a0], -511, %e8
# CHECK: encoding: [0x49,0x08,0xc1,0x88]
.code32
cmpswap.w [%a0], -511, %e8

# CHECK-INST: cmpswap.w [%a0], -2, %e0
# CHECK: encoding: [0x49,0x00,0xfe,0xf8]
.code32
cmpswap.w [%a0], -2, %e0

# CHECK-INST: cmpswap.w [%a0], -2, %e2
# CHECK: encoding: [0x49,0x02,0xfe,0xf8]
.code32
cmpswap.w [%a0], -2, %e2

# CHECK-INST: cmpswap.w [%a0], -2, %e4
# CHECK: encoding: [0x49,0x04,0xfe,0xf8]
.code32
cmpswap.w [%a0], -2, %e4

# CHECK-INST: cmpswap.w [%a0], -2, %e8
# CHECK: encoding: [0x49,0x08,0xfe,0xf8]
.code32
cmpswap.w [%a0], -2, %e8

# CHECK-INST: cmpswap.w [%a0], -1, %e0
# CHECK: encoding: [0x49,0x00,0xff,0xf8]
.code32
cmpswap.w [%a0], -1, %e0

# CHECK-INST: cmpswap.w [%a0], -1, %e2
# CHECK: encoding: [0x49,0x02,0xff,0xf8]
.code32
cmpswap.w [%a0], -1, %e2

# CHECK-INST: cmpswap.w [%a0], -1, %e4
# CHECK: encoding: [0x49,0x04,0xff,0xf8]
.code32
cmpswap.w [%a0], -1, %e4

# CHECK-INST: cmpswap.w [%a0], -1, %e8
# CHECK: encoding: [0x49,0x08,0xff,0xf8]
.code32
cmpswap.w [%a0], -1, %e8

# CHECK-INST: cmpswap.w [%a0], 0, %e0
# CHECK: encoding: [0x49,0x00,0xc0,0x08]
.code32
cmpswap.w [%a0], 0, %e0

# CHECK-INST: cmpswap.w [%a0], 0, %e2
# CHECK: encoding: [0x49,0x02,0xc0,0x08]
.code32
cmpswap.w [%a0], 0, %e2

# CHECK-INST: cmpswap.w [%a0], 0, %e4
# CHECK: encoding: [0x49,0x04,0xc0,0x08]
.code32
cmpswap.w [%a0], 0, %e4

# CHECK-INST: cmpswap.w [%a0], 0, %e8
# CHECK: encoding: [0x49,0x08,0xc0,0x08]
.code32
cmpswap.w [%a0], 0, %e8

# CHECK-INST: cmpswap.w [%a0], 1, %e0
# CHECK: encoding: [0x49,0x00,0xc1,0x08]
.code32
cmpswap.w [%a0], 1, %e0

# CHECK-INST: cmpswap.w [%a0], 1, %e2
# CHECK: encoding: [0x49,0x02,0xc1,0x08]
.code32
cmpswap.w [%a0], 1, %e2

# CHECK-INST: cmpswap.w [%a0], 1, %e4
# CHECK: encoding: [0x49,0x04,0xc1,0x08]
.code32
cmpswap.w [%a0], 1, %e4

# CHECK-INST: cmpswap.w [%a0], 1, %e8
# CHECK: encoding: [0x49,0x08,0xc1,0x08]
.code32
cmpswap.w [%a0], 1, %e8

# CHECK-INST: cmpswap.w [%a0], 510, %e0
# CHECK: encoding: [0x49,0x00,0xfe,0x78]
.code32
cmpswap.w [%a0], 510, %e0

# CHECK-INST: cmpswap.w [%a0], 510, %e2
# CHECK: encoding: [0x49,0x02,0xfe,0x78]
.code32
cmpswap.w [%a0], 510, %e2

# CHECK-INST: cmpswap.w [%a0], 510, %e4
# CHECK: encoding: [0x49,0x04,0xfe,0x78]
.code32
cmpswap.w [%a0], 510, %e4

# CHECK-INST: cmpswap.w [%a0], 510, %e8
# CHECK: encoding: [0x49,0x08,0xfe,0x78]
.code32
cmpswap.w [%a0], 510, %e8

# CHECK-INST: cmpswap.w [%a0], 511, %e0
# CHECK: encoding: [0x49,0x00,0xff,0x78]
.code32
cmpswap.w [%a0], 511, %e0

# CHECK-INST: cmpswap.w [%a0], 511, %e2
# CHECK: encoding: [0x49,0x02,0xff,0x78]
.code32
cmpswap.w [%a0], 511, %e2

# CHECK-INST: cmpswap.w [%a0], 511, %e4
# CHECK: encoding: [0x49,0x04,0xff,0x78]
.code32
cmpswap.w [%a0], 511, %e4

# CHECK-INST: cmpswap.w [%a0], 511, %e8
# CHECK: encoding: [0x49,0x08,0xff,0x78]
.code32
cmpswap.w [%a0], 511, %e8

# CHECK-INST: cmpswap.w [%a1], -512, %e0
# CHECK: encoding: [0x49,0x10,0xc0,0x88]
.code32
cmpswap.w [%a1], -512, %e0

# CHECK-INST: cmpswap.w [%a1], -512, %e2
# CHECK: encoding: [0x49,0x12,0xc0,0x88]
.code32
cmpswap.w [%a1], -512, %e2

# CHECK-INST: cmpswap.w [%a1], -512, %e4
# CHECK: encoding: [0x49,0x14,0xc0,0x88]
.code32
cmpswap.w [%a1], -512, %e4

# CHECK-INST: cmpswap.w [%a1], -512, %e8
# CHECK: encoding: [0x49,0x18,0xc0,0x88]
.code32
cmpswap.w [%a1], -512, %e8

# CHECK-INST: cmpswap.w [%a1], -511, %e0
# CHECK: encoding: [0x49,0x10,0xc1,0x88]
.code32
cmpswap.w [%a1], -511, %e0

# CHECK-INST: cmpswap.w [%a1], -511, %e2
# CHECK: encoding: [0x49,0x12,0xc1,0x88]
.code32
cmpswap.w [%a1], -511, %e2

# CHECK-INST: cmpswap.w [%a1], -511, %e4
# CHECK: encoding: [0x49,0x14,0xc1,0x88]
.code32
cmpswap.w [%a1], -511, %e4

# CHECK-INST: cmpswap.w [%a1], -511, %e8
# CHECK: encoding: [0x49,0x18,0xc1,0x88]
.code32
cmpswap.w [%a1], -511, %e8

# CHECK-INST: cmpswap.w [%a1], -2, %e0
# CHECK: encoding: [0x49,0x10,0xfe,0xf8]
.code32
cmpswap.w [%a1], -2, %e0

# CHECK-INST: cmpswap.w [%a1], -2, %e2
# CHECK: encoding: [0x49,0x12,0xfe,0xf8]
.code32
cmpswap.w [%a1], -2, %e2

# CHECK-INST: cmpswap.w [%a1], -2, %e4
# CHECK: encoding: [0x49,0x14,0xfe,0xf8]
.code32
cmpswap.w [%a1], -2, %e4

# CHECK-INST: cmpswap.w [%a1], -2, %e8
# CHECK: encoding: [0x49,0x18,0xfe,0xf8]
.code32
cmpswap.w [%a1], -2, %e8

# CHECK-INST: cmpswap.w [%a1], -1, %e0
# CHECK: encoding: [0x49,0x10,0xff,0xf8]
.code32
cmpswap.w [%a1], -1, %e0

# CHECK-INST: cmpswap.w [%a1], -1, %e2
# CHECK: encoding: [0x49,0x12,0xff,0xf8]
.code32
cmpswap.w [%a1], -1, %e2

# CHECK-INST: cmpswap.w [%a1], -1, %e4
# CHECK: encoding: [0x49,0x14,0xff,0xf8]
.code32
cmpswap.w [%a1], -1, %e4

# CHECK-INST: cmpswap.w [%a1], -1, %e8
# CHECK: encoding: [0x49,0x18,0xff,0xf8]
.code32
cmpswap.w [%a1], -1, %e8

# CHECK-INST: cmpswap.w [%a1], 0, %e0
# CHECK: encoding: [0x49,0x10,0xc0,0x08]
.code32
cmpswap.w [%a1], 0, %e0

# CHECK-INST: cmpswap.w [%a1], 0, %e2
# CHECK: encoding: [0x49,0x12,0xc0,0x08]
.code32
cmpswap.w [%a1], 0, %e2

# CHECK-INST: cmpswap.w [%a1], 0, %e4
# CHECK: encoding: [0x49,0x14,0xc0,0x08]
.code32
cmpswap.w [%a1], 0, %e4

# CHECK-INST: cmpswap.w [%a1], 0, %e8
# CHECK: encoding: [0x49,0x18,0xc0,0x08]
.code32
cmpswap.w [%a1], 0, %e8

# CHECK-INST: cmpswap.w [%a1], 1, %e0
# CHECK: encoding: [0x49,0x10,0xc1,0x08]
.code32
cmpswap.w [%a1], 1, %e0

# CHECK-INST: cmpswap.w [%a1], 1, %e2
# CHECK: encoding: [0x49,0x12,0xc1,0x08]
.code32
cmpswap.w [%a1], 1, %e2

# CHECK-INST: cmpswap.w [%a1], 1, %e4
# CHECK: encoding: [0x49,0x14,0xc1,0x08]
.code32
cmpswap.w [%a1], 1, %e4

# CHECK-INST: cmpswap.w [%a1], 1, %e8
# CHECK: encoding: [0x49,0x18,0xc1,0x08]
.code32
cmpswap.w [%a1], 1, %e8

# CHECK-INST: cmpswap.w [%a1], 510, %e0
# CHECK: encoding: [0x49,0x10,0xfe,0x78]
.code32
cmpswap.w [%a1], 510, %e0

# CHECK-INST: cmpswap.w [%a1], 510, %e2
# CHECK: encoding: [0x49,0x12,0xfe,0x78]
.code32
cmpswap.w [%a1], 510, %e2

# CHECK-INST: cmpswap.w [%a1], 510, %e4
# CHECK: encoding: [0x49,0x14,0xfe,0x78]
.code32
cmpswap.w [%a1], 510, %e4

# CHECK-INST: cmpswap.w [%a1], 510, %e8
# CHECK: encoding: [0x49,0x18,0xfe,0x78]
.code32
cmpswap.w [%a1], 510, %e8

# CHECK-INST: cmpswap.w [%a1], 511, %e0
# CHECK: encoding: [0x49,0x10,0xff,0x78]
.code32
cmpswap.w [%a1], 511, %e0

# CHECK-INST: cmpswap.w [%a1], 511, %e2
# CHECK: encoding: [0x49,0x12,0xff,0x78]
.code32
cmpswap.w [%a1], 511, %e2

# CHECK-INST: cmpswap.w [%a1], 511, %e4
# CHECK: encoding: [0x49,0x14,0xff,0x78]
.code32
cmpswap.w [%a1], 511, %e4

# CHECK-INST: cmpswap.w [%a1], 511, %e8
# CHECK: encoding: [0x49,0x18,0xff,0x78]
.code32
cmpswap.w [%a1], 511, %e8

# CHECK-INST: cmpswap.w [%a14], -512, %e0
# CHECK: encoding: [0x49,0xe0,0xc0,0x88]
.code32
cmpswap.w [%a14], -512, %e0

# CHECK-INST: cmpswap.w [%a14], -512, %e2
# CHECK: encoding: [0x49,0xe2,0xc0,0x88]
.code32
cmpswap.w [%a14], -512, %e2

# CHECK-INST: cmpswap.w [%a14], -512, %e4
# CHECK: encoding: [0x49,0xe4,0xc0,0x88]
.code32
cmpswap.w [%a14], -512, %e4

# CHECK-INST: cmpswap.w [%a14], -512, %e8
# CHECK: encoding: [0x49,0xe8,0xc0,0x88]
.code32
cmpswap.w [%a14], -512, %e8

# CHECK-INST: cmpswap.w [%a14], -511, %e0
# CHECK: encoding: [0x49,0xe0,0xc1,0x88]
.code32
cmpswap.w [%a14], -511, %e0

# CHECK-INST: cmpswap.w [%a14], -511, %e2
# CHECK: encoding: [0x49,0xe2,0xc1,0x88]
.code32
cmpswap.w [%a14], -511, %e2

# CHECK-INST: cmpswap.w [%a14], -511, %e4
# CHECK: encoding: [0x49,0xe4,0xc1,0x88]
.code32
cmpswap.w [%a14], -511, %e4

# CHECK-INST: cmpswap.w [%a14], -511, %e8
# CHECK: encoding: [0x49,0xe8,0xc1,0x88]
.code32
cmpswap.w [%a14], -511, %e8

# CHECK-INST: cmpswap.w [%a14], -2, %e0
# CHECK: encoding: [0x49,0xe0,0xfe,0xf8]
.code32
cmpswap.w [%a14], -2, %e0

# CHECK-INST: cmpswap.w [%a14], -2, %e2
# CHECK: encoding: [0x49,0xe2,0xfe,0xf8]
.code32
cmpswap.w [%a14], -2, %e2

# CHECK-INST: cmpswap.w [%a14], -2, %e4
# CHECK: encoding: [0x49,0xe4,0xfe,0xf8]
.code32
cmpswap.w [%a14], -2, %e4

# CHECK-INST: cmpswap.w [%a14], -2, %e8
# CHECK: encoding: [0x49,0xe8,0xfe,0xf8]
.code32
cmpswap.w [%a14], -2, %e8

# CHECK-INST: cmpswap.w [%a14], -1, %e0
# CHECK: encoding: [0x49,0xe0,0xff,0xf8]
.code32
cmpswap.w [%a14], -1, %e0

# CHECK-INST: cmpswap.w [%a14], -1, %e2
# CHECK: encoding: [0x49,0xe2,0xff,0xf8]
.code32
cmpswap.w [%a14], -1, %e2

# CHECK-INST: cmpswap.w [%a14], -1, %e4
# CHECK: encoding: [0x49,0xe4,0xff,0xf8]
.code32
cmpswap.w [%a14], -1, %e4

# CHECK-INST: cmpswap.w [%a14], -1, %e8
# CHECK: encoding: [0x49,0xe8,0xff,0xf8]
.code32
cmpswap.w [%a14], -1, %e8

# CHECK-INST: cmpswap.w [%a14], 0, %e0
# CHECK: encoding: [0x49,0xe0,0xc0,0x08]
.code32
cmpswap.w [%a14], 0, %e0

# CHECK-INST: cmpswap.w [%a14], 0, %e2
# CHECK: encoding: [0x49,0xe2,0xc0,0x08]
.code32
cmpswap.w [%a14], 0, %e2

# CHECK-INST: cmpswap.w [%a14], 0, %e4
# CHECK: encoding: [0x49,0xe4,0xc0,0x08]
.code32
cmpswap.w [%a14], 0, %e4

# CHECK-INST: cmpswap.w [%a14], 0, %e8
# CHECK: encoding: [0x49,0xe8,0xc0,0x08]
.code32
cmpswap.w [%a14], 0, %e8

# CHECK-INST: cmpswap.w [%a14], 1, %e0
# CHECK: encoding: [0x49,0xe0,0xc1,0x08]
.code32
cmpswap.w [%a14], 1, %e0

# CHECK-INST: cmpswap.w [%a14], 1, %e2
# CHECK: encoding: [0x49,0xe2,0xc1,0x08]
.code32
cmpswap.w [%a14], 1, %e2

# CHECK-INST: cmpswap.w [%a14], 1, %e4
# CHECK: encoding: [0x49,0xe4,0xc1,0x08]
.code32
cmpswap.w [%a14], 1, %e4

# CHECK-INST: cmpswap.w [%a14], 1, %e8
# CHECK: encoding: [0x49,0xe8,0xc1,0x08]
.code32
cmpswap.w [%a14], 1, %e8

# CHECK-INST: cmpswap.w [%a14], 510, %e0
# CHECK: encoding: [0x49,0xe0,0xfe,0x78]
.code32
cmpswap.w [%a14], 510, %e0

# CHECK-INST: cmpswap.w [%a14], 510, %e2
# CHECK: encoding: [0x49,0xe2,0xfe,0x78]
.code32
cmpswap.w [%a14], 510, %e2

# CHECK-INST: cmpswap.w [%a14], 510, %e4
# CHECK: encoding: [0x49,0xe4,0xfe,0x78]
.code32
cmpswap.w [%a14], 510, %e4

# CHECK-INST: cmpswap.w [%a14], 510, %e8
# CHECK: encoding: [0x49,0xe8,0xfe,0x78]
.code32
cmpswap.w [%a14], 510, %e8

# CHECK-INST: cmpswap.w [%a14], 511, %e0
# CHECK: encoding: [0x49,0xe0,0xff,0x78]
.code32
cmpswap.w [%a14], 511, %e0

# CHECK-INST: cmpswap.w [%a14], 511, %e2
# CHECK: encoding: [0x49,0xe2,0xff,0x78]
.code32
cmpswap.w [%a14], 511, %e2

# CHECK-INST: cmpswap.w [%a14], 511, %e4
# CHECK: encoding: [0x49,0xe4,0xff,0x78]
.code32
cmpswap.w [%a14], 511, %e4

# CHECK-INST: cmpswap.w [%a14], 511, %e8
# CHECK: encoding: [0x49,0xe8,0xff,0x78]
.code32
cmpswap.w [%a14], 511, %e8

# CHECK-INST: cmpswap.w [%a15], -512, %e0
# CHECK: encoding: [0x49,0xf0,0xc0,0x88]
.code32
cmpswap.w [%a15], -512, %e0

# CHECK-INST: cmpswap.w [%a15], -512, %e2
# CHECK: encoding: [0x49,0xf2,0xc0,0x88]
.code32
cmpswap.w [%a15], -512, %e2

# CHECK-INST: cmpswap.w [%a15], -512, %e4
# CHECK: encoding: [0x49,0xf4,0xc0,0x88]
.code32
cmpswap.w [%a15], -512, %e4

# CHECK-INST: cmpswap.w [%a15], -512, %e8
# CHECK: encoding: [0x49,0xf8,0xc0,0x88]
.code32
cmpswap.w [%a15], -512, %e8

# CHECK-INST: cmpswap.w [%a15], -511, %e0
# CHECK: encoding: [0x49,0xf0,0xc1,0x88]
.code32
cmpswap.w [%a15], -511, %e0

# CHECK-INST: cmpswap.w [%a15], -511, %e2
# CHECK: encoding: [0x49,0xf2,0xc1,0x88]
.code32
cmpswap.w [%a15], -511, %e2

# CHECK-INST: cmpswap.w [%a15], -511, %e4
# CHECK: encoding: [0x49,0xf4,0xc1,0x88]
.code32
cmpswap.w [%a15], -511, %e4

# CHECK-INST: cmpswap.w [%a15], -511, %e8
# CHECK: encoding: [0x49,0xf8,0xc1,0x88]
.code32
cmpswap.w [%a15], -511, %e8

# CHECK-INST: cmpswap.w [%a15], -2, %e0
# CHECK: encoding: [0x49,0xf0,0xfe,0xf8]
.code32
cmpswap.w [%a15], -2, %e0

# CHECK-INST: cmpswap.w [%a15], -2, %e2
# CHECK: encoding: [0x49,0xf2,0xfe,0xf8]
.code32
cmpswap.w [%a15], -2, %e2

# CHECK-INST: cmpswap.w [%a15], -2, %e4
# CHECK: encoding: [0x49,0xf4,0xfe,0xf8]
.code32
cmpswap.w [%a15], -2, %e4

# CHECK-INST: cmpswap.w [%a15], -2, %e8
# CHECK: encoding: [0x49,0xf8,0xfe,0xf8]
.code32
cmpswap.w [%a15], -2, %e8

# CHECK-INST: cmpswap.w [%a15], -1, %e0
# CHECK: encoding: [0x49,0xf0,0xff,0xf8]
.code32
cmpswap.w [%a15], -1, %e0

# CHECK-INST: cmpswap.w [%a15], -1, %e2
# CHECK: encoding: [0x49,0xf2,0xff,0xf8]
.code32
cmpswap.w [%a15], -1, %e2

# CHECK-INST: cmpswap.w [%a15], -1, %e4
# CHECK: encoding: [0x49,0xf4,0xff,0xf8]
.code32
cmpswap.w [%a15], -1, %e4

# CHECK-INST: cmpswap.w [%a15], -1, %e8
# CHECK: encoding: [0x49,0xf8,0xff,0xf8]
.code32
cmpswap.w [%a15], -1, %e8

# CHECK-INST: cmpswap.w [%a15], 0, %e0
# CHECK: encoding: [0x49,0xf0,0xc0,0x08]
.code32
cmpswap.w [%a15], 0, %e0

# CHECK-INST: cmpswap.w [%a15], 0, %e2
# CHECK: encoding: [0x49,0xf2,0xc0,0x08]
.code32
cmpswap.w [%a15], 0, %e2

# CHECK-INST: cmpswap.w [%a15], 0, %e4
# CHECK: encoding: [0x49,0xf4,0xc0,0x08]
.code32
cmpswap.w [%a15], 0, %e4

# CHECK-INST: cmpswap.w [%a15], 0, %e8
# CHECK: encoding: [0x49,0xf8,0xc0,0x08]
.code32
cmpswap.w [%a15], 0, %e8

# CHECK-INST: cmpswap.w [%a15], 1, %e0
# CHECK: encoding: [0x49,0xf0,0xc1,0x08]
.code32
cmpswap.w [%a15], 1, %e0

# CHECK-INST: cmpswap.w [%a15], 1, %e2
# CHECK: encoding: [0x49,0xf2,0xc1,0x08]
.code32
cmpswap.w [%a15], 1, %e2

# CHECK-INST: cmpswap.w [%a15], 1, %e4
# CHECK: encoding: [0x49,0xf4,0xc1,0x08]
.code32
cmpswap.w [%a15], 1, %e4

# CHECK-INST: cmpswap.w [%a15], 1, %e8
# CHECK: encoding: [0x49,0xf8,0xc1,0x08]
.code32
cmpswap.w [%a15], 1, %e8

# CHECK-INST: cmpswap.w [%a15], 510, %e0
# CHECK: encoding: [0x49,0xf0,0xfe,0x78]
.code32
cmpswap.w [%a15], 510, %e0

# CHECK-INST: cmpswap.w [%a15], 510, %e2
# CHECK: encoding: [0x49,0xf2,0xfe,0x78]
.code32
cmpswap.w [%a15], 510, %e2

# CHECK-INST: cmpswap.w [%a15], 510, %e4
# CHECK: encoding: [0x49,0xf4,0xfe,0x78]
.code32
cmpswap.w [%a15], 510, %e4

# CHECK-INST: cmpswap.w [%a15], 510, %e8
# CHECK: encoding: [0x49,0xf8,0xfe,0x78]
.code32
cmpswap.w [%a15], 510, %e8

# CHECK-INST: cmpswap.w [%a15], 511, %e0
# CHECK: encoding: [0x49,0xf0,0xff,0x78]
.code32
cmpswap.w [%a15], 511, %e0

# CHECK-INST: cmpswap.w [%a15], 511, %e2
# CHECK: encoding: [0x49,0xf2,0xff,0x78]
.code32
cmpswap.w [%a15], 511, %e2

# CHECK-INST: cmpswap.w [%a15], 511, %e4
# CHECK: encoding: [0x49,0xf4,0xff,0x78]
.code32
cmpswap.w [%a15], 511, %e4

# CHECK-INST: cmpswap.w [%a15], 511, %e8
# CHECK: encoding: [0x49,0xf8,0xff,0x78]
.code32
cmpswap.w [%a15], 511, %e8

# CHECK-INST: cmpswap.w [%p0 + r], %e0
# CHECK: encoding: [0x69,0x00,0xc0,0x00]
.code32
cmpswap.w [%p0 + r], %e0

# CHECK-INST: cmpswap.w [%p0 + r], %e2
# CHECK: encoding: [0x69,0x02,0xc0,0x00]
.code32
cmpswap.w [%p0 + r], %e2

# CHECK-INST: cmpswap.w [%p0 + r], %e4
# CHECK: encoding: [0x69,0x04,0xc0,0x00]
.code32
cmpswap.w [%p0 + r], %e4

# CHECK-INST: cmpswap.w [%p0 + r], %e8
# CHECK: encoding: [0x69,0x08,0xc0,0x00]
.code32
cmpswap.w [%p0 + r], %e8

# CHECK-INST: cmpswap.w [%p2 + r], %e0
# CHECK: encoding: [0x69,0x20,0xc0,0x00]
.code32
cmpswap.w [%p2 + r], %e0

# CHECK-INST: cmpswap.w [%p2 + r], %e2
# CHECK: encoding: [0x69,0x22,0xc0,0x00]
.code32
cmpswap.w [%p2 + r], %e2

# CHECK-INST: cmpswap.w [%p2 + r], %e4
# CHECK: encoding: [0x69,0x24,0xc0,0x00]
.code32
cmpswap.w [%p2 + r], %e4

# CHECK-INST: cmpswap.w [%p2 + r], %e8
# CHECK: encoding: [0x69,0x28,0xc0,0x00]
.code32
cmpswap.w [%p2 + r], %e8

# CHECK-INST: cmpswap.w [%p4 + r], %e0
# CHECK: encoding: [0x69,0x40,0xc0,0x00]
.code32
cmpswap.w [%p4 + r], %e0

# CHECK-INST: cmpswap.w [%p4 + r], %e2
# CHECK: encoding: [0x69,0x42,0xc0,0x00]
.code32
cmpswap.w [%p4 + r], %e2

# CHECK-INST: cmpswap.w [%p4 + r], %e4
# CHECK: encoding: [0x69,0x44,0xc0,0x00]
.code32
cmpswap.w [%p4 + r], %e4

# CHECK-INST: cmpswap.w [%p4 + r], %e8
# CHECK: encoding: [0x69,0x48,0xc0,0x00]
.code32
cmpswap.w [%p4 + r], %e8

# CHECK-INST: cmpswap.w [%p8 + r], %e0
# CHECK: encoding: [0x69,0x80,0xc0,0x00]
.code32
cmpswap.w [%p8 + r], %e0

# CHECK-INST: cmpswap.w [%p8 + r], %e2
# CHECK: encoding: [0x69,0x82,0xc0,0x00]
.code32
cmpswap.w [%p8 + r], %e2

# CHECK-INST: cmpswap.w [%p8 + r], %e4
# CHECK: encoding: [0x69,0x84,0xc0,0x00]
.code32
cmpswap.w [%p8 + r], %e4

# CHECK-INST: cmpswap.w [%p8 + r], %e8
# CHECK: encoding: [0x69,0x88,0xc0,0x00]
.code32
cmpswap.w [%p8 + r], %e8

# CHECK-INST: cmpswap.w [%p0 + c], -512, %e0
# CHECK: encoding: [0x69,0x00,0xc0,0x84]
.code32
cmpswap.w [%p0 + c], -512, %e0

# CHECK-INST: cmpswap.w [%p0 + c], -512, %e2
# CHECK: encoding: [0x69,0x02,0xc0,0x84]
.code32
cmpswap.w [%p0 + c], -512, %e2

# CHECK-INST: cmpswap.w [%p0 + c], -512, %e4
# CHECK: encoding: [0x69,0x04,0xc0,0x84]
.code32
cmpswap.w [%p0 + c], -512, %e4

# CHECK-INST: cmpswap.w [%p0 + c], -512, %e8
# CHECK: encoding: [0x69,0x08,0xc0,0x84]
.code32
cmpswap.w [%p0 + c], -512, %e8

# CHECK-INST: cmpswap.w [%p0 + c], -511, %e0
# CHECK: encoding: [0x69,0x00,0xc1,0x84]
.code32
cmpswap.w [%p0 + c], -511, %e0

# CHECK-INST: cmpswap.w [%p0 + c], -511, %e2
# CHECK: encoding: [0x69,0x02,0xc1,0x84]
.code32
cmpswap.w [%p0 + c], -511, %e2

# CHECK-INST: cmpswap.w [%p0 + c], -511, %e4
# CHECK: encoding: [0x69,0x04,0xc1,0x84]
.code32
cmpswap.w [%p0 + c], -511, %e4

# CHECK-INST: cmpswap.w [%p0 + c], -511, %e8
# CHECK: encoding: [0x69,0x08,0xc1,0x84]
.code32
cmpswap.w [%p0 + c], -511, %e8

# CHECK-INST: cmpswap.w [%p0 + c], -2, %e0
# CHECK: encoding: [0x69,0x00,0xfe,0xf4]
.code32
cmpswap.w [%p0 + c], -2, %e0

# CHECK-INST: cmpswap.w [%p0 + c], -2, %e2
# CHECK: encoding: [0x69,0x02,0xfe,0xf4]
.code32
cmpswap.w [%p0 + c], -2, %e2

# CHECK-INST: cmpswap.w [%p0 + c], -2, %e4
# CHECK: encoding: [0x69,0x04,0xfe,0xf4]
.code32
cmpswap.w [%p0 + c], -2, %e4

# CHECK-INST: cmpswap.w [%p0 + c], -2, %e8
# CHECK: encoding: [0x69,0x08,0xfe,0xf4]
.code32
cmpswap.w [%p0 + c], -2, %e8

# CHECK-INST: cmpswap.w [%p0 + c], -1, %e0
# CHECK: encoding: [0x69,0x00,0xff,0xf4]
.code32
cmpswap.w [%p0 + c], -1, %e0

# CHECK-INST: cmpswap.w [%p0 + c], -1, %e2
# CHECK: encoding: [0x69,0x02,0xff,0xf4]
.code32
cmpswap.w [%p0 + c], -1, %e2

# CHECK-INST: cmpswap.w [%p0 + c], -1, %e4
# CHECK: encoding: [0x69,0x04,0xff,0xf4]
.code32
cmpswap.w [%p0 + c], -1, %e4

# CHECK-INST: cmpswap.w [%p0 + c], -1, %e8
# CHECK: encoding: [0x69,0x08,0xff,0xf4]
.code32
cmpswap.w [%p0 + c], -1, %e8

# CHECK-INST: cmpswap.w [%p0 + c], 0, %e0
# CHECK: encoding: [0x69,0x00,0xc0,0x04]
.code32
cmpswap.w [%p0 + c], 0, %e0

# CHECK-INST: cmpswap.w [%p0 + c], 0, %e2
# CHECK: encoding: [0x69,0x02,0xc0,0x04]
.code32
cmpswap.w [%p0 + c], 0, %e2

# CHECK-INST: cmpswap.w [%p0 + c], 0, %e4
# CHECK: encoding: [0x69,0x04,0xc0,0x04]
.code32
cmpswap.w [%p0 + c], 0, %e4

# CHECK-INST: cmpswap.w [%p0 + c], 0, %e8
# CHECK: encoding: [0x69,0x08,0xc0,0x04]
.code32
cmpswap.w [%p0 + c], 0, %e8

# CHECK-INST: cmpswap.w [%p0 + c], 1, %e0
# CHECK: encoding: [0x69,0x00,0xc1,0x04]
.code32
cmpswap.w [%p0 + c], 1, %e0

# CHECK-INST: cmpswap.w [%p0 + c], 1, %e2
# CHECK: encoding: [0x69,0x02,0xc1,0x04]
.code32
cmpswap.w [%p0 + c], 1, %e2

# CHECK-INST: cmpswap.w [%p0 + c], 1, %e4
# CHECK: encoding: [0x69,0x04,0xc1,0x04]
.code32
cmpswap.w [%p0 + c], 1, %e4

# CHECK-INST: cmpswap.w [%p0 + c], 1, %e8
# CHECK: encoding: [0x69,0x08,0xc1,0x04]
.code32
cmpswap.w [%p0 + c], 1, %e8

# CHECK-INST: cmpswap.w [%p0 + c], 510, %e0
# CHECK: encoding: [0x69,0x00,0xfe,0x74]
.code32
cmpswap.w [%p0 + c], 510, %e0

# CHECK-INST: cmpswap.w [%p0 + c], 510, %e2
# CHECK: encoding: [0x69,0x02,0xfe,0x74]
.code32
cmpswap.w [%p0 + c], 510, %e2

# CHECK-INST: cmpswap.w [%p0 + c], 510, %e4
# CHECK: encoding: [0x69,0x04,0xfe,0x74]
.code32
cmpswap.w [%p0 + c], 510, %e4

# CHECK-INST: cmpswap.w [%p0 + c], 510, %e8
# CHECK: encoding: [0x69,0x08,0xfe,0x74]
.code32
cmpswap.w [%p0 + c], 510, %e8

# CHECK-INST: cmpswap.w [%p0 + c], 511, %e0
# CHECK: encoding: [0x69,0x00,0xff,0x74]
.code32
cmpswap.w [%p0 + c], 511, %e0

# CHECK-INST: cmpswap.w [%p0 + c], 511, %e2
# CHECK: encoding: [0x69,0x02,0xff,0x74]
.code32
cmpswap.w [%p0 + c], 511, %e2

# CHECK-INST: cmpswap.w [%p0 + c], 511, %e4
# CHECK: encoding: [0x69,0x04,0xff,0x74]
.code32
cmpswap.w [%p0 + c], 511, %e4

# CHECK-INST: cmpswap.w [%p0 + c], 511, %e8
# CHECK: encoding: [0x69,0x08,0xff,0x74]
.code32
cmpswap.w [%p0 + c], 511, %e8

# CHECK-INST: cmpswap.w [%p2 + c], -512, %e0
# CHECK: encoding: [0x69,0x20,0xc0,0x84]
.code32
cmpswap.w [%p2 + c], -512, %e0

# CHECK-INST: cmpswap.w [%p2 + c], -512, %e2
# CHECK: encoding: [0x69,0x22,0xc0,0x84]
.code32
cmpswap.w [%p2 + c], -512, %e2

# CHECK-INST: cmpswap.w [%p2 + c], -512, %e4
# CHECK: encoding: [0x69,0x24,0xc0,0x84]
.code32
cmpswap.w [%p2 + c], -512, %e4

# CHECK-INST: cmpswap.w [%p2 + c], -512, %e8
# CHECK: encoding: [0x69,0x28,0xc0,0x84]
.code32
cmpswap.w [%p2 + c], -512, %e8

# CHECK-INST: cmpswap.w [%p2 + c], -511, %e0
# CHECK: encoding: [0x69,0x20,0xc1,0x84]
.code32
cmpswap.w [%p2 + c], -511, %e0

# CHECK-INST: cmpswap.w [%p2 + c], -511, %e2
# CHECK: encoding: [0x69,0x22,0xc1,0x84]
.code32
cmpswap.w [%p2 + c], -511, %e2

# CHECK-INST: cmpswap.w [%p2 + c], -511, %e4
# CHECK: encoding: [0x69,0x24,0xc1,0x84]
.code32
cmpswap.w [%p2 + c], -511, %e4

# CHECK-INST: cmpswap.w [%p2 + c], -511, %e8
# CHECK: encoding: [0x69,0x28,0xc1,0x84]
.code32
cmpswap.w [%p2 + c], -511, %e8

# CHECK-INST: cmpswap.w [%p2 + c], -2, %e0
# CHECK: encoding: [0x69,0x20,0xfe,0xf4]
.code32
cmpswap.w [%p2 + c], -2, %e0

# CHECK-INST: cmpswap.w [%p2 + c], -2, %e2
# CHECK: encoding: [0x69,0x22,0xfe,0xf4]
.code32
cmpswap.w [%p2 + c], -2, %e2

# CHECK-INST: cmpswap.w [%p2 + c], -2, %e4
# CHECK: encoding: [0x69,0x24,0xfe,0xf4]
.code32
cmpswap.w [%p2 + c], -2, %e4

# CHECK-INST: cmpswap.w [%p2 + c], -2, %e8
# CHECK: encoding: [0x69,0x28,0xfe,0xf4]
.code32
cmpswap.w [%p2 + c], -2, %e8

# CHECK-INST: cmpswap.w [%p2 + c], -1, %e0
# CHECK: encoding: [0x69,0x20,0xff,0xf4]
.code32
cmpswap.w [%p2 + c], -1, %e0

# CHECK-INST: cmpswap.w [%p2 + c], -1, %e2
# CHECK: encoding: [0x69,0x22,0xff,0xf4]
.code32
cmpswap.w [%p2 + c], -1, %e2

# CHECK-INST: cmpswap.w [%p2 + c], -1, %e4
# CHECK: encoding: [0x69,0x24,0xff,0xf4]
.code32
cmpswap.w [%p2 + c], -1, %e4

# CHECK-INST: cmpswap.w [%p2 + c], -1, %e8
# CHECK: encoding: [0x69,0x28,0xff,0xf4]
.code32
cmpswap.w [%p2 + c], -1, %e8

# CHECK-INST: cmpswap.w [%p2 + c], 0, %e0
# CHECK: encoding: [0x69,0x20,0xc0,0x04]
.code32
cmpswap.w [%p2 + c], 0, %e0

# CHECK-INST: cmpswap.w [%p2 + c], 0, %e2
# CHECK: encoding: [0x69,0x22,0xc0,0x04]
.code32
cmpswap.w [%p2 + c], 0, %e2

# CHECK-INST: cmpswap.w [%p2 + c], 0, %e4
# CHECK: encoding: [0x69,0x24,0xc0,0x04]
.code32
cmpswap.w [%p2 + c], 0, %e4

# CHECK-INST: cmpswap.w [%p2 + c], 0, %e8
# CHECK: encoding: [0x69,0x28,0xc0,0x04]
.code32
cmpswap.w [%p2 + c], 0, %e8

# CHECK-INST: cmpswap.w [%p2 + c], 1, %e0
# CHECK: encoding: [0x69,0x20,0xc1,0x04]
.code32
cmpswap.w [%p2 + c], 1, %e0

# CHECK-INST: cmpswap.w [%p2 + c], 1, %e2
# CHECK: encoding: [0x69,0x22,0xc1,0x04]
.code32
cmpswap.w [%p2 + c], 1, %e2

# CHECK-INST: cmpswap.w [%p2 + c], 1, %e4
# CHECK: encoding: [0x69,0x24,0xc1,0x04]
.code32
cmpswap.w [%p2 + c], 1, %e4

# CHECK-INST: cmpswap.w [%p2 + c], 1, %e8
# CHECK: encoding: [0x69,0x28,0xc1,0x04]
.code32
cmpswap.w [%p2 + c], 1, %e8

# CHECK-INST: cmpswap.w [%p2 + c], 510, %e0
# CHECK: encoding: [0x69,0x20,0xfe,0x74]
.code32
cmpswap.w [%p2 + c], 510, %e0

# CHECK-INST: cmpswap.w [%p2 + c], 510, %e2
# CHECK: encoding: [0x69,0x22,0xfe,0x74]
.code32
cmpswap.w [%p2 + c], 510, %e2

# CHECK-INST: cmpswap.w [%p2 + c], 510, %e4
# CHECK: encoding: [0x69,0x24,0xfe,0x74]
.code32
cmpswap.w [%p2 + c], 510, %e4

# CHECK-INST: cmpswap.w [%p2 + c], 510, %e8
# CHECK: encoding: [0x69,0x28,0xfe,0x74]
.code32
cmpswap.w [%p2 + c], 510, %e8

# CHECK-INST: cmpswap.w [%p2 + c], 511, %e0
# CHECK: encoding: [0x69,0x20,0xff,0x74]
.code32
cmpswap.w [%p2 + c], 511, %e0

# CHECK-INST: cmpswap.w [%p2 + c], 511, %e2
# CHECK: encoding: [0x69,0x22,0xff,0x74]
.code32
cmpswap.w [%p2 + c], 511, %e2

# CHECK-INST: cmpswap.w [%p2 + c], 511, %e4
# CHECK: encoding: [0x69,0x24,0xff,0x74]
.code32
cmpswap.w [%p2 + c], 511, %e4

# CHECK-INST: cmpswap.w [%p2 + c], 511, %e8
# CHECK: encoding: [0x69,0x28,0xff,0x74]
.code32
cmpswap.w [%p2 + c], 511, %e8

# CHECK-INST: cmpswap.w [%p4 + c], -512, %e0
# CHECK: encoding: [0x69,0x40,0xc0,0x84]
.code32
cmpswap.w [%p4 + c], -512, %e0

# CHECK-INST: cmpswap.w [%p4 + c], -512, %e2
# CHECK: encoding: [0x69,0x42,0xc0,0x84]
.code32
cmpswap.w [%p4 + c], -512, %e2

# CHECK-INST: cmpswap.w [%p4 + c], -512, %e4
# CHECK: encoding: [0x69,0x44,0xc0,0x84]
.code32
cmpswap.w [%p4 + c], -512, %e4

# CHECK-INST: cmpswap.w [%p4 + c], -512, %e8
# CHECK: encoding: [0x69,0x48,0xc0,0x84]
.code32
cmpswap.w [%p4 + c], -512, %e8

# CHECK-INST: cmpswap.w [%p4 + c], -511, %e0
# CHECK: encoding: [0x69,0x40,0xc1,0x84]
.code32
cmpswap.w [%p4 + c], -511, %e0

# CHECK-INST: cmpswap.w [%p4 + c], -511, %e2
# CHECK: encoding: [0x69,0x42,0xc1,0x84]
.code32
cmpswap.w [%p4 + c], -511, %e2

# CHECK-INST: cmpswap.w [%p4 + c], -511, %e4
# CHECK: encoding: [0x69,0x44,0xc1,0x84]
.code32
cmpswap.w [%p4 + c], -511, %e4

# CHECK-INST: cmpswap.w [%p4 + c], -511, %e8
# CHECK: encoding: [0x69,0x48,0xc1,0x84]
.code32
cmpswap.w [%p4 + c], -511, %e8

# CHECK-INST: cmpswap.w [%p4 + c], -2, %e0
# CHECK: encoding: [0x69,0x40,0xfe,0xf4]
.code32
cmpswap.w [%p4 + c], -2, %e0

# CHECK-INST: cmpswap.w [%p4 + c], -2, %e2
# CHECK: encoding: [0x69,0x42,0xfe,0xf4]
.code32
cmpswap.w [%p4 + c], -2, %e2

# CHECK-INST: cmpswap.w [%p4 + c], -2, %e4
# CHECK: encoding: [0x69,0x44,0xfe,0xf4]
.code32
cmpswap.w [%p4 + c], -2, %e4

# CHECK-INST: cmpswap.w [%p4 + c], -2, %e8
# CHECK: encoding: [0x69,0x48,0xfe,0xf4]
.code32
cmpswap.w [%p4 + c], -2, %e8

# CHECK-INST: cmpswap.w [%p4 + c], -1, %e0
# CHECK: encoding: [0x69,0x40,0xff,0xf4]
.code32
cmpswap.w [%p4 + c], -1, %e0

# CHECK-INST: cmpswap.w [%p4 + c], -1, %e2
# CHECK: encoding: [0x69,0x42,0xff,0xf4]
.code32
cmpswap.w [%p4 + c], -1, %e2

# CHECK-INST: cmpswap.w [%p4 + c], -1, %e4
# CHECK: encoding: [0x69,0x44,0xff,0xf4]
.code32
cmpswap.w [%p4 + c], -1, %e4

# CHECK-INST: cmpswap.w [%p4 + c], -1, %e8
# CHECK: encoding: [0x69,0x48,0xff,0xf4]
.code32
cmpswap.w [%p4 + c], -1, %e8

# CHECK-INST: cmpswap.w [%p4 + c], 0, %e0
# CHECK: encoding: [0x69,0x40,0xc0,0x04]
.code32
cmpswap.w [%p4 + c], 0, %e0

# CHECK-INST: cmpswap.w [%p4 + c], 0, %e2
# CHECK: encoding: [0x69,0x42,0xc0,0x04]
.code32
cmpswap.w [%p4 + c], 0, %e2

# CHECK-INST: cmpswap.w [%p4 + c], 0, %e4
# CHECK: encoding: [0x69,0x44,0xc0,0x04]
.code32
cmpswap.w [%p4 + c], 0, %e4

# CHECK-INST: cmpswap.w [%p4 + c], 0, %e8
# CHECK: encoding: [0x69,0x48,0xc0,0x04]
.code32
cmpswap.w [%p4 + c], 0, %e8

# CHECK-INST: cmpswap.w [%p4 + c], 1, %e0
# CHECK: encoding: [0x69,0x40,0xc1,0x04]
.code32
cmpswap.w [%p4 + c], 1, %e0

# CHECK-INST: cmpswap.w [%p4 + c], 1, %e2
# CHECK: encoding: [0x69,0x42,0xc1,0x04]
.code32
cmpswap.w [%p4 + c], 1, %e2

# CHECK-INST: cmpswap.w [%p4 + c], 1, %e4
# CHECK: encoding: [0x69,0x44,0xc1,0x04]
.code32
cmpswap.w [%p4 + c], 1, %e4

# CHECK-INST: cmpswap.w [%p4 + c], 1, %e8
# CHECK: encoding: [0x69,0x48,0xc1,0x04]
.code32
cmpswap.w [%p4 + c], 1, %e8

# CHECK-INST: cmpswap.w [%p4 + c], 510, %e0
# CHECK: encoding: [0x69,0x40,0xfe,0x74]
.code32
cmpswap.w [%p4 + c], 510, %e0

# CHECK-INST: cmpswap.w [%p4 + c], 510, %e2
# CHECK: encoding: [0x69,0x42,0xfe,0x74]
.code32
cmpswap.w [%p4 + c], 510, %e2

# CHECK-INST: cmpswap.w [%p4 + c], 510, %e4
# CHECK: encoding: [0x69,0x44,0xfe,0x74]
.code32
cmpswap.w [%p4 + c], 510, %e4

# CHECK-INST: cmpswap.w [%p4 + c], 510, %e8
# CHECK: encoding: [0x69,0x48,0xfe,0x74]
.code32
cmpswap.w [%p4 + c], 510, %e8

# CHECK-INST: cmpswap.w [%p4 + c], 511, %e0
# CHECK: encoding: [0x69,0x40,0xff,0x74]
.code32
cmpswap.w [%p4 + c], 511, %e0

# CHECK-INST: cmpswap.w [%p4 + c], 511, %e2
# CHECK: encoding: [0x69,0x42,0xff,0x74]
.code32
cmpswap.w [%p4 + c], 511, %e2

# CHECK-INST: cmpswap.w [%p4 + c], 511, %e4
# CHECK: encoding: [0x69,0x44,0xff,0x74]
.code32
cmpswap.w [%p4 + c], 511, %e4

# CHECK-INST: cmpswap.w [%p4 + c], 511, %e8
# CHECK: encoding: [0x69,0x48,0xff,0x74]
.code32
cmpswap.w [%p4 + c], 511, %e8

# CHECK-INST: cmpswap.w [%p8 + c], -512, %e0
# CHECK: encoding: [0x69,0x80,0xc0,0x84]
.code32
cmpswap.w [%p8 + c], -512, %e0

# CHECK-INST: cmpswap.w [%p8 + c], -512, %e2
# CHECK: encoding: [0x69,0x82,0xc0,0x84]
.code32
cmpswap.w [%p8 + c], -512, %e2

# CHECK-INST: cmpswap.w [%p8 + c], -512, %e4
# CHECK: encoding: [0x69,0x84,0xc0,0x84]
.code32
cmpswap.w [%p8 + c], -512, %e4

# CHECK-INST: cmpswap.w [%p8 + c], -512, %e8
# CHECK: encoding: [0x69,0x88,0xc0,0x84]
.code32
cmpswap.w [%p8 + c], -512, %e8

# CHECK-INST: cmpswap.w [%p8 + c], -511, %e0
# CHECK: encoding: [0x69,0x80,0xc1,0x84]
.code32
cmpswap.w [%p8 + c], -511, %e0

# CHECK-INST: cmpswap.w [%p8 + c], -511, %e2
# CHECK: encoding: [0x69,0x82,0xc1,0x84]
.code32
cmpswap.w [%p8 + c], -511, %e2

# CHECK-INST: cmpswap.w [%p8 + c], -511, %e4
# CHECK: encoding: [0x69,0x84,0xc1,0x84]
.code32
cmpswap.w [%p8 + c], -511, %e4

# CHECK-INST: cmpswap.w [%p8 + c], -511, %e8
# CHECK: encoding: [0x69,0x88,0xc1,0x84]
.code32
cmpswap.w [%p8 + c], -511, %e8

# CHECK-INST: cmpswap.w [%p8 + c], -2, %e0
# CHECK: encoding: [0x69,0x80,0xfe,0xf4]
.code32
cmpswap.w [%p8 + c], -2, %e0

# CHECK-INST: cmpswap.w [%p8 + c], -2, %e2
# CHECK: encoding: [0x69,0x82,0xfe,0xf4]
.code32
cmpswap.w [%p8 + c], -2, %e2

# CHECK-INST: cmpswap.w [%p8 + c], -2, %e4
# CHECK: encoding: [0x69,0x84,0xfe,0xf4]
.code32
cmpswap.w [%p8 + c], -2, %e4

# CHECK-INST: cmpswap.w [%p8 + c], -2, %e8
# CHECK: encoding: [0x69,0x88,0xfe,0xf4]
.code32
cmpswap.w [%p8 + c], -2, %e8

# CHECK-INST: cmpswap.w [%p8 + c], -1, %e0
# CHECK: encoding: [0x69,0x80,0xff,0xf4]
.code32
cmpswap.w [%p8 + c], -1, %e0

# CHECK-INST: cmpswap.w [%p8 + c], -1, %e2
# CHECK: encoding: [0x69,0x82,0xff,0xf4]
.code32
cmpswap.w [%p8 + c], -1, %e2

# CHECK-INST: cmpswap.w [%p8 + c], -1, %e4
# CHECK: encoding: [0x69,0x84,0xff,0xf4]
.code32
cmpswap.w [%p8 + c], -1, %e4

# CHECK-INST: cmpswap.w [%p8 + c], -1, %e8
# CHECK: encoding: [0x69,0x88,0xff,0xf4]
.code32
cmpswap.w [%p8 + c], -1, %e8

# CHECK-INST: cmpswap.w [%p8 + c], 0, %e0
# CHECK: encoding: [0x69,0x80,0xc0,0x04]
.code32
cmpswap.w [%p8 + c], 0, %e0

# CHECK-INST: cmpswap.w [%p8 + c], 0, %e2
# CHECK: encoding: [0x69,0x82,0xc0,0x04]
.code32
cmpswap.w [%p8 + c], 0, %e2

# CHECK-INST: cmpswap.w [%p8 + c], 0, %e4
# CHECK: encoding: [0x69,0x84,0xc0,0x04]
.code32
cmpswap.w [%p8 + c], 0, %e4

# CHECK-INST: cmpswap.w [%p8 + c], 0, %e8
# CHECK: encoding: [0x69,0x88,0xc0,0x04]
.code32
cmpswap.w [%p8 + c], 0, %e8

# CHECK-INST: cmpswap.w [%p8 + c], 1, %e0
# CHECK: encoding: [0x69,0x80,0xc1,0x04]
.code32
cmpswap.w [%p8 + c], 1, %e0

# CHECK-INST: cmpswap.w [%p8 + c], 1, %e2
# CHECK: encoding: [0x69,0x82,0xc1,0x04]
.code32
cmpswap.w [%p8 + c], 1, %e2

# CHECK-INST: cmpswap.w [%p8 + c], 1, %e4
# CHECK: encoding: [0x69,0x84,0xc1,0x04]
.code32
cmpswap.w [%p8 + c], 1, %e4

# CHECK-INST: cmpswap.w [%p8 + c], 1, %e8
# CHECK: encoding: [0x69,0x88,0xc1,0x04]
.code32
cmpswap.w [%p8 + c], 1, %e8

# CHECK-INST: cmpswap.w [%p8 + c], 510, %e0
# CHECK: encoding: [0x69,0x80,0xfe,0x74]
.code32
cmpswap.w [%p8 + c], 510, %e0

# CHECK-INST: cmpswap.w [%p8 + c], 510, %e2
# CHECK: encoding: [0x69,0x82,0xfe,0x74]
.code32
cmpswap.w [%p8 + c], 510, %e2

# CHECK-INST: cmpswap.w [%p8 + c], 510, %e4
# CHECK: encoding: [0x69,0x84,0xfe,0x74]
.code32
cmpswap.w [%p8 + c], 510, %e4

# CHECK-INST: cmpswap.w [%p8 + c], 510, %e8
# CHECK: encoding: [0x69,0x88,0xfe,0x74]
.code32
cmpswap.w [%p8 + c], 510, %e8

# CHECK-INST: cmpswap.w [%p8 + c], 511, %e0
# CHECK: encoding: [0x69,0x80,0xff,0x74]
.code32
cmpswap.w [%p8 + c], 511, %e0

# CHECK-INST: cmpswap.w [%p8 + c], 511, %e2
# CHECK: encoding: [0x69,0x82,0xff,0x74]
.code32
cmpswap.w [%p8 + c], 511, %e2

# CHECK-INST: cmpswap.w [%p8 + c], 511, %e4
# CHECK: encoding: [0x69,0x84,0xff,0x74]
.code32
cmpswap.w [%p8 + c], 511, %e4

# CHECK-INST: cmpswap.w [%p8 + c], 511, %e8
# CHECK: encoding: [0x69,0x88,0xff,0x74]
.code32
cmpswap.w [%p8 + c], 511, %e8

# CHECK-INST: cmpswap.w [%a0+], -512, %e0
# CHECK: encoding: [0x49,0x00,0xc0,0x80]
.code32
cmpswap.w [%a0+], -512, %e0

# CHECK-INST: cmpswap.w [%a0+], -512, %e2
# CHECK: encoding: [0x49,0x02,0xc0,0x80]
.code32
cmpswap.w [%a0+], -512, %e2

# CHECK-INST: cmpswap.w [%a0+], -512, %e4
# CHECK: encoding: [0x49,0x04,0xc0,0x80]
.code32
cmpswap.w [%a0+], -512, %e4

# CHECK-INST: cmpswap.w [%a0+], -512, %e8
# CHECK: encoding: [0x49,0x08,0xc0,0x80]
.code32
cmpswap.w [%a0+], -512, %e8

# CHECK-INST: cmpswap.w [%a0+], -511, %e0
# CHECK: encoding: [0x49,0x00,0xc1,0x80]
.code32
cmpswap.w [%a0+], -511, %e0

# CHECK-INST: cmpswap.w [%a0+], -511, %e2
# CHECK: encoding: [0x49,0x02,0xc1,0x80]
.code32
cmpswap.w [%a0+], -511, %e2

# CHECK-INST: cmpswap.w [%a0+], -511, %e4
# CHECK: encoding: [0x49,0x04,0xc1,0x80]
.code32
cmpswap.w [%a0+], -511, %e4

# CHECK-INST: cmpswap.w [%a0+], -511, %e8
# CHECK: encoding: [0x49,0x08,0xc1,0x80]
.code32
cmpswap.w [%a0+], -511, %e8

# CHECK-INST: cmpswap.w [%a0+], -2, %e0
# CHECK: encoding: [0x49,0x00,0xfe,0xf0]
.code32
cmpswap.w [%a0+], -2, %e0

# CHECK-INST: cmpswap.w [%a0+], -2, %e2
# CHECK: encoding: [0x49,0x02,0xfe,0xf0]
.code32
cmpswap.w [%a0+], -2, %e2

# CHECK-INST: cmpswap.w [%a0+], -2, %e4
# CHECK: encoding: [0x49,0x04,0xfe,0xf0]
.code32
cmpswap.w [%a0+], -2, %e4

# CHECK-INST: cmpswap.w [%a0+], -2, %e8
# CHECK: encoding: [0x49,0x08,0xfe,0xf0]
.code32
cmpswap.w [%a0+], -2, %e8

# CHECK-INST: cmpswap.w [%a0+], -1, %e0
# CHECK: encoding: [0x49,0x00,0xff,0xf0]
.code32
cmpswap.w [%a0+], -1, %e0

# CHECK-INST: cmpswap.w [%a0+], -1, %e2
# CHECK: encoding: [0x49,0x02,0xff,0xf0]
.code32
cmpswap.w [%a0+], -1, %e2

# CHECK-INST: cmpswap.w [%a0+], -1, %e4
# CHECK: encoding: [0x49,0x04,0xff,0xf0]
.code32
cmpswap.w [%a0+], -1, %e4

# CHECK-INST: cmpswap.w [%a0+], -1, %e8
# CHECK: encoding: [0x49,0x08,0xff,0xf0]
.code32
cmpswap.w [%a0+], -1, %e8

# CHECK-INST: cmpswap.w [%a0+], 0, %e0
# CHECK: encoding: [0x49,0x00,0xc0,0x00]
.code32
cmpswap.w [%a0+], 0, %e0

# CHECK-INST: cmpswap.w [%a0+], 0, %e2
# CHECK: encoding: [0x49,0x02,0xc0,0x00]
.code32
cmpswap.w [%a0+], 0, %e2

# CHECK-INST: cmpswap.w [%a0+], 0, %e4
# CHECK: encoding: [0x49,0x04,0xc0,0x00]
.code32
cmpswap.w [%a0+], 0, %e4

# CHECK-INST: cmpswap.w [%a0+], 0, %e8
# CHECK: encoding: [0x49,0x08,0xc0,0x00]
.code32
cmpswap.w [%a0+], 0, %e8

# CHECK-INST: cmpswap.w [%a0+], 1, %e0
# CHECK: encoding: [0x49,0x00,0xc1,0x00]
.code32
cmpswap.w [%a0+], 1, %e0

# CHECK-INST: cmpswap.w [%a0+], 1, %e2
# CHECK: encoding: [0x49,0x02,0xc1,0x00]
.code32
cmpswap.w [%a0+], 1, %e2

# CHECK-INST: cmpswap.w [%a0+], 1, %e4
# CHECK: encoding: [0x49,0x04,0xc1,0x00]
.code32
cmpswap.w [%a0+], 1, %e4

# CHECK-INST: cmpswap.w [%a0+], 1, %e8
# CHECK: encoding: [0x49,0x08,0xc1,0x00]
.code32
cmpswap.w [%a0+], 1, %e8

# CHECK-INST: cmpswap.w [%a0+], 510, %e0
# CHECK: encoding: [0x49,0x00,0xfe,0x70]
.code32
cmpswap.w [%a0+], 510, %e0

# CHECK-INST: cmpswap.w [%a0+], 510, %e2
# CHECK: encoding: [0x49,0x02,0xfe,0x70]
.code32
cmpswap.w [%a0+], 510, %e2

# CHECK-INST: cmpswap.w [%a0+], 510, %e4
# CHECK: encoding: [0x49,0x04,0xfe,0x70]
.code32
cmpswap.w [%a0+], 510, %e4

# CHECK-INST: cmpswap.w [%a0+], 510, %e8
# CHECK: encoding: [0x49,0x08,0xfe,0x70]
.code32
cmpswap.w [%a0+], 510, %e8

# CHECK-INST: cmpswap.w [%a0+], 511, %e0
# CHECK: encoding: [0x49,0x00,0xff,0x70]
.code32
cmpswap.w [%a0+], 511, %e0

# CHECK-INST: cmpswap.w [%a0+], 511, %e2
# CHECK: encoding: [0x49,0x02,0xff,0x70]
.code32
cmpswap.w [%a0+], 511, %e2

# CHECK-INST: cmpswap.w [%a0+], 511, %e4
# CHECK: encoding: [0x49,0x04,0xff,0x70]
.code32
cmpswap.w [%a0+], 511, %e4

# CHECK-INST: cmpswap.w [%a0+], 511, %e8
# CHECK: encoding: [0x49,0x08,0xff,0x70]
.code32
cmpswap.w [%a0+], 511, %e8

# CHECK-INST: cmpswap.w [%a1+], -512, %e0
# CHECK: encoding: [0x49,0x10,0xc0,0x80]
.code32
cmpswap.w [%a1+], -512, %e0

# CHECK-INST: cmpswap.w [%a1+], -512, %e2
# CHECK: encoding: [0x49,0x12,0xc0,0x80]
.code32
cmpswap.w [%a1+], -512, %e2

# CHECK-INST: cmpswap.w [%a1+], -512, %e4
# CHECK: encoding: [0x49,0x14,0xc0,0x80]
.code32
cmpswap.w [%a1+], -512, %e4

# CHECK-INST: cmpswap.w [%a1+], -512, %e8
# CHECK: encoding: [0x49,0x18,0xc0,0x80]
.code32
cmpswap.w [%a1+], -512, %e8

# CHECK-INST: cmpswap.w [%a1+], -511, %e0
# CHECK: encoding: [0x49,0x10,0xc1,0x80]
.code32
cmpswap.w [%a1+], -511, %e0

# CHECK-INST: cmpswap.w [%a1+], -511, %e2
# CHECK: encoding: [0x49,0x12,0xc1,0x80]
.code32
cmpswap.w [%a1+], -511, %e2

# CHECK-INST: cmpswap.w [%a1+], -511, %e4
# CHECK: encoding: [0x49,0x14,0xc1,0x80]
.code32
cmpswap.w [%a1+], -511, %e4

# CHECK-INST: cmpswap.w [%a1+], -511, %e8
# CHECK: encoding: [0x49,0x18,0xc1,0x80]
.code32
cmpswap.w [%a1+], -511, %e8

# CHECK-INST: cmpswap.w [%a1+], -2, %e0
# CHECK: encoding: [0x49,0x10,0xfe,0xf0]
.code32
cmpswap.w [%a1+], -2, %e0

# CHECK-INST: cmpswap.w [%a1+], -2, %e2
# CHECK: encoding: [0x49,0x12,0xfe,0xf0]
.code32
cmpswap.w [%a1+], -2, %e2

# CHECK-INST: cmpswap.w [%a1+], -2, %e4
# CHECK: encoding: [0x49,0x14,0xfe,0xf0]
.code32
cmpswap.w [%a1+], -2, %e4

# CHECK-INST: cmpswap.w [%a1+], -2, %e8
# CHECK: encoding: [0x49,0x18,0xfe,0xf0]
.code32
cmpswap.w [%a1+], -2, %e8

# CHECK-INST: cmpswap.w [%a1+], -1, %e0
# CHECK: encoding: [0x49,0x10,0xff,0xf0]
.code32
cmpswap.w [%a1+], -1, %e0

# CHECK-INST: cmpswap.w [%a1+], -1, %e2
# CHECK: encoding: [0x49,0x12,0xff,0xf0]
.code32
cmpswap.w [%a1+], -1, %e2

# CHECK-INST: cmpswap.w [%a1+], -1, %e4
# CHECK: encoding: [0x49,0x14,0xff,0xf0]
.code32
cmpswap.w [%a1+], -1, %e4

# CHECK-INST: cmpswap.w [%a1+], -1, %e8
# CHECK: encoding: [0x49,0x18,0xff,0xf0]
.code32
cmpswap.w [%a1+], -1, %e8

# CHECK-INST: cmpswap.w [%a1+], 0, %e0
# CHECK: encoding: [0x49,0x10,0xc0,0x00]
.code32
cmpswap.w [%a1+], 0, %e0

# CHECK-INST: cmpswap.w [%a1+], 0, %e2
# CHECK: encoding: [0x49,0x12,0xc0,0x00]
.code32
cmpswap.w [%a1+], 0, %e2

# CHECK-INST: cmpswap.w [%a1+], 0, %e4
# CHECK: encoding: [0x49,0x14,0xc0,0x00]
.code32
cmpswap.w [%a1+], 0, %e4

# CHECK-INST: cmpswap.w [%a1+], 0, %e8
# CHECK: encoding: [0x49,0x18,0xc0,0x00]
.code32
cmpswap.w [%a1+], 0, %e8

# CHECK-INST: cmpswap.w [%a1+], 1, %e0
# CHECK: encoding: [0x49,0x10,0xc1,0x00]
.code32
cmpswap.w [%a1+], 1, %e0

# CHECK-INST: cmpswap.w [%a1+], 1, %e2
# CHECK: encoding: [0x49,0x12,0xc1,0x00]
.code32
cmpswap.w [%a1+], 1, %e2

# CHECK-INST: cmpswap.w [%a1+], 1, %e4
# CHECK: encoding: [0x49,0x14,0xc1,0x00]
.code32
cmpswap.w [%a1+], 1, %e4

# CHECK-INST: cmpswap.w [%a1+], 1, %e8
# CHECK: encoding: [0x49,0x18,0xc1,0x00]
.code32
cmpswap.w [%a1+], 1, %e8

# CHECK-INST: cmpswap.w [%a1+], 510, %e0
# CHECK: encoding: [0x49,0x10,0xfe,0x70]
.code32
cmpswap.w [%a1+], 510, %e0

# CHECK-INST: cmpswap.w [%a1+], 510, %e2
# CHECK: encoding: [0x49,0x12,0xfe,0x70]
.code32
cmpswap.w [%a1+], 510, %e2

# CHECK-INST: cmpswap.w [%a1+], 510, %e4
# CHECK: encoding: [0x49,0x14,0xfe,0x70]
.code32
cmpswap.w [%a1+], 510, %e4

# CHECK-INST: cmpswap.w [%a1+], 510, %e8
# CHECK: encoding: [0x49,0x18,0xfe,0x70]
.code32
cmpswap.w [%a1+], 510, %e8

# CHECK-INST: cmpswap.w [%a1+], 511, %e0
# CHECK: encoding: [0x49,0x10,0xff,0x70]
.code32
cmpswap.w [%a1+], 511, %e0

# CHECK-INST: cmpswap.w [%a1+], 511, %e2
# CHECK: encoding: [0x49,0x12,0xff,0x70]
.code32
cmpswap.w [%a1+], 511, %e2

# CHECK-INST: cmpswap.w [%a1+], 511, %e4
# CHECK: encoding: [0x49,0x14,0xff,0x70]
.code32
cmpswap.w [%a1+], 511, %e4

# CHECK-INST: cmpswap.w [%a1+], 511, %e8
# CHECK: encoding: [0x49,0x18,0xff,0x70]
.code32
cmpswap.w [%a1+], 511, %e8

# CHECK-INST: cmpswap.w [%a14+], -512, %e0
# CHECK: encoding: [0x49,0xe0,0xc0,0x80]
.code32
cmpswap.w [%a14+], -512, %e0

# CHECK-INST: cmpswap.w [%a14+], -512, %e2
# CHECK: encoding: [0x49,0xe2,0xc0,0x80]
.code32
cmpswap.w [%a14+], -512, %e2

# CHECK-INST: cmpswap.w [%a14+], -512, %e4
# CHECK: encoding: [0x49,0xe4,0xc0,0x80]
.code32
cmpswap.w [%a14+], -512, %e4

# CHECK-INST: cmpswap.w [%a14+], -512, %e8
# CHECK: encoding: [0x49,0xe8,0xc0,0x80]
.code32
cmpswap.w [%a14+], -512, %e8

# CHECK-INST: cmpswap.w [%a14+], -511, %e0
# CHECK: encoding: [0x49,0xe0,0xc1,0x80]
.code32
cmpswap.w [%a14+], -511, %e0

# CHECK-INST: cmpswap.w [%a14+], -511, %e2
# CHECK: encoding: [0x49,0xe2,0xc1,0x80]
.code32
cmpswap.w [%a14+], -511, %e2

# CHECK-INST: cmpswap.w [%a14+], -511, %e4
# CHECK: encoding: [0x49,0xe4,0xc1,0x80]
.code32
cmpswap.w [%a14+], -511, %e4

# CHECK-INST: cmpswap.w [%a14+], -511, %e8
# CHECK: encoding: [0x49,0xe8,0xc1,0x80]
.code32
cmpswap.w [%a14+], -511, %e8

# CHECK-INST: cmpswap.w [%a14+], -2, %e0
# CHECK: encoding: [0x49,0xe0,0xfe,0xf0]
.code32
cmpswap.w [%a14+], -2, %e0

# CHECK-INST: cmpswap.w [%a14+], -2, %e2
# CHECK: encoding: [0x49,0xe2,0xfe,0xf0]
.code32
cmpswap.w [%a14+], -2, %e2

# CHECK-INST: cmpswap.w [%a14+], -2, %e4
# CHECK: encoding: [0x49,0xe4,0xfe,0xf0]
.code32
cmpswap.w [%a14+], -2, %e4

# CHECK-INST: cmpswap.w [%a14+], -2, %e8
# CHECK: encoding: [0x49,0xe8,0xfe,0xf0]
.code32
cmpswap.w [%a14+], -2, %e8

# CHECK-INST: cmpswap.w [%a14+], -1, %e0
# CHECK: encoding: [0x49,0xe0,0xff,0xf0]
.code32
cmpswap.w [%a14+], -1, %e0

# CHECK-INST: cmpswap.w [%a14+], -1, %e2
# CHECK: encoding: [0x49,0xe2,0xff,0xf0]
.code32
cmpswap.w [%a14+], -1, %e2

# CHECK-INST: cmpswap.w [%a14+], -1, %e4
# CHECK: encoding: [0x49,0xe4,0xff,0xf0]
.code32
cmpswap.w [%a14+], -1, %e4

# CHECK-INST: cmpswap.w [%a14+], -1, %e8
# CHECK: encoding: [0x49,0xe8,0xff,0xf0]
.code32
cmpswap.w [%a14+], -1, %e8

# CHECK-INST: cmpswap.w [%a14+], 0, %e0
# CHECK: encoding: [0x49,0xe0,0xc0,0x00]
.code32
cmpswap.w [%a14+], 0, %e0

# CHECK-INST: cmpswap.w [%a14+], 0, %e2
# CHECK: encoding: [0x49,0xe2,0xc0,0x00]
.code32
cmpswap.w [%a14+], 0, %e2

# CHECK-INST: cmpswap.w [%a14+], 0, %e4
# CHECK: encoding: [0x49,0xe4,0xc0,0x00]
.code32
cmpswap.w [%a14+], 0, %e4

# CHECK-INST: cmpswap.w [%a14+], 0, %e8
# CHECK: encoding: [0x49,0xe8,0xc0,0x00]
.code32
cmpswap.w [%a14+], 0, %e8

# CHECK-INST: cmpswap.w [%a14+], 1, %e0
# CHECK: encoding: [0x49,0xe0,0xc1,0x00]
.code32
cmpswap.w [%a14+], 1, %e0

# CHECK-INST: cmpswap.w [%a14+], 1, %e2
# CHECK: encoding: [0x49,0xe2,0xc1,0x00]
.code32
cmpswap.w [%a14+], 1, %e2

# CHECK-INST: cmpswap.w [%a14+], 1, %e4
# CHECK: encoding: [0x49,0xe4,0xc1,0x00]
.code32
cmpswap.w [%a14+], 1, %e4

# CHECK-INST: cmpswap.w [%a14+], 1, %e8
# CHECK: encoding: [0x49,0xe8,0xc1,0x00]
.code32
cmpswap.w [%a14+], 1, %e8

# CHECK-INST: cmpswap.w [%a14+], 510, %e0
# CHECK: encoding: [0x49,0xe0,0xfe,0x70]
.code32
cmpswap.w [%a14+], 510, %e0

# CHECK-INST: cmpswap.w [%a14+], 510, %e2
# CHECK: encoding: [0x49,0xe2,0xfe,0x70]
.code32
cmpswap.w [%a14+], 510, %e2

# CHECK-INST: cmpswap.w [%a14+], 510, %e4
# CHECK: encoding: [0x49,0xe4,0xfe,0x70]
.code32
cmpswap.w [%a14+], 510, %e4

# CHECK-INST: cmpswap.w [%a14+], 510, %e8
# CHECK: encoding: [0x49,0xe8,0xfe,0x70]
.code32
cmpswap.w [%a14+], 510, %e8

# CHECK-INST: cmpswap.w [%a14+], 511, %e0
# CHECK: encoding: [0x49,0xe0,0xff,0x70]
.code32
cmpswap.w [%a14+], 511, %e0

# CHECK-INST: cmpswap.w [%a14+], 511, %e2
# CHECK: encoding: [0x49,0xe2,0xff,0x70]
.code32
cmpswap.w [%a14+], 511, %e2

# CHECK-INST: cmpswap.w [%a14+], 511, %e4
# CHECK: encoding: [0x49,0xe4,0xff,0x70]
.code32
cmpswap.w [%a14+], 511, %e4

# CHECK-INST: cmpswap.w [%a14+], 511, %e8
# CHECK: encoding: [0x49,0xe8,0xff,0x70]
.code32
cmpswap.w [%a14+], 511, %e8

# CHECK-INST: cmpswap.w [%a15+], -512, %e0
# CHECK: encoding: [0x49,0xf0,0xc0,0x80]
.code32
cmpswap.w [%a15+], -512, %e0

# CHECK-INST: cmpswap.w [%a15+], -512, %e2
# CHECK: encoding: [0x49,0xf2,0xc0,0x80]
.code32
cmpswap.w [%a15+], -512, %e2

# CHECK-INST: cmpswap.w [%a15+], -512, %e4
# CHECK: encoding: [0x49,0xf4,0xc0,0x80]
.code32
cmpswap.w [%a15+], -512, %e4

# CHECK-INST: cmpswap.w [%a15+], -512, %e8
# CHECK: encoding: [0x49,0xf8,0xc0,0x80]
.code32
cmpswap.w [%a15+], -512, %e8

# CHECK-INST: cmpswap.w [%a15+], -511, %e0
# CHECK: encoding: [0x49,0xf0,0xc1,0x80]
.code32
cmpswap.w [%a15+], -511, %e0

# CHECK-INST: cmpswap.w [%a15+], -511, %e2
# CHECK: encoding: [0x49,0xf2,0xc1,0x80]
.code32
cmpswap.w [%a15+], -511, %e2

# CHECK-INST: cmpswap.w [%a15+], -511, %e4
# CHECK: encoding: [0x49,0xf4,0xc1,0x80]
.code32
cmpswap.w [%a15+], -511, %e4

# CHECK-INST: cmpswap.w [%a15+], -511, %e8
# CHECK: encoding: [0x49,0xf8,0xc1,0x80]
.code32
cmpswap.w [%a15+], -511, %e8

# CHECK-INST: cmpswap.w [%a15+], -2, %e0
# CHECK: encoding: [0x49,0xf0,0xfe,0xf0]
.code32
cmpswap.w [%a15+], -2, %e0

# CHECK-INST: cmpswap.w [%a15+], -2, %e2
# CHECK: encoding: [0x49,0xf2,0xfe,0xf0]
.code32
cmpswap.w [%a15+], -2, %e2

# CHECK-INST: cmpswap.w [%a15+], -2, %e4
# CHECK: encoding: [0x49,0xf4,0xfe,0xf0]
.code32
cmpswap.w [%a15+], -2, %e4

# CHECK-INST: cmpswap.w [%a15+], -2, %e8
# CHECK: encoding: [0x49,0xf8,0xfe,0xf0]
.code32
cmpswap.w [%a15+], -2, %e8

# CHECK-INST: cmpswap.w [%a15+], -1, %e0
# CHECK: encoding: [0x49,0xf0,0xff,0xf0]
.code32
cmpswap.w [%a15+], -1, %e0

# CHECK-INST: cmpswap.w [%a15+], -1, %e2
# CHECK: encoding: [0x49,0xf2,0xff,0xf0]
.code32
cmpswap.w [%a15+], -1, %e2

# CHECK-INST: cmpswap.w [%a15+], -1, %e4
# CHECK: encoding: [0x49,0xf4,0xff,0xf0]
.code32
cmpswap.w [%a15+], -1, %e4

# CHECK-INST: cmpswap.w [%a15+], -1, %e8
# CHECK: encoding: [0x49,0xf8,0xff,0xf0]
.code32
cmpswap.w [%a15+], -1, %e8

# CHECK-INST: cmpswap.w [%a15+], 0, %e0
# CHECK: encoding: [0x49,0xf0,0xc0,0x00]
.code32
cmpswap.w [%a15+], 0, %e0

# CHECK-INST: cmpswap.w [%a15+], 0, %e2
# CHECK: encoding: [0x49,0xf2,0xc0,0x00]
.code32
cmpswap.w [%a15+], 0, %e2

# CHECK-INST: cmpswap.w [%a15+], 0, %e4
# CHECK: encoding: [0x49,0xf4,0xc0,0x00]
.code32
cmpswap.w [%a15+], 0, %e4

# CHECK-INST: cmpswap.w [%a15+], 0, %e8
# CHECK: encoding: [0x49,0xf8,0xc0,0x00]
.code32
cmpswap.w [%a15+], 0, %e8

# CHECK-INST: cmpswap.w [%a15+], 1, %e0
# CHECK: encoding: [0x49,0xf0,0xc1,0x00]
.code32
cmpswap.w [%a15+], 1, %e0

# CHECK-INST: cmpswap.w [%a15+], 1, %e2
# CHECK: encoding: [0x49,0xf2,0xc1,0x00]
.code32
cmpswap.w [%a15+], 1, %e2

# CHECK-INST: cmpswap.w [%a15+], 1, %e4
# CHECK: encoding: [0x49,0xf4,0xc1,0x00]
.code32
cmpswap.w [%a15+], 1, %e4

# CHECK-INST: cmpswap.w [%a15+], 1, %e8
# CHECK: encoding: [0x49,0xf8,0xc1,0x00]
.code32
cmpswap.w [%a15+], 1, %e8

# CHECK-INST: cmpswap.w [%a15+], 510, %e0
# CHECK: encoding: [0x49,0xf0,0xfe,0x70]
.code32
cmpswap.w [%a15+], 510, %e0

# CHECK-INST: cmpswap.w [%a15+], 510, %e2
# CHECK: encoding: [0x49,0xf2,0xfe,0x70]
.code32
cmpswap.w [%a15+], 510, %e2

# CHECK-INST: cmpswap.w [%a15+], 510, %e4
# CHECK: encoding: [0x49,0xf4,0xfe,0x70]
.code32
cmpswap.w [%a15+], 510, %e4

# CHECK-INST: cmpswap.w [%a15+], 510, %e8
# CHECK: encoding: [0x49,0xf8,0xfe,0x70]
.code32
cmpswap.w [%a15+], 510, %e8

# CHECK-INST: cmpswap.w [%a15+], 511, %e0
# CHECK: encoding: [0x49,0xf0,0xff,0x70]
.code32
cmpswap.w [%a15+], 511, %e0

# CHECK-INST: cmpswap.w [%a15+], 511, %e2
# CHECK: encoding: [0x49,0xf2,0xff,0x70]
.code32
cmpswap.w [%a15+], 511, %e2

# CHECK-INST: cmpswap.w [%a15+], 511, %e4
# CHECK: encoding: [0x49,0xf4,0xff,0x70]
.code32
cmpswap.w [%a15+], 511, %e4

# CHECK-INST: cmpswap.w [%a15+], 511, %e8
# CHECK: encoding: [0x49,0xf8,0xff,0x70]
.code32
cmpswap.w [%a15+], 511, %e8

# CHECK-INST: cmpswap.w [+%a0], -512, %e0
# CHECK: encoding: [0x49,0x00,0xc0,0x84]
.code32
cmpswap.w [+%a0], -512, %e0

# CHECK-INST: cmpswap.w [+%a0], -512, %e2
# CHECK: encoding: [0x49,0x02,0xc0,0x84]
.code32
cmpswap.w [+%a0], -512, %e2

# CHECK-INST: cmpswap.w [+%a0], -512, %e4
# CHECK: encoding: [0x49,0x04,0xc0,0x84]
.code32
cmpswap.w [+%a0], -512, %e4

# CHECK-INST: cmpswap.w [+%a0], -512, %e8
# CHECK: encoding: [0x49,0x08,0xc0,0x84]
.code32
cmpswap.w [+%a0], -512, %e8

# CHECK-INST: cmpswap.w [+%a0], -511, %e0
# CHECK: encoding: [0x49,0x00,0xc1,0x84]
.code32
cmpswap.w [+%a0], -511, %e0

# CHECK-INST: cmpswap.w [+%a0], -511, %e2
# CHECK: encoding: [0x49,0x02,0xc1,0x84]
.code32
cmpswap.w [+%a0], -511, %e2

# CHECK-INST: cmpswap.w [+%a0], -511, %e4
# CHECK: encoding: [0x49,0x04,0xc1,0x84]
.code32
cmpswap.w [+%a0], -511, %e4

# CHECK-INST: cmpswap.w [+%a0], -511, %e8
# CHECK: encoding: [0x49,0x08,0xc1,0x84]
.code32
cmpswap.w [+%a0], -511, %e8

# CHECK-INST: cmpswap.w [+%a0], -2, %e0
# CHECK: encoding: [0x49,0x00,0xfe,0xf4]
.code32
cmpswap.w [+%a0], -2, %e0

# CHECK-INST: cmpswap.w [+%a0], -2, %e2
# CHECK: encoding: [0x49,0x02,0xfe,0xf4]
.code32
cmpswap.w [+%a0], -2, %e2

# CHECK-INST: cmpswap.w [+%a0], -2, %e4
# CHECK: encoding: [0x49,0x04,0xfe,0xf4]
.code32
cmpswap.w [+%a0], -2, %e4

# CHECK-INST: cmpswap.w [+%a0], -2, %e8
# CHECK: encoding: [0x49,0x08,0xfe,0xf4]
.code32
cmpswap.w [+%a0], -2, %e8

# CHECK-INST: cmpswap.w [+%a0], -1, %e0
# CHECK: encoding: [0x49,0x00,0xff,0xf4]
.code32
cmpswap.w [+%a0], -1, %e0

# CHECK-INST: cmpswap.w [+%a0], -1, %e2
# CHECK: encoding: [0x49,0x02,0xff,0xf4]
.code32
cmpswap.w [+%a0], -1, %e2

# CHECK-INST: cmpswap.w [+%a0], -1, %e4
# CHECK: encoding: [0x49,0x04,0xff,0xf4]
.code32
cmpswap.w [+%a0], -1, %e4

# CHECK-INST: cmpswap.w [+%a0], -1, %e8
# CHECK: encoding: [0x49,0x08,0xff,0xf4]
.code32
cmpswap.w [+%a0], -1, %e8

# CHECK-INST: cmpswap.w [+%a0], 0, %e0
# CHECK: encoding: [0x49,0x00,0xc0,0x04]
.code32
cmpswap.w [+%a0], 0, %e0

# CHECK-INST: cmpswap.w [+%a0], 0, %e2
# CHECK: encoding: [0x49,0x02,0xc0,0x04]
.code32
cmpswap.w [+%a0], 0, %e2

# CHECK-INST: cmpswap.w [+%a0], 0, %e4
# CHECK: encoding: [0x49,0x04,0xc0,0x04]
.code32
cmpswap.w [+%a0], 0, %e4

# CHECK-INST: cmpswap.w [+%a0], 0, %e8
# CHECK: encoding: [0x49,0x08,0xc0,0x04]
.code32
cmpswap.w [+%a0], 0, %e8

# CHECK-INST: cmpswap.w [+%a0], 1, %e0
# CHECK: encoding: [0x49,0x00,0xc1,0x04]
.code32
cmpswap.w [+%a0], 1, %e0

# CHECK-INST: cmpswap.w [+%a0], 1, %e2
# CHECK: encoding: [0x49,0x02,0xc1,0x04]
.code32
cmpswap.w [+%a0], 1, %e2

# CHECK-INST: cmpswap.w [+%a0], 1, %e4
# CHECK: encoding: [0x49,0x04,0xc1,0x04]
.code32
cmpswap.w [+%a0], 1, %e4

# CHECK-INST: cmpswap.w [+%a0], 1, %e8
# CHECK: encoding: [0x49,0x08,0xc1,0x04]
.code32
cmpswap.w [+%a0], 1, %e8

# CHECK-INST: cmpswap.w [+%a0], 510, %e0
# CHECK: encoding: [0x49,0x00,0xfe,0x74]
.code32
cmpswap.w [+%a0], 510, %e0

# CHECK-INST: cmpswap.w [+%a0], 510, %e2
# CHECK: encoding: [0x49,0x02,0xfe,0x74]
.code32
cmpswap.w [+%a0], 510, %e2

# CHECK-INST: cmpswap.w [+%a0], 510, %e4
# CHECK: encoding: [0x49,0x04,0xfe,0x74]
.code32
cmpswap.w [+%a0], 510, %e4

# CHECK-INST: cmpswap.w [+%a0], 510, %e8
# CHECK: encoding: [0x49,0x08,0xfe,0x74]
.code32
cmpswap.w [+%a0], 510, %e8

# CHECK-INST: cmpswap.w [+%a0], 511, %e0
# CHECK: encoding: [0x49,0x00,0xff,0x74]
.code32
cmpswap.w [+%a0], 511, %e0

# CHECK-INST: cmpswap.w [+%a0], 511, %e2
# CHECK: encoding: [0x49,0x02,0xff,0x74]
.code32
cmpswap.w [+%a0], 511, %e2

# CHECK-INST: cmpswap.w [+%a0], 511, %e4
# CHECK: encoding: [0x49,0x04,0xff,0x74]
.code32
cmpswap.w [+%a0], 511, %e4

# CHECK-INST: cmpswap.w [+%a0], 511, %e8
# CHECK: encoding: [0x49,0x08,0xff,0x74]
.code32
cmpswap.w [+%a0], 511, %e8

# CHECK-INST: cmpswap.w [+%a1], -512, %e0
# CHECK: encoding: [0x49,0x10,0xc0,0x84]
.code32
cmpswap.w [+%a1], -512, %e0

# CHECK-INST: cmpswap.w [+%a1], -512, %e2
# CHECK: encoding: [0x49,0x12,0xc0,0x84]
.code32
cmpswap.w [+%a1], -512, %e2

# CHECK-INST: cmpswap.w [+%a1], -512, %e4
# CHECK: encoding: [0x49,0x14,0xc0,0x84]
.code32
cmpswap.w [+%a1], -512, %e4

# CHECK-INST: cmpswap.w [+%a1], -512, %e8
# CHECK: encoding: [0x49,0x18,0xc0,0x84]
.code32
cmpswap.w [+%a1], -512, %e8

# CHECK-INST: cmpswap.w [+%a1], -511, %e0
# CHECK: encoding: [0x49,0x10,0xc1,0x84]
.code32
cmpswap.w [+%a1], -511, %e0

# CHECK-INST: cmpswap.w [+%a1], -511, %e2
# CHECK: encoding: [0x49,0x12,0xc1,0x84]
.code32
cmpswap.w [+%a1], -511, %e2

# CHECK-INST: cmpswap.w [+%a1], -511, %e4
# CHECK: encoding: [0x49,0x14,0xc1,0x84]
.code32
cmpswap.w [+%a1], -511, %e4

# CHECK-INST: cmpswap.w [+%a1], -511, %e8
# CHECK: encoding: [0x49,0x18,0xc1,0x84]
.code32
cmpswap.w [+%a1], -511, %e8

# CHECK-INST: cmpswap.w [+%a1], -2, %e0
# CHECK: encoding: [0x49,0x10,0xfe,0xf4]
.code32
cmpswap.w [+%a1], -2, %e0

# CHECK-INST: cmpswap.w [+%a1], -2, %e2
# CHECK: encoding: [0x49,0x12,0xfe,0xf4]
.code32
cmpswap.w [+%a1], -2, %e2

# CHECK-INST: cmpswap.w [+%a1], -2, %e4
# CHECK: encoding: [0x49,0x14,0xfe,0xf4]
.code32
cmpswap.w [+%a1], -2, %e4

# CHECK-INST: cmpswap.w [+%a1], -2, %e8
# CHECK: encoding: [0x49,0x18,0xfe,0xf4]
.code32
cmpswap.w [+%a1], -2, %e8

# CHECK-INST: cmpswap.w [+%a1], -1, %e0
# CHECK: encoding: [0x49,0x10,0xff,0xf4]
.code32
cmpswap.w [+%a1], -1, %e0

# CHECK-INST: cmpswap.w [+%a1], -1, %e2
# CHECK: encoding: [0x49,0x12,0xff,0xf4]
.code32
cmpswap.w [+%a1], -1, %e2

# CHECK-INST: cmpswap.w [+%a1], -1, %e4
# CHECK: encoding: [0x49,0x14,0xff,0xf4]
.code32
cmpswap.w [+%a1], -1, %e4

# CHECK-INST: cmpswap.w [+%a1], -1, %e8
# CHECK: encoding: [0x49,0x18,0xff,0xf4]
.code32
cmpswap.w [+%a1], -1, %e8

# CHECK-INST: cmpswap.w [+%a1], 0, %e0
# CHECK: encoding: [0x49,0x10,0xc0,0x04]
.code32
cmpswap.w [+%a1], 0, %e0

# CHECK-INST: cmpswap.w [+%a1], 0, %e2
# CHECK: encoding: [0x49,0x12,0xc0,0x04]
.code32
cmpswap.w [+%a1], 0, %e2

# CHECK-INST: cmpswap.w [+%a1], 0, %e4
# CHECK: encoding: [0x49,0x14,0xc0,0x04]
.code32
cmpswap.w [+%a1], 0, %e4

# CHECK-INST: cmpswap.w [+%a1], 0, %e8
# CHECK: encoding: [0x49,0x18,0xc0,0x04]
.code32
cmpswap.w [+%a1], 0, %e8

# CHECK-INST: cmpswap.w [+%a1], 1, %e0
# CHECK: encoding: [0x49,0x10,0xc1,0x04]
.code32
cmpswap.w [+%a1], 1, %e0

# CHECK-INST: cmpswap.w [+%a1], 1, %e2
# CHECK: encoding: [0x49,0x12,0xc1,0x04]
.code32
cmpswap.w [+%a1], 1, %e2

# CHECK-INST: cmpswap.w [+%a1], 1, %e4
# CHECK: encoding: [0x49,0x14,0xc1,0x04]
.code32
cmpswap.w [+%a1], 1, %e4

# CHECK-INST: cmpswap.w [+%a1], 1, %e8
# CHECK: encoding: [0x49,0x18,0xc1,0x04]
.code32
cmpswap.w [+%a1], 1, %e8

# CHECK-INST: cmpswap.w [+%a1], 510, %e0
# CHECK: encoding: [0x49,0x10,0xfe,0x74]
.code32
cmpswap.w [+%a1], 510, %e0

# CHECK-INST: cmpswap.w [+%a1], 510, %e2
# CHECK: encoding: [0x49,0x12,0xfe,0x74]
.code32
cmpswap.w [+%a1], 510, %e2

# CHECK-INST: cmpswap.w [+%a1], 510, %e4
# CHECK: encoding: [0x49,0x14,0xfe,0x74]
.code32
cmpswap.w [+%a1], 510, %e4

# CHECK-INST: cmpswap.w [+%a1], 510, %e8
# CHECK: encoding: [0x49,0x18,0xfe,0x74]
.code32
cmpswap.w [+%a1], 510, %e8

# CHECK-INST: cmpswap.w [+%a1], 511, %e0
# CHECK: encoding: [0x49,0x10,0xff,0x74]
.code32
cmpswap.w [+%a1], 511, %e0

# CHECK-INST: cmpswap.w [+%a1], 511, %e2
# CHECK: encoding: [0x49,0x12,0xff,0x74]
.code32
cmpswap.w [+%a1], 511, %e2

# CHECK-INST: cmpswap.w [+%a1], 511, %e4
# CHECK: encoding: [0x49,0x14,0xff,0x74]
.code32
cmpswap.w [+%a1], 511, %e4

# CHECK-INST: cmpswap.w [+%a1], 511, %e8
# CHECK: encoding: [0x49,0x18,0xff,0x74]
.code32
cmpswap.w [+%a1], 511, %e8

# CHECK-INST: cmpswap.w [+%a14], -512, %e0
# CHECK: encoding: [0x49,0xe0,0xc0,0x84]
.code32
cmpswap.w [+%a14], -512, %e0

# CHECK-INST: cmpswap.w [+%a14], -512, %e2
# CHECK: encoding: [0x49,0xe2,0xc0,0x84]
.code32
cmpswap.w [+%a14], -512, %e2

# CHECK-INST: cmpswap.w [+%a14], -512, %e4
# CHECK: encoding: [0x49,0xe4,0xc0,0x84]
.code32
cmpswap.w [+%a14], -512, %e4

# CHECK-INST: cmpswap.w [+%a14], -512, %e8
# CHECK: encoding: [0x49,0xe8,0xc0,0x84]
.code32
cmpswap.w [+%a14], -512, %e8

# CHECK-INST: cmpswap.w [+%a14], -511, %e0
# CHECK: encoding: [0x49,0xe0,0xc1,0x84]
.code32
cmpswap.w [+%a14], -511, %e0

# CHECK-INST: cmpswap.w [+%a14], -511, %e2
# CHECK: encoding: [0x49,0xe2,0xc1,0x84]
.code32
cmpswap.w [+%a14], -511, %e2

# CHECK-INST: cmpswap.w [+%a14], -511, %e4
# CHECK: encoding: [0x49,0xe4,0xc1,0x84]
.code32
cmpswap.w [+%a14], -511, %e4

# CHECK-INST: cmpswap.w [+%a14], -511, %e8
# CHECK: encoding: [0x49,0xe8,0xc1,0x84]
.code32
cmpswap.w [+%a14], -511, %e8

# CHECK-INST: cmpswap.w [+%a14], -2, %e0
# CHECK: encoding: [0x49,0xe0,0xfe,0xf4]
.code32
cmpswap.w [+%a14], -2, %e0

# CHECK-INST: cmpswap.w [+%a14], -2, %e2
# CHECK: encoding: [0x49,0xe2,0xfe,0xf4]
.code32
cmpswap.w [+%a14], -2, %e2

# CHECK-INST: cmpswap.w [+%a14], -2, %e4
# CHECK: encoding: [0x49,0xe4,0xfe,0xf4]
.code32
cmpswap.w [+%a14], -2, %e4

# CHECK-INST: cmpswap.w [+%a14], -2, %e8
# CHECK: encoding: [0x49,0xe8,0xfe,0xf4]
.code32
cmpswap.w [+%a14], -2, %e8

# CHECK-INST: cmpswap.w [+%a14], -1, %e0
# CHECK: encoding: [0x49,0xe0,0xff,0xf4]
.code32
cmpswap.w [+%a14], -1, %e0

# CHECK-INST: cmpswap.w [+%a14], -1, %e2
# CHECK: encoding: [0x49,0xe2,0xff,0xf4]
.code32
cmpswap.w [+%a14], -1, %e2

# CHECK-INST: cmpswap.w [+%a14], -1, %e4
# CHECK: encoding: [0x49,0xe4,0xff,0xf4]
.code32
cmpswap.w [+%a14], -1, %e4

# CHECK-INST: cmpswap.w [+%a14], -1, %e8
# CHECK: encoding: [0x49,0xe8,0xff,0xf4]
.code32
cmpswap.w [+%a14], -1, %e8

# CHECK-INST: cmpswap.w [+%a14], 0, %e0
# CHECK: encoding: [0x49,0xe0,0xc0,0x04]
.code32
cmpswap.w [+%a14], 0, %e0

# CHECK-INST: cmpswap.w [+%a14], 0, %e2
# CHECK: encoding: [0x49,0xe2,0xc0,0x04]
.code32
cmpswap.w [+%a14], 0, %e2

# CHECK-INST: cmpswap.w [+%a14], 0, %e4
# CHECK: encoding: [0x49,0xe4,0xc0,0x04]
.code32
cmpswap.w [+%a14], 0, %e4

# CHECK-INST: cmpswap.w [+%a14], 0, %e8
# CHECK: encoding: [0x49,0xe8,0xc0,0x04]
.code32
cmpswap.w [+%a14], 0, %e8

# CHECK-INST: cmpswap.w [+%a14], 1, %e0
# CHECK: encoding: [0x49,0xe0,0xc1,0x04]
.code32
cmpswap.w [+%a14], 1, %e0

# CHECK-INST: cmpswap.w [+%a14], 1, %e2
# CHECK: encoding: [0x49,0xe2,0xc1,0x04]
.code32
cmpswap.w [+%a14], 1, %e2

# CHECK-INST: cmpswap.w [+%a14], 1, %e4
# CHECK: encoding: [0x49,0xe4,0xc1,0x04]
.code32
cmpswap.w [+%a14], 1, %e4

# CHECK-INST: cmpswap.w [+%a14], 1, %e8
# CHECK: encoding: [0x49,0xe8,0xc1,0x04]
.code32
cmpswap.w [+%a14], 1, %e8

# CHECK-INST: cmpswap.w [+%a14], 510, %e0
# CHECK: encoding: [0x49,0xe0,0xfe,0x74]
.code32
cmpswap.w [+%a14], 510, %e0

# CHECK-INST: cmpswap.w [+%a14], 510, %e2
# CHECK: encoding: [0x49,0xe2,0xfe,0x74]
.code32
cmpswap.w [+%a14], 510, %e2

# CHECK-INST: cmpswap.w [+%a14], 510, %e4
# CHECK: encoding: [0x49,0xe4,0xfe,0x74]
.code32
cmpswap.w [+%a14], 510, %e4

# CHECK-INST: cmpswap.w [+%a14], 510, %e8
# CHECK: encoding: [0x49,0xe8,0xfe,0x74]
.code32
cmpswap.w [+%a14], 510, %e8

# CHECK-INST: cmpswap.w [+%a14], 511, %e0
# CHECK: encoding: [0x49,0xe0,0xff,0x74]
.code32
cmpswap.w [+%a14], 511, %e0

# CHECK-INST: cmpswap.w [+%a14], 511, %e2
# CHECK: encoding: [0x49,0xe2,0xff,0x74]
.code32
cmpswap.w [+%a14], 511, %e2

# CHECK-INST: cmpswap.w [+%a14], 511, %e4
# CHECK: encoding: [0x49,0xe4,0xff,0x74]
.code32
cmpswap.w [+%a14], 511, %e4

# CHECK-INST: cmpswap.w [+%a14], 511, %e8
# CHECK: encoding: [0x49,0xe8,0xff,0x74]
.code32
cmpswap.w [+%a14], 511, %e8

# CHECK-INST: cmpswap.w [+%a15], -512, %e0
# CHECK: encoding: [0x49,0xf0,0xc0,0x84]
.code32
cmpswap.w [+%a15], -512, %e0

# CHECK-INST: cmpswap.w [+%a15], -512, %e2
# CHECK: encoding: [0x49,0xf2,0xc0,0x84]
.code32
cmpswap.w [+%a15], -512, %e2

# CHECK-INST: cmpswap.w [+%a15], -512, %e4
# CHECK: encoding: [0x49,0xf4,0xc0,0x84]
.code32
cmpswap.w [+%a15], -512, %e4

# CHECK-INST: cmpswap.w [+%a15], -512, %e8
# CHECK: encoding: [0x49,0xf8,0xc0,0x84]
.code32
cmpswap.w [+%a15], -512, %e8

# CHECK-INST: cmpswap.w [+%a15], -511, %e0
# CHECK: encoding: [0x49,0xf0,0xc1,0x84]
.code32
cmpswap.w [+%a15], -511, %e0

# CHECK-INST: cmpswap.w [+%a15], -511, %e2
# CHECK: encoding: [0x49,0xf2,0xc1,0x84]
.code32
cmpswap.w [+%a15], -511, %e2

# CHECK-INST: cmpswap.w [+%a15], -511, %e4
# CHECK: encoding: [0x49,0xf4,0xc1,0x84]
.code32
cmpswap.w [+%a15], -511, %e4

# CHECK-INST: cmpswap.w [+%a15], -511, %e8
# CHECK: encoding: [0x49,0xf8,0xc1,0x84]
.code32
cmpswap.w [+%a15], -511, %e8

# CHECK-INST: cmpswap.w [+%a15], -2, %e0
# CHECK: encoding: [0x49,0xf0,0xfe,0xf4]
.code32
cmpswap.w [+%a15], -2, %e0

# CHECK-INST: cmpswap.w [+%a15], -2, %e2
# CHECK: encoding: [0x49,0xf2,0xfe,0xf4]
.code32
cmpswap.w [+%a15], -2, %e2

# CHECK-INST: cmpswap.w [+%a15], -2, %e4
# CHECK: encoding: [0x49,0xf4,0xfe,0xf4]
.code32
cmpswap.w [+%a15], -2, %e4

# CHECK-INST: cmpswap.w [+%a15], -2, %e8
# CHECK: encoding: [0x49,0xf8,0xfe,0xf4]
.code32
cmpswap.w [+%a15], -2, %e8

# CHECK-INST: cmpswap.w [+%a15], -1, %e0
# CHECK: encoding: [0x49,0xf0,0xff,0xf4]
.code32
cmpswap.w [+%a15], -1, %e0

# CHECK-INST: cmpswap.w [+%a15], -1, %e2
# CHECK: encoding: [0x49,0xf2,0xff,0xf4]
.code32
cmpswap.w [+%a15], -1, %e2

# CHECK-INST: cmpswap.w [+%a15], -1, %e4
# CHECK: encoding: [0x49,0xf4,0xff,0xf4]
.code32
cmpswap.w [+%a15], -1, %e4

# CHECK-INST: cmpswap.w [+%a15], -1, %e8
# CHECK: encoding: [0x49,0xf8,0xff,0xf4]
.code32
cmpswap.w [+%a15], -1, %e8

# CHECK-INST: cmpswap.w [+%a15], 0, %e0
# CHECK: encoding: [0x49,0xf0,0xc0,0x04]
.code32
cmpswap.w [+%a15], 0, %e0

# CHECK-INST: cmpswap.w [+%a15], 0, %e2
# CHECK: encoding: [0x49,0xf2,0xc0,0x04]
.code32
cmpswap.w [+%a15], 0, %e2

# CHECK-INST: cmpswap.w [+%a15], 0, %e4
# CHECK: encoding: [0x49,0xf4,0xc0,0x04]
.code32
cmpswap.w [+%a15], 0, %e4

# CHECK-INST: cmpswap.w [+%a15], 0, %e8
# CHECK: encoding: [0x49,0xf8,0xc0,0x04]
.code32
cmpswap.w [+%a15], 0, %e8

# CHECK-INST: cmpswap.w [+%a15], 1, %e0
# CHECK: encoding: [0x49,0xf0,0xc1,0x04]
.code32
cmpswap.w [+%a15], 1, %e0

# CHECK-INST: cmpswap.w [+%a15], 1, %e2
# CHECK: encoding: [0x49,0xf2,0xc1,0x04]
.code32
cmpswap.w [+%a15], 1, %e2

# CHECK-INST: cmpswap.w [+%a15], 1, %e4
# CHECK: encoding: [0x49,0xf4,0xc1,0x04]
.code32
cmpswap.w [+%a15], 1, %e4

# CHECK-INST: cmpswap.w [+%a15], 1, %e8
# CHECK: encoding: [0x49,0xf8,0xc1,0x04]
.code32
cmpswap.w [+%a15], 1, %e8

# CHECK-INST: cmpswap.w [+%a15], 510, %e0
# CHECK: encoding: [0x49,0xf0,0xfe,0x74]
.code32
cmpswap.w [+%a15], 510, %e0

# CHECK-INST: cmpswap.w [+%a15], 510, %e2
# CHECK: encoding: [0x49,0xf2,0xfe,0x74]
.code32
cmpswap.w [+%a15], 510, %e2

# CHECK-INST: cmpswap.w [+%a15], 510, %e4
# CHECK: encoding: [0x49,0xf4,0xfe,0x74]
.code32
cmpswap.w [+%a15], 510, %e4

# CHECK-INST: cmpswap.w [+%a15], 510, %e8
# CHECK: encoding: [0x49,0xf8,0xfe,0x74]
.code32
cmpswap.w [+%a15], 510, %e8

# CHECK-INST: cmpswap.w [+%a15], 511, %e0
# CHECK: encoding: [0x49,0xf0,0xff,0x74]
.code32
cmpswap.w [+%a15], 511, %e0

# CHECK-INST: cmpswap.w [+%a15], 511, %e2
# CHECK: encoding: [0x49,0xf2,0xff,0x74]
.code32
cmpswap.w [+%a15], 511, %e2

# CHECK-INST: cmpswap.w [+%a15], 511, %e4
# CHECK: encoding: [0x49,0xf4,0xff,0x74]
.code32
cmpswap.w [+%a15], 511, %e4

# CHECK-INST: cmpswap.w [+%a15], 511, %e8
# CHECK: encoding: [0x49,0xf8,0xff,0x74]
.code32
cmpswap.w [+%a15], 511, %e8
