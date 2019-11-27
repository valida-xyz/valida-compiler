# RUN: llvm-mc %s -triple=tricore -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK,CHECK-INST %s
# RUN: llvm-mc -filetype=obj -triple=tricore < %s \
# RUN:     | llvm-objdump -d - | FileCheck -check-prefix=CHECK-INST %s

# CHECK-INST: add.df %e0, %e0, %e0
# CHECK: encoding: [0x6b,0x00,0x22,0x00]
.code32
add.df %e0, %e0, %e0

# CHECK-INST: add.df %e0, %e0, %e2
# CHECK: encoding: [0x6b,0x02,0x22,0x00]
.code32
add.df %e0, %e0, %e2

# CHECK-INST: add.df %e0, %e0, %e4
# CHECK: encoding: [0x6b,0x04,0x22,0x00]
.code32
add.df %e0, %e0, %e4

# CHECK-INST: add.df %e0, %e0, %e8
# CHECK: encoding: [0x6b,0x08,0x22,0x00]
.code32
add.df %e0, %e0, %e8

# CHECK-INST: add.df %e0, %e2, %e0
# CHECK: encoding: [0x6b,0x00,0x22,0x02]
.code32
add.df %e0, %e2, %e0

# CHECK-INST: add.df %e0, %e2, %e2
# CHECK: encoding: [0x6b,0x02,0x22,0x02]
.code32
add.df %e0, %e2, %e2

# CHECK-INST: add.df %e0, %e2, %e4
# CHECK: encoding: [0x6b,0x04,0x22,0x02]
.code32
add.df %e0, %e2, %e4

# CHECK-INST: add.df %e0, %e2, %e8
# CHECK: encoding: [0x6b,0x08,0x22,0x02]
.code32
add.df %e0, %e2, %e8

# CHECK-INST: add.df %e0, %e4, %e0
# CHECK: encoding: [0x6b,0x00,0x22,0x04]
.code32
add.df %e0, %e4, %e0

# CHECK-INST: add.df %e0, %e4, %e2
# CHECK: encoding: [0x6b,0x02,0x22,0x04]
.code32
add.df %e0, %e4, %e2

# CHECK-INST: add.df %e0, %e4, %e4
# CHECK: encoding: [0x6b,0x04,0x22,0x04]
.code32
add.df %e0, %e4, %e4

# CHECK-INST: add.df %e0, %e4, %e8
# CHECK: encoding: [0x6b,0x08,0x22,0x04]
.code32
add.df %e0, %e4, %e8

# CHECK-INST: add.df %e0, %e8, %e0
# CHECK: encoding: [0x6b,0x00,0x22,0x08]
.code32
add.df %e0, %e8, %e0

# CHECK-INST: add.df %e0, %e8, %e2
# CHECK: encoding: [0x6b,0x02,0x22,0x08]
.code32
add.df %e0, %e8, %e2

# CHECK-INST: add.df %e0, %e8, %e4
# CHECK: encoding: [0x6b,0x04,0x22,0x08]
.code32
add.df %e0, %e8, %e4

# CHECK-INST: add.df %e0, %e8, %e8
# CHECK: encoding: [0x6b,0x08,0x22,0x08]
.code32
add.df %e0, %e8, %e8

# CHECK-INST: add.df %e2, %e0, %e0
# CHECK: encoding: [0x6b,0x00,0x22,0x20]
.code32
add.df %e2, %e0, %e0

# CHECK-INST: add.df %e2, %e0, %e2
# CHECK: encoding: [0x6b,0x02,0x22,0x20]
.code32
add.df %e2, %e0, %e2

# CHECK-INST: add.df %e2, %e0, %e4
# CHECK: encoding: [0x6b,0x04,0x22,0x20]
.code32
add.df %e2, %e0, %e4

# CHECK-INST: add.df %e2, %e0, %e8
# CHECK: encoding: [0x6b,0x08,0x22,0x20]
.code32
add.df %e2, %e0, %e8

# CHECK-INST: add.df %e2, %e2, %e0
# CHECK: encoding: [0x6b,0x00,0x22,0x22]
.code32
add.df %e2, %e2, %e0

# CHECK-INST: add.df %e2, %e2, %e2
# CHECK: encoding: [0x6b,0x02,0x22,0x22]
.code32
add.df %e2, %e2, %e2

# CHECK-INST: add.df %e2, %e2, %e4
# CHECK: encoding: [0x6b,0x04,0x22,0x22]
.code32
add.df %e2, %e2, %e4

# CHECK-INST: add.df %e2, %e2, %e8
# CHECK: encoding: [0x6b,0x08,0x22,0x22]
.code32
add.df %e2, %e2, %e8

# CHECK-INST: add.df %e2, %e4, %e0
# CHECK: encoding: [0x6b,0x00,0x22,0x24]
.code32
add.df %e2, %e4, %e0

# CHECK-INST: add.df %e2, %e4, %e2
# CHECK: encoding: [0x6b,0x02,0x22,0x24]
.code32
add.df %e2, %e4, %e2

# CHECK-INST: add.df %e2, %e4, %e4
# CHECK: encoding: [0x6b,0x04,0x22,0x24]
.code32
add.df %e2, %e4, %e4

# CHECK-INST: add.df %e2, %e4, %e8
# CHECK: encoding: [0x6b,0x08,0x22,0x24]
.code32
add.df %e2, %e4, %e8

# CHECK-INST: add.df %e2, %e8, %e0
# CHECK: encoding: [0x6b,0x00,0x22,0x28]
.code32
add.df %e2, %e8, %e0

# CHECK-INST: add.df %e2, %e8, %e2
# CHECK: encoding: [0x6b,0x02,0x22,0x28]
.code32
add.df %e2, %e8, %e2

# CHECK-INST: add.df %e2, %e8, %e4
# CHECK: encoding: [0x6b,0x04,0x22,0x28]
.code32
add.df %e2, %e8, %e4

# CHECK-INST: add.df %e2, %e8, %e8
# CHECK: encoding: [0x6b,0x08,0x22,0x28]
.code32
add.df %e2, %e8, %e8

# CHECK-INST: add.df %e4, %e0, %e0
# CHECK: encoding: [0x6b,0x00,0x22,0x40]
.code32
add.df %e4, %e0, %e0

# CHECK-INST: add.df %e4, %e0, %e2
# CHECK: encoding: [0x6b,0x02,0x22,0x40]
.code32
add.df %e4, %e0, %e2

# CHECK-INST: add.df %e4, %e0, %e4
# CHECK: encoding: [0x6b,0x04,0x22,0x40]
.code32
add.df %e4, %e0, %e4

# CHECK-INST: add.df %e4, %e0, %e8
# CHECK: encoding: [0x6b,0x08,0x22,0x40]
.code32
add.df %e4, %e0, %e8

# CHECK-INST: add.df %e4, %e2, %e0
# CHECK: encoding: [0x6b,0x00,0x22,0x42]
.code32
add.df %e4, %e2, %e0

# CHECK-INST: add.df %e4, %e2, %e2
# CHECK: encoding: [0x6b,0x02,0x22,0x42]
.code32
add.df %e4, %e2, %e2

# CHECK-INST: add.df %e4, %e2, %e4
# CHECK: encoding: [0x6b,0x04,0x22,0x42]
.code32
add.df %e4, %e2, %e4

# CHECK-INST: add.df %e4, %e2, %e8
# CHECK: encoding: [0x6b,0x08,0x22,0x42]
.code32
add.df %e4, %e2, %e8

# CHECK-INST: add.df %e4, %e4, %e0
# CHECK: encoding: [0x6b,0x00,0x22,0x44]
.code32
add.df %e4, %e4, %e0

# CHECK-INST: add.df %e4, %e4, %e2
# CHECK: encoding: [0x6b,0x02,0x22,0x44]
.code32
add.df %e4, %e4, %e2

# CHECK-INST: add.df %e4, %e4, %e4
# CHECK: encoding: [0x6b,0x04,0x22,0x44]
.code32
add.df %e4, %e4, %e4

# CHECK-INST: add.df %e4, %e4, %e8
# CHECK: encoding: [0x6b,0x08,0x22,0x44]
.code32
add.df %e4, %e4, %e8

# CHECK-INST: add.df %e4, %e8, %e0
# CHECK: encoding: [0x6b,0x00,0x22,0x48]
.code32
add.df %e4, %e8, %e0

# CHECK-INST: add.df %e4, %e8, %e2
# CHECK: encoding: [0x6b,0x02,0x22,0x48]
.code32
add.df %e4, %e8, %e2

# CHECK-INST: add.df %e4, %e8, %e4
# CHECK: encoding: [0x6b,0x04,0x22,0x48]
.code32
add.df %e4, %e8, %e4

# CHECK-INST: add.df %e4, %e8, %e8
# CHECK: encoding: [0x6b,0x08,0x22,0x48]
.code32
add.df %e4, %e8, %e8

# CHECK-INST: add.df %e8, %e0, %e0
# CHECK: encoding: [0x6b,0x00,0x22,0x80]
.code32
add.df %e8, %e0, %e0

# CHECK-INST: add.df %e8, %e0, %e2
# CHECK: encoding: [0x6b,0x02,0x22,0x80]
.code32
add.df %e8, %e0, %e2

# CHECK-INST: add.df %e8, %e0, %e4
# CHECK: encoding: [0x6b,0x04,0x22,0x80]
.code32
add.df %e8, %e0, %e4

# CHECK-INST: add.df %e8, %e0, %e8
# CHECK: encoding: [0x6b,0x08,0x22,0x80]
.code32
add.df %e8, %e0, %e8

# CHECK-INST: add.df %e8, %e2, %e0
# CHECK: encoding: [0x6b,0x00,0x22,0x82]
.code32
add.df %e8, %e2, %e0

# CHECK-INST: add.df %e8, %e2, %e2
# CHECK: encoding: [0x6b,0x02,0x22,0x82]
.code32
add.df %e8, %e2, %e2

# CHECK-INST: add.df %e8, %e2, %e4
# CHECK: encoding: [0x6b,0x04,0x22,0x82]
.code32
add.df %e8, %e2, %e4

# CHECK-INST: add.df %e8, %e2, %e8
# CHECK: encoding: [0x6b,0x08,0x22,0x82]
.code32
add.df %e8, %e2, %e8

# CHECK-INST: add.df %e8, %e4, %e0
# CHECK: encoding: [0x6b,0x00,0x22,0x84]
.code32
add.df %e8, %e4, %e0

# CHECK-INST: add.df %e8, %e4, %e2
# CHECK: encoding: [0x6b,0x02,0x22,0x84]
.code32
add.df %e8, %e4, %e2

# CHECK-INST: add.df %e8, %e4, %e4
# CHECK: encoding: [0x6b,0x04,0x22,0x84]
.code32
add.df %e8, %e4, %e4

# CHECK-INST: add.df %e8, %e4, %e8
# CHECK: encoding: [0x6b,0x08,0x22,0x84]
.code32
add.df %e8, %e4, %e8

# CHECK-INST: add.df %e8, %e8, %e0
# CHECK: encoding: [0x6b,0x00,0x22,0x88]
.code32
add.df %e8, %e8, %e0

# CHECK-INST: add.df %e8, %e8, %e2
# CHECK: encoding: [0x6b,0x02,0x22,0x88]
.code32
add.df %e8, %e8, %e2

# CHECK-INST: add.df %e8, %e8, %e4
# CHECK: encoding: [0x6b,0x04,0x22,0x88]
.code32
add.df %e8, %e8, %e4

# CHECK-INST: add.df %e8, %e8, %e8
# CHECK: encoding: [0x6b,0x08,0x22,0x88]
.code32
add.df %e8, %e8, %e8

# CHECK-INST: sub.df %e0, %e0, %e0
# CHECK: encoding: [0x6b,0x00,0x32,0x00]
.code32
sub.df %e0, %e0, %e0

# CHECK-INST: sub.df %e0, %e0, %e2
# CHECK: encoding: [0x6b,0x02,0x32,0x00]
.code32
sub.df %e0, %e0, %e2

# CHECK-INST: sub.df %e0, %e0, %e4
# CHECK: encoding: [0x6b,0x04,0x32,0x00]
.code32
sub.df %e0, %e0, %e4

# CHECK-INST: sub.df %e0, %e0, %e8
# CHECK: encoding: [0x6b,0x08,0x32,0x00]
.code32
sub.df %e0, %e0, %e8

# CHECK-INST: sub.df %e0, %e2, %e0
# CHECK: encoding: [0x6b,0x00,0x32,0x02]
.code32
sub.df %e0, %e2, %e0

# CHECK-INST: sub.df %e0, %e2, %e2
# CHECK: encoding: [0x6b,0x02,0x32,0x02]
.code32
sub.df %e0, %e2, %e2

# CHECK-INST: sub.df %e0, %e2, %e4
# CHECK: encoding: [0x6b,0x04,0x32,0x02]
.code32
sub.df %e0, %e2, %e4

# CHECK-INST: sub.df %e0, %e2, %e8
# CHECK: encoding: [0x6b,0x08,0x32,0x02]
.code32
sub.df %e0, %e2, %e8

# CHECK-INST: sub.df %e0, %e4, %e0
# CHECK: encoding: [0x6b,0x00,0x32,0x04]
.code32
sub.df %e0, %e4, %e0

# CHECK-INST: sub.df %e0, %e4, %e2
# CHECK: encoding: [0x6b,0x02,0x32,0x04]
.code32
sub.df %e0, %e4, %e2

# CHECK-INST: sub.df %e0, %e4, %e4
# CHECK: encoding: [0x6b,0x04,0x32,0x04]
.code32
sub.df %e0, %e4, %e4

# CHECK-INST: sub.df %e0, %e4, %e8
# CHECK: encoding: [0x6b,0x08,0x32,0x04]
.code32
sub.df %e0, %e4, %e8

# CHECK-INST: sub.df %e0, %e8, %e0
# CHECK: encoding: [0x6b,0x00,0x32,0x08]
.code32
sub.df %e0, %e8, %e0

# CHECK-INST: sub.df %e0, %e8, %e2
# CHECK: encoding: [0x6b,0x02,0x32,0x08]
.code32
sub.df %e0, %e8, %e2

# CHECK-INST: sub.df %e0, %e8, %e4
# CHECK: encoding: [0x6b,0x04,0x32,0x08]
.code32
sub.df %e0, %e8, %e4

# CHECK-INST: sub.df %e0, %e8, %e8
# CHECK: encoding: [0x6b,0x08,0x32,0x08]
.code32
sub.df %e0, %e8, %e8

# CHECK-INST: sub.df %e2, %e0, %e0
# CHECK: encoding: [0x6b,0x00,0x32,0x20]
.code32
sub.df %e2, %e0, %e0

# CHECK-INST: sub.df %e2, %e0, %e2
# CHECK: encoding: [0x6b,0x02,0x32,0x20]
.code32
sub.df %e2, %e0, %e2

# CHECK-INST: sub.df %e2, %e0, %e4
# CHECK: encoding: [0x6b,0x04,0x32,0x20]
.code32
sub.df %e2, %e0, %e4

# CHECK-INST: sub.df %e2, %e0, %e8
# CHECK: encoding: [0x6b,0x08,0x32,0x20]
.code32
sub.df %e2, %e0, %e8

# CHECK-INST: sub.df %e2, %e2, %e0
# CHECK: encoding: [0x6b,0x00,0x32,0x22]
.code32
sub.df %e2, %e2, %e0

# CHECK-INST: sub.df %e2, %e2, %e2
# CHECK: encoding: [0x6b,0x02,0x32,0x22]
.code32
sub.df %e2, %e2, %e2

# CHECK-INST: sub.df %e2, %e2, %e4
# CHECK: encoding: [0x6b,0x04,0x32,0x22]
.code32
sub.df %e2, %e2, %e4

# CHECK-INST: sub.df %e2, %e2, %e8
# CHECK: encoding: [0x6b,0x08,0x32,0x22]
.code32
sub.df %e2, %e2, %e8

# CHECK-INST: sub.df %e2, %e4, %e0
# CHECK: encoding: [0x6b,0x00,0x32,0x24]
.code32
sub.df %e2, %e4, %e0

# CHECK-INST: sub.df %e2, %e4, %e2
# CHECK: encoding: [0x6b,0x02,0x32,0x24]
.code32
sub.df %e2, %e4, %e2

# CHECK-INST: sub.df %e2, %e4, %e4
# CHECK: encoding: [0x6b,0x04,0x32,0x24]
.code32
sub.df %e2, %e4, %e4

# CHECK-INST: sub.df %e2, %e4, %e8
# CHECK: encoding: [0x6b,0x08,0x32,0x24]
.code32
sub.df %e2, %e4, %e8

# CHECK-INST: sub.df %e2, %e8, %e0
# CHECK: encoding: [0x6b,0x00,0x32,0x28]
.code32
sub.df %e2, %e8, %e0

# CHECK-INST: sub.df %e2, %e8, %e2
# CHECK: encoding: [0x6b,0x02,0x32,0x28]
.code32
sub.df %e2, %e8, %e2

# CHECK-INST: sub.df %e2, %e8, %e4
# CHECK: encoding: [0x6b,0x04,0x32,0x28]
.code32
sub.df %e2, %e8, %e4

# CHECK-INST: sub.df %e2, %e8, %e8
# CHECK: encoding: [0x6b,0x08,0x32,0x28]
.code32
sub.df %e2, %e8, %e8

# CHECK-INST: sub.df %e4, %e0, %e0
# CHECK: encoding: [0x6b,0x00,0x32,0x40]
.code32
sub.df %e4, %e0, %e0

# CHECK-INST: sub.df %e4, %e0, %e2
# CHECK: encoding: [0x6b,0x02,0x32,0x40]
.code32
sub.df %e4, %e0, %e2

# CHECK-INST: sub.df %e4, %e0, %e4
# CHECK: encoding: [0x6b,0x04,0x32,0x40]
.code32
sub.df %e4, %e0, %e4

# CHECK-INST: sub.df %e4, %e0, %e8
# CHECK: encoding: [0x6b,0x08,0x32,0x40]
.code32
sub.df %e4, %e0, %e8

# CHECK-INST: sub.df %e4, %e2, %e0
# CHECK: encoding: [0x6b,0x00,0x32,0x42]
.code32
sub.df %e4, %e2, %e0

# CHECK-INST: sub.df %e4, %e2, %e2
# CHECK: encoding: [0x6b,0x02,0x32,0x42]
.code32
sub.df %e4, %e2, %e2

# CHECK-INST: sub.df %e4, %e2, %e4
# CHECK: encoding: [0x6b,0x04,0x32,0x42]
.code32
sub.df %e4, %e2, %e4

# CHECK-INST: sub.df %e4, %e2, %e8
# CHECK: encoding: [0x6b,0x08,0x32,0x42]
.code32
sub.df %e4, %e2, %e8

# CHECK-INST: sub.df %e4, %e4, %e0
# CHECK: encoding: [0x6b,0x00,0x32,0x44]
.code32
sub.df %e4, %e4, %e0

# CHECK-INST: sub.df %e4, %e4, %e2
# CHECK: encoding: [0x6b,0x02,0x32,0x44]
.code32
sub.df %e4, %e4, %e2

# CHECK-INST: sub.df %e4, %e4, %e4
# CHECK: encoding: [0x6b,0x04,0x32,0x44]
.code32
sub.df %e4, %e4, %e4

# CHECK-INST: sub.df %e4, %e4, %e8
# CHECK: encoding: [0x6b,0x08,0x32,0x44]
.code32
sub.df %e4, %e4, %e8

# CHECK-INST: sub.df %e4, %e8, %e0
# CHECK: encoding: [0x6b,0x00,0x32,0x48]
.code32
sub.df %e4, %e8, %e0

# CHECK-INST: sub.df %e4, %e8, %e2
# CHECK: encoding: [0x6b,0x02,0x32,0x48]
.code32
sub.df %e4, %e8, %e2

# CHECK-INST: sub.df %e4, %e8, %e4
# CHECK: encoding: [0x6b,0x04,0x32,0x48]
.code32
sub.df %e4, %e8, %e4

# CHECK-INST: sub.df %e4, %e8, %e8
# CHECK: encoding: [0x6b,0x08,0x32,0x48]
.code32
sub.df %e4, %e8, %e8

# CHECK-INST: sub.df %e8, %e0, %e0
# CHECK: encoding: [0x6b,0x00,0x32,0x80]
.code32
sub.df %e8, %e0, %e0

# CHECK-INST: sub.df %e8, %e0, %e2
# CHECK: encoding: [0x6b,0x02,0x32,0x80]
.code32
sub.df %e8, %e0, %e2

# CHECK-INST: sub.df %e8, %e0, %e4
# CHECK: encoding: [0x6b,0x04,0x32,0x80]
.code32
sub.df %e8, %e0, %e4

# CHECK-INST: sub.df %e8, %e0, %e8
# CHECK: encoding: [0x6b,0x08,0x32,0x80]
.code32
sub.df %e8, %e0, %e8

# CHECK-INST: sub.df %e8, %e2, %e0
# CHECK: encoding: [0x6b,0x00,0x32,0x82]
.code32
sub.df %e8, %e2, %e0

# CHECK-INST: sub.df %e8, %e2, %e2
# CHECK: encoding: [0x6b,0x02,0x32,0x82]
.code32
sub.df %e8, %e2, %e2

# CHECK-INST: sub.df %e8, %e2, %e4
# CHECK: encoding: [0x6b,0x04,0x32,0x82]
.code32
sub.df %e8, %e2, %e4

# CHECK-INST: sub.df %e8, %e2, %e8
# CHECK: encoding: [0x6b,0x08,0x32,0x82]
.code32
sub.df %e8, %e2, %e8

# CHECK-INST: sub.df %e8, %e4, %e0
# CHECK: encoding: [0x6b,0x00,0x32,0x84]
.code32
sub.df %e8, %e4, %e0

# CHECK-INST: sub.df %e8, %e4, %e2
# CHECK: encoding: [0x6b,0x02,0x32,0x84]
.code32
sub.df %e8, %e4, %e2

# CHECK-INST: sub.df %e8, %e4, %e4
# CHECK: encoding: [0x6b,0x04,0x32,0x84]
.code32
sub.df %e8, %e4, %e4

# CHECK-INST: sub.df %e8, %e4, %e8
# CHECK: encoding: [0x6b,0x08,0x32,0x84]
.code32
sub.df %e8, %e4, %e8

# CHECK-INST: sub.df %e8, %e8, %e0
# CHECK: encoding: [0x6b,0x00,0x32,0x88]
.code32
sub.df %e8, %e8, %e0

# CHECK-INST: sub.df %e8, %e8, %e2
# CHECK: encoding: [0x6b,0x02,0x32,0x88]
.code32
sub.df %e8, %e8, %e2

# CHECK-INST: sub.df %e8, %e8, %e4
# CHECK: encoding: [0x6b,0x04,0x32,0x88]
.code32
sub.df %e8, %e8, %e4

# CHECK-INST: sub.df %e8, %e8, %e8
# CHECK: encoding: [0x6b,0x08,0x32,0x88]
.code32
sub.df %e8, %e8, %e8

# CHECK-INST: mul.df %e0, %e0, %e0
# CHECK: encoding: [0x4b,0x00,0x42,0x00]
.code32
mul.df %e0, %e0, %e0

# CHECK-INST: mul.df %e0, %e0, %e2
# CHECK: encoding: [0x4b,0x20,0x42,0x00]
.code32
mul.df %e0, %e0, %e2

# CHECK-INST: mul.df %e0, %e0, %e4
# CHECK: encoding: [0x4b,0x40,0x42,0x00]
.code32
mul.df %e0, %e0, %e4

# CHECK-INST: mul.df %e0, %e0, %e8
# CHECK: encoding: [0x4b,0x80,0x42,0x00]
.code32
mul.df %e0, %e0, %e8

# CHECK-INST: mul.df %e0, %e2, %e0
# CHECK: encoding: [0x4b,0x02,0x42,0x00]
.code32
mul.df %e0, %e2, %e0

# CHECK-INST: mul.df %e0, %e2, %e2
# CHECK: encoding: [0x4b,0x22,0x42,0x00]
.code32
mul.df %e0, %e2, %e2

# CHECK-INST: mul.df %e0, %e2, %e4
# CHECK: encoding: [0x4b,0x42,0x42,0x00]
.code32
mul.df %e0, %e2, %e4

# CHECK-INST: mul.df %e0, %e2, %e8
# CHECK: encoding: [0x4b,0x82,0x42,0x00]
.code32
mul.df %e0, %e2, %e8

# CHECK-INST: mul.df %e0, %e4, %e0
# CHECK: encoding: [0x4b,0x04,0x42,0x00]
.code32
mul.df %e0, %e4, %e0

# CHECK-INST: mul.df %e0, %e4, %e2
# CHECK: encoding: [0x4b,0x24,0x42,0x00]
.code32
mul.df %e0, %e4, %e2

# CHECK-INST: mul.df %e0, %e4, %e4
# CHECK: encoding: [0x4b,0x44,0x42,0x00]
.code32
mul.df %e0, %e4, %e4

# CHECK-INST: mul.df %e0, %e4, %e8
# CHECK: encoding: [0x4b,0x84,0x42,0x00]
.code32
mul.df %e0, %e4, %e8

# CHECK-INST: mul.df %e0, %e8, %e0
# CHECK: encoding: [0x4b,0x08,0x42,0x00]
.code32
mul.df %e0, %e8, %e0

# CHECK-INST: mul.df %e0, %e8, %e2
# CHECK: encoding: [0x4b,0x28,0x42,0x00]
.code32
mul.df %e0, %e8, %e2

# CHECK-INST: mul.df %e0, %e8, %e4
# CHECK: encoding: [0x4b,0x48,0x42,0x00]
.code32
mul.df %e0, %e8, %e4

# CHECK-INST: mul.df %e0, %e8, %e8
# CHECK: encoding: [0x4b,0x88,0x42,0x00]
.code32
mul.df %e0, %e8, %e8

# CHECK-INST: mul.df %e2, %e0, %e0
# CHECK: encoding: [0x4b,0x00,0x42,0x20]
.code32
mul.df %e2, %e0, %e0

# CHECK-INST: mul.df %e2, %e0, %e2
# CHECK: encoding: [0x4b,0x20,0x42,0x20]
.code32
mul.df %e2, %e0, %e2

# CHECK-INST: mul.df %e2, %e0, %e4
# CHECK: encoding: [0x4b,0x40,0x42,0x20]
.code32
mul.df %e2, %e0, %e4

# CHECK-INST: mul.df %e2, %e0, %e8
# CHECK: encoding: [0x4b,0x80,0x42,0x20]
.code32
mul.df %e2, %e0, %e8

# CHECK-INST: mul.df %e2, %e2, %e0
# CHECK: encoding: [0x4b,0x02,0x42,0x20]
.code32
mul.df %e2, %e2, %e0

# CHECK-INST: mul.df %e2, %e2, %e2
# CHECK: encoding: [0x4b,0x22,0x42,0x20]
.code32
mul.df %e2, %e2, %e2

# CHECK-INST: mul.df %e2, %e2, %e4
# CHECK: encoding: [0x4b,0x42,0x42,0x20]
.code32
mul.df %e2, %e2, %e4

# CHECK-INST: mul.df %e2, %e2, %e8
# CHECK: encoding: [0x4b,0x82,0x42,0x20]
.code32
mul.df %e2, %e2, %e8

# CHECK-INST: mul.df %e2, %e4, %e0
# CHECK: encoding: [0x4b,0x04,0x42,0x20]
.code32
mul.df %e2, %e4, %e0

# CHECK-INST: mul.df %e2, %e4, %e2
# CHECK: encoding: [0x4b,0x24,0x42,0x20]
.code32
mul.df %e2, %e4, %e2

# CHECK-INST: mul.df %e2, %e4, %e4
# CHECK: encoding: [0x4b,0x44,0x42,0x20]
.code32
mul.df %e2, %e4, %e4

# CHECK-INST: mul.df %e2, %e4, %e8
# CHECK: encoding: [0x4b,0x84,0x42,0x20]
.code32
mul.df %e2, %e4, %e8

# CHECK-INST: mul.df %e2, %e8, %e0
# CHECK: encoding: [0x4b,0x08,0x42,0x20]
.code32
mul.df %e2, %e8, %e0

# CHECK-INST: mul.df %e2, %e8, %e2
# CHECK: encoding: [0x4b,0x28,0x42,0x20]
.code32
mul.df %e2, %e8, %e2

# CHECK-INST: mul.df %e2, %e8, %e4
# CHECK: encoding: [0x4b,0x48,0x42,0x20]
.code32
mul.df %e2, %e8, %e4

# CHECK-INST: mul.df %e2, %e8, %e8
# CHECK: encoding: [0x4b,0x88,0x42,0x20]
.code32
mul.df %e2, %e8, %e8

# CHECK-INST: mul.df %e4, %e0, %e0
# CHECK: encoding: [0x4b,0x00,0x42,0x40]
.code32
mul.df %e4, %e0, %e0

# CHECK-INST: mul.df %e4, %e0, %e2
# CHECK: encoding: [0x4b,0x20,0x42,0x40]
.code32
mul.df %e4, %e0, %e2

# CHECK-INST: mul.df %e4, %e0, %e4
# CHECK: encoding: [0x4b,0x40,0x42,0x40]
.code32
mul.df %e4, %e0, %e4

# CHECK-INST: mul.df %e4, %e0, %e8
# CHECK: encoding: [0x4b,0x80,0x42,0x40]
.code32
mul.df %e4, %e0, %e8

# CHECK-INST: mul.df %e4, %e2, %e0
# CHECK: encoding: [0x4b,0x02,0x42,0x40]
.code32
mul.df %e4, %e2, %e0

# CHECK-INST: mul.df %e4, %e2, %e2
# CHECK: encoding: [0x4b,0x22,0x42,0x40]
.code32
mul.df %e4, %e2, %e2

# CHECK-INST: mul.df %e4, %e2, %e4
# CHECK: encoding: [0x4b,0x42,0x42,0x40]
.code32
mul.df %e4, %e2, %e4

# CHECK-INST: mul.df %e4, %e2, %e8
# CHECK: encoding: [0x4b,0x82,0x42,0x40]
.code32
mul.df %e4, %e2, %e8

# CHECK-INST: mul.df %e4, %e4, %e0
# CHECK: encoding: [0x4b,0x04,0x42,0x40]
.code32
mul.df %e4, %e4, %e0

# CHECK-INST: mul.df %e4, %e4, %e2
# CHECK: encoding: [0x4b,0x24,0x42,0x40]
.code32
mul.df %e4, %e4, %e2

# CHECK-INST: mul.df %e4, %e4, %e4
# CHECK: encoding: [0x4b,0x44,0x42,0x40]
.code32
mul.df %e4, %e4, %e4

# CHECK-INST: mul.df %e4, %e4, %e8
# CHECK: encoding: [0x4b,0x84,0x42,0x40]
.code32
mul.df %e4, %e4, %e8

# CHECK-INST: mul.df %e4, %e8, %e0
# CHECK: encoding: [0x4b,0x08,0x42,0x40]
.code32
mul.df %e4, %e8, %e0

# CHECK-INST: mul.df %e4, %e8, %e2
# CHECK: encoding: [0x4b,0x28,0x42,0x40]
.code32
mul.df %e4, %e8, %e2

# CHECK-INST: mul.df %e4, %e8, %e4
# CHECK: encoding: [0x4b,0x48,0x42,0x40]
.code32
mul.df %e4, %e8, %e4

# CHECK-INST: mul.df %e4, %e8, %e8
# CHECK: encoding: [0x4b,0x88,0x42,0x40]
.code32
mul.df %e4, %e8, %e8

# CHECK-INST: mul.df %e8, %e0, %e0
# CHECK: encoding: [0x4b,0x00,0x42,0x80]
.code32
mul.df %e8, %e0, %e0

# CHECK-INST: mul.df %e8, %e0, %e2
# CHECK: encoding: [0x4b,0x20,0x42,0x80]
.code32
mul.df %e8, %e0, %e2

# CHECK-INST: mul.df %e8, %e0, %e4
# CHECK: encoding: [0x4b,0x40,0x42,0x80]
.code32
mul.df %e8, %e0, %e4

# CHECK-INST: mul.df %e8, %e0, %e8
# CHECK: encoding: [0x4b,0x80,0x42,0x80]
.code32
mul.df %e8, %e0, %e8

# CHECK-INST: mul.df %e8, %e2, %e0
# CHECK: encoding: [0x4b,0x02,0x42,0x80]
.code32
mul.df %e8, %e2, %e0

# CHECK-INST: mul.df %e8, %e2, %e2
# CHECK: encoding: [0x4b,0x22,0x42,0x80]
.code32
mul.df %e8, %e2, %e2

# CHECK-INST: mul.df %e8, %e2, %e4
# CHECK: encoding: [0x4b,0x42,0x42,0x80]
.code32
mul.df %e8, %e2, %e4

# CHECK-INST: mul.df %e8, %e2, %e8
# CHECK: encoding: [0x4b,0x82,0x42,0x80]
.code32
mul.df %e8, %e2, %e8

# CHECK-INST: mul.df %e8, %e4, %e0
# CHECK: encoding: [0x4b,0x04,0x42,0x80]
.code32
mul.df %e8, %e4, %e0

# CHECK-INST: mul.df %e8, %e4, %e2
# CHECK: encoding: [0x4b,0x24,0x42,0x80]
.code32
mul.df %e8, %e4, %e2

# CHECK-INST: mul.df %e8, %e4, %e4
# CHECK: encoding: [0x4b,0x44,0x42,0x80]
.code32
mul.df %e8, %e4, %e4

# CHECK-INST: mul.df %e8, %e4, %e8
# CHECK: encoding: [0x4b,0x84,0x42,0x80]
.code32
mul.df %e8, %e4, %e8

# CHECK-INST: mul.df %e8, %e8, %e0
# CHECK: encoding: [0x4b,0x08,0x42,0x80]
.code32
mul.df %e8, %e8, %e0

# CHECK-INST: mul.df %e8, %e8, %e2
# CHECK: encoding: [0x4b,0x28,0x42,0x80]
.code32
mul.df %e8, %e8, %e2

# CHECK-INST: mul.df %e8, %e8, %e4
# CHECK: encoding: [0x4b,0x48,0x42,0x80]
.code32
mul.df %e8, %e8, %e4

# CHECK-INST: mul.df %e8, %e8, %e8
# CHECK: encoding: [0x4b,0x88,0x42,0x80]
.code32
mul.df %e8, %e8, %e8

# CHECK-INST: div.df %e0, %e0, %e0
# CHECK: encoding: [0x4b,0x00,0x52,0x00]
.code32
div.df %e0, %e0, %e0

# CHECK-INST: div.df %e0, %e0, %e2
# CHECK: encoding: [0x4b,0x20,0x52,0x00]
.code32
div.df %e0, %e0, %e2

# CHECK-INST: div.df %e0, %e0, %e4
# CHECK: encoding: [0x4b,0x40,0x52,0x00]
.code32
div.df %e0, %e0, %e4

# CHECK-INST: div.df %e0, %e0, %e8
# CHECK: encoding: [0x4b,0x80,0x52,0x00]
.code32
div.df %e0, %e0, %e8

# CHECK-INST: div.df %e0, %e2, %e0
# CHECK: encoding: [0x4b,0x02,0x52,0x00]
.code32
div.df %e0, %e2, %e0

# CHECK-INST: div.df %e0, %e2, %e2
# CHECK: encoding: [0x4b,0x22,0x52,0x00]
.code32
div.df %e0, %e2, %e2

# CHECK-INST: div.df %e0, %e2, %e4
# CHECK: encoding: [0x4b,0x42,0x52,0x00]
.code32
div.df %e0, %e2, %e4

# CHECK-INST: div.df %e0, %e2, %e8
# CHECK: encoding: [0x4b,0x82,0x52,0x00]
.code32
div.df %e0, %e2, %e8

# CHECK-INST: div.df %e0, %e4, %e0
# CHECK: encoding: [0x4b,0x04,0x52,0x00]
.code32
div.df %e0, %e4, %e0

# CHECK-INST: div.df %e0, %e4, %e2
# CHECK: encoding: [0x4b,0x24,0x52,0x00]
.code32
div.df %e0, %e4, %e2

# CHECK-INST: div.df %e0, %e4, %e4
# CHECK: encoding: [0x4b,0x44,0x52,0x00]
.code32
div.df %e0, %e4, %e4

# CHECK-INST: div.df %e0, %e4, %e8
# CHECK: encoding: [0x4b,0x84,0x52,0x00]
.code32
div.df %e0, %e4, %e8

# CHECK-INST: div.df %e0, %e8, %e0
# CHECK: encoding: [0x4b,0x08,0x52,0x00]
.code32
div.df %e0, %e8, %e0

# CHECK-INST: div.df %e0, %e8, %e2
# CHECK: encoding: [0x4b,0x28,0x52,0x00]
.code32
div.df %e0, %e8, %e2

# CHECK-INST: div.df %e0, %e8, %e4
# CHECK: encoding: [0x4b,0x48,0x52,0x00]
.code32
div.df %e0, %e8, %e4

# CHECK-INST: div.df %e0, %e8, %e8
# CHECK: encoding: [0x4b,0x88,0x52,0x00]
.code32
div.df %e0, %e8, %e8

# CHECK-INST: div.df %e2, %e0, %e0
# CHECK: encoding: [0x4b,0x00,0x52,0x20]
.code32
div.df %e2, %e0, %e0

# CHECK-INST: div.df %e2, %e0, %e2
# CHECK: encoding: [0x4b,0x20,0x52,0x20]
.code32
div.df %e2, %e0, %e2

# CHECK-INST: div.df %e2, %e0, %e4
# CHECK: encoding: [0x4b,0x40,0x52,0x20]
.code32
div.df %e2, %e0, %e4

# CHECK-INST: div.df %e2, %e0, %e8
# CHECK: encoding: [0x4b,0x80,0x52,0x20]
.code32
div.df %e2, %e0, %e8

# CHECK-INST: div.df %e2, %e2, %e0
# CHECK: encoding: [0x4b,0x02,0x52,0x20]
.code32
div.df %e2, %e2, %e0

# CHECK-INST: div.df %e2, %e2, %e2
# CHECK: encoding: [0x4b,0x22,0x52,0x20]
.code32
div.df %e2, %e2, %e2

# CHECK-INST: div.df %e2, %e2, %e4
# CHECK: encoding: [0x4b,0x42,0x52,0x20]
.code32
div.df %e2, %e2, %e4

# CHECK-INST: div.df %e2, %e2, %e8
# CHECK: encoding: [0x4b,0x82,0x52,0x20]
.code32
div.df %e2, %e2, %e8

# CHECK-INST: div.df %e2, %e4, %e0
# CHECK: encoding: [0x4b,0x04,0x52,0x20]
.code32
div.df %e2, %e4, %e0

# CHECK-INST: div.df %e2, %e4, %e2
# CHECK: encoding: [0x4b,0x24,0x52,0x20]
.code32
div.df %e2, %e4, %e2

# CHECK-INST: div.df %e2, %e4, %e4
# CHECK: encoding: [0x4b,0x44,0x52,0x20]
.code32
div.df %e2, %e4, %e4

# CHECK-INST: div.df %e2, %e4, %e8
# CHECK: encoding: [0x4b,0x84,0x52,0x20]
.code32
div.df %e2, %e4, %e8

# CHECK-INST: div.df %e2, %e8, %e0
# CHECK: encoding: [0x4b,0x08,0x52,0x20]
.code32
div.df %e2, %e8, %e0

# CHECK-INST: div.df %e2, %e8, %e2
# CHECK: encoding: [0x4b,0x28,0x52,0x20]
.code32
div.df %e2, %e8, %e2

# CHECK-INST: div.df %e2, %e8, %e4
# CHECK: encoding: [0x4b,0x48,0x52,0x20]
.code32
div.df %e2, %e8, %e4

# CHECK-INST: div.df %e2, %e8, %e8
# CHECK: encoding: [0x4b,0x88,0x52,0x20]
.code32
div.df %e2, %e8, %e8

# CHECK-INST: div.df %e4, %e0, %e0
# CHECK: encoding: [0x4b,0x00,0x52,0x40]
.code32
div.df %e4, %e0, %e0

# CHECK-INST: div.df %e4, %e0, %e2
# CHECK: encoding: [0x4b,0x20,0x52,0x40]
.code32
div.df %e4, %e0, %e2

# CHECK-INST: div.df %e4, %e0, %e4
# CHECK: encoding: [0x4b,0x40,0x52,0x40]
.code32
div.df %e4, %e0, %e4

# CHECK-INST: div.df %e4, %e0, %e8
# CHECK: encoding: [0x4b,0x80,0x52,0x40]
.code32
div.df %e4, %e0, %e8

# CHECK-INST: div.df %e4, %e2, %e0
# CHECK: encoding: [0x4b,0x02,0x52,0x40]
.code32
div.df %e4, %e2, %e0

# CHECK-INST: div.df %e4, %e2, %e2
# CHECK: encoding: [0x4b,0x22,0x52,0x40]
.code32
div.df %e4, %e2, %e2

# CHECK-INST: div.df %e4, %e2, %e4
# CHECK: encoding: [0x4b,0x42,0x52,0x40]
.code32
div.df %e4, %e2, %e4

# CHECK-INST: div.df %e4, %e2, %e8
# CHECK: encoding: [0x4b,0x82,0x52,0x40]
.code32
div.df %e4, %e2, %e8

# CHECK-INST: div.df %e4, %e4, %e0
# CHECK: encoding: [0x4b,0x04,0x52,0x40]
.code32
div.df %e4, %e4, %e0

# CHECK-INST: div.df %e4, %e4, %e2
# CHECK: encoding: [0x4b,0x24,0x52,0x40]
.code32
div.df %e4, %e4, %e2

# CHECK-INST: div.df %e4, %e4, %e4
# CHECK: encoding: [0x4b,0x44,0x52,0x40]
.code32
div.df %e4, %e4, %e4

# CHECK-INST: div.df %e4, %e4, %e8
# CHECK: encoding: [0x4b,0x84,0x52,0x40]
.code32
div.df %e4, %e4, %e8

# CHECK-INST: div.df %e4, %e8, %e0
# CHECK: encoding: [0x4b,0x08,0x52,0x40]
.code32
div.df %e4, %e8, %e0

# CHECK-INST: div.df %e4, %e8, %e2
# CHECK: encoding: [0x4b,0x28,0x52,0x40]
.code32
div.df %e4, %e8, %e2

# CHECK-INST: div.df %e4, %e8, %e4
# CHECK: encoding: [0x4b,0x48,0x52,0x40]
.code32
div.df %e4, %e8, %e4

# CHECK-INST: div.df %e4, %e8, %e8
# CHECK: encoding: [0x4b,0x88,0x52,0x40]
.code32
div.df %e4, %e8, %e8

# CHECK-INST: div.df %e8, %e0, %e0
# CHECK: encoding: [0x4b,0x00,0x52,0x80]
.code32
div.df %e8, %e0, %e0

# CHECK-INST: div.df %e8, %e0, %e2
# CHECK: encoding: [0x4b,0x20,0x52,0x80]
.code32
div.df %e8, %e0, %e2

# CHECK-INST: div.df %e8, %e0, %e4
# CHECK: encoding: [0x4b,0x40,0x52,0x80]
.code32
div.df %e8, %e0, %e4

# CHECK-INST: div.df %e8, %e0, %e8
# CHECK: encoding: [0x4b,0x80,0x52,0x80]
.code32
div.df %e8, %e0, %e8

# CHECK-INST: div.df %e8, %e2, %e0
# CHECK: encoding: [0x4b,0x02,0x52,0x80]
.code32
div.df %e8, %e2, %e0

# CHECK-INST: div.df %e8, %e2, %e2
# CHECK: encoding: [0x4b,0x22,0x52,0x80]
.code32
div.df %e8, %e2, %e2

# CHECK-INST: div.df %e8, %e2, %e4
# CHECK: encoding: [0x4b,0x42,0x52,0x80]
.code32
div.df %e8, %e2, %e4

# CHECK-INST: div.df %e8, %e2, %e8
# CHECK: encoding: [0x4b,0x82,0x52,0x80]
.code32
div.df %e8, %e2, %e8

# CHECK-INST: div.df %e8, %e4, %e0
# CHECK: encoding: [0x4b,0x04,0x52,0x80]
.code32
div.df %e8, %e4, %e0

# CHECK-INST: div.df %e8, %e4, %e2
# CHECK: encoding: [0x4b,0x24,0x52,0x80]
.code32
div.df %e8, %e4, %e2

# CHECK-INST: div.df %e8, %e4, %e4
# CHECK: encoding: [0x4b,0x44,0x52,0x80]
.code32
div.df %e8, %e4, %e4

# CHECK-INST: div.df %e8, %e4, %e8
# CHECK: encoding: [0x4b,0x84,0x52,0x80]
.code32
div.df %e8, %e4, %e8

# CHECK-INST: div.df %e8, %e8, %e0
# CHECK: encoding: [0x4b,0x08,0x52,0x80]
.code32
div.df %e8, %e8, %e0

# CHECK-INST: div.df %e8, %e8, %e2
# CHECK: encoding: [0x4b,0x28,0x52,0x80]
.code32
div.df %e8, %e8, %e2

# CHECK-INST: div.df %e8, %e8, %e4
# CHECK: encoding: [0x4b,0x48,0x52,0x80]
.code32
div.df %e8, %e8, %e4

# CHECK-INST: div.df %e8, %e8, %e8
# CHECK: encoding: [0x4b,0x88,0x52,0x80]
.code32
div.df %e8, %e8, %e8

# CHECK-INST: abs.f %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x01,0x03]
.code32
abs.f %d0, %d0

# CHECK-INST: abs.f %d0, %d1
# CHECK: encoding: [0x4b,0x01,0x01,0x03]
.code32
abs.f %d0, %d1

# CHECK-INST: abs.f %d0, %d14
# CHECK: encoding: [0x4b,0x0e,0x01,0x03]
.code32
abs.f %d0, %d14

# CHECK-INST: abs.f %d0, %d15
# CHECK: encoding: [0x4b,0x0f,0x01,0x03]
.code32
abs.f %d0, %d15

# CHECK-INST: abs.f %d1, %d0
# CHECK: encoding: [0x4b,0x00,0x01,0x13]
.code32
abs.f %d1, %d0

# CHECK-INST: abs.f %d1, %d1
# CHECK: encoding: [0x4b,0x01,0x01,0x13]
.code32
abs.f %d1, %d1

# CHECK-INST: abs.f %d1, %d14
# CHECK: encoding: [0x4b,0x0e,0x01,0x13]
.code32
abs.f %d1, %d14

# CHECK-INST: abs.f %d1, %d15
# CHECK: encoding: [0x4b,0x0f,0x01,0x13]
.code32
abs.f %d1, %d15

# CHECK-INST: abs.f %d14, %d0
# CHECK: encoding: [0x4b,0x00,0x01,0xe3]
.code32
abs.f %d14, %d0

# CHECK-INST: abs.f %d14, %d1
# CHECK: encoding: [0x4b,0x01,0x01,0xe3]
.code32
abs.f %d14, %d1

# CHECK-INST: abs.f %d14, %d14
# CHECK: encoding: [0x4b,0x0e,0x01,0xe3]
.code32
abs.f %d14, %d14

# CHECK-INST: abs.f %d14, %d15
# CHECK: encoding: [0x4b,0x0f,0x01,0xe3]
.code32
abs.f %d14, %d15

# CHECK-INST: abs.f %d15, %d0
# CHECK: encoding: [0x4b,0x00,0x01,0xf3]
.code32
abs.f %d15, %d0

# CHECK-INST: abs.f %d15, %d1
# CHECK: encoding: [0x4b,0x01,0x01,0xf3]
.code32
abs.f %d15, %d1

# CHECK-INST: abs.f %d15, %d14
# CHECK: encoding: [0x4b,0x0e,0x01,0xf3]
.code32
abs.f %d15, %d14

# CHECK-INST: abs.f %d15, %d15
# CHECK: encoding: [0x4b,0x0f,0x01,0xf3]
.code32
abs.f %d15, %d15

# CHECK-INST: abs.df %e0, %e0
# CHECK: encoding: [0x4b,0x00,0x02,0x03]
.code32
abs.df %e0, %e0

# CHECK-INST: abs.df %e0, %e2
# CHECK: encoding: [0x4b,0x02,0x02,0x03]
.code32
abs.df %e0, %e2

# CHECK-INST: abs.df %e0, %e4
# CHECK: encoding: [0x4b,0x04,0x02,0x03]
.code32
abs.df %e0, %e4

# CHECK-INST: abs.df %e0, %e8
# CHECK: encoding: [0x4b,0x08,0x02,0x03]
.code32
abs.df %e0, %e8

# CHECK-INST: abs.df %e2, %e0
# CHECK: encoding: [0x4b,0x00,0x02,0x23]
.code32
abs.df %e2, %e0

# CHECK-INST: abs.df %e2, %e2
# CHECK: encoding: [0x4b,0x02,0x02,0x23]
.code32
abs.df %e2, %e2

# CHECK-INST: abs.df %e2, %e4
# CHECK: encoding: [0x4b,0x04,0x02,0x23]
.code32
abs.df %e2, %e4

# CHECK-INST: abs.df %e2, %e8
# CHECK: encoding: [0x4b,0x08,0x02,0x23]
.code32
abs.df %e2, %e8

# CHECK-INST: abs.df %e4, %e0
# CHECK: encoding: [0x4b,0x00,0x02,0x43]
.code32
abs.df %e4, %e0

# CHECK-INST: abs.df %e4, %e2
# CHECK: encoding: [0x4b,0x02,0x02,0x43]
.code32
abs.df %e4, %e2

# CHECK-INST: abs.df %e4, %e4
# CHECK: encoding: [0x4b,0x04,0x02,0x43]
.code32
abs.df %e4, %e4

# CHECK-INST: abs.df %e4, %e8
# CHECK: encoding: [0x4b,0x08,0x02,0x43]
.code32
abs.df %e4, %e8

# CHECK-INST: abs.df %e8, %e0
# CHECK: encoding: [0x4b,0x00,0x02,0x83]
.code32
abs.df %e8, %e0

# CHECK-INST: abs.df %e8, %e2
# CHECK: encoding: [0x4b,0x02,0x02,0x83]
.code32
abs.df %e8, %e2

# CHECK-INST: abs.df %e8, %e4
# CHECK: encoding: [0x4b,0x04,0x02,0x83]
.code32
abs.df %e8, %e4

# CHECK-INST: abs.df %e8, %e8
# CHECK: encoding: [0x4b,0x08,0x02,0x83]
.code32
abs.df %e8, %e8

# CHECK-INST: min.f %d0, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x31,0x03]
.code32
min.f %d0, %d0, %d0

# CHECK-INST: min.f %d0, %d0, %d1
# CHECK: encoding: [0x4b,0x10,0x31,0x03]
.code32
min.f %d0, %d0, %d1

# CHECK-INST: min.f %d0, %d0, %d14
# CHECK: encoding: [0x4b,0xe0,0x31,0x03]
.code32
min.f %d0, %d0, %d14

# CHECK-INST: min.f %d0, %d0, %d15
# CHECK: encoding: [0x4b,0xf0,0x31,0x03]
.code32
min.f %d0, %d0, %d15

# CHECK-INST: min.f %d0, %d1, %d0
# CHECK: encoding: [0x4b,0x01,0x31,0x03]
.code32
min.f %d0, %d1, %d0

# CHECK-INST: min.f %d0, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0x31,0x03]
.code32
min.f %d0, %d1, %d1

# CHECK-INST: min.f %d0, %d1, %d14
# CHECK: encoding: [0x4b,0xe1,0x31,0x03]
.code32
min.f %d0, %d1, %d14

# CHECK-INST: min.f %d0, %d1, %d15
# CHECK: encoding: [0x4b,0xf1,0x31,0x03]
.code32
min.f %d0, %d1, %d15

# CHECK-INST: min.f %d0, %d14, %d0
# CHECK: encoding: [0x4b,0x0e,0x31,0x03]
.code32
min.f %d0, %d14, %d0

# CHECK-INST: min.f %d0, %d14, %d1
# CHECK: encoding: [0x4b,0x1e,0x31,0x03]
.code32
min.f %d0, %d14, %d1

# CHECK-INST: min.f %d0, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0x31,0x03]
.code32
min.f %d0, %d14, %d14

# CHECK-INST: min.f %d0, %d14, %d15
# CHECK: encoding: [0x4b,0xfe,0x31,0x03]
.code32
min.f %d0, %d14, %d15

# CHECK-INST: min.f %d0, %d15, %d0
# CHECK: encoding: [0x4b,0x0f,0x31,0x03]
.code32
min.f %d0, %d15, %d0

# CHECK-INST: min.f %d0, %d15, %d1
# CHECK: encoding: [0x4b,0x1f,0x31,0x03]
.code32
min.f %d0, %d15, %d1

# CHECK-INST: min.f %d0, %d15, %d14
# CHECK: encoding: [0x4b,0xef,0x31,0x03]
.code32
min.f %d0, %d15, %d14

# CHECK-INST: min.f %d0, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0x31,0x03]
.code32
min.f %d0, %d15, %d15

# CHECK-INST: min.f %d1, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x31,0x13]
.code32
min.f %d1, %d0, %d0

# CHECK-INST: min.f %d1, %d0, %d1
# CHECK: encoding: [0x4b,0x10,0x31,0x13]
.code32
min.f %d1, %d0, %d1

# CHECK-INST: min.f %d1, %d0, %d14
# CHECK: encoding: [0x4b,0xe0,0x31,0x13]
.code32
min.f %d1, %d0, %d14

# CHECK-INST: min.f %d1, %d0, %d15
# CHECK: encoding: [0x4b,0xf0,0x31,0x13]
.code32
min.f %d1, %d0, %d15

# CHECK-INST: min.f %d1, %d1, %d0
# CHECK: encoding: [0x4b,0x01,0x31,0x13]
.code32
min.f %d1, %d1, %d0

# CHECK-INST: min.f %d1, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0x31,0x13]
.code32
min.f %d1, %d1, %d1

# CHECK-INST: min.f %d1, %d1, %d14
# CHECK: encoding: [0x4b,0xe1,0x31,0x13]
.code32
min.f %d1, %d1, %d14

# CHECK-INST: min.f %d1, %d1, %d15
# CHECK: encoding: [0x4b,0xf1,0x31,0x13]
.code32
min.f %d1, %d1, %d15

# CHECK-INST: min.f %d1, %d14, %d0
# CHECK: encoding: [0x4b,0x0e,0x31,0x13]
.code32
min.f %d1, %d14, %d0

# CHECK-INST: min.f %d1, %d14, %d1
# CHECK: encoding: [0x4b,0x1e,0x31,0x13]
.code32
min.f %d1, %d14, %d1

# CHECK-INST: min.f %d1, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0x31,0x13]
.code32
min.f %d1, %d14, %d14

# CHECK-INST: min.f %d1, %d14, %d15
# CHECK: encoding: [0x4b,0xfe,0x31,0x13]
.code32
min.f %d1, %d14, %d15

# CHECK-INST: min.f %d1, %d15, %d0
# CHECK: encoding: [0x4b,0x0f,0x31,0x13]
.code32
min.f %d1, %d15, %d0

# CHECK-INST: min.f %d1, %d15, %d1
# CHECK: encoding: [0x4b,0x1f,0x31,0x13]
.code32
min.f %d1, %d15, %d1

# CHECK-INST: min.f %d1, %d15, %d14
# CHECK: encoding: [0x4b,0xef,0x31,0x13]
.code32
min.f %d1, %d15, %d14

# CHECK-INST: min.f %d1, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0x31,0x13]
.code32
min.f %d1, %d15, %d15

# CHECK-INST: min.f %d14, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x31,0xe3]
.code32
min.f %d14, %d0, %d0

# CHECK-INST: min.f %d14, %d0, %d1
# CHECK: encoding: [0x4b,0x10,0x31,0xe3]
.code32
min.f %d14, %d0, %d1

# CHECK-INST: min.f %d14, %d0, %d14
# CHECK: encoding: [0x4b,0xe0,0x31,0xe3]
.code32
min.f %d14, %d0, %d14

# CHECK-INST: min.f %d14, %d0, %d15
# CHECK: encoding: [0x4b,0xf0,0x31,0xe3]
.code32
min.f %d14, %d0, %d15

# CHECK-INST: min.f %d14, %d1, %d0
# CHECK: encoding: [0x4b,0x01,0x31,0xe3]
.code32
min.f %d14, %d1, %d0

# CHECK-INST: min.f %d14, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0x31,0xe3]
.code32
min.f %d14, %d1, %d1

# CHECK-INST: min.f %d14, %d1, %d14
# CHECK: encoding: [0x4b,0xe1,0x31,0xe3]
.code32
min.f %d14, %d1, %d14

# CHECK-INST: min.f %d14, %d1, %d15
# CHECK: encoding: [0x4b,0xf1,0x31,0xe3]
.code32
min.f %d14, %d1, %d15

# CHECK-INST: min.f %d14, %d14, %d0
# CHECK: encoding: [0x4b,0x0e,0x31,0xe3]
.code32
min.f %d14, %d14, %d0

# CHECK-INST: min.f %d14, %d14, %d1
# CHECK: encoding: [0x4b,0x1e,0x31,0xe3]
.code32
min.f %d14, %d14, %d1

# CHECK-INST: min.f %d14, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0x31,0xe3]
.code32
min.f %d14, %d14, %d14

# CHECK-INST: min.f %d14, %d14, %d15
# CHECK: encoding: [0x4b,0xfe,0x31,0xe3]
.code32
min.f %d14, %d14, %d15

# CHECK-INST: min.f %d14, %d15, %d0
# CHECK: encoding: [0x4b,0x0f,0x31,0xe3]
.code32
min.f %d14, %d15, %d0

# CHECK-INST: min.f %d14, %d15, %d1
# CHECK: encoding: [0x4b,0x1f,0x31,0xe3]
.code32
min.f %d14, %d15, %d1

# CHECK-INST: min.f %d14, %d15, %d14
# CHECK: encoding: [0x4b,0xef,0x31,0xe3]
.code32
min.f %d14, %d15, %d14

# CHECK-INST: min.f %d14, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0x31,0xe3]
.code32
min.f %d14, %d15, %d15

# CHECK-INST: min.f %d15, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x31,0xf3]
.code32
min.f %d15, %d0, %d0

# CHECK-INST: min.f %d15, %d0, %d1
# CHECK: encoding: [0x4b,0x10,0x31,0xf3]
.code32
min.f %d15, %d0, %d1

# CHECK-INST: min.f %d15, %d0, %d14
# CHECK: encoding: [0x4b,0xe0,0x31,0xf3]
.code32
min.f %d15, %d0, %d14

# CHECK-INST: min.f %d15, %d0, %d15
# CHECK: encoding: [0x4b,0xf0,0x31,0xf3]
.code32
min.f %d15, %d0, %d15

# CHECK-INST: min.f %d15, %d1, %d0
# CHECK: encoding: [0x4b,0x01,0x31,0xf3]
.code32
min.f %d15, %d1, %d0

# CHECK-INST: min.f %d15, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0x31,0xf3]
.code32
min.f %d15, %d1, %d1

# CHECK-INST: min.f %d15, %d1, %d14
# CHECK: encoding: [0x4b,0xe1,0x31,0xf3]
.code32
min.f %d15, %d1, %d14

# CHECK-INST: min.f %d15, %d1, %d15
# CHECK: encoding: [0x4b,0xf1,0x31,0xf3]
.code32
min.f %d15, %d1, %d15

# CHECK-INST: min.f %d15, %d14, %d0
# CHECK: encoding: [0x4b,0x0e,0x31,0xf3]
.code32
min.f %d15, %d14, %d0

# CHECK-INST: min.f %d15, %d14, %d1
# CHECK: encoding: [0x4b,0x1e,0x31,0xf3]
.code32
min.f %d15, %d14, %d1

# CHECK-INST: min.f %d15, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0x31,0xf3]
.code32
min.f %d15, %d14, %d14

# CHECK-INST: min.f %d15, %d14, %d15
# CHECK: encoding: [0x4b,0xfe,0x31,0xf3]
.code32
min.f %d15, %d14, %d15

# CHECK-INST: min.f %d15, %d15, %d0
# CHECK: encoding: [0x4b,0x0f,0x31,0xf3]
.code32
min.f %d15, %d15, %d0

# CHECK-INST: min.f %d15, %d15, %d1
# CHECK: encoding: [0x4b,0x1f,0x31,0xf3]
.code32
min.f %d15, %d15, %d1

# CHECK-INST: min.f %d15, %d15, %d14
# CHECK: encoding: [0x4b,0xef,0x31,0xf3]
.code32
min.f %d15, %d15, %d14

# CHECK-INST: min.f %d15, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0x31,0xf3]
.code32
min.f %d15, %d15, %d15

# CHECK-INST: min.df %e0, %e0, %e0
# CHECK: encoding: [0x4b,0x00,0x32,0x03]
.code32
min.df %e0, %e0, %e0

# CHECK-INST: min.df %e0, %e0, %e2
# CHECK: encoding: [0x4b,0x20,0x32,0x03]
.code32
min.df %e0, %e0, %e2

# CHECK-INST: min.df %e0, %e0, %e4
# CHECK: encoding: [0x4b,0x40,0x32,0x03]
.code32
min.df %e0, %e0, %e4

# CHECK-INST: min.df %e0, %e0, %e8
# CHECK: encoding: [0x4b,0x80,0x32,0x03]
.code32
min.df %e0, %e0, %e8

# CHECK-INST: min.df %e0, %e2, %e0
# CHECK: encoding: [0x4b,0x02,0x32,0x03]
.code32
min.df %e0, %e2, %e0

# CHECK-INST: min.df %e0, %e2, %e2
# CHECK: encoding: [0x4b,0x22,0x32,0x03]
.code32
min.df %e0, %e2, %e2

# CHECK-INST: min.df %e0, %e2, %e4
# CHECK: encoding: [0x4b,0x42,0x32,0x03]
.code32
min.df %e0, %e2, %e4

# CHECK-INST: min.df %e0, %e2, %e8
# CHECK: encoding: [0x4b,0x82,0x32,0x03]
.code32
min.df %e0, %e2, %e8

# CHECK-INST: min.df %e0, %e4, %e0
# CHECK: encoding: [0x4b,0x04,0x32,0x03]
.code32
min.df %e0, %e4, %e0

# CHECK-INST: min.df %e0, %e4, %e2
# CHECK: encoding: [0x4b,0x24,0x32,0x03]
.code32
min.df %e0, %e4, %e2

# CHECK-INST: min.df %e0, %e4, %e4
# CHECK: encoding: [0x4b,0x44,0x32,0x03]
.code32
min.df %e0, %e4, %e4

# CHECK-INST: min.df %e0, %e4, %e8
# CHECK: encoding: [0x4b,0x84,0x32,0x03]
.code32
min.df %e0, %e4, %e8

# CHECK-INST: min.df %e0, %e8, %e0
# CHECK: encoding: [0x4b,0x08,0x32,0x03]
.code32
min.df %e0, %e8, %e0

# CHECK-INST: min.df %e0, %e8, %e2
# CHECK: encoding: [0x4b,0x28,0x32,0x03]
.code32
min.df %e0, %e8, %e2

# CHECK-INST: min.df %e0, %e8, %e4
# CHECK: encoding: [0x4b,0x48,0x32,0x03]
.code32
min.df %e0, %e8, %e4

# CHECK-INST: min.df %e0, %e8, %e8
# CHECK: encoding: [0x4b,0x88,0x32,0x03]
.code32
min.df %e0, %e8, %e8

# CHECK-INST: min.df %e2, %e0, %e0
# CHECK: encoding: [0x4b,0x00,0x32,0x23]
.code32
min.df %e2, %e0, %e0

# CHECK-INST: min.df %e2, %e0, %e2
# CHECK: encoding: [0x4b,0x20,0x32,0x23]
.code32
min.df %e2, %e0, %e2

# CHECK-INST: min.df %e2, %e0, %e4
# CHECK: encoding: [0x4b,0x40,0x32,0x23]
.code32
min.df %e2, %e0, %e4

# CHECK-INST: min.df %e2, %e0, %e8
# CHECK: encoding: [0x4b,0x80,0x32,0x23]
.code32
min.df %e2, %e0, %e8

# CHECK-INST: min.df %e2, %e2, %e0
# CHECK: encoding: [0x4b,0x02,0x32,0x23]
.code32
min.df %e2, %e2, %e0

# CHECK-INST: min.df %e2, %e2, %e2
# CHECK: encoding: [0x4b,0x22,0x32,0x23]
.code32
min.df %e2, %e2, %e2

# CHECK-INST: min.df %e2, %e2, %e4
# CHECK: encoding: [0x4b,0x42,0x32,0x23]
.code32
min.df %e2, %e2, %e4

# CHECK-INST: min.df %e2, %e2, %e8
# CHECK: encoding: [0x4b,0x82,0x32,0x23]
.code32
min.df %e2, %e2, %e8

# CHECK-INST: min.df %e2, %e4, %e0
# CHECK: encoding: [0x4b,0x04,0x32,0x23]
.code32
min.df %e2, %e4, %e0

# CHECK-INST: min.df %e2, %e4, %e2
# CHECK: encoding: [0x4b,0x24,0x32,0x23]
.code32
min.df %e2, %e4, %e2

# CHECK-INST: min.df %e2, %e4, %e4
# CHECK: encoding: [0x4b,0x44,0x32,0x23]
.code32
min.df %e2, %e4, %e4

# CHECK-INST: min.df %e2, %e4, %e8
# CHECK: encoding: [0x4b,0x84,0x32,0x23]
.code32
min.df %e2, %e4, %e8

# CHECK-INST: min.df %e2, %e8, %e0
# CHECK: encoding: [0x4b,0x08,0x32,0x23]
.code32
min.df %e2, %e8, %e0

# CHECK-INST: min.df %e2, %e8, %e2
# CHECK: encoding: [0x4b,0x28,0x32,0x23]
.code32
min.df %e2, %e8, %e2

# CHECK-INST: min.df %e2, %e8, %e4
# CHECK: encoding: [0x4b,0x48,0x32,0x23]
.code32
min.df %e2, %e8, %e4

# CHECK-INST: min.df %e2, %e8, %e8
# CHECK: encoding: [0x4b,0x88,0x32,0x23]
.code32
min.df %e2, %e8, %e8

# CHECK-INST: min.df %e4, %e0, %e0
# CHECK: encoding: [0x4b,0x00,0x32,0x43]
.code32
min.df %e4, %e0, %e0

# CHECK-INST: min.df %e4, %e0, %e2
# CHECK: encoding: [0x4b,0x20,0x32,0x43]
.code32
min.df %e4, %e0, %e2

# CHECK-INST: min.df %e4, %e0, %e4
# CHECK: encoding: [0x4b,0x40,0x32,0x43]
.code32
min.df %e4, %e0, %e4

# CHECK-INST: min.df %e4, %e0, %e8
# CHECK: encoding: [0x4b,0x80,0x32,0x43]
.code32
min.df %e4, %e0, %e8

# CHECK-INST: min.df %e4, %e2, %e0
# CHECK: encoding: [0x4b,0x02,0x32,0x43]
.code32
min.df %e4, %e2, %e0

# CHECK-INST: min.df %e4, %e2, %e2
# CHECK: encoding: [0x4b,0x22,0x32,0x43]
.code32
min.df %e4, %e2, %e2

# CHECK-INST: min.df %e4, %e2, %e4
# CHECK: encoding: [0x4b,0x42,0x32,0x43]
.code32
min.df %e4, %e2, %e4

# CHECK-INST: min.df %e4, %e2, %e8
# CHECK: encoding: [0x4b,0x82,0x32,0x43]
.code32
min.df %e4, %e2, %e8

# CHECK-INST: min.df %e4, %e4, %e0
# CHECK: encoding: [0x4b,0x04,0x32,0x43]
.code32
min.df %e4, %e4, %e0

# CHECK-INST: min.df %e4, %e4, %e2
# CHECK: encoding: [0x4b,0x24,0x32,0x43]
.code32
min.df %e4, %e4, %e2

# CHECK-INST: min.df %e4, %e4, %e4
# CHECK: encoding: [0x4b,0x44,0x32,0x43]
.code32
min.df %e4, %e4, %e4

# CHECK-INST: min.df %e4, %e4, %e8
# CHECK: encoding: [0x4b,0x84,0x32,0x43]
.code32
min.df %e4, %e4, %e8

# CHECK-INST: min.df %e4, %e8, %e0
# CHECK: encoding: [0x4b,0x08,0x32,0x43]
.code32
min.df %e4, %e8, %e0

# CHECK-INST: min.df %e4, %e8, %e2
# CHECK: encoding: [0x4b,0x28,0x32,0x43]
.code32
min.df %e4, %e8, %e2

# CHECK-INST: min.df %e4, %e8, %e4
# CHECK: encoding: [0x4b,0x48,0x32,0x43]
.code32
min.df %e4, %e8, %e4

# CHECK-INST: min.df %e4, %e8, %e8
# CHECK: encoding: [0x4b,0x88,0x32,0x43]
.code32
min.df %e4, %e8, %e8

# CHECK-INST: min.df %e8, %e0, %e0
# CHECK: encoding: [0x4b,0x00,0x32,0x83]
.code32
min.df %e8, %e0, %e0

# CHECK-INST: min.df %e8, %e0, %e2
# CHECK: encoding: [0x4b,0x20,0x32,0x83]
.code32
min.df %e8, %e0, %e2

# CHECK-INST: min.df %e8, %e0, %e4
# CHECK: encoding: [0x4b,0x40,0x32,0x83]
.code32
min.df %e8, %e0, %e4

# CHECK-INST: min.df %e8, %e0, %e8
# CHECK: encoding: [0x4b,0x80,0x32,0x83]
.code32
min.df %e8, %e0, %e8

# CHECK-INST: min.df %e8, %e2, %e0
# CHECK: encoding: [0x4b,0x02,0x32,0x83]
.code32
min.df %e8, %e2, %e0

# CHECK-INST: min.df %e8, %e2, %e2
# CHECK: encoding: [0x4b,0x22,0x32,0x83]
.code32
min.df %e8, %e2, %e2

# CHECK-INST: min.df %e8, %e2, %e4
# CHECK: encoding: [0x4b,0x42,0x32,0x83]
.code32
min.df %e8, %e2, %e4

# CHECK-INST: min.df %e8, %e2, %e8
# CHECK: encoding: [0x4b,0x82,0x32,0x83]
.code32
min.df %e8, %e2, %e8

# CHECK-INST: min.df %e8, %e4, %e0
# CHECK: encoding: [0x4b,0x04,0x32,0x83]
.code32
min.df %e8, %e4, %e0

# CHECK-INST: min.df %e8, %e4, %e2
# CHECK: encoding: [0x4b,0x24,0x32,0x83]
.code32
min.df %e8, %e4, %e2

# CHECK-INST: min.df %e8, %e4, %e4
# CHECK: encoding: [0x4b,0x44,0x32,0x83]
.code32
min.df %e8, %e4, %e4

# CHECK-INST: min.df %e8, %e4, %e8
# CHECK: encoding: [0x4b,0x84,0x32,0x83]
.code32
min.df %e8, %e4, %e8

# CHECK-INST: min.df %e8, %e8, %e0
# CHECK: encoding: [0x4b,0x08,0x32,0x83]
.code32
min.df %e8, %e8, %e0

# CHECK-INST: min.df %e8, %e8, %e2
# CHECK: encoding: [0x4b,0x28,0x32,0x83]
.code32
min.df %e8, %e8, %e2

# CHECK-INST: min.df %e8, %e8, %e4
# CHECK: encoding: [0x4b,0x48,0x32,0x83]
.code32
min.df %e8, %e8, %e4

# CHECK-INST: min.df %e8, %e8, %e8
# CHECK: encoding: [0x4b,0x88,0x32,0x83]
.code32
min.df %e8, %e8, %e8

# CHECK-INST: max.f %d0, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x21,0x03]
.code32
max.f %d0, %d0, %d0

# CHECK-INST: max.f %d0, %d0, %d1
# CHECK: encoding: [0x4b,0x10,0x21,0x03]
.code32
max.f %d0, %d0, %d1

# CHECK-INST: max.f %d0, %d0, %d14
# CHECK: encoding: [0x4b,0xe0,0x21,0x03]
.code32
max.f %d0, %d0, %d14

# CHECK-INST: max.f %d0, %d0, %d15
# CHECK: encoding: [0x4b,0xf0,0x21,0x03]
.code32
max.f %d0, %d0, %d15

# CHECK-INST: max.f %d0, %d1, %d0
# CHECK: encoding: [0x4b,0x01,0x21,0x03]
.code32
max.f %d0, %d1, %d0

# CHECK-INST: max.f %d0, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0x21,0x03]
.code32
max.f %d0, %d1, %d1

# CHECK-INST: max.f %d0, %d1, %d14
# CHECK: encoding: [0x4b,0xe1,0x21,0x03]
.code32
max.f %d0, %d1, %d14

# CHECK-INST: max.f %d0, %d1, %d15
# CHECK: encoding: [0x4b,0xf1,0x21,0x03]
.code32
max.f %d0, %d1, %d15

# CHECK-INST: max.f %d0, %d14, %d0
# CHECK: encoding: [0x4b,0x0e,0x21,0x03]
.code32
max.f %d0, %d14, %d0

# CHECK-INST: max.f %d0, %d14, %d1
# CHECK: encoding: [0x4b,0x1e,0x21,0x03]
.code32
max.f %d0, %d14, %d1

# CHECK-INST: max.f %d0, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0x21,0x03]
.code32
max.f %d0, %d14, %d14

# CHECK-INST: max.f %d0, %d14, %d15
# CHECK: encoding: [0x4b,0xfe,0x21,0x03]
.code32
max.f %d0, %d14, %d15

# CHECK-INST: max.f %d0, %d15, %d0
# CHECK: encoding: [0x4b,0x0f,0x21,0x03]
.code32
max.f %d0, %d15, %d0

# CHECK-INST: max.f %d0, %d15, %d1
# CHECK: encoding: [0x4b,0x1f,0x21,0x03]
.code32
max.f %d0, %d15, %d1

# CHECK-INST: max.f %d0, %d15, %d14
# CHECK: encoding: [0x4b,0xef,0x21,0x03]
.code32
max.f %d0, %d15, %d14

# CHECK-INST: max.f %d0, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0x21,0x03]
.code32
max.f %d0, %d15, %d15

# CHECK-INST: max.f %d1, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x21,0x13]
.code32
max.f %d1, %d0, %d0

# CHECK-INST: max.f %d1, %d0, %d1
# CHECK: encoding: [0x4b,0x10,0x21,0x13]
.code32
max.f %d1, %d0, %d1

# CHECK-INST: max.f %d1, %d0, %d14
# CHECK: encoding: [0x4b,0xe0,0x21,0x13]
.code32
max.f %d1, %d0, %d14

# CHECK-INST: max.f %d1, %d0, %d15
# CHECK: encoding: [0x4b,0xf0,0x21,0x13]
.code32
max.f %d1, %d0, %d15

# CHECK-INST: max.f %d1, %d1, %d0
# CHECK: encoding: [0x4b,0x01,0x21,0x13]
.code32
max.f %d1, %d1, %d0

# CHECK-INST: max.f %d1, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0x21,0x13]
.code32
max.f %d1, %d1, %d1

# CHECK-INST: max.f %d1, %d1, %d14
# CHECK: encoding: [0x4b,0xe1,0x21,0x13]
.code32
max.f %d1, %d1, %d14

# CHECK-INST: max.f %d1, %d1, %d15
# CHECK: encoding: [0x4b,0xf1,0x21,0x13]
.code32
max.f %d1, %d1, %d15

# CHECK-INST: max.f %d1, %d14, %d0
# CHECK: encoding: [0x4b,0x0e,0x21,0x13]
.code32
max.f %d1, %d14, %d0

# CHECK-INST: max.f %d1, %d14, %d1
# CHECK: encoding: [0x4b,0x1e,0x21,0x13]
.code32
max.f %d1, %d14, %d1

# CHECK-INST: max.f %d1, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0x21,0x13]
.code32
max.f %d1, %d14, %d14

# CHECK-INST: max.f %d1, %d14, %d15
# CHECK: encoding: [0x4b,0xfe,0x21,0x13]
.code32
max.f %d1, %d14, %d15

# CHECK-INST: max.f %d1, %d15, %d0
# CHECK: encoding: [0x4b,0x0f,0x21,0x13]
.code32
max.f %d1, %d15, %d0

# CHECK-INST: max.f %d1, %d15, %d1
# CHECK: encoding: [0x4b,0x1f,0x21,0x13]
.code32
max.f %d1, %d15, %d1

# CHECK-INST: max.f %d1, %d15, %d14
# CHECK: encoding: [0x4b,0xef,0x21,0x13]
.code32
max.f %d1, %d15, %d14

# CHECK-INST: max.f %d1, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0x21,0x13]
.code32
max.f %d1, %d15, %d15

# CHECK-INST: max.f %d14, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x21,0xe3]
.code32
max.f %d14, %d0, %d0

# CHECK-INST: max.f %d14, %d0, %d1
# CHECK: encoding: [0x4b,0x10,0x21,0xe3]
.code32
max.f %d14, %d0, %d1

# CHECK-INST: max.f %d14, %d0, %d14
# CHECK: encoding: [0x4b,0xe0,0x21,0xe3]
.code32
max.f %d14, %d0, %d14

# CHECK-INST: max.f %d14, %d0, %d15
# CHECK: encoding: [0x4b,0xf0,0x21,0xe3]
.code32
max.f %d14, %d0, %d15

# CHECK-INST: max.f %d14, %d1, %d0
# CHECK: encoding: [0x4b,0x01,0x21,0xe3]
.code32
max.f %d14, %d1, %d0

# CHECK-INST: max.f %d14, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0x21,0xe3]
.code32
max.f %d14, %d1, %d1

# CHECK-INST: max.f %d14, %d1, %d14
# CHECK: encoding: [0x4b,0xe1,0x21,0xe3]
.code32
max.f %d14, %d1, %d14

# CHECK-INST: max.f %d14, %d1, %d15
# CHECK: encoding: [0x4b,0xf1,0x21,0xe3]
.code32
max.f %d14, %d1, %d15

# CHECK-INST: max.f %d14, %d14, %d0
# CHECK: encoding: [0x4b,0x0e,0x21,0xe3]
.code32
max.f %d14, %d14, %d0

# CHECK-INST: max.f %d14, %d14, %d1
# CHECK: encoding: [0x4b,0x1e,0x21,0xe3]
.code32
max.f %d14, %d14, %d1

# CHECK-INST: max.f %d14, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0x21,0xe3]
.code32
max.f %d14, %d14, %d14

# CHECK-INST: max.f %d14, %d14, %d15
# CHECK: encoding: [0x4b,0xfe,0x21,0xe3]
.code32
max.f %d14, %d14, %d15

# CHECK-INST: max.f %d14, %d15, %d0
# CHECK: encoding: [0x4b,0x0f,0x21,0xe3]
.code32
max.f %d14, %d15, %d0

# CHECK-INST: max.f %d14, %d15, %d1
# CHECK: encoding: [0x4b,0x1f,0x21,0xe3]
.code32
max.f %d14, %d15, %d1

# CHECK-INST: max.f %d14, %d15, %d14
# CHECK: encoding: [0x4b,0xef,0x21,0xe3]
.code32
max.f %d14, %d15, %d14

# CHECK-INST: max.f %d14, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0x21,0xe3]
.code32
max.f %d14, %d15, %d15

# CHECK-INST: max.f %d15, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x21,0xf3]
.code32
max.f %d15, %d0, %d0

# CHECK-INST: max.f %d15, %d0, %d1
# CHECK: encoding: [0x4b,0x10,0x21,0xf3]
.code32
max.f %d15, %d0, %d1

# CHECK-INST: max.f %d15, %d0, %d14
# CHECK: encoding: [0x4b,0xe0,0x21,0xf3]
.code32
max.f %d15, %d0, %d14

# CHECK-INST: max.f %d15, %d0, %d15
# CHECK: encoding: [0x4b,0xf0,0x21,0xf3]
.code32
max.f %d15, %d0, %d15

# CHECK-INST: max.f %d15, %d1, %d0
# CHECK: encoding: [0x4b,0x01,0x21,0xf3]
.code32
max.f %d15, %d1, %d0

# CHECK-INST: max.f %d15, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0x21,0xf3]
.code32
max.f %d15, %d1, %d1

# CHECK-INST: max.f %d15, %d1, %d14
# CHECK: encoding: [0x4b,0xe1,0x21,0xf3]
.code32
max.f %d15, %d1, %d14

# CHECK-INST: max.f %d15, %d1, %d15
# CHECK: encoding: [0x4b,0xf1,0x21,0xf3]
.code32
max.f %d15, %d1, %d15

# CHECK-INST: max.f %d15, %d14, %d0
# CHECK: encoding: [0x4b,0x0e,0x21,0xf3]
.code32
max.f %d15, %d14, %d0

# CHECK-INST: max.f %d15, %d14, %d1
# CHECK: encoding: [0x4b,0x1e,0x21,0xf3]
.code32
max.f %d15, %d14, %d1

# CHECK-INST: max.f %d15, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0x21,0xf3]
.code32
max.f %d15, %d14, %d14

# CHECK-INST: max.f %d15, %d14, %d15
# CHECK: encoding: [0x4b,0xfe,0x21,0xf3]
.code32
max.f %d15, %d14, %d15

# CHECK-INST: max.f %d15, %d15, %d0
# CHECK: encoding: [0x4b,0x0f,0x21,0xf3]
.code32
max.f %d15, %d15, %d0

# CHECK-INST: max.f %d15, %d15, %d1
# CHECK: encoding: [0x4b,0x1f,0x21,0xf3]
.code32
max.f %d15, %d15, %d1

# CHECK-INST: max.f %d15, %d15, %d14
# CHECK: encoding: [0x4b,0xef,0x21,0xf3]
.code32
max.f %d15, %d15, %d14

# CHECK-INST: max.f %d15, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0x21,0xf3]
.code32
max.f %d15, %d15, %d15

# CHECK-INST: max.df %e0, %e0, %e0
# CHECK: encoding: [0x4b,0x00,0x22,0x03]
.code32
max.df %e0, %e0, %e0

# CHECK-INST: max.df %e0, %e0, %e2
# CHECK: encoding: [0x4b,0x20,0x22,0x03]
.code32
max.df %e0, %e0, %e2

# CHECK-INST: max.df %e0, %e0, %e4
# CHECK: encoding: [0x4b,0x40,0x22,0x03]
.code32
max.df %e0, %e0, %e4

# CHECK-INST: max.df %e0, %e0, %e8
# CHECK: encoding: [0x4b,0x80,0x22,0x03]
.code32
max.df %e0, %e0, %e8

# CHECK-INST: max.df %e0, %e2, %e0
# CHECK: encoding: [0x4b,0x02,0x22,0x03]
.code32
max.df %e0, %e2, %e0

# CHECK-INST: max.df %e0, %e2, %e2
# CHECK: encoding: [0x4b,0x22,0x22,0x03]
.code32
max.df %e0, %e2, %e2

# CHECK-INST: max.df %e0, %e2, %e4
# CHECK: encoding: [0x4b,0x42,0x22,0x03]
.code32
max.df %e0, %e2, %e4

# CHECK-INST: max.df %e0, %e2, %e8
# CHECK: encoding: [0x4b,0x82,0x22,0x03]
.code32
max.df %e0, %e2, %e8

# CHECK-INST: max.df %e0, %e4, %e0
# CHECK: encoding: [0x4b,0x04,0x22,0x03]
.code32
max.df %e0, %e4, %e0

# CHECK-INST: max.df %e0, %e4, %e2
# CHECK: encoding: [0x4b,0x24,0x22,0x03]
.code32
max.df %e0, %e4, %e2

# CHECK-INST: max.df %e0, %e4, %e4
# CHECK: encoding: [0x4b,0x44,0x22,0x03]
.code32
max.df %e0, %e4, %e4

# CHECK-INST: max.df %e0, %e4, %e8
# CHECK: encoding: [0x4b,0x84,0x22,0x03]
.code32
max.df %e0, %e4, %e8

# CHECK-INST: max.df %e0, %e8, %e0
# CHECK: encoding: [0x4b,0x08,0x22,0x03]
.code32
max.df %e0, %e8, %e0

# CHECK-INST: max.df %e0, %e8, %e2
# CHECK: encoding: [0x4b,0x28,0x22,0x03]
.code32
max.df %e0, %e8, %e2

# CHECK-INST: max.df %e0, %e8, %e4
# CHECK: encoding: [0x4b,0x48,0x22,0x03]
.code32
max.df %e0, %e8, %e4

# CHECK-INST: max.df %e0, %e8, %e8
# CHECK: encoding: [0x4b,0x88,0x22,0x03]
.code32
max.df %e0, %e8, %e8

# CHECK-INST: max.df %e2, %e0, %e0
# CHECK: encoding: [0x4b,0x00,0x22,0x23]
.code32
max.df %e2, %e0, %e0

# CHECK-INST: max.df %e2, %e0, %e2
# CHECK: encoding: [0x4b,0x20,0x22,0x23]
.code32
max.df %e2, %e0, %e2

# CHECK-INST: max.df %e2, %e0, %e4
# CHECK: encoding: [0x4b,0x40,0x22,0x23]
.code32
max.df %e2, %e0, %e4

# CHECK-INST: max.df %e2, %e0, %e8
# CHECK: encoding: [0x4b,0x80,0x22,0x23]
.code32
max.df %e2, %e0, %e8

# CHECK-INST: max.df %e2, %e2, %e0
# CHECK: encoding: [0x4b,0x02,0x22,0x23]
.code32
max.df %e2, %e2, %e0

# CHECK-INST: max.df %e2, %e2, %e2
# CHECK: encoding: [0x4b,0x22,0x22,0x23]
.code32
max.df %e2, %e2, %e2

# CHECK-INST: max.df %e2, %e2, %e4
# CHECK: encoding: [0x4b,0x42,0x22,0x23]
.code32
max.df %e2, %e2, %e4

# CHECK-INST: max.df %e2, %e2, %e8
# CHECK: encoding: [0x4b,0x82,0x22,0x23]
.code32
max.df %e2, %e2, %e8

# CHECK-INST: max.df %e2, %e4, %e0
# CHECK: encoding: [0x4b,0x04,0x22,0x23]
.code32
max.df %e2, %e4, %e0

# CHECK-INST: max.df %e2, %e4, %e2
# CHECK: encoding: [0x4b,0x24,0x22,0x23]
.code32
max.df %e2, %e4, %e2

# CHECK-INST: max.df %e2, %e4, %e4
# CHECK: encoding: [0x4b,0x44,0x22,0x23]
.code32
max.df %e2, %e4, %e4

# CHECK-INST: max.df %e2, %e4, %e8
# CHECK: encoding: [0x4b,0x84,0x22,0x23]
.code32
max.df %e2, %e4, %e8

# CHECK-INST: max.df %e2, %e8, %e0
# CHECK: encoding: [0x4b,0x08,0x22,0x23]
.code32
max.df %e2, %e8, %e0

# CHECK-INST: max.df %e2, %e8, %e2
# CHECK: encoding: [0x4b,0x28,0x22,0x23]
.code32
max.df %e2, %e8, %e2

# CHECK-INST: max.df %e2, %e8, %e4
# CHECK: encoding: [0x4b,0x48,0x22,0x23]
.code32
max.df %e2, %e8, %e4

# CHECK-INST: max.df %e2, %e8, %e8
# CHECK: encoding: [0x4b,0x88,0x22,0x23]
.code32
max.df %e2, %e8, %e8

# CHECK-INST: max.df %e4, %e0, %e0
# CHECK: encoding: [0x4b,0x00,0x22,0x43]
.code32
max.df %e4, %e0, %e0

# CHECK-INST: max.df %e4, %e0, %e2
# CHECK: encoding: [0x4b,0x20,0x22,0x43]
.code32
max.df %e4, %e0, %e2

# CHECK-INST: max.df %e4, %e0, %e4
# CHECK: encoding: [0x4b,0x40,0x22,0x43]
.code32
max.df %e4, %e0, %e4

# CHECK-INST: max.df %e4, %e0, %e8
# CHECK: encoding: [0x4b,0x80,0x22,0x43]
.code32
max.df %e4, %e0, %e8

# CHECK-INST: max.df %e4, %e2, %e0
# CHECK: encoding: [0x4b,0x02,0x22,0x43]
.code32
max.df %e4, %e2, %e0

# CHECK-INST: max.df %e4, %e2, %e2
# CHECK: encoding: [0x4b,0x22,0x22,0x43]
.code32
max.df %e4, %e2, %e2

# CHECK-INST: max.df %e4, %e2, %e4
# CHECK: encoding: [0x4b,0x42,0x22,0x43]
.code32
max.df %e4, %e2, %e4

# CHECK-INST: max.df %e4, %e2, %e8
# CHECK: encoding: [0x4b,0x82,0x22,0x43]
.code32
max.df %e4, %e2, %e8

# CHECK-INST: max.df %e4, %e4, %e0
# CHECK: encoding: [0x4b,0x04,0x22,0x43]
.code32
max.df %e4, %e4, %e0

# CHECK-INST: max.df %e4, %e4, %e2
# CHECK: encoding: [0x4b,0x24,0x22,0x43]
.code32
max.df %e4, %e4, %e2

# CHECK-INST: max.df %e4, %e4, %e4
# CHECK: encoding: [0x4b,0x44,0x22,0x43]
.code32
max.df %e4, %e4, %e4

# CHECK-INST: max.df %e4, %e4, %e8
# CHECK: encoding: [0x4b,0x84,0x22,0x43]
.code32
max.df %e4, %e4, %e8

# CHECK-INST: max.df %e4, %e8, %e0
# CHECK: encoding: [0x4b,0x08,0x22,0x43]
.code32
max.df %e4, %e8, %e0

# CHECK-INST: max.df %e4, %e8, %e2
# CHECK: encoding: [0x4b,0x28,0x22,0x43]
.code32
max.df %e4, %e8, %e2

# CHECK-INST: max.df %e4, %e8, %e4
# CHECK: encoding: [0x4b,0x48,0x22,0x43]
.code32
max.df %e4, %e8, %e4

# CHECK-INST: max.df %e4, %e8, %e8
# CHECK: encoding: [0x4b,0x88,0x22,0x43]
.code32
max.df %e4, %e8, %e8

# CHECK-INST: max.df %e8, %e0, %e0
# CHECK: encoding: [0x4b,0x00,0x22,0x83]
.code32
max.df %e8, %e0, %e0

# CHECK-INST: max.df %e8, %e0, %e2
# CHECK: encoding: [0x4b,0x20,0x22,0x83]
.code32
max.df %e8, %e0, %e2

# CHECK-INST: max.df %e8, %e0, %e4
# CHECK: encoding: [0x4b,0x40,0x22,0x83]
.code32
max.df %e8, %e0, %e4

# CHECK-INST: max.df %e8, %e0, %e8
# CHECK: encoding: [0x4b,0x80,0x22,0x83]
.code32
max.df %e8, %e0, %e8

# CHECK-INST: max.df %e8, %e2, %e0
# CHECK: encoding: [0x4b,0x02,0x22,0x83]
.code32
max.df %e8, %e2, %e0

# CHECK-INST: max.df %e8, %e2, %e2
# CHECK: encoding: [0x4b,0x22,0x22,0x83]
.code32
max.df %e8, %e2, %e2

# CHECK-INST: max.df %e8, %e2, %e4
# CHECK: encoding: [0x4b,0x42,0x22,0x83]
.code32
max.df %e8, %e2, %e4

# CHECK-INST: max.df %e8, %e2, %e8
# CHECK: encoding: [0x4b,0x82,0x22,0x83]
.code32
max.df %e8, %e2, %e8

# CHECK-INST: max.df %e8, %e4, %e0
# CHECK: encoding: [0x4b,0x04,0x22,0x83]
.code32
max.df %e8, %e4, %e0

# CHECK-INST: max.df %e8, %e4, %e2
# CHECK: encoding: [0x4b,0x24,0x22,0x83]
.code32
max.df %e8, %e4, %e2

# CHECK-INST: max.df %e8, %e4, %e4
# CHECK: encoding: [0x4b,0x44,0x22,0x83]
.code32
max.df %e8, %e4, %e4

# CHECK-INST: max.df %e8, %e4, %e8
# CHECK: encoding: [0x4b,0x84,0x22,0x83]
.code32
max.df %e8, %e4, %e8

# CHECK-INST: max.df %e8, %e8, %e0
# CHECK: encoding: [0x4b,0x08,0x22,0x83]
.code32
max.df %e8, %e8, %e0

# CHECK-INST: max.df %e8, %e8, %e2
# CHECK: encoding: [0x4b,0x28,0x22,0x83]
.code32
max.df %e8, %e8, %e2

# CHECK-INST: max.df %e8, %e8, %e4
# CHECK: encoding: [0x4b,0x48,0x22,0x83]
.code32
max.df %e8, %e8, %e4

# CHECK-INST: max.df %e8, %e8, %e8
# CHECK: encoding: [0x4b,0x88,0x22,0x83]
.code32
max.df %e8, %e8, %e8

# CHECK-INST: neg.f %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x11,0x03]
.code32
neg.f %d0, %d0

# CHECK-INST: neg.f %d0, %d1
# CHECK: encoding: [0x4b,0x01,0x11,0x03]
.code32
neg.f %d0, %d1

# CHECK-INST: neg.f %d0, %d14
# CHECK: encoding: [0x4b,0x0e,0x11,0x03]
.code32
neg.f %d0, %d14

# CHECK-INST: neg.f %d0, %d15
# CHECK: encoding: [0x4b,0x0f,0x11,0x03]
.code32
neg.f %d0, %d15

# CHECK-INST: neg.f %d1, %d0
# CHECK: encoding: [0x4b,0x00,0x11,0x13]
.code32
neg.f %d1, %d0

# CHECK-INST: neg.f %d1, %d1
# CHECK: encoding: [0x4b,0x01,0x11,0x13]
.code32
neg.f %d1, %d1

# CHECK-INST: neg.f %d1, %d14
# CHECK: encoding: [0x4b,0x0e,0x11,0x13]
.code32
neg.f %d1, %d14

# CHECK-INST: neg.f %d1, %d15
# CHECK: encoding: [0x4b,0x0f,0x11,0x13]
.code32
neg.f %d1, %d15

# CHECK-INST: neg.f %d14, %d0
# CHECK: encoding: [0x4b,0x00,0x11,0xe3]
.code32
neg.f %d14, %d0

# CHECK-INST: neg.f %d14, %d1
# CHECK: encoding: [0x4b,0x01,0x11,0xe3]
.code32
neg.f %d14, %d1

# CHECK-INST: neg.f %d14, %d14
# CHECK: encoding: [0x4b,0x0e,0x11,0xe3]
.code32
neg.f %d14, %d14

# CHECK-INST: neg.f %d14, %d15
# CHECK: encoding: [0x4b,0x0f,0x11,0xe3]
.code32
neg.f %d14, %d15

# CHECK-INST: neg.f %d15, %d0
# CHECK: encoding: [0x4b,0x00,0x11,0xf3]
.code32
neg.f %d15, %d0

# CHECK-INST: neg.f %d15, %d1
# CHECK: encoding: [0x4b,0x01,0x11,0xf3]
.code32
neg.f %d15, %d1

# CHECK-INST: neg.f %d15, %d14
# CHECK: encoding: [0x4b,0x0e,0x11,0xf3]
.code32
neg.f %d15, %d14

# CHECK-INST: neg.f %d15, %d15
# CHECK: encoding: [0x4b,0x0f,0x11,0xf3]
.code32
neg.f %d15, %d15

# CHECK-INST: neg.df %e0, %e0
# CHECK: encoding: [0x4b,0x00,0x12,0x03]
.code32
neg.df %e0, %e0

# CHECK-INST: neg.df %e0, %e2
# CHECK: encoding: [0x4b,0x02,0x12,0x03]
.code32
neg.df %e0, %e2

# CHECK-INST: neg.df %e0, %e4
# CHECK: encoding: [0x4b,0x04,0x12,0x03]
.code32
neg.df %e0, %e4

# CHECK-INST: neg.df %e0, %e8
# CHECK: encoding: [0x4b,0x08,0x12,0x03]
.code32
neg.df %e0, %e8

# CHECK-INST: neg.df %e2, %e0
# CHECK: encoding: [0x4b,0x00,0x12,0x23]
.code32
neg.df %e2, %e0

# CHECK-INST: neg.df %e2, %e2
# CHECK: encoding: [0x4b,0x02,0x12,0x23]
.code32
neg.df %e2, %e2

# CHECK-INST: neg.df %e2, %e4
# CHECK: encoding: [0x4b,0x04,0x12,0x23]
.code32
neg.df %e2, %e4

# CHECK-INST: neg.df %e2, %e8
# CHECK: encoding: [0x4b,0x08,0x12,0x23]
.code32
neg.df %e2, %e8

# CHECK-INST: neg.df %e4, %e0
# CHECK: encoding: [0x4b,0x00,0x12,0x43]
.code32
neg.df %e4, %e0

# CHECK-INST: neg.df %e4, %e2
# CHECK: encoding: [0x4b,0x02,0x12,0x43]
.code32
neg.df %e4, %e2

# CHECK-INST: neg.df %e4, %e4
# CHECK: encoding: [0x4b,0x04,0x12,0x43]
.code32
neg.df %e4, %e4

# CHECK-INST: neg.df %e4, %e8
# CHECK: encoding: [0x4b,0x08,0x12,0x43]
.code32
neg.df %e4, %e8

# CHECK-INST: neg.df %e8, %e0
# CHECK: encoding: [0x4b,0x00,0x12,0x83]
.code32
neg.df %e8, %e0

# CHECK-INST: neg.df %e8, %e2
# CHECK: encoding: [0x4b,0x02,0x12,0x83]
.code32
neg.df %e8, %e2

# CHECK-INST: neg.df %e8, %e4
# CHECK: encoding: [0x4b,0x04,0x12,0x83]
.code32
neg.df %e8, %e4

# CHECK-INST: neg.df %e8, %e8
# CHECK: encoding: [0x4b,0x08,0x12,0x83]
.code32
neg.df %e8, %e8

# CHECK-INST: cmp.df %d0, %e0, %e0
# CHECK: encoding: [0x4b,0x00,0x02,0x00]
.code32
cmp.df %d0, %e0, %e0

# CHECK-INST: cmp.df %d0, %e0, %e2
# CHECK: encoding: [0x4b,0x20,0x02,0x00]
.code32
cmp.df %d0, %e0, %e2

# CHECK-INST: cmp.df %d0, %e0, %e4
# CHECK: encoding: [0x4b,0x40,0x02,0x00]
.code32
cmp.df %d0, %e0, %e4

# CHECK-INST: cmp.df %d0, %e0, %e8
# CHECK: encoding: [0x4b,0x80,0x02,0x00]
.code32
cmp.df %d0, %e0, %e8

# CHECK-INST: cmp.df %d0, %e2, %e0
# CHECK: encoding: [0x4b,0x02,0x02,0x00]
.code32
cmp.df %d0, %e2, %e0

# CHECK-INST: cmp.df %d0, %e2, %e2
# CHECK: encoding: [0x4b,0x22,0x02,0x00]
.code32
cmp.df %d0, %e2, %e2

# CHECK-INST: cmp.df %d0, %e2, %e4
# CHECK: encoding: [0x4b,0x42,0x02,0x00]
.code32
cmp.df %d0, %e2, %e4

# CHECK-INST: cmp.df %d0, %e2, %e8
# CHECK: encoding: [0x4b,0x82,0x02,0x00]
.code32
cmp.df %d0, %e2, %e8

# CHECK-INST: cmp.df %d0, %e4, %e0
# CHECK: encoding: [0x4b,0x04,0x02,0x00]
.code32
cmp.df %d0, %e4, %e0

# CHECK-INST: cmp.df %d0, %e4, %e2
# CHECK: encoding: [0x4b,0x24,0x02,0x00]
.code32
cmp.df %d0, %e4, %e2

# CHECK-INST: cmp.df %d0, %e4, %e4
# CHECK: encoding: [0x4b,0x44,0x02,0x00]
.code32
cmp.df %d0, %e4, %e4

# CHECK-INST: cmp.df %d0, %e4, %e8
# CHECK: encoding: [0x4b,0x84,0x02,0x00]
.code32
cmp.df %d0, %e4, %e8

# CHECK-INST: cmp.df %d0, %e8, %e0
# CHECK: encoding: [0x4b,0x08,0x02,0x00]
.code32
cmp.df %d0, %e8, %e0

# CHECK-INST: cmp.df %d0, %e8, %e2
# CHECK: encoding: [0x4b,0x28,0x02,0x00]
.code32
cmp.df %d0, %e8, %e2

# CHECK-INST: cmp.df %d0, %e8, %e4
# CHECK: encoding: [0x4b,0x48,0x02,0x00]
.code32
cmp.df %d0, %e8, %e4

# CHECK-INST: cmp.df %d0, %e8, %e8
# CHECK: encoding: [0x4b,0x88,0x02,0x00]
.code32
cmp.df %d0, %e8, %e8

# CHECK-INST: cmp.df %d1, %e0, %e0
# CHECK: encoding: [0x4b,0x00,0x02,0x10]
.code32
cmp.df %d1, %e0, %e0

# CHECK-INST: cmp.df %d1, %e0, %e2
# CHECK: encoding: [0x4b,0x20,0x02,0x10]
.code32
cmp.df %d1, %e0, %e2

# CHECK-INST: cmp.df %d1, %e0, %e4
# CHECK: encoding: [0x4b,0x40,0x02,0x10]
.code32
cmp.df %d1, %e0, %e4

# CHECK-INST: cmp.df %d1, %e0, %e8
# CHECK: encoding: [0x4b,0x80,0x02,0x10]
.code32
cmp.df %d1, %e0, %e8

# CHECK-INST: cmp.df %d1, %e2, %e0
# CHECK: encoding: [0x4b,0x02,0x02,0x10]
.code32
cmp.df %d1, %e2, %e0

# CHECK-INST: cmp.df %d1, %e2, %e2
# CHECK: encoding: [0x4b,0x22,0x02,0x10]
.code32
cmp.df %d1, %e2, %e2

# CHECK-INST: cmp.df %d1, %e2, %e4
# CHECK: encoding: [0x4b,0x42,0x02,0x10]
.code32
cmp.df %d1, %e2, %e4

# CHECK-INST: cmp.df %d1, %e2, %e8
# CHECK: encoding: [0x4b,0x82,0x02,0x10]
.code32
cmp.df %d1, %e2, %e8

# CHECK-INST: cmp.df %d1, %e4, %e0
# CHECK: encoding: [0x4b,0x04,0x02,0x10]
.code32
cmp.df %d1, %e4, %e0

# CHECK-INST: cmp.df %d1, %e4, %e2
# CHECK: encoding: [0x4b,0x24,0x02,0x10]
.code32
cmp.df %d1, %e4, %e2

# CHECK-INST: cmp.df %d1, %e4, %e4
# CHECK: encoding: [0x4b,0x44,0x02,0x10]
.code32
cmp.df %d1, %e4, %e4

# CHECK-INST: cmp.df %d1, %e4, %e8
# CHECK: encoding: [0x4b,0x84,0x02,0x10]
.code32
cmp.df %d1, %e4, %e8

# CHECK-INST: cmp.df %d1, %e8, %e0
# CHECK: encoding: [0x4b,0x08,0x02,0x10]
.code32
cmp.df %d1, %e8, %e0

# CHECK-INST: cmp.df %d1, %e8, %e2
# CHECK: encoding: [0x4b,0x28,0x02,0x10]
.code32
cmp.df %d1, %e8, %e2

# CHECK-INST: cmp.df %d1, %e8, %e4
# CHECK: encoding: [0x4b,0x48,0x02,0x10]
.code32
cmp.df %d1, %e8, %e4

# CHECK-INST: cmp.df %d1, %e8, %e8
# CHECK: encoding: [0x4b,0x88,0x02,0x10]
.code32
cmp.df %d1, %e8, %e8

# CHECK-INST: cmp.df %d14, %e0, %e0
# CHECK: encoding: [0x4b,0x00,0x02,0xe0]
.code32
cmp.df %d14, %e0, %e0

# CHECK-INST: cmp.df %d14, %e0, %e2
# CHECK: encoding: [0x4b,0x20,0x02,0xe0]
.code32
cmp.df %d14, %e0, %e2

# CHECK-INST: cmp.df %d14, %e0, %e4
# CHECK: encoding: [0x4b,0x40,0x02,0xe0]
.code32
cmp.df %d14, %e0, %e4

# CHECK-INST: cmp.df %d14, %e0, %e8
# CHECK: encoding: [0x4b,0x80,0x02,0xe0]
.code32
cmp.df %d14, %e0, %e8

# CHECK-INST: cmp.df %d14, %e2, %e0
# CHECK: encoding: [0x4b,0x02,0x02,0xe0]
.code32
cmp.df %d14, %e2, %e0

# CHECK-INST: cmp.df %d14, %e2, %e2
# CHECK: encoding: [0x4b,0x22,0x02,0xe0]
.code32
cmp.df %d14, %e2, %e2

# CHECK-INST: cmp.df %d14, %e2, %e4
# CHECK: encoding: [0x4b,0x42,0x02,0xe0]
.code32
cmp.df %d14, %e2, %e4

# CHECK-INST: cmp.df %d14, %e2, %e8
# CHECK: encoding: [0x4b,0x82,0x02,0xe0]
.code32
cmp.df %d14, %e2, %e8

# CHECK-INST: cmp.df %d14, %e4, %e0
# CHECK: encoding: [0x4b,0x04,0x02,0xe0]
.code32
cmp.df %d14, %e4, %e0

# CHECK-INST: cmp.df %d14, %e4, %e2
# CHECK: encoding: [0x4b,0x24,0x02,0xe0]
.code32
cmp.df %d14, %e4, %e2

# CHECK-INST: cmp.df %d14, %e4, %e4
# CHECK: encoding: [0x4b,0x44,0x02,0xe0]
.code32
cmp.df %d14, %e4, %e4

# CHECK-INST: cmp.df %d14, %e4, %e8
# CHECK: encoding: [0x4b,0x84,0x02,0xe0]
.code32
cmp.df %d14, %e4, %e8

# CHECK-INST: cmp.df %d14, %e8, %e0
# CHECK: encoding: [0x4b,0x08,0x02,0xe0]
.code32
cmp.df %d14, %e8, %e0

# CHECK-INST: cmp.df %d14, %e8, %e2
# CHECK: encoding: [0x4b,0x28,0x02,0xe0]
.code32
cmp.df %d14, %e8, %e2

# CHECK-INST: cmp.df %d14, %e8, %e4
# CHECK: encoding: [0x4b,0x48,0x02,0xe0]
.code32
cmp.df %d14, %e8, %e4

# CHECK-INST: cmp.df %d14, %e8, %e8
# CHECK: encoding: [0x4b,0x88,0x02,0xe0]
.code32
cmp.df %d14, %e8, %e8

# CHECK-INST: cmp.df %d15, %e0, %e0
# CHECK: encoding: [0x4b,0x00,0x02,0xf0]
.code32
cmp.df %d15, %e0, %e0

# CHECK-INST: cmp.df %d15, %e0, %e2
# CHECK: encoding: [0x4b,0x20,0x02,0xf0]
.code32
cmp.df %d15, %e0, %e2

# CHECK-INST: cmp.df %d15, %e0, %e4
# CHECK: encoding: [0x4b,0x40,0x02,0xf0]
.code32
cmp.df %d15, %e0, %e4

# CHECK-INST: cmp.df %d15, %e0, %e8
# CHECK: encoding: [0x4b,0x80,0x02,0xf0]
.code32
cmp.df %d15, %e0, %e8

# CHECK-INST: cmp.df %d15, %e2, %e0
# CHECK: encoding: [0x4b,0x02,0x02,0xf0]
.code32
cmp.df %d15, %e2, %e0

# CHECK-INST: cmp.df %d15, %e2, %e2
# CHECK: encoding: [0x4b,0x22,0x02,0xf0]
.code32
cmp.df %d15, %e2, %e2

# CHECK-INST: cmp.df %d15, %e2, %e4
# CHECK: encoding: [0x4b,0x42,0x02,0xf0]
.code32
cmp.df %d15, %e2, %e4

# CHECK-INST: cmp.df %d15, %e2, %e8
# CHECK: encoding: [0x4b,0x82,0x02,0xf0]
.code32
cmp.df %d15, %e2, %e8

# CHECK-INST: cmp.df %d15, %e4, %e0
# CHECK: encoding: [0x4b,0x04,0x02,0xf0]
.code32
cmp.df %d15, %e4, %e0

# CHECK-INST: cmp.df %d15, %e4, %e2
# CHECK: encoding: [0x4b,0x24,0x02,0xf0]
.code32
cmp.df %d15, %e4, %e2

# CHECK-INST: cmp.df %d15, %e4, %e4
# CHECK: encoding: [0x4b,0x44,0x02,0xf0]
.code32
cmp.df %d15, %e4, %e4

# CHECK-INST: cmp.df %d15, %e4, %e8
# CHECK: encoding: [0x4b,0x84,0x02,0xf0]
.code32
cmp.df %d15, %e4, %e8

# CHECK-INST: cmp.df %d15, %e8, %e0
# CHECK: encoding: [0x4b,0x08,0x02,0xf0]
.code32
cmp.df %d15, %e8, %e0

# CHECK-INST: cmp.df %d15, %e8, %e2
# CHECK: encoding: [0x4b,0x28,0x02,0xf0]
.code32
cmp.df %d15, %e8, %e2

# CHECK-INST: cmp.df %d15, %e8, %e4
# CHECK: encoding: [0x4b,0x48,0x02,0xf0]
.code32
cmp.df %d15, %e8, %e4

# CHECK-INST: cmp.df %d15, %e8, %e8
# CHECK: encoding: [0x4b,0x88,0x02,0xf0]
.code32
cmp.df %d15, %e8, %e8

# CHECK-INST: qseed.df %e0, %e0
# CHECK: encoding: [0x4b,0x00,0x92,0x01]
.code32
qseed.df %e0, %e0

# CHECK-INST: qseed.df %e0, %e2
# CHECK: encoding: [0x4b,0x02,0x92,0x01]
.code32
qseed.df %e0, %e2

# CHECK-INST: qseed.df %e0, %e4
# CHECK: encoding: [0x4b,0x04,0x92,0x01]
.code32
qseed.df %e0, %e4

# CHECK-INST: qseed.df %e0, %e8
# CHECK: encoding: [0x4b,0x08,0x92,0x01]
.code32
qseed.df %e0, %e8

# CHECK-INST: qseed.df %e2, %e0
# CHECK: encoding: [0x4b,0x00,0x92,0x21]
.code32
qseed.df %e2, %e0

# CHECK-INST: qseed.df %e2, %e2
# CHECK: encoding: [0x4b,0x02,0x92,0x21]
.code32
qseed.df %e2, %e2

# CHECK-INST: qseed.df %e2, %e4
# CHECK: encoding: [0x4b,0x04,0x92,0x21]
.code32
qseed.df %e2, %e4

# CHECK-INST: qseed.df %e2, %e8
# CHECK: encoding: [0x4b,0x08,0x92,0x21]
.code32
qseed.df %e2, %e8

# CHECK-INST: qseed.df %e4, %e0
# CHECK: encoding: [0x4b,0x00,0x92,0x41]
.code32
qseed.df %e4, %e0

# CHECK-INST: qseed.df %e4, %e2
# CHECK: encoding: [0x4b,0x02,0x92,0x41]
.code32
qseed.df %e4, %e2

# CHECK-INST: qseed.df %e4, %e4
# CHECK: encoding: [0x4b,0x04,0x92,0x41]
.code32
qseed.df %e4, %e4

# CHECK-INST: qseed.df %e4, %e8
# CHECK: encoding: [0x4b,0x08,0x92,0x41]
.code32
qseed.df %e4, %e8

# CHECK-INST: qseed.df %e8, %e0
# CHECK: encoding: [0x4b,0x00,0x92,0x81]
.code32
qseed.df %e8, %e0

# CHECK-INST: qseed.df %e8, %e2
# CHECK: encoding: [0x4b,0x02,0x92,0x81]
.code32
qseed.df %e8, %e2

# CHECK-INST: qseed.df %e8, %e4
# CHECK: encoding: [0x4b,0x04,0x92,0x81]
.code32
qseed.df %e8, %e4

# CHECK-INST: qseed.df %e8, %e8
# CHECK: encoding: [0x4b,0x08,0x92,0x81]
.code32
qseed.df %e8, %e8

# CHECK-INST: madd.df %e0, %e0, %e0, %e0
# CHECK: encoding: [0x6b,0x00,0x62,0x00]
.code32
madd.df %e0, %e0, %e0, %e0

# CHECK-INST: madd.df %e0, %e0, %e0, %e2
# CHECK: encoding: [0x6b,0x20,0x62,0x00]
.code32
madd.df %e0, %e0, %e0, %e2

# CHECK-INST: madd.df %e0, %e0, %e0, %e4
# CHECK: encoding: [0x6b,0x40,0x62,0x00]
.code32
madd.df %e0, %e0, %e0, %e4

# CHECK-INST: madd.df %e0, %e0, %e0, %e8
# CHECK: encoding: [0x6b,0x80,0x62,0x00]
.code32
madd.df %e0, %e0, %e0, %e8

# CHECK-INST: madd.df %e0, %e0, %e2, %e0
# CHECK: encoding: [0x6b,0x02,0x62,0x00]
.code32
madd.df %e0, %e0, %e2, %e0

# CHECK-INST: madd.df %e0, %e0, %e2, %e2
# CHECK: encoding: [0x6b,0x22,0x62,0x00]
.code32
madd.df %e0, %e0, %e2, %e2

# CHECK-INST: madd.df %e0, %e0, %e2, %e4
# CHECK: encoding: [0x6b,0x42,0x62,0x00]
.code32
madd.df %e0, %e0, %e2, %e4

# CHECK-INST: madd.df %e0, %e0, %e2, %e8
# CHECK: encoding: [0x6b,0x82,0x62,0x00]
.code32
madd.df %e0, %e0, %e2, %e8

# CHECK-INST: madd.df %e0, %e0, %e4, %e0
# CHECK: encoding: [0x6b,0x04,0x62,0x00]
.code32
madd.df %e0, %e0, %e4, %e0

# CHECK-INST: madd.df %e0, %e0, %e4, %e2
# CHECK: encoding: [0x6b,0x24,0x62,0x00]
.code32
madd.df %e0, %e0, %e4, %e2

# CHECK-INST: madd.df %e0, %e0, %e4, %e4
# CHECK: encoding: [0x6b,0x44,0x62,0x00]
.code32
madd.df %e0, %e0, %e4, %e4

# CHECK-INST: madd.df %e0, %e0, %e4, %e8
# CHECK: encoding: [0x6b,0x84,0x62,0x00]
.code32
madd.df %e0, %e0, %e4, %e8

# CHECK-INST: madd.df %e0, %e0, %e8, %e0
# CHECK: encoding: [0x6b,0x08,0x62,0x00]
.code32
madd.df %e0, %e0, %e8, %e0

# CHECK-INST: madd.df %e0, %e0, %e8, %e2
# CHECK: encoding: [0x6b,0x28,0x62,0x00]
.code32
madd.df %e0, %e0, %e8, %e2

# CHECK-INST: madd.df %e0, %e0, %e8, %e4
# CHECK: encoding: [0x6b,0x48,0x62,0x00]
.code32
madd.df %e0, %e0, %e8, %e4

# CHECK-INST: madd.df %e0, %e0, %e8, %e8
# CHECK: encoding: [0x6b,0x88,0x62,0x00]
.code32
madd.df %e0, %e0, %e8, %e8

# CHECK-INST: madd.df %e0, %e2, %e0, %e0
# CHECK: encoding: [0x6b,0x00,0x62,0x02]
.code32
madd.df %e0, %e2, %e0, %e0

# CHECK-INST: madd.df %e0, %e2, %e0, %e2
# CHECK: encoding: [0x6b,0x20,0x62,0x02]
.code32
madd.df %e0, %e2, %e0, %e2

# CHECK-INST: madd.df %e0, %e2, %e0, %e4
# CHECK: encoding: [0x6b,0x40,0x62,0x02]
.code32
madd.df %e0, %e2, %e0, %e4

# CHECK-INST: madd.df %e0, %e2, %e0, %e8
# CHECK: encoding: [0x6b,0x80,0x62,0x02]
.code32
madd.df %e0, %e2, %e0, %e8

# CHECK-INST: madd.df %e0, %e2, %e2, %e0
# CHECK: encoding: [0x6b,0x02,0x62,0x02]
.code32
madd.df %e0, %e2, %e2, %e0

# CHECK-INST: madd.df %e0, %e2, %e2, %e2
# CHECK: encoding: [0x6b,0x22,0x62,0x02]
.code32
madd.df %e0, %e2, %e2, %e2

# CHECK-INST: madd.df %e0, %e2, %e2, %e4
# CHECK: encoding: [0x6b,0x42,0x62,0x02]
.code32
madd.df %e0, %e2, %e2, %e4

# CHECK-INST: madd.df %e0, %e2, %e2, %e8
# CHECK: encoding: [0x6b,0x82,0x62,0x02]
.code32
madd.df %e0, %e2, %e2, %e8

# CHECK-INST: madd.df %e0, %e2, %e4, %e0
# CHECK: encoding: [0x6b,0x04,0x62,0x02]
.code32
madd.df %e0, %e2, %e4, %e0

# CHECK-INST: madd.df %e0, %e2, %e4, %e2
# CHECK: encoding: [0x6b,0x24,0x62,0x02]
.code32
madd.df %e0, %e2, %e4, %e2

# CHECK-INST: madd.df %e0, %e2, %e4, %e4
# CHECK: encoding: [0x6b,0x44,0x62,0x02]
.code32
madd.df %e0, %e2, %e4, %e4

# CHECK-INST: madd.df %e0, %e2, %e4, %e8
# CHECK: encoding: [0x6b,0x84,0x62,0x02]
.code32
madd.df %e0, %e2, %e4, %e8

# CHECK-INST: madd.df %e0, %e2, %e8, %e0
# CHECK: encoding: [0x6b,0x08,0x62,0x02]
.code32
madd.df %e0, %e2, %e8, %e0

# CHECK-INST: madd.df %e0, %e2, %e8, %e2
# CHECK: encoding: [0x6b,0x28,0x62,0x02]
.code32
madd.df %e0, %e2, %e8, %e2

# CHECK-INST: madd.df %e0, %e2, %e8, %e4
# CHECK: encoding: [0x6b,0x48,0x62,0x02]
.code32
madd.df %e0, %e2, %e8, %e4

# CHECK-INST: madd.df %e0, %e2, %e8, %e8
# CHECK: encoding: [0x6b,0x88,0x62,0x02]
.code32
madd.df %e0, %e2, %e8, %e8

# CHECK-INST: madd.df %e0, %e4, %e0, %e0
# CHECK: encoding: [0x6b,0x00,0x62,0x04]
.code32
madd.df %e0, %e4, %e0, %e0

# CHECK-INST: madd.df %e0, %e4, %e0, %e2
# CHECK: encoding: [0x6b,0x20,0x62,0x04]
.code32
madd.df %e0, %e4, %e0, %e2

# CHECK-INST: madd.df %e0, %e4, %e0, %e4
# CHECK: encoding: [0x6b,0x40,0x62,0x04]
.code32
madd.df %e0, %e4, %e0, %e4

# CHECK-INST: madd.df %e0, %e4, %e0, %e8
# CHECK: encoding: [0x6b,0x80,0x62,0x04]
.code32
madd.df %e0, %e4, %e0, %e8

# CHECK-INST: madd.df %e0, %e4, %e2, %e0
# CHECK: encoding: [0x6b,0x02,0x62,0x04]
.code32
madd.df %e0, %e4, %e2, %e0

# CHECK-INST: madd.df %e0, %e4, %e2, %e2
# CHECK: encoding: [0x6b,0x22,0x62,0x04]
.code32
madd.df %e0, %e4, %e2, %e2

# CHECK-INST: madd.df %e0, %e4, %e2, %e4
# CHECK: encoding: [0x6b,0x42,0x62,0x04]
.code32
madd.df %e0, %e4, %e2, %e4

# CHECK-INST: madd.df %e0, %e4, %e2, %e8
# CHECK: encoding: [0x6b,0x82,0x62,0x04]
.code32
madd.df %e0, %e4, %e2, %e8

# CHECK-INST: madd.df %e0, %e4, %e4, %e0
# CHECK: encoding: [0x6b,0x04,0x62,0x04]
.code32
madd.df %e0, %e4, %e4, %e0

# CHECK-INST: madd.df %e0, %e4, %e4, %e2
# CHECK: encoding: [0x6b,0x24,0x62,0x04]
.code32
madd.df %e0, %e4, %e4, %e2

# CHECK-INST: madd.df %e0, %e4, %e4, %e4
# CHECK: encoding: [0x6b,0x44,0x62,0x04]
.code32
madd.df %e0, %e4, %e4, %e4

# CHECK-INST: madd.df %e0, %e4, %e4, %e8
# CHECK: encoding: [0x6b,0x84,0x62,0x04]
.code32
madd.df %e0, %e4, %e4, %e8

# CHECK-INST: madd.df %e0, %e4, %e8, %e0
# CHECK: encoding: [0x6b,0x08,0x62,0x04]
.code32
madd.df %e0, %e4, %e8, %e0

# CHECK-INST: madd.df %e0, %e4, %e8, %e2
# CHECK: encoding: [0x6b,0x28,0x62,0x04]
.code32
madd.df %e0, %e4, %e8, %e2

# CHECK-INST: madd.df %e0, %e4, %e8, %e4
# CHECK: encoding: [0x6b,0x48,0x62,0x04]
.code32
madd.df %e0, %e4, %e8, %e4

# CHECK-INST: madd.df %e0, %e4, %e8, %e8
# CHECK: encoding: [0x6b,0x88,0x62,0x04]
.code32
madd.df %e0, %e4, %e8, %e8

# CHECK-INST: madd.df %e0, %e8, %e0, %e0
# CHECK: encoding: [0x6b,0x00,0x62,0x08]
.code32
madd.df %e0, %e8, %e0, %e0

# CHECK-INST: madd.df %e0, %e8, %e0, %e2
# CHECK: encoding: [0x6b,0x20,0x62,0x08]
.code32
madd.df %e0, %e8, %e0, %e2

# CHECK-INST: madd.df %e0, %e8, %e0, %e4
# CHECK: encoding: [0x6b,0x40,0x62,0x08]
.code32
madd.df %e0, %e8, %e0, %e4

# CHECK-INST: madd.df %e0, %e8, %e0, %e8
# CHECK: encoding: [0x6b,0x80,0x62,0x08]
.code32
madd.df %e0, %e8, %e0, %e8

# CHECK-INST: madd.df %e0, %e8, %e2, %e0
# CHECK: encoding: [0x6b,0x02,0x62,0x08]
.code32
madd.df %e0, %e8, %e2, %e0

# CHECK-INST: madd.df %e0, %e8, %e2, %e2
# CHECK: encoding: [0x6b,0x22,0x62,0x08]
.code32
madd.df %e0, %e8, %e2, %e2

# CHECK-INST: madd.df %e0, %e8, %e2, %e4
# CHECK: encoding: [0x6b,0x42,0x62,0x08]
.code32
madd.df %e0, %e8, %e2, %e4

# CHECK-INST: madd.df %e0, %e8, %e2, %e8
# CHECK: encoding: [0x6b,0x82,0x62,0x08]
.code32
madd.df %e0, %e8, %e2, %e8

# CHECK-INST: madd.df %e0, %e8, %e4, %e0
# CHECK: encoding: [0x6b,0x04,0x62,0x08]
.code32
madd.df %e0, %e8, %e4, %e0

# CHECK-INST: madd.df %e0, %e8, %e4, %e2
# CHECK: encoding: [0x6b,0x24,0x62,0x08]
.code32
madd.df %e0, %e8, %e4, %e2

# CHECK-INST: madd.df %e0, %e8, %e4, %e4
# CHECK: encoding: [0x6b,0x44,0x62,0x08]
.code32
madd.df %e0, %e8, %e4, %e4

# CHECK-INST: madd.df %e0, %e8, %e4, %e8
# CHECK: encoding: [0x6b,0x84,0x62,0x08]
.code32
madd.df %e0, %e8, %e4, %e8

# CHECK-INST: madd.df %e0, %e8, %e8, %e0
# CHECK: encoding: [0x6b,0x08,0x62,0x08]
.code32
madd.df %e0, %e8, %e8, %e0

# CHECK-INST: madd.df %e0, %e8, %e8, %e2
# CHECK: encoding: [0x6b,0x28,0x62,0x08]
.code32
madd.df %e0, %e8, %e8, %e2

# CHECK-INST: madd.df %e0, %e8, %e8, %e4
# CHECK: encoding: [0x6b,0x48,0x62,0x08]
.code32
madd.df %e0, %e8, %e8, %e4

# CHECK-INST: madd.df %e0, %e8, %e8, %e8
# CHECK: encoding: [0x6b,0x88,0x62,0x08]
.code32
madd.df %e0, %e8, %e8, %e8

# CHECK-INST: madd.df %e2, %e0, %e0, %e0
# CHECK: encoding: [0x6b,0x00,0x62,0x20]
.code32
madd.df %e2, %e0, %e0, %e0

# CHECK-INST: madd.df %e2, %e0, %e0, %e2
# CHECK: encoding: [0x6b,0x20,0x62,0x20]
.code32
madd.df %e2, %e0, %e0, %e2

# CHECK-INST: madd.df %e2, %e0, %e0, %e4
# CHECK: encoding: [0x6b,0x40,0x62,0x20]
.code32
madd.df %e2, %e0, %e0, %e4

# CHECK-INST: madd.df %e2, %e0, %e0, %e8
# CHECK: encoding: [0x6b,0x80,0x62,0x20]
.code32
madd.df %e2, %e0, %e0, %e8

# CHECK-INST: madd.df %e2, %e0, %e2, %e0
# CHECK: encoding: [0x6b,0x02,0x62,0x20]
.code32
madd.df %e2, %e0, %e2, %e0

# CHECK-INST: madd.df %e2, %e0, %e2, %e2
# CHECK: encoding: [0x6b,0x22,0x62,0x20]
.code32
madd.df %e2, %e0, %e2, %e2

# CHECK-INST: madd.df %e2, %e0, %e2, %e4
# CHECK: encoding: [0x6b,0x42,0x62,0x20]
.code32
madd.df %e2, %e0, %e2, %e4

# CHECK-INST: madd.df %e2, %e0, %e2, %e8
# CHECK: encoding: [0x6b,0x82,0x62,0x20]
.code32
madd.df %e2, %e0, %e2, %e8

# CHECK-INST: madd.df %e2, %e0, %e4, %e0
# CHECK: encoding: [0x6b,0x04,0x62,0x20]
.code32
madd.df %e2, %e0, %e4, %e0

# CHECK-INST: madd.df %e2, %e0, %e4, %e2
# CHECK: encoding: [0x6b,0x24,0x62,0x20]
.code32
madd.df %e2, %e0, %e4, %e2

# CHECK-INST: madd.df %e2, %e0, %e4, %e4
# CHECK: encoding: [0x6b,0x44,0x62,0x20]
.code32
madd.df %e2, %e0, %e4, %e4

# CHECK-INST: madd.df %e2, %e0, %e4, %e8
# CHECK: encoding: [0x6b,0x84,0x62,0x20]
.code32
madd.df %e2, %e0, %e4, %e8

# CHECK-INST: madd.df %e2, %e0, %e8, %e0
# CHECK: encoding: [0x6b,0x08,0x62,0x20]
.code32
madd.df %e2, %e0, %e8, %e0

# CHECK-INST: madd.df %e2, %e0, %e8, %e2
# CHECK: encoding: [0x6b,0x28,0x62,0x20]
.code32
madd.df %e2, %e0, %e8, %e2

# CHECK-INST: madd.df %e2, %e0, %e8, %e4
# CHECK: encoding: [0x6b,0x48,0x62,0x20]
.code32
madd.df %e2, %e0, %e8, %e4

# CHECK-INST: madd.df %e2, %e0, %e8, %e8
# CHECK: encoding: [0x6b,0x88,0x62,0x20]
.code32
madd.df %e2, %e0, %e8, %e8

# CHECK-INST: madd.df %e2, %e2, %e0, %e0
# CHECK: encoding: [0x6b,0x00,0x62,0x22]
.code32
madd.df %e2, %e2, %e0, %e0

# CHECK-INST: madd.df %e2, %e2, %e0, %e2
# CHECK: encoding: [0x6b,0x20,0x62,0x22]
.code32
madd.df %e2, %e2, %e0, %e2

# CHECK-INST: madd.df %e2, %e2, %e0, %e4
# CHECK: encoding: [0x6b,0x40,0x62,0x22]
.code32
madd.df %e2, %e2, %e0, %e4

# CHECK-INST: madd.df %e2, %e2, %e0, %e8
# CHECK: encoding: [0x6b,0x80,0x62,0x22]
.code32
madd.df %e2, %e2, %e0, %e8

# CHECK-INST: madd.df %e2, %e2, %e2, %e0
# CHECK: encoding: [0x6b,0x02,0x62,0x22]
.code32
madd.df %e2, %e2, %e2, %e0

# CHECK-INST: madd.df %e2, %e2, %e2, %e2
# CHECK: encoding: [0x6b,0x22,0x62,0x22]
.code32
madd.df %e2, %e2, %e2, %e2

# CHECK-INST: madd.df %e2, %e2, %e2, %e4
# CHECK: encoding: [0x6b,0x42,0x62,0x22]
.code32
madd.df %e2, %e2, %e2, %e4

# CHECK-INST: madd.df %e2, %e2, %e2, %e8
# CHECK: encoding: [0x6b,0x82,0x62,0x22]
.code32
madd.df %e2, %e2, %e2, %e8

# CHECK-INST: madd.df %e2, %e2, %e4, %e0
# CHECK: encoding: [0x6b,0x04,0x62,0x22]
.code32
madd.df %e2, %e2, %e4, %e0

# CHECK-INST: madd.df %e2, %e2, %e4, %e2
# CHECK: encoding: [0x6b,0x24,0x62,0x22]
.code32
madd.df %e2, %e2, %e4, %e2

# CHECK-INST: madd.df %e2, %e2, %e4, %e4
# CHECK: encoding: [0x6b,0x44,0x62,0x22]
.code32
madd.df %e2, %e2, %e4, %e4

# CHECK-INST: madd.df %e2, %e2, %e4, %e8
# CHECK: encoding: [0x6b,0x84,0x62,0x22]
.code32
madd.df %e2, %e2, %e4, %e8

# CHECK-INST: madd.df %e2, %e2, %e8, %e0
# CHECK: encoding: [0x6b,0x08,0x62,0x22]
.code32
madd.df %e2, %e2, %e8, %e0

# CHECK-INST: madd.df %e2, %e2, %e8, %e2
# CHECK: encoding: [0x6b,0x28,0x62,0x22]
.code32
madd.df %e2, %e2, %e8, %e2

# CHECK-INST: madd.df %e2, %e2, %e8, %e4
# CHECK: encoding: [0x6b,0x48,0x62,0x22]
.code32
madd.df %e2, %e2, %e8, %e4

# CHECK-INST: madd.df %e2, %e2, %e8, %e8
# CHECK: encoding: [0x6b,0x88,0x62,0x22]
.code32
madd.df %e2, %e2, %e8, %e8

# CHECK-INST: madd.df %e2, %e4, %e0, %e0
# CHECK: encoding: [0x6b,0x00,0x62,0x24]
.code32
madd.df %e2, %e4, %e0, %e0

# CHECK-INST: madd.df %e2, %e4, %e0, %e2
# CHECK: encoding: [0x6b,0x20,0x62,0x24]
.code32
madd.df %e2, %e4, %e0, %e2

# CHECK-INST: madd.df %e2, %e4, %e0, %e4
# CHECK: encoding: [0x6b,0x40,0x62,0x24]
.code32
madd.df %e2, %e4, %e0, %e4

# CHECK-INST: madd.df %e2, %e4, %e0, %e8
# CHECK: encoding: [0x6b,0x80,0x62,0x24]
.code32
madd.df %e2, %e4, %e0, %e8

# CHECK-INST: madd.df %e2, %e4, %e2, %e0
# CHECK: encoding: [0x6b,0x02,0x62,0x24]
.code32
madd.df %e2, %e4, %e2, %e0

# CHECK-INST: madd.df %e2, %e4, %e2, %e2
# CHECK: encoding: [0x6b,0x22,0x62,0x24]
.code32
madd.df %e2, %e4, %e2, %e2

# CHECK-INST: madd.df %e2, %e4, %e2, %e4
# CHECK: encoding: [0x6b,0x42,0x62,0x24]
.code32
madd.df %e2, %e4, %e2, %e4

# CHECK-INST: madd.df %e2, %e4, %e2, %e8
# CHECK: encoding: [0x6b,0x82,0x62,0x24]
.code32
madd.df %e2, %e4, %e2, %e8

# CHECK-INST: madd.df %e2, %e4, %e4, %e0
# CHECK: encoding: [0x6b,0x04,0x62,0x24]
.code32
madd.df %e2, %e4, %e4, %e0

# CHECK-INST: madd.df %e2, %e4, %e4, %e2
# CHECK: encoding: [0x6b,0x24,0x62,0x24]
.code32
madd.df %e2, %e4, %e4, %e2

# CHECK-INST: madd.df %e2, %e4, %e4, %e4
# CHECK: encoding: [0x6b,0x44,0x62,0x24]
.code32
madd.df %e2, %e4, %e4, %e4

# CHECK-INST: madd.df %e2, %e4, %e4, %e8
# CHECK: encoding: [0x6b,0x84,0x62,0x24]
.code32
madd.df %e2, %e4, %e4, %e8

# CHECK-INST: madd.df %e2, %e4, %e8, %e0
# CHECK: encoding: [0x6b,0x08,0x62,0x24]
.code32
madd.df %e2, %e4, %e8, %e0

# CHECK-INST: madd.df %e2, %e4, %e8, %e2
# CHECK: encoding: [0x6b,0x28,0x62,0x24]
.code32
madd.df %e2, %e4, %e8, %e2

# CHECK-INST: madd.df %e2, %e4, %e8, %e4
# CHECK: encoding: [0x6b,0x48,0x62,0x24]
.code32
madd.df %e2, %e4, %e8, %e4

# CHECK-INST: madd.df %e2, %e4, %e8, %e8
# CHECK: encoding: [0x6b,0x88,0x62,0x24]
.code32
madd.df %e2, %e4, %e8, %e8

# CHECK-INST: madd.df %e2, %e8, %e0, %e0
# CHECK: encoding: [0x6b,0x00,0x62,0x28]
.code32
madd.df %e2, %e8, %e0, %e0

# CHECK-INST: madd.df %e2, %e8, %e0, %e2
# CHECK: encoding: [0x6b,0x20,0x62,0x28]
.code32
madd.df %e2, %e8, %e0, %e2

# CHECK-INST: madd.df %e2, %e8, %e0, %e4
# CHECK: encoding: [0x6b,0x40,0x62,0x28]
.code32
madd.df %e2, %e8, %e0, %e4

# CHECK-INST: madd.df %e2, %e8, %e0, %e8
# CHECK: encoding: [0x6b,0x80,0x62,0x28]
.code32
madd.df %e2, %e8, %e0, %e8

# CHECK-INST: madd.df %e2, %e8, %e2, %e0
# CHECK: encoding: [0x6b,0x02,0x62,0x28]
.code32
madd.df %e2, %e8, %e2, %e0

# CHECK-INST: madd.df %e2, %e8, %e2, %e2
# CHECK: encoding: [0x6b,0x22,0x62,0x28]
.code32
madd.df %e2, %e8, %e2, %e2

# CHECK-INST: madd.df %e2, %e8, %e2, %e4
# CHECK: encoding: [0x6b,0x42,0x62,0x28]
.code32
madd.df %e2, %e8, %e2, %e4

# CHECK-INST: madd.df %e2, %e8, %e2, %e8
# CHECK: encoding: [0x6b,0x82,0x62,0x28]
.code32
madd.df %e2, %e8, %e2, %e8

# CHECK-INST: madd.df %e2, %e8, %e4, %e0
# CHECK: encoding: [0x6b,0x04,0x62,0x28]
.code32
madd.df %e2, %e8, %e4, %e0

# CHECK-INST: madd.df %e2, %e8, %e4, %e2
# CHECK: encoding: [0x6b,0x24,0x62,0x28]
.code32
madd.df %e2, %e8, %e4, %e2

# CHECK-INST: madd.df %e2, %e8, %e4, %e4
# CHECK: encoding: [0x6b,0x44,0x62,0x28]
.code32
madd.df %e2, %e8, %e4, %e4

# CHECK-INST: madd.df %e2, %e8, %e4, %e8
# CHECK: encoding: [0x6b,0x84,0x62,0x28]
.code32
madd.df %e2, %e8, %e4, %e8

# CHECK-INST: madd.df %e2, %e8, %e8, %e0
# CHECK: encoding: [0x6b,0x08,0x62,0x28]
.code32
madd.df %e2, %e8, %e8, %e0

# CHECK-INST: madd.df %e2, %e8, %e8, %e2
# CHECK: encoding: [0x6b,0x28,0x62,0x28]
.code32
madd.df %e2, %e8, %e8, %e2

# CHECK-INST: madd.df %e2, %e8, %e8, %e4
# CHECK: encoding: [0x6b,0x48,0x62,0x28]
.code32
madd.df %e2, %e8, %e8, %e4

# CHECK-INST: madd.df %e2, %e8, %e8, %e8
# CHECK: encoding: [0x6b,0x88,0x62,0x28]
.code32
madd.df %e2, %e8, %e8, %e8

# CHECK-INST: madd.df %e4, %e0, %e0, %e0
# CHECK: encoding: [0x6b,0x00,0x62,0x40]
.code32
madd.df %e4, %e0, %e0, %e0

# CHECK-INST: madd.df %e4, %e0, %e0, %e2
# CHECK: encoding: [0x6b,0x20,0x62,0x40]
.code32
madd.df %e4, %e0, %e0, %e2

# CHECK-INST: madd.df %e4, %e0, %e0, %e4
# CHECK: encoding: [0x6b,0x40,0x62,0x40]
.code32
madd.df %e4, %e0, %e0, %e4

# CHECK-INST: madd.df %e4, %e0, %e0, %e8
# CHECK: encoding: [0x6b,0x80,0x62,0x40]
.code32
madd.df %e4, %e0, %e0, %e8

# CHECK-INST: madd.df %e4, %e0, %e2, %e0
# CHECK: encoding: [0x6b,0x02,0x62,0x40]
.code32
madd.df %e4, %e0, %e2, %e0

# CHECK-INST: madd.df %e4, %e0, %e2, %e2
# CHECK: encoding: [0x6b,0x22,0x62,0x40]
.code32
madd.df %e4, %e0, %e2, %e2

# CHECK-INST: madd.df %e4, %e0, %e2, %e4
# CHECK: encoding: [0x6b,0x42,0x62,0x40]
.code32
madd.df %e4, %e0, %e2, %e4

# CHECK-INST: madd.df %e4, %e0, %e2, %e8
# CHECK: encoding: [0x6b,0x82,0x62,0x40]
.code32
madd.df %e4, %e0, %e2, %e8

# CHECK-INST: madd.df %e4, %e0, %e4, %e0
# CHECK: encoding: [0x6b,0x04,0x62,0x40]
.code32
madd.df %e4, %e0, %e4, %e0

# CHECK-INST: madd.df %e4, %e0, %e4, %e2
# CHECK: encoding: [0x6b,0x24,0x62,0x40]
.code32
madd.df %e4, %e0, %e4, %e2

# CHECK-INST: madd.df %e4, %e0, %e4, %e4
# CHECK: encoding: [0x6b,0x44,0x62,0x40]
.code32
madd.df %e4, %e0, %e4, %e4

# CHECK-INST: madd.df %e4, %e0, %e4, %e8
# CHECK: encoding: [0x6b,0x84,0x62,0x40]
.code32
madd.df %e4, %e0, %e4, %e8

# CHECK-INST: madd.df %e4, %e0, %e8, %e0
# CHECK: encoding: [0x6b,0x08,0x62,0x40]
.code32
madd.df %e4, %e0, %e8, %e0

# CHECK-INST: madd.df %e4, %e0, %e8, %e2
# CHECK: encoding: [0x6b,0x28,0x62,0x40]
.code32
madd.df %e4, %e0, %e8, %e2

# CHECK-INST: madd.df %e4, %e0, %e8, %e4
# CHECK: encoding: [0x6b,0x48,0x62,0x40]
.code32
madd.df %e4, %e0, %e8, %e4

# CHECK-INST: madd.df %e4, %e0, %e8, %e8
# CHECK: encoding: [0x6b,0x88,0x62,0x40]
.code32
madd.df %e4, %e0, %e8, %e8

# CHECK-INST: madd.df %e4, %e2, %e0, %e0
# CHECK: encoding: [0x6b,0x00,0x62,0x42]
.code32
madd.df %e4, %e2, %e0, %e0

# CHECK-INST: madd.df %e4, %e2, %e0, %e2
# CHECK: encoding: [0x6b,0x20,0x62,0x42]
.code32
madd.df %e4, %e2, %e0, %e2

# CHECK-INST: madd.df %e4, %e2, %e0, %e4
# CHECK: encoding: [0x6b,0x40,0x62,0x42]
.code32
madd.df %e4, %e2, %e0, %e4

# CHECK-INST: madd.df %e4, %e2, %e0, %e8
# CHECK: encoding: [0x6b,0x80,0x62,0x42]
.code32
madd.df %e4, %e2, %e0, %e8

# CHECK-INST: madd.df %e4, %e2, %e2, %e0
# CHECK: encoding: [0x6b,0x02,0x62,0x42]
.code32
madd.df %e4, %e2, %e2, %e0

# CHECK-INST: madd.df %e4, %e2, %e2, %e2
# CHECK: encoding: [0x6b,0x22,0x62,0x42]
.code32
madd.df %e4, %e2, %e2, %e2

# CHECK-INST: madd.df %e4, %e2, %e2, %e4
# CHECK: encoding: [0x6b,0x42,0x62,0x42]
.code32
madd.df %e4, %e2, %e2, %e4

# CHECK-INST: madd.df %e4, %e2, %e2, %e8
# CHECK: encoding: [0x6b,0x82,0x62,0x42]
.code32
madd.df %e4, %e2, %e2, %e8

# CHECK-INST: madd.df %e4, %e2, %e4, %e0
# CHECK: encoding: [0x6b,0x04,0x62,0x42]
.code32
madd.df %e4, %e2, %e4, %e0

# CHECK-INST: madd.df %e4, %e2, %e4, %e2
# CHECK: encoding: [0x6b,0x24,0x62,0x42]
.code32
madd.df %e4, %e2, %e4, %e2

# CHECK-INST: madd.df %e4, %e2, %e4, %e4
# CHECK: encoding: [0x6b,0x44,0x62,0x42]
.code32
madd.df %e4, %e2, %e4, %e4

# CHECK-INST: madd.df %e4, %e2, %e4, %e8
# CHECK: encoding: [0x6b,0x84,0x62,0x42]
.code32
madd.df %e4, %e2, %e4, %e8

# CHECK-INST: madd.df %e4, %e2, %e8, %e0
# CHECK: encoding: [0x6b,0x08,0x62,0x42]
.code32
madd.df %e4, %e2, %e8, %e0

# CHECK-INST: madd.df %e4, %e2, %e8, %e2
# CHECK: encoding: [0x6b,0x28,0x62,0x42]
.code32
madd.df %e4, %e2, %e8, %e2

# CHECK-INST: madd.df %e4, %e2, %e8, %e4
# CHECK: encoding: [0x6b,0x48,0x62,0x42]
.code32
madd.df %e4, %e2, %e8, %e4

# CHECK-INST: madd.df %e4, %e2, %e8, %e8
# CHECK: encoding: [0x6b,0x88,0x62,0x42]
.code32
madd.df %e4, %e2, %e8, %e8

# CHECK-INST: madd.df %e4, %e4, %e0, %e0
# CHECK: encoding: [0x6b,0x00,0x62,0x44]
.code32
madd.df %e4, %e4, %e0, %e0

# CHECK-INST: madd.df %e4, %e4, %e0, %e2
# CHECK: encoding: [0x6b,0x20,0x62,0x44]
.code32
madd.df %e4, %e4, %e0, %e2

# CHECK-INST: madd.df %e4, %e4, %e0, %e4
# CHECK: encoding: [0x6b,0x40,0x62,0x44]
.code32
madd.df %e4, %e4, %e0, %e4

# CHECK-INST: madd.df %e4, %e4, %e0, %e8
# CHECK: encoding: [0x6b,0x80,0x62,0x44]
.code32
madd.df %e4, %e4, %e0, %e8

# CHECK-INST: madd.df %e4, %e4, %e2, %e0
# CHECK: encoding: [0x6b,0x02,0x62,0x44]
.code32
madd.df %e4, %e4, %e2, %e0

# CHECK-INST: madd.df %e4, %e4, %e2, %e2
# CHECK: encoding: [0x6b,0x22,0x62,0x44]
.code32
madd.df %e4, %e4, %e2, %e2

# CHECK-INST: madd.df %e4, %e4, %e2, %e4
# CHECK: encoding: [0x6b,0x42,0x62,0x44]
.code32
madd.df %e4, %e4, %e2, %e4

# CHECK-INST: madd.df %e4, %e4, %e2, %e8
# CHECK: encoding: [0x6b,0x82,0x62,0x44]
.code32
madd.df %e4, %e4, %e2, %e8

# CHECK-INST: madd.df %e4, %e4, %e4, %e0
# CHECK: encoding: [0x6b,0x04,0x62,0x44]
.code32
madd.df %e4, %e4, %e4, %e0

# CHECK-INST: madd.df %e4, %e4, %e4, %e2
# CHECK: encoding: [0x6b,0x24,0x62,0x44]
.code32
madd.df %e4, %e4, %e4, %e2

# CHECK-INST: madd.df %e4, %e4, %e4, %e4
# CHECK: encoding: [0x6b,0x44,0x62,0x44]
.code32
madd.df %e4, %e4, %e4, %e4

# CHECK-INST: madd.df %e4, %e4, %e4, %e8
# CHECK: encoding: [0x6b,0x84,0x62,0x44]
.code32
madd.df %e4, %e4, %e4, %e8

# CHECK-INST: madd.df %e4, %e4, %e8, %e0
# CHECK: encoding: [0x6b,0x08,0x62,0x44]
.code32
madd.df %e4, %e4, %e8, %e0

# CHECK-INST: madd.df %e4, %e4, %e8, %e2
# CHECK: encoding: [0x6b,0x28,0x62,0x44]
.code32
madd.df %e4, %e4, %e8, %e2

# CHECK-INST: madd.df %e4, %e4, %e8, %e4
# CHECK: encoding: [0x6b,0x48,0x62,0x44]
.code32
madd.df %e4, %e4, %e8, %e4

# CHECK-INST: madd.df %e4, %e4, %e8, %e8
# CHECK: encoding: [0x6b,0x88,0x62,0x44]
.code32
madd.df %e4, %e4, %e8, %e8

# CHECK-INST: madd.df %e4, %e8, %e0, %e0
# CHECK: encoding: [0x6b,0x00,0x62,0x48]
.code32
madd.df %e4, %e8, %e0, %e0

# CHECK-INST: madd.df %e4, %e8, %e0, %e2
# CHECK: encoding: [0x6b,0x20,0x62,0x48]
.code32
madd.df %e4, %e8, %e0, %e2

# CHECK-INST: madd.df %e4, %e8, %e0, %e4
# CHECK: encoding: [0x6b,0x40,0x62,0x48]
.code32
madd.df %e4, %e8, %e0, %e4

# CHECK-INST: madd.df %e4, %e8, %e0, %e8
# CHECK: encoding: [0x6b,0x80,0x62,0x48]
.code32
madd.df %e4, %e8, %e0, %e8

# CHECK-INST: madd.df %e4, %e8, %e2, %e0
# CHECK: encoding: [0x6b,0x02,0x62,0x48]
.code32
madd.df %e4, %e8, %e2, %e0

# CHECK-INST: madd.df %e4, %e8, %e2, %e2
# CHECK: encoding: [0x6b,0x22,0x62,0x48]
.code32
madd.df %e4, %e8, %e2, %e2

# CHECK-INST: madd.df %e4, %e8, %e2, %e4
# CHECK: encoding: [0x6b,0x42,0x62,0x48]
.code32
madd.df %e4, %e8, %e2, %e4

# CHECK-INST: madd.df %e4, %e8, %e2, %e8
# CHECK: encoding: [0x6b,0x82,0x62,0x48]
.code32
madd.df %e4, %e8, %e2, %e8

# CHECK-INST: madd.df %e4, %e8, %e4, %e0
# CHECK: encoding: [0x6b,0x04,0x62,0x48]
.code32
madd.df %e4, %e8, %e4, %e0

# CHECK-INST: madd.df %e4, %e8, %e4, %e2
# CHECK: encoding: [0x6b,0x24,0x62,0x48]
.code32
madd.df %e4, %e8, %e4, %e2

# CHECK-INST: madd.df %e4, %e8, %e4, %e4
# CHECK: encoding: [0x6b,0x44,0x62,0x48]
.code32
madd.df %e4, %e8, %e4, %e4

# CHECK-INST: madd.df %e4, %e8, %e4, %e8
# CHECK: encoding: [0x6b,0x84,0x62,0x48]
.code32
madd.df %e4, %e8, %e4, %e8

# CHECK-INST: madd.df %e4, %e8, %e8, %e0
# CHECK: encoding: [0x6b,0x08,0x62,0x48]
.code32
madd.df %e4, %e8, %e8, %e0

# CHECK-INST: madd.df %e4, %e8, %e8, %e2
# CHECK: encoding: [0x6b,0x28,0x62,0x48]
.code32
madd.df %e4, %e8, %e8, %e2

# CHECK-INST: madd.df %e4, %e8, %e8, %e4
# CHECK: encoding: [0x6b,0x48,0x62,0x48]
.code32
madd.df %e4, %e8, %e8, %e4

# CHECK-INST: madd.df %e4, %e8, %e8, %e8
# CHECK: encoding: [0x6b,0x88,0x62,0x48]
.code32
madd.df %e4, %e8, %e8, %e8

# CHECK-INST: madd.df %e8, %e0, %e0, %e0
# CHECK: encoding: [0x6b,0x00,0x62,0x80]
.code32
madd.df %e8, %e0, %e0, %e0

# CHECK-INST: madd.df %e8, %e0, %e0, %e2
# CHECK: encoding: [0x6b,0x20,0x62,0x80]
.code32
madd.df %e8, %e0, %e0, %e2

# CHECK-INST: madd.df %e8, %e0, %e0, %e4
# CHECK: encoding: [0x6b,0x40,0x62,0x80]
.code32
madd.df %e8, %e0, %e0, %e4

# CHECK-INST: madd.df %e8, %e0, %e0, %e8
# CHECK: encoding: [0x6b,0x80,0x62,0x80]
.code32
madd.df %e8, %e0, %e0, %e8

# CHECK-INST: madd.df %e8, %e0, %e2, %e0
# CHECK: encoding: [0x6b,0x02,0x62,0x80]
.code32
madd.df %e8, %e0, %e2, %e0

# CHECK-INST: madd.df %e8, %e0, %e2, %e2
# CHECK: encoding: [0x6b,0x22,0x62,0x80]
.code32
madd.df %e8, %e0, %e2, %e2

# CHECK-INST: madd.df %e8, %e0, %e2, %e4
# CHECK: encoding: [0x6b,0x42,0x62,0x80]
.code32
madd.df %e8, %e0, %e2, %e4

# CHECK-INST: madd.df %e8, %e0, %e2, %e8
# CHECK: encoding: [0x6b,0x82,0x62,0x80]
.code32
madd.df %e8, %e0, %e2, %e8

# CHECK-INST: madd.df %e8, %e0, %e4, %e0
# CHECK: encoding: [0x6b,0x04,0x62,0x80]
.code32
madd.df %e8, %e0, %e4, %e0

# CHECK-INST: madd.df %e8, %e0, %e4, %e2
# CHECK: encoding: [0x6b,0x24,0x62,0x80]
.code32
madd.df %e8, %e0, %e4, %e2

# CHECK-INST: madd.df %e8, %e0, %e4, %e4
# CHECK: encoding: [0x6b,0x44,0x62,0x80]
.code32
madd.df %e8, %e0, %e4, %e4

# CHECK-INST: madd.df %e8, %e0, %e4, %e8
# CHECK: encoding: [0x6b,0x84,0x62,0x80]
.code32
madd.df %e8, %e0, %e4, %e8

# CHECK-INST: madd.df %e8, %e0, %e8, %e0
# CHECK: encoding: [0x6b,0x08,0x62,0x80]
.code32
madd.df %e8, %e0, %e8, %e0

# CHECK-INST: madd.df %e8, %e0, %e8, %e2
# CHECK: encoding: [0x6b,0x28,0x62,0x80]
.code32
madd.df %e8, %e0, %e8, %e2

# CHECK-INST: madd.df %e8, %e0, %e8, %e4
# CHECK: encoding: [0x6b,0x48,0x62,0x80]
.code32
madd.df %e8, %e0, %e8, %e4

# CHECK-INST: madd.df %e8, %e0, %e8, %e8
# CHECK: encoding: [0x6b,0x88,0x62,0x80]
.code32
madd.df %e8, %e0, %e8, %e8

# CHECK-INST: madd.df %e8, %e2, %e0, %e0
# CHECK: encoding: [0x6b,0x00,0x62,0x82]
.code32
madd.df %e8, %e2, %e0, %e0

# CHECK-INST: madd.df %e8, %e2, %e0, %e2
# CHECK: encoding: [0x6b,0x20,0x62,0x82]
.code32
madd.df %e8, %e2, %e0, %e2

# CHECK-INST: madd.df %e8, %e2, %e0, %e4
# CHECK: encoding: [0x6b,0x40,0x62,0x82]
.code32
madd.df %e8, %e2, %e0, %e4

# CHECK-INST: madd.df %e8, %e2, %e0, %e8
# CHECK: encoding: [0x6b,0x80,0x62,0x82]
.code32
madd.df %e8, %e2, %e0, %e8

# CHECK-INST: madd.df %e8, %e2, %e2, %e0
# CHECK: encoding: [0x6b,0x02,0x62,0x82]
.code32
madd.df %e8, %e2, %e2, %e0

# CHECK-INST: madd.df %e8, %e2, %e2, %e2
# CHECK: encoding: [0x6b,0x22,0x62,0x82]
.code32
madd.df %e8, %e2, %e2, %e2

# CHECK-INST: madd.df %e8, %e2, %e2, %e4
# CHECK: encoding: [0x6b,0x42,0x62,0x82]
.code32
madd.df %e8, %e2, %e2, %e4

# CHECK-INST: madd.df %e8, %e2, %e2, %e8
# CHECK: encoding: [0x6b,0x82,0x62,0x82]
.code32
madd.df %e8, %e2, %e2, %e8

# CHECK-INST: madd.df %e8, %e2, %e4, %e0
# CHECK: encoding: [0x6b,0x04,0x62,0x82]
.code32
madd.df %e8, %e2, %e4, %e0

# CHECK-INST: madd.df %e8, %e2, %e4, %e2
# CHECK: encoding: [0x6b,0x24,0x62,0x82]
.code32
madd.df %e8, %e2, %e4, %e2

# CHECK-INST: madd.df %e8, %e2, %e4, %e4
# CHECK: encoding: [0x6b,0x44,0x62,0x82]
.code32
madd.df %e8, %e2, %e4, %e4

# CHECK-INST: madd.df %e8, %e2, %e4, %e8
# CHECK: encoding: [0x6b,0x84,0x62,0x82]
.code32
madd.df %e8, %e2, %e4, %e8

# CHECK-INST: madd.df %e8, %e2, %e8, %e0
# CHECK: encoding: [0x6b,0x08,0x62,0x82]
.code32
madd.df %e8, %e2, %e8, %e0

# CHECK-INST: madd.df %e8, %e2, %e8, %e2
# CHECK: encoding: [0x6b,0x28,0x62,0x82]
.code32
madd.df %e8, %e2, %e8, %e2

# CHECK-INST: madd.df %e8, %e2, %e8, %e4
# CHECK: encoding: [0x6b,0x48,0x62,0x82]
.code32
madd.df %e8, %e2, %e8, %e4

# CHECK-INST: madd.df %e8, %e2, %e8, %e8
# CHECK: encoding: [0x6b,0x88,0x62,0x82]
.code32
madd.df %e8, %e2, %e8, %e8

# CHECK-INST: madd.df %e8, %e4, %e0, %e0
# CHECK: encoding: [0x6b,0x00,0x62,0x84]
.code32
madd.df %e8, %e4, %e0, %e0

# CHECK-INST: madd.df %e8, %e4, %e0, %e2
# CHECK: encoding: [0x6b,0x20,0x62,0x84]
.code32
madd.df %e8, %e4, %e0, %e2

# CHECK-INST: madd.df %e8, %e4, %e0, %e4
# CHECK: encoding: [0x6b,0x40,0x62,0x84]
.code32
madd.df %e8, %e4, %e0, %e4

# CHECK-INST: madd.df %e8, %e4, %e0, %e8
# CHECK: encoding: [0x6b,0x80,0x62,0x84]
.code32
madd.df %e8, %e4, %e0, %e8

# CHECK-INST: madd.df %e8, %e4, %e2, %e0
# CHECK: encoding: [0x6b,0x02,0x62,0x84]
.code32
madd.df %e8, %e4, %e2, %e0

# CHECK-INST: madd.df %e8, %e4, %e2, %e2
# CHECK: encoding: [0x6b,0x22,0x62,0x84]
.code32
madd.df %e8, %e4, %e2, %e2

# CHECK-INST: madd.df %e8, %e4, %e2, %e4
# CHECK: encoding: [0x6b,0x42,0x62,0x84]
.code32
madd.df %e8, %e4, %e2, %e4

# CHECK-INST: madd.df %e8, %e4, %e2, %e8
# CHECK: encoding: [0x6b,0x82,0x62,0x84]
.code32
madd.df %e8, %e4, %e2, %e8

# CHECK-INST: madd.df %e8, %e4, %e4, %e0
# CHECK: encoding: [0x6b,0x04,0x62,0x84]
.code32
madd.df %e8, %e4, %e4, %e0

# CHECK-INST: madd.df %e8, %e4, %e4, %e2
# CHECK: encoding: [0x6b,0x24,0x62,0x84]
.code32
madd.df %e8, %e4, %e4, %e2

# CHECK-INST: madd.df %e8, %e4, %e4, %e4
# CHECK: encoding: [0x6b,0x44,0x62,0x84]
.code32
madd.df %e8, %e4, %e4, %e4

# CHECK-INST: madd.df %e8, %e4, %e4, %e8
# CHECK: encoding: [0x6b,0x84,0x62,0x84]
.code32
madd.df %e8, %e4, %e4, %e8

# CHECK-INST: madd.df %e8, %e4, %e8, %e0
# CHECK: encoding: [0x6b,0x08,0x62,0x84]
.code32
madd.df %e8, %e4, %e8, %e0

# CHECK-INST: madd.df %e8, %e4, %e8, %e2
# CHECK: encoding: [0x6b,0x28,0x62,0x84]
.code32
madd.df %e8, %e4, %e8, %e2

# CHECK-INST: madd.df %e8, %e4, %e8, %e4
# CHECK: encoding: [0x6b,0x48,0x62,0x84]
.code32
madd.df %e8, %e4, %e8, %e4

# CHECK-INST: madd.df %e8, %e4, %e8, %e8
# CHECK: encoding: [0x6b,0x88,0x62,0x84]
.code32
madd.df %e8, %e4, %e8, %e8

# CHECK-INST: madd.df %e8, %e8, %e0, %e0
# CHECK: encoding: [0x6b,0x00,0x62,0x88]
.code32
madd.df %e8, %e8, %e0, %e0

# CHECK-INST: madd.df %e8, %e8, %e0, %e2
# CHECK: encoding: [0x6b,0x20,0x62,0x88]
.code32
madd.df %e8, %e8, %e0, %e2

# CHECK-INST: madd.df %e8, %e8, %e0, %e4
# CHECK: encoding: [0x6b,0x40,0x62,0x88]
.code32
madd.df %e8, %e8, %e0, %e4

# CHECK-INST: madd.df %e8, %e8, %e0, %e8
# CHECK: encoding: [0x6b,0x80,0x62,0x88]
.code32
madd.df %e8, %e8, %e0, %e8

# CHECK-INST: madd.df %e8, %e8, %e2, %e0
# CHECK: encoding: [0x6b,0x02,0x62,0x88]
.code32
madd.df %e8, %e8, %e2, %e0

# CHECK-INST: madd.df %e8, %e8, %e2, %e2
# CHECK: encoding: [0x6b,0x22,0x62,0x88]
.code32
madd.df %e8, %e8, %e2, %e2

# CHECK-INST: madd.df %e8, %e8, %e2, %e4
# CHECK: encoding: [0x6b,0x42,0x62,0x88]
.code32
madd.df %e8, %e8, %e2, %e4

# CHECK-INST: madd.df %e8, %e8, %e2, %e8
# CHECK: encoding: [0x6b,0x82,0x62,0x88]
.code32
madd.df %e8, %e8, %e2, %e8

# CHECK-INST: madd.df %e8, %e8, %e4, %e0
# CHECK: encoding: [0x6b,0x04,0x62,0x88]
.code32
madd.df %e8, %e8, %e4, %e0

# CHECK-INST: madd.df %e8, %e8, %e4, %e2
# CHECK: encoding: [0x6b,0x24,0x62,0x88]
.code32
madd.df %e8, %e8, %e4, %e2

# CHECK-INST: madd.df %e8, %e8, %e4, %e4
# CHECK: encoding: [0x6b,0x44,0x62,0x88]
.code32
madd.df %e8, %e8, %e4, %e4

# CHECK-INST: madd.df %e8, %e8, %e4, %e8
# CHECK: encoding: [0x6b,0x84,0x62,0x88]
.code32
madd.df %e8, %e8, %e4, %e8

# CHECK-INST: madd.df %e8, %e8, %e8, %e0
# CHECK: encoding: [0x6b,0x08,0x62,0x88]
.code32
madd.df %e8, %e8, %e8, %e0

# CHECK-INST: madd.df %e8, %e8, %e8, %e2
# CHECK: encoding: [0x6b,0x28,0x62,0x88]
.code32
madd.df %e8, %e8, %e8, %e2

# CHECK-INST: madd.df %e8, %e8, %e8, %e4
# CHECK: encoding: [0x6b,0x48,0x62,0x88]
.code32
madd.df %e8, %e8, %e8, %e4

# CHECK-INST: madd.df %e8, %e8, %e8, %e8
# CHECK: encoding: [0x6b,0x88,0x62,0x88]
.code32
madd.df %e8, %e8, %e8, %e8


# CHECK-INST: msub.df %e0, %e0, %e0, %e0
# CHECK: encoding: [0x6b,0x00,0x72,0x00]
.code32
msub.df %e0, %e0, %e0, %e0

# CHECK-INST: msub.df %e0, %e0, %e0, %e2
# CHECK: encoding: [0x6b,0x20,0x72,0x00]
.code32
msub.df %e0, %e0, %e0, %e2

# CHECK-INST: msub.df %e0, %e0, %e0, %e4
# CHECK: encoding: [0x6b,0x40,0x72,0x00]
.code32
msub.df %e0, %e0, %e0, %e4

# CHECK-INST: msub.df %e0, %e0, %e0, %e8
# CHECK: encoding: [0x6b,0x80,0x72,0x00]
.code32
msub.df %e0, %e0, %e0, %e8

# CHECK-INST: msub.df %e0, %e0, %e2, %e0
# CHECK: encoding: [0x6b,0x02,0x72,0x00]
.code32
msub.df %e0, %e0, %e2, %e0

# CHECK-INST: msub.df %e0, %e0, %e2, %e2
# CHECK: encoding: [0x6b,0x22,0x72,0x00]
.code32
msub.df %e0, %e0, %e2, %e2

# CHECK-INST: msub.df %e0, %e0, %e2, %e4
# CHECK: encoding: [0x6b,0x42,0x72,0x00]
.code32
msub.df %e0, %e0, %e2, %e4

# CHECK-INST: msub.df %e0, %e0, %e2, %e8
# CHECK: encoding: [0x6b,0x82,0x72,0x00]
.code32
msub.df %e0, %e0, %e2, %e8

# CHECK-INST: msub.df %e0, %e0, %e4, %e0
# CHECK: encoding: [0x6b,0x04,0x72,0x00]
.code32
msub.df %e0, %e0, %e4, %e0

# CHECK-INST: msub.df %e0, %e0, %e4, %e2
# CHECK: encoding: [0x6b,0x24,0x72,0x00]
.code32
msub.df %e0, %e0, %e4, %e2

# CHECK-INST: msub.df %e0, %e0, %e4, %e4
# CHECK: encoding: [0x6b,0x44,0x72,0x00]
.code32
msub.df %e0, %e0, %e4, %e4

# CHECK-INST: msub.df %e0, %e0, %e4, %e8
# CHECK: encoding: [0x6b,0x84,0x72,0x00]
.code32
msub.df %e0, %e0, %e4, %e8

# CHECK-INST: msub.df %e0, %e0, %e8, %e0
# CHECK: encoding: [0x6b,0x08,0x72,0x00]
.code32
msub.df %e0, %e0, %e8, %e0

# CHECK-INST: msub.df %e0, %e0, %e8, %e2
# CHECK: encoding: [0x6b,0x28,0x72,0x00]
.code32
msub.df %e0, %e0, %e8, %e2

# CHECK-INST: msub.df %e0, %e0, %e8, %e4
# CHECK: encoding: [0x6b,0x48,0x72,0x00]
.code32
msub.df %e0, %e0, %e8, %e4

# CHECK-INST: msub.df %e0, %e0, %e8, %e8
# CHECK: encoding: [0x6b,0x88,0x72,0x00]
.code32
msub.df %e0, %e0, %e8, %e8

# CHECK-INST: msub.df %e0, %e2, %e0, %e0
# CHECK: encoding: [0x6b,0x00,0x72,0x02]
.code32
msub.df %e0, %e2, %e0, %e0

# CHECK-INST: msub.df %e0, %e2, %e0, %e2
# CHECK: encoding: [0x6b,0x20,0x72,0x02]
.code32
msub.df %e0, %e2, %e0, %e2

# CHECK-INST: msub.df %e0, %e2, %e0, %e4
# CHECK: encoding: [0x6b,0x40,0x72,0x02]
.code32
msub.df %e0, %e2, %e0, %e4

# CHECK-INST: msub.df %e0, %e2, %e0, %e8
# CHECK: encoding: [0x6b,0x80,0x72,0x02]
.code32
msub.df %e0, %e2, %e0, %e8

# CHECK-INST: msub.df %e0, %e2, %e2, %e0
# CHECK: encoding: [0x6b,0x02,0x72,0x02]
.code32
msub.df %e0, %e2, %e2, %e0

# CHECK-INST: msub.df %e0, %e2, %e2, %e2
# CHECK: encoding: [0x6b,0x22,0x72,0x02]
.code32
msub.df %e0, %e2, %e2, %e2

# CHECK-INST: msub.df %e0, %e2, %e2, %e4
# CHECK: encoding: [0x6b,0x42,0x72,0x02]
.code32
msub.df %e0, %e2, %e2, %e4

# CHECK-INST: msub.df %e0, %e2, %e2, %e8
# CHECK: encoding: [0x6b,0x82,0x72,0x02]
.code32
msub.df %e0, %e2, %e2, %e8

# CHECK-INST: msub.df %e0, %e2, %e4, %e0
# CHECK: encoding: [0x6b,0x04,0x72,0x02]
.code32
msub.df %e0, %e2, %e4, %e0

# CHECK-INST: msub.df %e0, %e2, %e4, %e2
# CHECK: encoding: [0x6b,0x24,0x72,0x02]
.code32
msub.df %e0, %e2, %e4, %e2

# CHECK-INST: msub.df %e0, %e2, %e4, %e4
# CHECK: encoding: [0x6b,0x44,0x72,0x02]
.code32
msub.df %e0, %e2, %e4, %e4

# CHECK-INST: msub.df %e0, %e2, %e4, %e8
# CHECK: encoding: [0x6b,0x84,0x72,0x02]
.code32
msub.df %e0, %e2, %e4, %e8

# CHECK-INST: msub.df %e0, %e2, %e8, %e0
# CHECK: encoding: [0x6b,0x08,0x72,0x02]
.code32
msub.df %e0, %e2, %e8, %e0

# CHECK-INST: msub.df %e0, %e2, %e8, %e2
# CHECK: encoding: [0x6b,0x28,0x72,0x02]
.code32
msub.df %e0, %e2, %e8, %e2

# CHECK-INST: msub.df %e0, %e2, %e8, %e4
# CHECK: encoding: [0x6b,0x48,0x72,0x02]
.code32
msub.df %e0, %e2, %e8, %e4

# CHECK-INST: msub.df %e0, %e2, %e8, %e8
# CHECK: encoding: [0x6b,0x88,0x72,0x02]
.code32
msub.df %e0, %e2, %e8, %e8

# CHECK-INST: msub.df %e0, %e4, %e0, %e0
# CHECK: encoding: [0x6b,0x00,0x72,0x04]
.code32
msub.df %e0, %e4, %e0, %e0

# CHECK-INST: msub.df %e0, %e4, %e0, %e2
# CHECK: encoding: [0x6b,0x20,0x72,0x04]
.code32
msub.df %e0, %e4, %e0, %e2

# CHECK-INST: msub.df %e0, %e4, %e0, %e4
# CHECK: encoding: [0x6b,0x40,0x72,0x04]
.code32
msub.df %e0, %e4, %e0, %e4

# CHECK-INST: msub.df %e0, %e4, %e0, %e8
# CHECK: encoding: [0x6b,0x80,0x72,0x04]
.code32
msub.df %e0, %e4, %e0, %e8

# CHECK-INST: msub.df %e0, %e4, %e2, %e0
# CHECK: encoding: [0x6b,0x02,0x72,0x04]
.code32
msub.df %e0, %e4, %e2, %e0

# CHECK-INST: msub.df %e0, %e4, %e2, %e2
# CHECK: encoding: [0x6b,0x22,0x72,0x04]
.code32
msub.df %e0, %e4, %e2, %e2

# CHECK-INST: msub.df %e0, %e4, %e2, %e4
# CHECK: encoding: [0x6b,0x42,0x72,0x04]
.code32
msub.df %e0, %e4, %e2, %e4

# CHECK-INST: msub.df %e0, %e4, %e2, %e8
# CHECK: encoding: [0x6b,0x82,0x72,0x04]
.code32
msub.df %e0, %e4, %e2, %e8

# CHECK-INST: msub.df %e0, %e4, %e4, %e0
# CHECK: encoding: [0x6b,0x04,0x72,0x04]
.code32
msub.df %e0, %e4, %e4, %e0

# CHECK-INST: msub.df %e0, %e4, %e4, %e2
# CHECK: encoding: [0x6b,0x24,0x72,0x04]
.code32
msub.df %e0, %e4, %e4, %e2

# CHECK-INST: msub.df %e0, %e4, %e4, %e4
# CHECK: encoding: [0x6b,0x44,0x72,0x04]
.code32
msub.df %e0, %e4, %e4, %e4

# CHECK-INST: msub.df %e0, %e4, %e4, %e8
# CHECK: encoding: [0x6b,0x84,0x72,0x04]
.code32
msub.df %e0, %e4, %e4, %e8

# CHECK-INST: msub.df %e0, %e4, %e8, %e0
# CHECK: encoding: [0x6b,0x08,0x72,0x04]
.code32
msub.df %e0, %e4, %e8, %e0

# CHECK-INST: msub.df %e0, %e4, %e8, %e2
# CHECK: encoding: [0x6b,0x28,0x72,0x04]
.code32
msub.df %e0, %e4, %e8, %e2

# CHECK-INST: msub.df %e0, %e4, %e8, %e4
# CHECK: encoding: [0x6b,0x48,0x72,0x04]
.code32
msub.df %e0, %e4, %e8, %e4

# CHECK-INST: msub.df %e0, %e4, %e8, %e8
# CHECK: encoding: [0x6b,0x88,0x72,0x04]
.code32
msub.df %e0, %e4, %e8, %e8

# CHECK-INST: msub.df %e0, %e8, %e0, %e0
# CHECK: encoding: [0x6b,0x00,0x72,0x08]
.code32
msub.df %e0, %e8, %e0, %e0

# CHECK-INST: msub.df %e0, %e8, %e0, %e2
# CHECK: encoding: [0x6b,0x20,0x72,0x08]
.code32
msub.df %e0, %e8, %e0, %e2

# CHECK-INST: msub.df %e0, %e8, %e0, %e4
# CHECK: encoding: [0x6b,0x40,0x72,0x08]
.code32
msub.df %e0, %e8, %e0, %e4

# CHECK-INST: msub.df %e0, %e8, %e0, %e8
# CHECK: encoding: [0x6b,0x80,0x72,0x08]
.code32
msub.df %e0, %e8, %e0, %e8

# CHECK-INST: msub.df %e0, %e8, %e2, %e0
# CHECK: encoding: [0x6b,0x02,0x72,0x08]
.code32
msub.df %e0, %e8, %e2, %e0

# CHECK-INST: msub.df %e0, %e8, %e2, %e2
# CHECK: encoding: [0x6b,0x22,0x72,0x08]
.code32
msub.df %e0, %e8, %e2, %e2

# CHECK-INST: msub.df %e0, %e8, %e2, %e4
# CHECK: encoding: [0x6b,0x42,0x72,0x08]
.code32
msub.df %e0, %e8, %e2, %e4

# CHECK-INST: msub.df %e0, %e8, %e2, %e8
# CHECK: encoding: [0x6b,0x82,0x72,0x08]
.code32
msub.df %e0, %e8, %e2, %e8

# CHECK-INST: msub.df %e0, %e8, %e4, %e0
# CHECK: encoding: [0x6b,0x04,0x72,0x08]
.code32
msub.df %e0, %e8, %e4, %e0

# CHECK-INST: msub.df %e0, %e8, %e4, %e2
# CHECK: encoding: [0x6b,0x24,0x72,0x08]
.code32
msub.df %e0, %e8, %e4, %e2

# CHECK-INST: msub.df %e0, %e8, %e4, %e4
# CHECK: encoding: [0x6b,0x44,0x72,0x08]
.code32
msub.df %e0, %e8, %e4, %e4

# CHECK-INST: msub.df %e0, %e8, %e4, %e8
# CHECK: encoding: [0x6b,0x84,0x72,0x08]
.code32
msub.df %e0, %e8, %e4, %e8

# CHECK-INST: msub.df %e0, %e8, %e8, %e0
# CHECK: encoding: [0x6b,0x08,0x72,0x08]
.code32
msub.df %e0, %e8, %e8, %e0

# CHECK-INST: msub.df %e0, %e8, %e8, %e2
# CHECK: encoding: [0x6b,0x28,0x72,0x08]
.code32
msub.df %e0, %e8, %e8, %e2

# CHECK-INST: msub.df %e0, %e8, %e8, %e4
# CHECK: encoding: [0x6b,0x48,0x72,0x08]
.code32
msub.df %e0, %e8, %e8, %e4

# CHECK-INST: msub.df %e0, %e8, %e8, %e8
# CHECK: encoding: [0x6b,0x88,0x72,0x08]
.code32
msub.df %e0, %e8, %e8, %e8

# CHECK-INST: msub.df %e2, %e0, %e0, %e0
# CHECK: encoding: [0x6b,0x00,0x72,0x20]
.code32
msub.df %e2, %e0, %e0, %e0

# CHECK-INST: msub.df %e2, %e0, %e0, %e2
# CHECK: encoding: [0x6b,0x20,0x72,0x20]
.code32
msub.df %e2, %e0, %e0, %e2

# CHECK-INST: msub.df %e2, %e0, %e0, %e4
# CHECK: encoding: [0x6b,0x40,0x72,0x20]
.code32
msub.df %e2, %e0, %e0, %e4

# CHECK-INST: msub.df %e2, %e0, %e0, %e8
# CHECK: encoding: [0x6b,0x80,0x72,0x20]
.code32
msub.df %e2, %e0, %e0, %e8

# CHECK-INST: msub.df %e2, %e0, %e2, %e0
# CHECK: encoding: [0x6b,0x02,0x72,0x20]
.code32
msub.df %e2, %e0, %e2, %e0

# CHECK-INST: msub.df %e2, %e0, %e2, %e2
# CHECK: encoding: [0x6b,0x22,0x72,0x20]
.code32
msub.df %e2, %e0, %e2, %e2

# CHECK-INST: msub.df %e2, %e0, %e2, %e4
# CHECK: encoding: [0x6b,0x42,0x72,0x20]
.code32
msub.df %e2, %e0, %e2, %e4

# CHECK-INST: msub.df %e2, %e0, %e2, %e8
# CHECK: encoding: [0x6b,0x82,0x72,0x20]
.code32
msub.df %e2, %e0, %e2, %e8

# CHECK-INST: msub.df %e2, %e0, %e4, %e0
# CHECK: encoding: [0x6b,0x04,0x72,0x20]
.code32
msub.df %e2, %e0, %e4, %e0

# CHECK-INST: msub.df %e2, %e0, %e4, %e2
# CHECK: encoding: [0x6b,0x24,0x72,0x20]
.code32
msub.df %e2, %e0, %e4, %e2

# CHECK-INST: msub.df %e2, %e0, %e4, %e4
# CHECK: encoding: [0x6b,0x44,0x72,0x20]
.code32
msub.df %e2, %e0, %e4, %e4

# CHECK-INST: msub.df %e2, %e0, %e4, %e8
# CHECK: encoding: [0x6b,0x84,0x72,0x20]
.code32
msub.df %e2, %e0, %e4, %e8

# CHECK-INST: msub.df %e2, %e0, %e8, %e0
# CHECK: encoding: [0x6b,0x08,0x72,0x20]
.code32
msub.df %e2, %e0, %e8, %e0

# CHECK-INST: msub.df %e2, %e0, %e8, %e2
# CHECK: encoding: [0x6b,0x28,0x72,0x20]
.code32
msub.df %e2, %e0, %e8, %e2

# CHECK-INST: msub.df %e2, %e0, %e8, %e4
# CHECK: encoding: [0x6b,0x48,0x72,0x20]
.code32
msub.df %e2, %e0, %e8, %e4

# CHECK-INST: msub.df %e2, %e0, %e8, %e8
# CHECK: encoding: [0x6b,0x88,0x72,0x20]
.code32
msub.df %e2, %e0, %e8, %e8

# CHECK-INST: msub.df %e2, %e2, %e0, %e0
# CHECK: encoding: [0x6b,0x00,0x72,0x22]
.code32
msub.df %e2, %e2, %e0, %e0

# CHECK-INST: msub.df %e2, %e2, %e0, %e2
# CHECK: encoding: [0x6b,0x20,0x72,0x22]
.code32
msub.df %e2, %e2, %e0, %e2

# CHECK-INST: msub.df %e2, %e2, %e0, %e4
# CHECK: encoding: [0x6b,0x40,0x72,0x22]
.code32
msub.df %e2, %e2, %e0, %e4

# CHECK-INST: msub.df %e2, %e2, %e0, %e8
# CHECK: encoding: [0x6b,0x80,0x72,0x22]
.code32
msub.df %e2, %e2, %e0, %e8

# CHECK-INST: msub.df %e2, %e2, %e2, %e0
# CHECK: encoding: [0x6b,0x02,0x72,0x22]
.code32
msub.df %e2, %e2, %e2, %e0

# CHECK-INST: msub.df %e2, %e2, %e2, %e2
# CHECK: encoding: [0x6b,0x22,0x72,0x22]
.code32
msub.df %e2, %e2, %e2, %e2

# CHECK-INST: msub.df %e2, %e2, %e2, %e4
# CHECK: encoding: [0x6b,0x42,0x72,0x22]
.code32
msub.df %e2, %e2, %e2, %e4

# CHECK-INST: msub.df %e2, %e2, %e2, %e8
# CHECK: encoding: [0x6b,0x82,0x72,0x22]
.code32
msub.df %e2, %e2, %e2, %e8

# CHECK-INST: msub.df %e2, %e2, %e4, %e0
# CHECK: encoding: [0x6b,0x04,0x72,0x22]
.code32
msub.df %e2, %e2, %e4, %e0

# CHECK-INST: msub.df %e2, %e2, %e4, %e2
# CHECK: encoding: [0x6b,0x24,0x72,0x22]
.code32
msub.df %e2, %e2, %e4, %e2

# CHECK-INST: msub.df %e2, %e2, %e4, %e4
# CHECK: encoding: [0x6b,0x44,0x72,0x22]
.code32
msub.df %e2, %e2, %e4, %e4

# CHECK-INST: msub.df %e2, %e2, %e4, %e8
# CHECK: encoding: [0x6b,0x84,0x72,0x22]
.code32
msub.df %e2, %e2, %e4, %e8

# CHECK-INST: msub.df %e2, %e2, %e8, %e0
# CHECK: encoding: [0x6b,0x08,0x72,0x22]
.code32
msub.df %e2, %e2, %e8, %e0

# CHECK-INST: msub.df %e2, %e2, %e8, %e2
# CHECK: encoding: [0x6b,0x28,0x72,0x22]
.code32
msub.df %e2, %e2, %e8, %e2

# CHECK-INST: msub.df %e2, %e2, %e8, %e4
# CHECK: encoding: [0x6b,0x48,0x72,0x22]
.code32
msub.df %e2, %e2, %e8, %e4

# CHECK-INST: msub.df %e2, %e2, %e8, %e8
# CHECK: encoding: [0x6b,0x88,0x72,0x22]
.code32
msub.df %e2, %e2, %e8, %e8

# CHECK-INST: msub.df %e2, %e4, %e0, %e0
# CHECK: encoding: [0x6b,0x00,0x72,0x24]
.code32
msub.df %e2, %e4, %e0, %e0

# CHECK-INST: msub.df %e2, %e4, %e0, %e2
# CHECK: encoding: [0x6b,0x20,0x72,0x24]
.code32
msub.df %e2, %e4, %e0, %e2

# CHECK-INST: msub.df %e2, %e4, %e0, %e4
# CHECK: encoding: [0x6b,0x40,0x72,0x24]
.code32
msub.df %e2, %e4, %e0, %e4

# CHECK-INST: msub.df %e2, %e4, %e0, %e8
# CHECK: encoding: [0x6b,0x80,0x72,0x24]
.code32
msub.df %e2, %e4, %e0, %e8

# CHECK-INST: msub.df %e2, %e4, %e2, %e0
# CHECK: encoding: [0x6b,0x02,0x72,0x24]
.code32
msub.df %e2, %e4, %e2, %e0

# CHECK-INST: msub.df %e2, %e4, %e2, %e2
# CHECK: encoding: [0x6b,0x22,0x72,0x24]
.code32
msub.df %e2, %e4, %e2, %e2

# CHECK-INST: msub.df %e2, %e4, %e2, %e4
# CHECK: encoding: [0x6b,0x42,0x72,0x24]
.code32
msub.df %e2, %e4, %e2, %e4

# CHECK-INST: msub.df %e2, %e4, %e2, %e8
# CHECK: encoding: [0x6b,0x82,0x72,0x24]
.code32
msub.df %e2, %e4, %e2, %e8

# CHECK-INST: msub.df %e2, %e4, %e4, %e0
# CHECK: encoding: [0x6b,0x04,0x72,0x24]
.code32
msub.df %e2, %e4, %e4, %e0

# CHECK-INST: msub.df %e2, %e4, %e4, %e2
# CHECK: encoding: [0x6b,0x24,0x72,0x24]
.code32
msub.df %e2, %e4, %e4, %e2

# CHECK-INST: msub.df %e2, %e4, %e4, %e4
# CHECK: encoding: [0x6b,0x44,0x72,0x24]
.code32
msub.df %e2, %e4, %e4, %e4

# CHECK-INST: msub.df %e2, %e4, %e4, %e8
# CHECK: encoding: [0x6b,0x84,0x72,0x24]
.code32
msub.df %e2, %e4, %e4, %e8

# CHECK-INST: msub.df %e2, %e4, %e8, %e0
# CHECK: encoding: [0x6b,0x08,0x72,0x24]
.code32
msub.df %e2, %e4, %e8, %e0

# CHECK-INST: msub.df %e2, %e4, %e8, %e2
# CHECK: encoding: [0x6b,0x28,0x72,0x24]
.code32
msub.df %e2, %e4, %e8, %e2

# CHECK-INST: msub.df %e2, %e4, %e8, %e4
# CHECK: encoding: [0x6b,0x48,0x72,0x24]
.code32
msub.df %e2, %e4, %e8, %e4

# CHECK-INST: msub.df %e2, %e4, %e8, %e8
# CHECK: encoding: [0x6b,0x88,0x72,0x24]
.code32
msub.df %e2, %e4, %e8, %e8

# CHECK-INST: msub.df %e2, %e8, %e0, %e0
# CHECK: encoding: [0x6b,0x00,0x72,0x28]
.code32
msub.df %e2, %e8, %e0, %e0

# CHECK-INST: msub.df %e2, %e8, %e0, %e2
# CHECK: encoding: [0x6b,0x20,0x72,0x28]
.code32
msub.df %e2, %e8, %e0, %e2

# CHECK-INST: msub.df %e2, %e8, %e0, %e4
# CHECK: encoding: [0x6b,0x40,0x72,0x28]
.code32
msub.df %e2, %e8, %e0, %e4

# CHECK-INST: msub.df %e2, %e8, %e0, %e8
# CHECK: encoding: [0x6b,0x80,0x72,0x28]
.code32
msub.df %e2, %e8, %e0, %e8

# CHECK-INST: msub.df %e2, %e8, %e2, %e0
# CHECK: encoding: [0x6b,0x02,0x72,0x28]
.code32
msub.df %e2, %e8, %e2, %e0

# CHECK-INST: msub.df %e2, %e8, %e2, %e2
# CHECK: encoding: [0x6b,0x22,0x72,0x28]
.code32
msub.df %e2, %e8, %e2, %e2

# CHECK-INST: msub.df %e2, %e8, %e2, %e4
# CHECK: encoding: [0x6b,0x42,0x72,0x28]
.code32
msub.df %e2, %e8, %e2, %e4

# CHECK-INST: msub.df %e2, %e8, %e2, %e8
# CHECK: encoding: [0x6b,0x82,0x72,0x28]
.code32
msub.df %e2, %e8, %e2, %e8

# CHECK-INST: msub.df %e2, %e8, %e4, %e0
# CHECK: encoding: [0x6b,0x04,0x72,0x28]
.code32
msub.df %e2, %e8, %e4, %e0

# CHECK-INST: msub.df %e2, %e8, %e4, %e2
# CHECK: encoding: [0x6b,0x24,0x72,0x28]
.code32
msub.df %e2, %e8, %e4, %e2

# CHECK-INST: msub.df %e2, %e8, %e4, %e4
# CHECK: encoding: [0x6b,0x44,0x72,0x28]
.code32
msub.df %e2, %e8, %e4, %e4

# CHECK-INST: msub.df %e2, %e8, %e4, %e8
# CHECK: encoding: [0x6b,0x84,0x72,0x28]
.code32
msub.df %e2, %e8, %e4, %e8

# CHECK-INST: msub.df %e2, %e8, %e8, %e0
# CHECK: encoding: [0x6b,0x08,0x72,0x28]
.code32
msub.df %e2, %e8, %e8, %e0

# CHECK-INST: msub.df %e2, %e8, %e8, %e2
# CHECK: encoding: [0x6b,0x28,0x72,0x28]
.code32
msub.df %e2, %e8, %e8, %e2

# CHECK-INST: msub.df %e2, %e8, %e8, %e4
# CHECK: encoding: [0x6b,0x48,0x72,0x28]
.code32
msub.df %e2, %e8, %e8, %e4

# CHECK-INST: msub.df %e2, %e8, %e8, %e8
# CHECK: encoding: [0x6b,0x88,0x72,0x28]
.code32
msub.df %e2, %e8, %e8, %e8

# CHECK-INST: msub.df %e4, %e0, %e0, %e0
# CHECK: encoding: [0x6b,0x00,0x72,0x40]
.code32
msub.df %e4, %e0, %e0, %e0

# CHECK-INST: msub.df %e4, %e0, %e0, %e2
# CHECK: encoding: [0x6b,0x20,0x72,0x40]
.code32
msub.df %e4, %e0, %e0, %e2

# CHECK-INST: msub.df %e4, %e0, %e0, %e4
# CHECK: encoding: [0x6b,0x40,0x72,0x40]
.code32
msub.df %e4, %e0, %e0, %e4

# CHECK-INST: msub.df %e4, %e0, %e0, %e8
# CHECK: encoding: [0x6b,0x80,0x72,0x40]
.code32
msub.df %e4, %e0, %e0, %e8

# CHECK-INST: msub.df %e4, %e0, %e2, %e0
# CHECK: encoding: [0x6b,0x02,0x72,0x40]
.code32
msub.df %e4, %e0, %e2, %e0

# CHECK-INST: msub.df %e4, %e0, %e2, %e2
# CHECK: encoding: [0x6b,0x22,0x72,0x40]
.code32
msub.df %e4, %e0, %e2, %e2

# CHECK-INST: msub.df %e4, %e0, %e2, %e4
# CHECK: encoding: [0x6b,0x42,0x72,0x40]
.code32
msub.df %e4, %e0, %e2, %e4

# CHECK-INST: msub.df %e4, %e0, %e2, %e8
# CHECK: encoding: [0x6b,0x82,0x72,0x40]
.code32
msub.df %e4, %e0, %e2, %e8

# CHECK-INST: msub.df %e4, %e0, %e4, %e0
# CHECK: encoding: [0x6b,0x04,0x72,0x40]
.code32
msub.df %e4, %e0, %e4, %e0

# CHECK-INST: msub.df %e4, %e0, %e4, %e2
# CHECK: encoding: [0x6b,0x24,0x72,0x40]
.code32
msub.df %e4, %e0, %e4, %e2

# CHECK-INST: msub.df %e4, %e0, %e4, %e4
# CHECK: encoding: [0x6b,0x44,0x72,0x40]
.code32
msub.df %e4, %e0, %e4, %e4

# CHECK-INST: msub.df %e4, %e0, %e4, %e8
# CHECK: encoding: [0x6b,0x84,0x72,0x40]
.code32
msub.df %e4, %e0, %e4, %e8

# CHECK-INST: msub.df %e4, %e0, %e8, %e0
# CHECK: encoding: [0x6b,0x08,0x72,0x40]
.code32
msub.df %e4, %e0, %e8, %e0

# CHECK-INST: msub.df %e4, %e0, %e8, %e2
# CHECK: encoding: [0x6b,0x28,0x72,0x40]
.code32
msub.df %e4, %e0, %e8, %e2

# CHECK-INST: msub.df %e4, %e0, %e8, %e4
# CHECK: encoding: [0x6b,0x48,0x72,0x40]
.code32
msub.df %e4, %e0, %e8, %e4

# CHECK-INST: msub.df %e4, %e0, %e8, %e8
# CHECK: encoding: [0x6b,0x88,0x72,0x40]
.code32
msub.df %e4, %e0, %e8, %e8

# CHECK-INST: msub.df %e4, %e2, %e0, %e0
# CHECK: encoding: [0x6b,0x00,0x72,0x42]
.code32
msub.df %e4, %e2, %e0, %e0

# CHECK-INST: msub.df %e4, %e2, %e0, %e2
# CHECK: encoding: [0x6b,0x20,0x72,0x42]
.code32
msub.df %e4, %e2, %e0, %e2

# CHECK-INST: msub.df %e4, %e2, %e0, %e4
# CHECK: encoding: [0x6b,0x40,0x72,0x42]
.code32
msub.df %e4, %e2, %e0, %e4

# CHECK-INST: msub.df %e4, %e2, %e0, %e8
# CHECK: encoding: [0x6b,0x80,0x72,0x42]
.code32
msub.df %e4, %e2, %e0, %e8

# CHECK-INST: msub.df %e4, %e2, %e2, %e0
# CHECK: encoding: [0x6b,0x02,0x72,0x42]
.code32
msub.df %e4, %e2, %e2, %e0

# CHECK-INST: msub.df %e4, %e2, %e2, %e2
# CHECK: encoding: [0x6b,0x22,0x72,0x42]
.code32
msub.df %e4, %e2, %e2, %e2

# CHECK-INST: msub.df %e4, %e2, %e2, %e4
# CHECK: encoding: [0x6b,0x42,0x72,0x42]
.code32
msub.df %e4, %e2, %e2, %e4

# CHECK-INST: msub.df %e4, %e2, %e2, %e8
# CHECK: encoding: [0x6b,0x82,0x72,0x42]
.code32
msub.df %e4, %e2, %e2, %e8

# CHECK-INST: msub.df %e4, %e2, %e4, %e0
# CHECK: encoding: [0x6b,0x04,0x72,0x42]
.code32
msub.df %e4, %e2, %e4, %e0

# CHECK-INST: msub.df %e4, %e2, %e4, %e2
# CHECK: encoding: [0x6b,0x24,0x72,0x42]
.code32
msub.df %e4, %e2, %e4, %e2

# CHECK-INST: msub.df %e4, %e2, %e4, %e4
# CHECK: encoding: [0x6b,0x44,0x72,0x42]
.code32
msub.df %e4, %e2, %e4, %e4

# CHECK-INST: msub.df %e4, %e2, %e4, %e8
# CHECK: encoding: [0x6b,0x84,0x72,0x42]
.code32
msub.df %e4, %e2, %e4, %e8

# CHECK-INST: msub.df %e4, %e2, %e8, %e0
# CHECK: encoding: [0x6b,0x08,0x72,0x42]
.code32
msub.df %e4, %e2, %e8, %e0

# CHECK-INST: msub.df %e4, %e2, %e8, %e2
# CHECK: encoding: [0x6b,0x28,0x72,0x42]
.code32
msub.df %e4, %e2, %e8, %e2

# CHECK-INST: msub.df %e4, %e2, %e8, %e4
# CHECK: encoding: [0x6b,0x48,0x72,0x42]
.code32
msub.df %e4, %e2, %e8, %e4

# CHECK-INST: msub.df %e4, %e2, %e8, %e8
# CHECK: encoding: [0x6b,0x88,0x72,0x42]
.code32
msub.df %e4, %e2, %e8, %e8

# CHECK-INST: msub.df %e4, %e4, %e0, %e0
# CHECK: encoding: [0x6b,0x00,0x72,0x44]
.code32
msub.df %e4, %e4, %e0, %e0

# CHECK-INST: msub.df %e4, %e4, %e0, %e2
# CHECK: encoding: [0x6b,0x20,0x72,0x44]
.code32
msub.df %e4, %e4, %e0, %e2

# CHECK-INST: msub.df %e4, %e4, %e0, %e4
# CHECK: encoding: [0x6b,0x40,0x72,0x44]
.code32
msub.df %e4, %e4, %e0, %e4

# CHECK-INST: msub.df %e4, %e4, %e0, %e8
# CHECK: encoding: [0x6b,0x80,0x72,0x44]
.code32
msub.df %e4, %e4, %e0, %e8

# CHECK-INST: msub.df %e4, %e4, %e2, %e0
# CHECK: encoding: [0x6b,0x02,0x72,0x44]
.code32
msub.df %e4, %e4, %e2, %e0

# CHECK-INST: msub.df %e4, %e4, %e2, %e2
# CHECK: encoding: [0x6b,0x22,0x72,0x44]
.code32
msub.df %e4, %e4, %e2, %e2

# CHECK-INST: msub.df %e4, %e4, %e2, %e4
# CHECK: encoding: [0x6b,0x42,0x72,0x44]
.code32
msub.df %e4, %e4, %e2, %e4

# CHECK-INST: msub.df %e4, %e4, %e2, %e8
# CHECK: encoding: [0x6b,0x82,0x72,0x44]
.code32
msub.df %e4, %e4, %e2, %e8

# CHECK-INST: msub.df %e4, %e4, %e4, %e0
# CHECK: encoding: [0x6b,0x04,0x72,0x44]
.code32
msub.df %e4, %e4, %e4, %e0

# CHECK-INST: msub.df %e4, %e4, %e4, %e2
# CHECK: encoding: [0x6b,0x24,0x72,0x44]
.code32
msub.df %e4, %e4, %e4, %e2

# CHECK-INST: msub.df %e4, %e4, %e4, %e4
# CHECK: encoding: [0x6b,0x44,0x72,0x44]
.code32
msub.df %e4, %e4, %e4, %e4

# CHECK-INST: msub.df %e4, %e4, %e4, %e8
# CHECK: encoding: [0x6b,0x84,0x72,0x44]
.code32
msub.df %e4, %e4, %e4, %e8

# CHECK-INST: msub.df %e4, %e4, %e8, %e0
# CHECK: encoding: [0x6b,0x08,0x72,0x44]
.code32
msub.df %e4, %e4, %e8, %e0

# CHECK-INST: msub.df %e4, %e4, %e8, %e2
# CHECK: encoding: [0x6b,0x28,0x72,0x44]
.code32
msub.df %e4, %e4, %e8, %e2

# CHECK-INST: msub.df %e4, %e4, %e8, %e4
# CHECK: encoding: [0x6b,0x48,0x72,0x44]
.code32
msub.df %e4, %e4, %e8, %e4

# CHECK-INST: msub.df %e4, %e4, %e8, %e8
# CHECK: encoding: [0x6b,0x88,0x72,0x44]
.code32
msub.df %e4, %e4, %e8, %e8

# CHECK-INST: msub.df %e4, %e8, %e0, %e0
# CHECK: encoding: [0x6b,0x00,0x72,0x48]
.code32
msub.df %e4, %e8, %e0, %e0

# CHECK-INST: msub.df %e4, %e8, %e0, %e2
# CHECK: encoding: [0x6b,0x20,0x72,0x48]
.code32
msub.df %e4, %e8, %e0, %e2

# CHECK-INST: msub.df %e4, %e8, %e0, %e4
# CHECK: encoding: [0x6b,0x40,0x72,0x48]
.code32
msub.df %e4, %e8, %e0, %e4

# CHECK-INST: msub.df %e4, %e8, %e0, %e8
# CHECK: encoding: [0x6b,0x80,0x72,0x48]
.code32
msub.df %e4, %e8, %e0, %e8

# CHECK-INST: msub.df %e4, %e8, %e2, %e0
# CHECK: encoding: [0x6b,0x02,0x72,0x48]
.code32
msub.df %e4, %e8, %e2, %e0

# CHECK-INST: msub.df %e4, %e8, %e2, %e2
# CHECK: encoding: [0x6b,0x22,0x72,0x48]
.code32
msub.df %e4, %e8, %e2, %e2

# CHECK-INST: msub.df %e4, %e8, %e2, %e4
# CHECK: encoding: [0x6b,0x42,0x72,0x48]
.code32
msub.df %e4, %e8, %e2, %e4

# CHECK-INST: msub.df %e4, %e8, %e2, %e8
# CHECK: encoding: [0x6b,0x82,0x72,0x48]
.code32
msub.df %e4, %e8, %e2, %e8

# CHECK-INST: msub.df %e4, %e8, %e4, %e0
# CHECK: encoding: [0x6b,0x04,0x72,0x48]
.code32
msub.df %e4, %e8, %e4, %e0

# CHECK-INST: msub.df %e4, %e8, %e4, %e2
# CHECK: encoding: [0x6b,0x24,0x72,0x48]
.code32
msub.df %e4, %e8, %e4, %e2

# CHECK-INST: msub.df %e4, %e8, %e4, %e4
# CHECK: encoding: [0x6b,0x44,0x72,0x48]
.code32
msub.df %e4, %e8, %e4, %e4

# CHECK-INST: msub.df %e4, %e8, %e4, %e8
# CHECK: encoding: [0x6b,0x84,0x72,0x48]
.code32
msub.df %e4, %e8, %e4, %e8

# CHECK-INST: msub.df %e4, %e8, %e8, %e0
# CHECK: encoding: [0x6b,0x08,0x72,0x48]
.code32
msub.df %e4, %e8, %e8, %e0

# CHECK-INST: msub.df %e4, %e8, %e8, %e2
# CHECK: encoding: [0x6b,0x28,0x72,0x48]
.code32
msub.df %e4, %e8, %e8, %e2

# CHECK-INST: msub.df %e4, %e8, %e8, %e4
# CHECK: encoding: [0x6b,0x48,0x72,0x48]
.code32
msub.df %e4, %e8, %e8, %e4

# CHECK-INST: msub.df %e4, %e8, %e8, %e8
# CHECK: encoding: [0x6b,0x88,0x72,0x48]
.code32
msub.df %e4, %e8, %e8, %e8

# CHECK-INST: msub.df %e8, %e0, %e0, %e0
# CHECK: encoding: [0x6b,0x00,0x72,0x80]
.code32
msub.df %e8, %e0, %e0, %e0

# CHECK-INST: msub.df %e8, %e0, %e0, %e2
# CHECK: encoding: [0x6b,0x20,0x72,0x80]
.code32
msub.df %e8, %e0, %e0, %e2

# CHECK-INST: msub.df %e8, %e0, %e0, %e4
# CHECK: encoding: [0x6b,0x40,0x72,0x80]
.code32
msub.df %e8, %e0, %e0, %e4

# CHECK-INST: msub.df %e8, %e0, %e0, %e8
# CHECK: encoding: [0x6b,0x80,0x72,0x80]
.code32
msub.df %e8, %e0, %e0, %e8

# CHECK-INST: msub.df %e8, %e0, %e2, %e0
# CHECK: encoding: [0x6b,0x02,0x72,0x80]
.code32
msub.df %e8, %e0, %e2, %e0

# CHECK-INST: msub.df %e8, %e0, %e2, %e2
# CHECK: encoding: [0x6b,0x22,0x72,0x80]
.code32
msub.df %e8, %e0, %e2, %e2

# CHECK-INST: msub.df %e8, %e0, %e2, %e4
# CHECK: encoding: [0x6b,0x42,0x72,0x80]
.code32
msub.df %e8, %e0, %e2, %e4

# CHECK-INST: msub.df %e8, %e0, %e2, %e8
# CHECK: encoding: [0x6b,0x82,0x72,0x80]
.code32
msub.df %e8, %e0, %e2, %e8

# CHECK-INST: msub.df %e8, %e0, %e4, %e0
# CHECK: encoding: [0x6b,0x04,0x72,0x80]
.code32
msub.df %e8, %e0, %e4, %e0

# CHECK-INST: msub.df %e8, %e0, %e4, %e2
# CHECK: encoding: [0x6b,0x24,0x72,0x80]
.code32
msub.df %e8, %e0, %e4, %e2

# CHECK-INST: msub.df %e8, %e0, %e4, %e4
# CHECK: encoding: [0x6b,0x44,0x72,0x80]
.code32
msub.df %e8, %e0, %e4, %e4

# CHECK-INST: msub.df %e8, %e0, %e4, %e8
# CHECK: encoding: [0x6b,0x84,0x72,0x80]
.code32
msub.df %e8, %e0, %e4, %e8

# CHECK-INST: msub.df %e8, %e0, %e8, %e0
# CHECK: encoding: [0x6b,0x08,0x72,0x80]
.code32
msub.df %e8, %e0, %e8, %e0

# CHECK-INST: msub.df %e8, %e0, %e8, %e2
# CHECK: encoding: [0x6b,0x28,0x72,0x80]
.code32
msub.df %e8, %e0, %e8, %e2

# CHECK-INST: msub.df %e8, %e0, %e8, %e4
# CHECK: encoding: [0x6b,0x48,0x72,0x80]
.code32
msub.df %e8, %e0, %e8, %e4

# CHECK-INST: msub.df %e8, %e0, %e8, %e8
# CHECK: encoding: [0x6b,0x88,0x72,0x80]
.code32
msub.df %e8, %e0, %e8, %e8

# CHECK-INST: msub.df %e8, %e2, %e0, %e0
# CHECK: encoding: [0x6b,0x00,0x72,0x82]
.code32
msub.df %e8, %e2, %e0, %e0

# CHECK-INST: msub.df %e8, %e2, %e0, %e2
# CHECK: encoding: [0x6b,0x20,0x72,0x82]
.code32
msub.df %e8, %e2, %e0, %e2

# CHECK-INST: msub.df %e8, %e2, %e0, %e4
# CHECK: encoding: [0x6b,0x40,0x72,0x82]
.code32
msub.df %e8, %e2, %e0, %e4

# CHECK-INST: msub.df %e8, %e2, %e0, %e8
# CHECK: encoding: [0x6b,0x80,0x72,0x82]
.code32
msub.df %e8, %e2, %e0, %e8

# CHECK-INST: msub.df %e8, %e2, %e2, %e0
# CHECK: encoding: [0x6b,0x02,0x72,0x82]
.code32
msub.df %e8, %e2, %e2, %e0

# CHECK-INST: msub.df %e8, %e2, %e2, %e2
# CHECK: encoding: [0x6b,0x22,0x72,0x82]
.code32
msub.df %e8, %e2, %e2, %e2

# CHECK-INST: msub.df %e8, %e2, %e2, %e4
# CHECK: encoding: [0x6b,0x42,0x72,0x82]
.code32
msub.df %e8, %e2, %e2, %e4

# CHECK-INST: msub.df %e8, %e2, %e2, %e8
# CHECK: encoding: [0x6b,0x82,0x72,0x82]
.code32
msub.df %e8, %e2, %e2, %e8

# CHECK-INST: msub.df %e8, %e2, %e4, %e0
# CHECK: encoding: [0x6b,0x04,0x72,0x82]
.code32
msub.df %e8, %e2, %e4, %e0

# CHECK-INST: msub.df %e8, %e2, %e4, %e2
# CHECK: encoding: [0x6b,0x24,0x72,0x82]
.code32
msub.df %e8, %e2, %e4, %e2

# CHECK-INST: msub.df %e8, %e2, %e4, %e4
# CHECK: encoding: [0x6b,0x44,0x72,0x82]
.code32
msub.df %e8, %e2, %e4, %e4

# CHECK-INST: msub.df %e8, %e2, %e4, %e8
# CHECK: encoding: [0x6b,0x84,0x72,0x82]
.code32
msub.df %e8, %e2, %e4, %e8

# CHECK-INST: msub.df %e8, %e2, %e8, %e0
# CHECK: encoding: [0x6b,0x08,0x72,0x82]
.code32
msub.df %e8, %e2, %e8, %e0

# CHECK-INST: msub.df %e8, %e2, %e8, %e2
# CHECK: encoding: [0x6b,0x28,0x72,0x82]
.code32
msub.df %e8, %e2, %e8, %e2

# CHECK-INST: msub.df %e8, %e2, %e8, %e4
# CHECK: encoding: [0x6b,0x48,0x72,0x82]
.code32
msub.df %e8, %e2, %e8, %e4

# CHECK-INST: msub.df %e8, %e2, %e8, %e8
# CHECK: encoding: [0x6b,0x88,0x72,0x82]
.code32
msub.df %e8, %e2, %e8, %e8

# CHECK-INST: msub.df %e8, %e4, %e0, %e0
# CHECK: encoding: [0x6b,0x00,0x72,0x84]
.code32
msub.df %e8, %e4, %e0, %e0

# CHECK-INST: msub.df %e8, %e4, %e0, %e2
# CHECK: encoding: [0x6b,0x20,0x72,0x84]
.code32
msub.df %e8, %e4, %e0, %e2

# CHECK-INST: msub.df %e8, %e4, %e0, %e4
# CHECK: encoding: [0x6b,0x40,0x72,0x84]
.code32
msub.df %e8, %e4, %e0, %e4

# CHECK-INST: msub.df %e8, %e4, %e0, %e8
# CHECK: encoding: [0x6b,0x80,0x72,0x84]
.code32
msub.df %e8, %e4, %e0, %e8

# CHECK-INST: msub.df %e8, %e4, %e2, %e0
# CHECK: encoding: [0x6b,0x02,0x72,0x84]
.code32
msub.df %e8, %e4, %e2, %e0

# CHECK-INST: msub.df %e8, %e4, %e2, %e2
# CHECK: encoding: [0x6b,0x22,0x72,0x84]
.code32
msub.df %e8, %e4, %e2, %e2

# CHECK-INST: msub.df %e8, %e4, %e2, %e4
# CHECK: encoding: [0x6b,0x42,0x72,0x84]
.code32
msub.df %e8, %e4, %e2, %e4

# CHECK-INST: msub.df %e8, %e4, %e2, %e8
# CHECK: encoding: [0x6b,0x82,0x72,0x84]
.code32
msub.df %e8, %e4, %e2, %e8

# CHECK-INST: msub.df %e8, %e4, %e4, %e0
# CHECK: encoding: [0x6b,0x04,0x72,0x84]
.code32
msub.df %e8, %e4, %e4, %e0

# CHECK-INST: msub.df %e8, %e4, %e4, %e2
# CHECK: encoding: [0x6b,0x24,0x72,0x84]
.code32
msub.df %e8, %e4, %e4, %e2

# CHECK-INST: msub.df %e8, %e4, %e4, %e4
# CHECK: encoding: [0x6b,0x44,0x72,0x84]
.code32
msub.df %e8, %e4, %e4, %e4

# CHECK-INST: msub.df %e8, %e4, %e4, %e8
# CHECK: encoding: [0x6b,0x84,0x72,0x84]
.code32
msub.df %e8, %e4, %e4, %e8

# CHECK-INST: msub.df %e8, %e4, %e8, %e0
# CHECK: encoding: [0x6b,0x08,0x72,0x84]
.code32
msub.df %e8, %e4, %e8, %e0

# CHECK-INST: msub.df %e8, %e4, %e8, %e2
# CHECK: encoding: [0x6b,0x28,0x72,0x84]
.code32
msub.df %e8, %e4, %e8, %e2

# CHECK-INST: msub.df %e8, %e4, %e8, %e4
# CHECK: encoding: [0x6b,0x48,0x72,0x84]
.code32
msub.df %e8, %e4, %e8, %e4

# CHECK-INST: msub.df %e8, %e4, %e8, %e8
# CHECK: encoding: [0x6b,0x88,0x72,0x84]
.code32
msub.df %e8, %e4, %e8, %e8

# CHECK-INST: msub.df %e8, %e8, %e0, %e0
# CHECK: encoding: [0x6b,0x00,0x72,0x88]
.code32
msub.df %e8, %e8, %e0, %e0

# CHECK-INST: msub.df %e8, %e8, %e0, %e2
# CHECK: encoding: [0x6b,0x20,0x72,0x88]
.code32
msub.df %e8, %e8, %e0, %e2

# CHECK-INST: msub.df %e8, %e8, %e0, %e4
# CHECK: encoding: [0x6b,0x40,0x72,0x88]
.code32
msub.df %e8, %e8, %e0, %e4

# CHECK-INST: msub.df %e8, %e8, %e0, %e8
# CHECK: encoding: [0x6b,0x80,0x72,0x88]
.code32
msub.df %e8, %e8, %e0, %e8

# CHECK-INST: msub.df %e8, %e8, %e2, %e0
# CHECK: encoding: [0x6b,0x02,0x72,0x88]
.code32
msub.df %e8, %e8, %e2, %e0

# CHECK-INST: msub.df %e8, %e8, %e2, %e2
# CHECK: encoding: [0x6b,0x22,0x72,0x88]
.code32
msub.df %e8, %e8, %e2, %e2

# CHECK-INST: msub.df %e8, %e8, %e2, %e4
# CHECK: encoding: [0x6b,0x42,0x72,0x88]
.code32
msub.df %e8, %e8, %e2, %e4

# CHECK-INST: msub.df %e8, %e8, %e2, %e8
# CHECK: encoding: [0x6b,0x82,0x72,0x88]
.code32
msub.df %e8, %e8, %e2, %e8

# CHECK-INST: msub.df %e8, %e8, %e4, %e0
# CHECK: encoding: [0x6b,0x04,0x72,0x88]
.code32
msub.df %e8, %e8, %e4, %e0

# CHECK-INST: msub.df %e8, %e8, %e4, %e2
# CHECK: encoding: [0x6b,0x24,0x72,0x88]
.code32
msub.df %e8, %e8, %e4, %e2

# CHECK-INST: msub.df %e8, %e8, %e4, %e4
# CHECK: encoding: [0x6b,0x44,0x72,0x88]
.code32
msub.df %e8, %e8, %e4, %e4

# CHECK-INST: msub.df %e8, %e8, %e4, %e8
# CHECK: encoding: [0x6b,0x84,0x72,0x88]
.code32
msub.df %e8, %e8, %e4, %e8

# CHECK-INST: msub.df %e8, %e8, %e8, %e0
# CHECK: encoding: [0x6b,0x08,0x72,0x88]
.code32
msub.df %e8, %e8, %e8, %e0

# CHECK-INST: msub.df %e8, %e8, %e8, %e2
# CHECK: encoding: [0x6b,0x28,0x72,0x88]
.code32
msub.df %e8, %e8, %e8, %e2

# CHECK-INST: msub.df %e8, %e8, %e8, %e4
# CHECK: encoding: [0x6b,0x48,0x72,0x88]
.code32
msub.df %e8, %e8, %e8, %e4

# CHECK-INST: msub.df %e8, %e8, %e8, %e8
# CHECK: encoding: [0x6b,0x88,0x72,0x88]
.code32
msub.df %e8, %e8, %e8, %e8
