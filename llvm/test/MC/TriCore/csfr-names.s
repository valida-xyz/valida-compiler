# RUN: llvm-mc %s -triple=tricore -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK-INST,CHECK %s
# RUN: llvm-mc -filetype=obj -triple=tricore < %s \
# RUN:     | llvm-objdump -d - \
# RUN:     | FileCheck -check-prefix=CHECK-INST %s

# biv
# name
# CHECK-INST: mfcr %d0, $biv
# CHECK-ENC: encoding: [0x4d,0x00,0xE2,0x0F]
# uimm16
# CHECK-INST: mfcr %d1, $biv
# CHECK-ENC: encoding: [0x4d,0x00,0xE2,0x1F]
# name
mfcr %d0, $biv
# uimm16
mfcr %d1, 0xFE20

# btv
# name
# CHECK-INST: mfcr %d0, $btv
# CHECK-ENC: encoding: [0x4d,0x40,0xE2,0x0F]
# uimm16
# CHECK-INST: mfcr %d1, $btv
# CHECK-ENC: encoding: [0x4d,0x40,0xE2,0x1F]
# name
mfcr %d0, $btv
# uimm16
mfcr %d1, 0xFE24

# ccnt
# name
# CHECK-INST: mfcr %d0, $ccnt
# CHECK-ENC: encoding: [0x4d,0x40,0xC0,0x0F]
# uimm16
# CHECK-INST: mfcr %d1, $ccnt
# CHECK-ENC: encoding: [0x4d,0x40,0xC0,0x1F]
# name
mfcr %d0, $ccnt
# uimm16
mfcr %d1, 0xFC04

# cctrl
# name
# CHECK-INST: mfcr %d0, $cctrl
# CHECK-ENC: encoding: [0x4d,0x00,0xC0,0x0F]
# uimm16
# CHECK-INST: mfcr %d1, $cctrl
# CHECK-ENC: encoding: [0x4d,0x00,0xC0,0x1F]
# name
mfcr %d0, $cctrl
# uimm16
mfcr %d1, 0xFC00

# compat
# name
# CHECK-INST: mfcr %d0, $compat
# CHECK-ENC: encoding: [0x4d,0x00,0x40,0x09]
# uimm16
# CHECK-INST: mfcr %d1, $compat
# CHECK-ENC: encoding: [0x4d,0x00,0x40,0x19]
# name
mfcr %d0, $compat
# uimm16
mfcr %d1, 0x9400

# core_id
# name
# CHECK-INST: mfcr %d0, $core_id
# CHECK-ENC: encoding: [0x4d,0xC0,0xE1,0x0F]
# uimm16
# CHECK-INST: mfcr %d1, $core_id
# CHECK-ENC: encoding: [0x4d,0xC0,0xE1,0x1F]
# name
mfcr %d0, $core_id
# uimm16
mfcr %d1, 0xFE1C

# cpr0_l
# name
# CHECK-INST: mfcr %d0, $cpr0_l
# CHECK-ENC: encoding: [0x4d,0x00,0x00,0x0D]
# uimm16
# CHECK-INST: mfcr %d1, $cpr0_l
# CHECK-ENC: encoding: [0x4d,0x00,0x00,0x1D]
# name
mfcr %d0, $cpr0_l
# uimm16
mfcr %d1, 0xD000

# cpr0_u
# name
# CHECK-INST: mfcr %d0, $cpr0_u
# CHECK-ENC: encoding: [0x4d,0x40,0x00,0x0D]
# uimm16
# CHECK-INST: mfcr %d1, $cpr0_u
# CHECK-ENC: encoding: [0x4d,0x40,0x00,0x1D]
# name
mfcr %d0, $cpr0_u
# uimm16
mfcr %d1, 0xD004

# cpr1_l
# name
# CHECK-INST: mfcr %d0, $cpr1_l
# CHECK-ENC: encoding: [0x4d,0x80,0x00,0x0D]
# uimm16
# CHECK-INST: mfcr %d1, $cpr1_l
# CHECK-ENC: encoding: [0x4d,0x80,0x00,0x1D]
# name
mfcr %d0, $cpr1_l
# uimm16
mfcr %d1, 0xD008

# cpr1_u
# name
# CHECK-INST: mfcr %d0, $cpr1_u
# CHECK-ENC: encoding: [0x4d,0xC0,0x00,0x0D]
# uimm16
# CHECK-INST: mfcr %d1, $cpr1_u
# CHECK-ENC: encoding: [0x4d,0xC0,0x00,0x1D]
# name
mfcr %d0, $cpr1_u
# uimm16
mfcr %d1, 0xD00C

# cpr2_l
# name
# CHECK-INST: mfcr %d0, $cpr2_l
# CHECK-ENC: encoding: [0x4d,0x00,0x01,0x0D]
# uimm16
# CHECK-INST: mfcr %d1, $cpr2_l
# CHECK-ENC: encoding: [0x4d,0x00,0x01,0x1D]
# name
mfcr %d0, $cpr2_l
# uimm16
mfcr %d1, 0xD010

# cpr2_u
# name
# CHECK-INST: mfcr %d0, $cpr2_u
# CHECK-ENC: encoding: [0x4d,0x40,0x01,0x0D]
# uimm16
# CHECK-INST: mfcr %d1, $cpr2_u
# CHECK-ENC: encoding: [0x4d,0x40,0x01,0x1D]
# name
mfcr %d0, $cpr2_u
# uimm16
mfcr %d1, 0xD014

# cpr3_l
# name
# CHECK-INST: mfcr %d0, $cpr3_l
# CHECK-ENC: encoding: [0x4d,0x80,0x01,0x0D]
# uimm16
# CHECK-INST: mfcr %d1, $cpr3_l
# CHECK-ENC: encoding: [0x4d,0x80,0x01,0x1D]
# name
mfcr %d0, $cpr3_l
# uimm16
mfcr %d1, 0xD018

# cpr3_u
# name
# CHECK-INST: mfcr %d0, $cpr3_u
# CHECK-ENC: encoding: [0x4d,0xC0,0x01,0x0D]
# uimm16
# CHECK-INST: mfcr %d1, $cpr3_u
# CHECK-ENC: encoding: [0x4d,0xC0,0x01,0x1D]
# name
mfcr %d0, $cpr3_u
# uimm16
mfcr %d1, 0xD01C

# cpr4_l
# name
# CHECK-INST: mfcr %d0, $cpr4_l
# CHECK-ENC: encoding: [0x4d,0x00,0x02,0x0D]
# uimm16
# CHECK-INST: mfcr %d1, $cpr4_l
# CHECK-ENC: encoding: [0x4d,0x00,0x02,0x1D]
# name
mfcr %d0, $cpr4_l
# uimm16
mfcr %d1, 0xD020

# cpr4_u
# name
# CHECK-INST: mfcr %d0, $cpr4_u
# CHECK-ENC: encoding: [0x4d,0x40,0x02,0x0D]
# uimm16
# CHECK-INST: mfcr %d1, $cpr4_u
# CHECK-ENC: encoding: [0x4d,0x40,0x02,0x1D]
# name
mfcr %d0, $cpr4_u
# uimm16
mfcr %d1, 0xD024

# cpr5_l
# name
# CHECK-INST: mfcr %d0, $cpr5_l
# CHECK-ENC: encoding: [0x4d,0x80,0x02,0x0D]
# uimm16
# CHECK-INST: mfcr %d1, $cpr5_l
# CHECK-ENC: encoding: [0x4d,0x80,0x02,0x1D]
# name
mfcr %d0, $cpr5_l
# uimm16
mfcr %d1, 0xD028

# cpr5_u
# name
# CHECK-INST: mfcr %d0, $cpr5_u
# CHECK-ENC: encoding: [0x4d,0xC0,0x02,0x0D]
# uimm16
# CHECK-INST: mfcr %d1, $cpr5_u
# CHECK-ENC: encoding: [0x4d,0xC0,0x02,0x1D]
# name
mfcr %d0, $cpr5_u
# uimm16
mfcr %d1, 0xD02C

# cpr6_l
# name
# CHECK-INST: mfcr %d0, $cpr6_l
# CHECK-ENC: encoding: [0x4d,0x00,0x03,0x0D]
# uimm16
# CHECK-INST: mfcr %d1, $cpr6_l
# CHECK-ENC: encoding: [0x4d,0x00,0x03,0x1D]
# name
mfcr %d0, $cpr6_l
# uimm16
mfcr %d1, 0xD030

# cpr6_u
# name
# CHECK-INST: mfcr %d0, $cpr6_u
# CHECK-ENC: encoding: [0x4d,0x40,0x03,0x0D]
# uimm16
# CHECK-INST: mfcr %d1, $cpr6_u
# CHECK-ENC: encoding: [0x4d,0x40,0x03,0x1D]
# name
mfcr %d0, $cpr6_u
# uimm16
mfcr %d1, 0xD034

# cpr7_l
# name
# CHECK-INST: mfcr %d0, $cpr7_l
# CHECK-ENC: encoding: [0x4d,0x80,0x03,0x0D]
# uimm16
# CHECK-INST: mfcr %d1, $cpr7_l
# CHECK-ENC: encoding: [0x4d,0x80,0x03,0x1D]
# name
mfcr %d0, $cpr7_l
# uimm16
mfcr %d1, 0xD038

# cpr7_u
# name
# CHECK-INST: mfcr %d0, $cpr7_u
# CHECK-ENC: encoding: [0x4d,0xC0,0x03,0x0D]
# uimm16
# CHECK-INST: mfcr %d1, $cpr7_u
# CHECK-ENC: encoding: [0x4d,0xC0,0x03,0x1D]
# name
mfcr %d0, $cpr7_u
# uimm16
mfcr %d1, 0xD03C

# cpu_id
# name
# CHECK-INST: mfcr %d0, $cpu_id
# CHECK-ENC: encoding: [0x4d,0x80,0xE1,0x0F]
# uimm16
# CHECK-INST: mfcr %d1, $cpu_id
# CHECK-ENC: encoding: [0x4d,0x80,0xE1,0x1F]
# name
mfcr %d0, $cpu_id
# uimm16
mfcr %d1, 0xFE18

# cpxe0
# name
# CHECK-INST: mfcr %d0, $cpxe0
# CHECK-ENC: encoding: [0x4d,0x00,0x00,0x0E]
# uimm16
# CHECK-INST: mfcr %d1, $cpxe0
# CHECK-ENC: encoding: [0x4d,0x00,0x00,0x1E]
# name
mfcr %d0, $cpxe0
# uimm16
mfcr %d1, 0xE000

# cpxe1
# name
# CHECK-INST: mfcr %d0, $cpxe1
# CHECK-ENC: encoding: [0x4d,0x40,0x00,0x0E]
# uimm16
# CHECK-INST: mfcr %d1, $cpxe1
# CHECK-ENC: encoding: [0x4d,0x40,0x00,0x1E]
# name
mfcr %d0, $cpxe1
# uimm16
mfcr %d1, 0xE004

# cpxe2
# name
# CHECK-INST: mfcr %d0, $cpxe2
# CHECK-ENC: encoding: [0x4d,0x80,0x00,0x0E]
# uimm16
# CHECK-INST: mfcr %d1, $cpxe2
# CHECK-ENC: encoding: [0x4d,0x80,0x00,0x1E]
# name
mfcr %d0, $cpxe2
# uimm16
mfcr %d1, 0xE008

# cpxe3
# name
# CHECK-INST: mfcr %d0, $cpxe3
# CHECK-ENC: encoding: [0x4d,0xC0,0x00,0x0E]
# uimm16
# CHECK-INST: mfcr %d1, $cpxe3
# CHECK-ENC: encoding: [0x4d,0xC0,0x00,0x1E]
# name
mfcr %d0, $cpxe3
# uimm16
mfcr %d1, 0xE00C

# cpxe_0
# name
# CHECK-INST: mfcr %d0, $cpxe0
# CHECK-ENC: encoding: [0x4d,0x00,0x00,0x0E]
# name
mfcr %d0, $cpxe_0

# cpxe_1
# name
# CHECK-INST: mfcr %d0, $cpxe1
# CHECK-ENC: encoding: [0x4d,0x40,0x00,0x0E]
# name
mfcr %d0, $cpxe_1

# cpxe_2
# name
# CHECK-INST: mfcr %d0, $cpxe2
# CHECK-ENC: encoding: [0x4d,0x80,0x00,0x0E]
# name
mfcr %d0, $cpxe_2

# cpxe_3
# name
# CHECK-INST: mfcr %d0, $cpxe3
# CHECK-ENC: encoding: [0x4d,0xC0,0x00,0x0E]
# name
mfcr %d0, $cpxe_3

# crevt
# name
# CHECK-INST: mfcr %d0, $crevt
# CHECK-ENC: encoding: [0x4d,0xC0,0xD0,0x0F]
# uimm16
# CHECK-INST: mfcr %d1, $crevt
# CHECK-ENC: encoding: [0x4d,0xC0,0xD0,0x1F]
# name
mfcr %d0, $crevt
# uimm16
mfcr %d1, 0xFD0C

# cus_id
# name
# CHECK-INST: mfcr %d0, $cus_id
# CHECK-ENC: encoding: [0x4d,0x00,0xE5,0x0F]
# uimm16
# CHECK-INST: mfcr %d1, $cus_id
# CHECK-ENC: encoding: [0x4d,0x00,0xE5,0x1F]
# name
mfcr %d0, $cus_id
# uimm16
mfcr %d1, 0xFE50

# datr
# name
# CHECK-INST: mfcr %d0, $datr
# CHECK-ENC: encoding: [0x4d,0x80,0x01,0x09]
# uimm16
# CHECK-INST: mfcr %d1, $datr
# CHECK-ENC: encoding: [0x4d,0x80,0x01,0x19]
# name
mfcr %d0, $datr
# uimm16
mfcr %d1, 0x9018

# dbgsr
# name
# CHECK-INST: mfcr %d0, $dbgsr
# CHECK-ENC: encoding: [0x4d,0x00,0xD0,0x0F]
# uimm16
# CHECK-INST: mfcr %d1, $dbgsr
# CHECK-ENC: encoding: [0x4d,0x00,0xD0,0x1F]
# name
mfcr %d0, $dbgsr
# uimm16
mfcr %d1, 0xFD00

# dbgtcr
# name
# CHECK-INST: mfcr %d0, $dbgtcr
# CHECK-ENC: encoding: [0x4d,0x80,0xD4,0x0F]
# uimm16
# CHECK-INST: mfcr %d1, $dbgtcr
# CHECK-ENC: encoding: [0x4d,0x80,0xD4,0x1F]
# name
mfcr %d0, $dbgtcr
# uimm16
mfcr %d1, 0xFD48

# dcon0
# name
# CHECK-INST: mfcr %d0, $dcon0
# CHECK-ENC: encoding: [0x4d,0x00,0x04,0x09]
# uimm16
# CHECK-INST: mfcr %d1, $dcon0
# CHECK-ENC: encoding: [0x4d,0x00,0x04,0x19]
# name
mfcr %d0, $dcon0
# uimm16
mfcr %d1, 0x9040

# dcon2
# name
# CHECK-INST: mfcr %d0, $dcon2
# CHECK-ENC: encoding: [0x4d,0x00,0x00,0x09]
# uimm16
# CHECK-INST: mfcr %d1, $dcon2
# CHECK-ENC: encoding: [0x4d,0x00,0x00,0x19]
# name
mfcr %d0, $dcon2
# uimm16
mfcr %d1, 0x9000

# dcx
# name
# CHECK-INST: mfcr %d0, $dcx
# CHECK-ENC: encoding: [0x4d,0x40,0xD4,0x0F]
# uimm16
# CHECK-INST: mfcr %d1, $dcx
# CHECK-ENC: encoding: [0x4d,0x40,0xD4,0x1F]
# name
mfcr %d0, $dcx
# uimm16
mfcr %d1, 0xFD44

# deadd
# name
# CHECK-INST: mfcr %d0, $deadd
# CHECK-ENC: encoding: [0x4d,0xC0,0x01,0x09]
# uimm16
# CHECK-INST: mfcr %d1, $deadd
# CHECK-ENC: encoding: [0x4d,0xC0,0x01,0x19]
# name
mfcr %d0, $deadd
# uimm16
mfcr %d1, 0x901C

# diear
# name
# CHECK-INST: mfcr %d0, $diear
# CHECK-ENC: encoding: [0x4d,0x00,0x02,0x09]
# uimm16
# CHECK-INST: mfcr %d1, $diear
# CHECK-ENC: encoding: [0x4d,0x00,0x02,0x19]
# name
mfcr %d0, $diear
# uimm16
mfcr %d1, 0x9020

# dietr
# name
# CHECK-INST: mfcr %d0, $dietr
# CHECK-ENC: encoding: [0x4d,0x40,0x02,0x09]
# uimm16
# CHECK-INST: mfcr %d1, $dietr
# CHECK-ENC: encoding: [0x4d,0x40,0x02,0x19]
# name
mfcr %d0, $dietr
# uimm16
mfcr %d1, 0x9024

# dms
# name
# CHECK-INST: mfcr %d0, $dms
# CHECK-ENC: encoding: [0x4d,0x00,0xD4,0x0F]
# uimm16
# CHECK-INST: mfcr %d1, $dms
# CHECK-ENC: encoding: [0x4d,0x00,0xD4,0x1F]
# name
mfcr %d0, $dms
# uimm16
mfcr %d1, 0xFD40

# dpr0_l
# name
# CHECK-INST: mfcr %d0, $dpr0_l
# CHECK-ENC: encoding: [0x4d,0x00,0x00,0x0C]
# uimm16
# CHECK-INST: mfcr %d1, $dpr0_l
# CHECK-ENC: encoding: [0x4d,0x00,0x00,0x1C]
# name
mfcr %d0, $dpr0_l
# uimm16
mfcr %d1, 0xC000

# dpr0_u
# name
# CHECK-INST: mfcr %d0, $dpr0_u
# CHECK-ENC: encoding: [0x4d,0x40,0x00,0x0C]
# uimm16
# CHECK-INST: mfcr %d1, $dpr0_u
# CHECK-ENC: encoding: [0x4d,0x40,0x00,0x1C]
# name
mfcr %d0, $dpr0_u
# uimm16
mfcr %d1, 0xC004

# dpr10_l
# name
# CHECK-INST: mfcr %d0, $dpr10_l
# CHECK-ENC: encoding: [0x4d,0x00,0x05,0x0C]
# uimm16
# CHECK-INST: mfcr %d1, $dpr10_l
# CHECK-ENC: encoding: [0x4d,0x00,0x05,0x1C]
# name
mfcr %d0, $dpr10_l
# uimm16
mfcr %d1, 0xC050

# dpr10_u
# name
# CHECK-INST: mfcr %d0, $dpr10_u
# CHECK-ENC: encoding: [0x4d,0x40,0x05,0x0C]
# uimm16
# CHECK-INST: mfcr %d1, $dpr10_u
# CHECK-ENC: encoding: [0x4d,0x40,0x05,0x1C]
# name
mfcr %d0, $dpr10_u
# uimm16
mfcr %d1, 0xC054

# dpr11_l
# name
# CHECK-INST: mfcr %d0, $dpr11_l
# CHECK-ENC: encoding: [0x4d,0x80,0x05,0x0C]
# uimm16
# CHECK-INST: mfcr %d1, $dpr11_l
# CHECK-ENC: encoding: [0x4d,0x80,0x05,0x1C]
# name
mfcr %d0, $dpr11_l
# uimm16
mfcr %d1, 0xC058

# dpr11_u
# name
# CHECK-INST: mfcr %d0, $dpr11_u
# CHECK-ENC: encoding: [0x4d,0xC0,0x05,0x0C]
# uimm16
# CHECK-INST: mfcr %d1, $dpr11_u
# CHECK-ENC: encoding: [0x4d,0xC0,0x05,0x1C]
# name
mfcr %d0, $dpr11_u
# uimm16
mfcr %d1, 0xC05C

# dpr12_l
# name
# CHECK-INST: mfcr %d0, $dpr12_l
# CHECK-ENC: encoding: [0x4d,0x00,0x06,0x0C]
# uimm16
# CHECK-INST: mfcr %d1, $dpr12_l
# CHECK-ENC: encoding: [0x4d,0x00,0x06,0x1C]
# name
mfcr %d0, $dpr12_l
# uimm16
mfcr %d1, 0xC060

# dpr12_u
# name
# CHECK-INST: mfcr %d0, $dpr12_u
# CHECK-ENC: encoding: [0x4d,0x40,0x06,0x0C]
# uimm16
# CHECK-INST: mfcr %d1, $dpr12_u
# CHECK-ENC: encoding: [0x4d,0x40,0x06,0x1C]
# name
mfcr %d0, $dpr12_u
# uimm16
mfcr %d1, 0xC064

# dpr13_l
# name
# CHECK-INST: mfcr %d0, $dpr13_l
# CHECK-ENC: encoding: [0x4d,0x80,0x06,0x0C]
# uimm16
# CHECK-INST: mfcr %d1, $dpr13_l
# CHECK-ENC: encoding: [0x4d,0x80,0x06,0x1C]
# name
mfcr %d0, $dpr13_l
# uimm16
mfcr %d1, 0xC068

# dpr13_u
# name
# CHECK-INST: mfcr %d0, $dpr13_u
# CHECK-ENC: encoding: [0x4d,0xC0,0x06,0x0C]
# uimm16
# CHECK-INST: mfcr %d1, $dpr13_u
# CHECK-ENC: encoding: [0x4d,0xC0,0x06,0x1C]
# name
mfcr %d0, $dpr13_u
# uimm16
mfcr %d1, 0xC06C

# dpr14_l
# name
# CHECK-INST: mfcr %d0, $dpr14_l
# CHECK-ENC: encoding: [0x4d,0x00,0x07,0x0C]
# uimm16
# CHECK-INST: mfcr %d1, $dpr14_l
# CHECK-ENC: encoding: [0x4d,0x00,0x07,0x1C]
# name
mfcr %d0, $dpr14_l
# uimm16
mfcr %d1, 0xC070

# dpr14_u
# name
# CHECK-INST: mfcr %d0, $dpr14_u
# CHECK-ENC: encoding: [0x4d,0x40,0x07,0x0C]
# uimm16
# CHECK-INST: mfcr %d1, $dpr14_u
# CHECK-ENC: encoding: [0x4d,0x40,0x07,0x1C]
# name
mfcr %d0, $dpr14_u
# uimm16
mfcr %d1, 0xC074

# dpr15_l
# name
# CHECK-INST: mfcr %d0, $dpr15_l
# CHECK-ENC: encoding: [0x4d,0x80,0x07,0x0C]
# uimm16
# CHECK-INST: mfcr %d1, $dpr15_l
# CHECK-ENC: encoding: [0x4d,0x80,0x07,0x1C]
# name
mfcr %d0, $dpr15_l
# uimm16
mfcr %d1, 0xC078

# dpr15_u
# name
# CHECK-INST: mfcr %d0, $dpr15_u
# CHECK-ENC: encoding: [0x4d,0xC0,0x07,0x0C]
# uimm16
# CHECK-INST: mfcr %d1, $dpr15_u
# CHECK-ENC: encoding: [0x4d,0xC0,0x07,0x1C]
# name
mfcr %d0, $dpr15_u
# uimm16
mfcr %d1, 0xC07C

# dpr1_l
# name
# CHECK-INST: mfcr %d0, $dpr1_l
# CHECK-ENC: encoding: [0x4d,0x80,0x00,0x0C]
# uimm16
# CHECK-INST: mfcr %d1, $dpr1_l
# CHECK-ENC: encoding: [0x4d,0x80,0x00,0x1C]
# name
mfcr %d0, $dpr1_l
# uimm16
mfcr %d1, 0xC008

# dpr1_u
# name
# CHECK-INST: mfcr %d0, $dpr1_u
# CHECK-ENC: encoding: [0x4d,0xC0,0x00,0x0C]
# uimm16
# CHECK-INST: mfcr %d1, $dpr1_u
# CHECK-ENC: encoding: [0x4d,0xC0,0x00,0x1C]
# name
mfcr %d0, $dpr1_u
# uimm16
mfcr %d1, 0xC00C

# dpr2_l
# name
# CHECK-INST: mfcr %d0, $dpr2_l
# CHECK-ENC: encoding: [0x4d,0x00,0x01,0x0C]
# uimm16
# CHECK-INST: mfcr %d1, $dpr2_l
# CHECK-ENC: encoding: [0x4d,0x00,0x01,0x1C]
# name
mfcr %d0, $dpr2_l
# uimm16
mfcr %d1, 0xC010

# dpr2_u
# name
# CHECK-INST: mfcr %d0, $dpr2_u
# CHECK-ENC: encoding: [0x4d,0x40,0x01,0x0C]
# uimm16
# CHECK-INST: mfcr %d1, $dpr2_u
# CHECK-ENC: encoding: [0x4d,0x40,0x01,0x1C]
# name
mfcr %d0, $dpr2_u
# uimm16
mfcr %d1, 0xC014

# dpr3_l
# name
# CHECK-INST: mfcr %d0, $dpr3_l
# CHECK-ENC: encoding: [0x4d,0x80,0x01,0x0C]
# uimm16
# CHECK-INST: mfcr %d1, $dpr3_l
# CHECK-ENC: encoding: [0x4d,0x80,0x01,0x1C]
# name
mfcr %d0, $dpr3_l
# uimm16
mfcr %d1, 0xC018

# dpr3_u
# name
# CHECK-INST: mfcr %d0, $dpr3_u
# CHECK-ENC: encoding: [0x4d,0xC0,0x01,0x0C]
# uimm16
# CHECK-INST: mfcr %d1, $dpr3_u
# CHECK-ENC: encoding: [0x4d,0xC0,0x01,0x1C]
# name
mfcr %d0, $dpr3_u
# uimm16
mfcr %d1, 0xC01C

# dpr4_l
# name
# CHECK-INST: mfcr %d0, $dpr4_l
# CHECK-ENC: encoding: [0x4d,0x00,0x02,0x0C]
# uimm16
# CHECK-INST: mfcr %d1, $dpr4_l
# CHECK-ENC: encoding: [0x4d,0x00,0x02,0x1C]
# name
mfcr %d0, $dpr4_l
# uimm16
mfcr %d1, 0xC020

# dpr4_u
# name
# CHECK-INST: mfcr %d0, $dpr4_u
# CHECK-ENC: encoding: [0x4d,0x40,0x02,0x0C]
# uimm16
# CHECK-INST: mfcr %d1, $dpr4_u
# CHECK-ENC: encoding: [0x4d,0x40,0x02,0x1C]
# name
mfcr %d0, $dpr4_u
# uimm16
mfcr %d1, 0xC024

# dpr5_l
# name
# CHECK-INST: mfcr %d0, $dpr5_l
# CHECK-ENC: encoding: [0x4d,0x80,0x02,0x0C]
# uimm16
# CHECK-INST: mfcr %d1, $dpr5_l
# CHECK-ENC: encoding: [0x4d,0x80,0x02,0x1C]
# name
mfcr %d0, $dpr5_l
# uimm16
mfcr %d1, 0xC028

# dpr5_u
# name
# CHECK-INST: mfcr %d0, $dpr5_u
# CHECK-ENC: encoding: [0x4d,0xC0,0x02,0x0C]
# uimm16
# CHECK-INST: mfcr %d1, $dpr5_u
# CHECK-ENC: encoding: [0x4d,0xC0,0x02,0x1C]
# name
mfcr %d0, $dpr5_u
# uimm16
mfcr %d1, 0xC02C

# dpr6_l
# name
# CHECK-INST: mfcr %d0, $dpr6_l
# CHECK-ENC: encoding: [0x4d,0x00,0x03,0x0C]
# uimm16
# CHECK-INST: mfcr %d1, $dpr6_l
# CHECK-ENC: encoding: [0x4d,0x00,0x03,0x1C]
# name
mfcr %d0, $dpr6_l
# uimm16
mfcr %d1, 0xC030

# dpr6_u
# name
# CHECK-INST: mfcr %d0, $dpr6_u
# CHECK-ENC: encoding: [0x4d,0x40,0x03,0x0C]
# uimm16
# CHECK-INST: mfcr %d1, $dpr6_u
# CHECK-ENC: encoding: [0x4d,0x40,0x03,0x1C]
# name
mfcr %d0, $dpr6_u
# uimm16
mfcr %d1, 0xC034

# dpr7_l
# name
# CHECK-INST: mfcr %d0, $dpr7_l
# CHECK-ENC: encoding: [0x4d,0x80,0x03,0x0C]
# uimm16
# CHECK-INST: mfcr %d1, $dpr7_l
# CHECK-ENC: encoding: [0x4d,0x80,0x03,0x1C]
# name
mfcr %d0, $dpr7_l
# uimm16
mfcr %d1, 0xC038

# dpr7_u
# name
# CHECK-INST: mfcr %d0, $dpr7_u
# CHECK-ENC: encoding: [0x4d,0xC0,0x03,0x0C]
# uimm16
# CHECK-INST: mfcr %d1, $dpr7_u
# CHECK-ENC: encoding: [0x4d,0xC0,0x03,0x1C]
# name
mfcr %d0, $dpr7_u
# uimm16
mfcr %d1, 0xC03C

# dpr8_l
# name
# CHECK-INST: mfcr %d0, $dpr8_l
# CHECK-ENC: encoding: [0x4d,0x00,0x04,0x0C]
# uimm16
# CHECK-INST: mfcr %d1, $dpr8_l
# CHECK-ENC: encoding: [0x4d,0x00,0x04,0x1C]
# name
mfcr %d0, $dpr8_l
# uimm16
mfcr %d1, 0xC040

# dpr8_u
# name
# CHECK-INST: mfcr %d0, $dpr8_u
# CHECK-ENC: encoding: [0x4d,0x40,0x04,0x0C]
# uimm16
# CHECK-INST: mfcr %d1, $dpr8_u
# CHECK-ENC: encoding: [0x4d,0x40,0x04,0x1C]
# name
mfcr %d0, $dpr8_u
# uimm16
mfcr %d1, 0xC044

# dpr9_l
# name
# CHECK-INST: mfcr %d0, $dpr9_l
# CHECK-ENC: encoding: [0x4d,0x80,0x04,0x0C]
# uimm16
# CHECK-INST: mfcr %d1, $dpr9_l
# CHECK-ENC: encoding: [0x4d,0x80,0x04,0x1C]
# name
mfcr %d0, $dpr9_l
# uimm16
mfcr %d1, 0xC048

# dpr9_u
# name
# CHECK-INST: mfcr %d0, $dpr9_u
# CHECK-ENC: encoding: [0x4d,0xC0,0x04,0x0C]
# uimm16
# CHECK-INST: mfcr %d1, $dpr9_u
# CHECK-ENC: encoding: [0x4d,0xC0,0x04,0x1C]
# name
mfcr %d0, $dpr9_u
# uimm16
mfcr %d1, 0xC04C

# dpre0
# name
# CHECK-INST: mfcr %d0, $dpre0
# CHECK-ENC: encoding: [0x4d,0x00,0x01,0x0E]
# uimm16
# CHECK-INST: mfcr %d1, $dpre0
# CHECK-ENC: encoding: [0x4d,0x00,0x01,0x1E]
# name
mfcr %d0, $dpre0
# uimm16
mfcr %d1, 0xE010

# dpre1
# name
# CHECK-INST: mfcr %d0, $dpre1
# CHECK-ENC: encoding: [0x4d,0x40,0x01,0x0E]
# uimm16
# CHECK-INST: mfcr %d1, $dpre1
# CHECK-ENC: encoding: [0x4d,0x40,0x01,0x1E]
# name
mfcr %d0, $dpre1
# uimm16
mfcr %d1, 0xE014

# dpre2
# name
# CHECK-INST: mfcr %d0, $dpre2
# CHECK-ENC: encoding: [0x4d,0x80,0x01,0x0E]
# uimm16
# CHECK-INST: mfcr %d1, $dpre2
# CHECK-ENC: encoding: [0x4d,0x80,0x01,0x1E]
# name
mfcr %d0, $dpre2
# uimm16
mfcr %d1, 0xE018

# dpre3
# name
# CHECK-INST: mfcr %d0, $dpre3
# CHECK-ENC: encoding: [0x4d,0xC0,0x01,0x0E]
# uimm16
# CHECK-INST: mfcr %d1, $dpre3
# CHECK-ENC: encoding: [0x4d,0xC0,0x01,0x1E]
# name
mfcr %d0, $dpre3
# uimm16
mfcr %d1, 0xE01C

# dpre_0
# name
# CHECK-INST: mfcr %d0, $dpre0
# CHECK-ENC: encoding: [0x4d,0x00,0x01,0x0E]
# name
mfcr %d0, $dpre_0

# dpre_1
# name
# CHECK-INST: mfcr %d0, $dpre1
# CHECK-ENC: encoding: [0x4d,0x40,0x01,0x0E]
# name
mfcr %d0, $dpre_1

# dpre_2
# name
# CHECK-INST: mfcr %d0, $dpre2
# CHECK-ENC: encoding: [0x4d,0x80,0x01,0x0E]
# name
mfcr %d0, $dpre_2

# dpre_3
# name
# CHECK-INST: mfcr %d0, $dpre3
# CHECK-ENC: encoding: [0x4d,0xC0,0x01,0x0E]
# name
mfcr %d0, $dpre_3

# dpwe0
# name
# CHECK-INST: mfcr %d0, $dpwe0
# CHECK-ENC: encoding: [0x4d,0x00,0x02,0x0E]
# uimm16
# CHECK-INST: mfcr %d1, $dpwe0
# CHECK-ENC: encoding: [0x4d,0x00,0x02,0x1E]
# name
mfcr %d0, $dpwe0
# uimm16
mfcr %d1, 0xE020

# dpwe1
# name
# CHECK-INST: mfcr %d0, $dpwe1
# CHECK-ENC: encoding: [0x4d,0x40,0x02,0x0E]
# uimm16
# CHECK-INST: mfcr %d1, $dpwe1
# CHECK-ENC: encoding: [0x4d,0x40,0x02,0x1E]
# name
mfcr %d0, $dpwe1
# uimm16
mfcr %d1, 0xE024

# dpwe2
# name
# CHECK-INST: mfcr %d0, $dpwe2
# CHECK-ENC: encoding: [0x4d,0x80,0x02,0x0E]
# uimm16
# CHECK-INST: mfcr %d1, $dpwe2
# CHECK-ENC: encoding: [0x4d,0x80,0x02,0x1E]
# name
mfcr %d0, $dpwe2
# uimm16
mfcr %d1, 0xE028

# dpwe3
# name
# CHECK-INST: mfcr %d0, $dpwe3
# CHECK-ENC: encoding: [0x4d,0xC0,0x02,0x0E]
# uimm16
# CHECK-INST: mfcr %d1, $dpwe3
# CHECK-ENC: encoding: [0x4d,0xC0,0x02,0x1E]
# name
mfcr %d0, $dpwe3
# uimm16
mfcr %d1, 0xE02C

# dpwe_0
# name
# CHECK-INST: mfcr %d0, $dpwe0
# CHECK-ENC: encoding: [0x4d,0x00,0x02,0x0E]
# name
mfcr %d0, $dpwe_0

# dpwe_1
# name
# CHECK-INST: mfcr %d0, $dpwe1
# CHECK-ENC: encoding: [0x4d,0x40,0x02,0x0E]
# name
mfcr %d0, $dpwe_1

# dpwe_2
# name
# CHECK-INST: mfcr %d0, $dpwe2
# CHECK-ENC: encoding: [0x4d,0x80,0x02,0x0E]
# name
mfcr %d0, $dpwe_2

# dpwe_3
# name
# CHECK-INST: mfcr %d0, $dpwe3
# CHECK-ENC: encoding: [0x4d,0xC0,0x02,0x0E]
# name
mfcr %d0, $dpwe_3

# dstr
# name
# CHECK-INST: mfcr %d0, $dstr
# CHECK-ENC: encoding: [0x4d,0x00,0x01,0x09]
# uimm16
# CHECK-INST: mfcr %d1, $dstr
# CHECK-ENC: encoding: [0x4d,0x00,0x01,0x19]
# name
mfcr %d0, $dstr
# uimm16
mfcr %d1, 0x9010

# exevt
# name
# CHECK-INST: mfcr %d0, $exevt
# CHECK-ENC: encoding: [0x4d,0x80,0xD0,0x0F]
# uimm16
# CHECK-INST: mfcr %d1, $exevt
# CHECK-ENC: encoding: [0x4d,0x80,0xD0,0x1F]
# name
mfcr %d0, $exevt
# uimm16
mfcr %d1, 0xFD08

# fcx
# name
# CHECK-INST: mfcr %d0, $fcx
# CHECK-ENC: encoding: [0x4d,0x80,0xE3,0x0F]
# uimm16
# CHECK-INST: mfcr %d1, $fcx
# CHECK-ENC: encoding: [0x4d,0x80,0xE3,0x1F]
# name
mfcr %d0, $fcx
# uimm16
mfcr %d1, 0xFE38

# fpu_trap_con
# name
# CHECK-INST: mfcr %d0, $fpu_trap_con
# CHECK-ENC: encoding: [0x4d,0x00,0x00,0x0A]
# uimm16
# CHECK-INST: mfcr %d1, $fpu_trap_con
# CHECK-ENC: encoding: [0x4d,0x00,0x00,0x1A]
# name
mfcr %d0, $fpu_trap_con
# uimm16
mfcr %d1, 0xA000

# fpu_trap_opc
# name
# CHECK-INST: mfcr %d0, $fpu_trap_opc
# CHECK-ENC: encoding: [0x4d,0x80,0x00,0x0A]
# uimm16
# CHECK-INST: mfcr %d1, $fpu_trap_opc
# CHECK-ENC: encoding: [0x4d,0x80,0x00,0x1A]
# name
mfcr %d0, $fpu_trap_opc
# uimm16
mfcr %d1, 0xA008

# fpu_trap_pc
# name
# CHECK-INST: mfcr %d0, $fpu_trap_pc
# CHECK-ENC: encoding: [0x4d,0x40,0x00,0x0A]
# uimm16
# CHECK-INST: mfcr %d1, $fpu_trap_pc
# CHECK-ENC: encoding: [0x4d,0x40,0x00,0x1A]
# name
mfcr %d0, $fpu_trap_pc
# uimm16
mfcr %d1, 0xA004

# fpu_trap_src1
# name
# CHECK-INST: mfcr %d0, $fpu_trap_src1
# CHECK-ENC: encoding: [0x4d,0x00,0x01,0x0A]
# uimm16
# CHECK-INST: mfcr %d1, $fpu_trap_src1
# CHECK-ENC: encoding: [0x4d,0x00,0x01,0x1A]
# name
mfcr %d0, $fpu_trap_src1
# uimm16
mfcr %d1, 0xA010

# fpu_trap_src2
# name
# CHECK-INST: mfcr %d0, $fpu_trap_src2
# CHECK-ENC: encoding: [0x4d,0x40,0x01,0x0A]
# uimm16
# CHECK-INST: mfcr %d1, $fpu_trap_src2
# CHECK-ENC: encoding: [0x4d,0x40,0x01,0x1A]
# name
mfcr %d0, $fpu_trap_src2
# uimm16
mfcr %d1, 0xA014

# fpu_trap_src3
# name
# CHECK-INST: mfcr %d0, $fpu_trap_src3
# CHECK-ENC: encoding: [0x4d,0x80,0x01,0x0A]
# uimm16
# CHECK-INST: mfcr %d1, $fpu_trap_src3
# CHECK-ENC: encoding: [0x4d,0x80,0x01,0x1A]
# name
mfcr %d0, $fpu_trap_src3
# uimm16
mfcr %d1, 0xA018

# icnt
# name
# CHECK-INST: mfcr %d0, $icnt
# CHECK-ENC: encoding: [0x4d,0x80,0xC0,0x0F]
# uimm16
# CHECK-INST: mfcr %d1, $icnt
# CHECK-ENC: encoding: [0x4d,0x80,0xC0,0x1F]
# name
mfcr %d0, $icnt
# uimm16
mfcr %d1, 0xFC08

# icr
# name
# CHECK-INST: mfcr %d0, $icr
# CHECK-ENC: encoding: [0x4d,0xC0,0xE2,0x0F]
# uimm16
# CHECK-INST: mfcr %d1, $icr
# CHECK-ENC: encoding: [0x4d,0xC0,0xE2,0x1F]
# name
mfcr %d0, $icr
# uimm16
mfcr %d1, 0xFE2C

# isp
# name
# CHECK-INST: mfcr %d0, $isp
# CHECK-ENC: encoding: [0x4d,0x80,0xE2,0x0F]
# uimm16
# CHECK-INST: mfcr %d1, $isp
# CHECK-ENC: encoding: [0x4d,0x80,0xE2,0x1F]
# name
mfcr %d0, $isp
# uimm16
mfcr %d1, 0xFE28

# lcx
# name
# CHECK-INST: mfcr %d0, $lcx
# CHECK-ENC: encoding: [0x4d,0xC0,0xE3,0x0F]
# uimm16
# CHECK-INST: mfcr %d1, $lcx
# CHECK-ENC: encoding: [0x4d,0xC0,0xE3,0x1F]
# name
mfcr %d0, $lcx
# uimm16
mfcr %d1, 0xFE3C

# m1cnt
# name
# CHECK-INST: mfcr %d0, $m1cnt
# CHECK-ENC: encoding: [0x4d,0xC0,0xC0,0x0F]
# uimm16
# CHECK-INST: mfcr %d1, $m1cnt
# CHECK-ENC: encoding: [0x4d,0xC0,0xC0,0x1F]
# name
mfcr %d0, $m1cnt
# uimm16
mfcr %d1, 0xFC0C

# m2cnt
# name
# CHECK-INST: mfcr %d0, $m2cnt
# CHECK-ENC: encoding: [0x4d,0x00,0xC1,0x0F]
# uimm16
# CHECK-INST: mfcr %d1, $m2cnt
# CHECK-ENC: encoding: [0x4d,0x00,0xC1,0x1F]
# name
mfcr %d0, $m2cnt
# uimm16
mfcr %d1, 0xFC10

# m3cnt
# name
# CHECK-INST: mfcr %d0, $m3cnt
# CHECK-ENC: encoding: [0x4d,0x40,0xC1,0x0F]
# uimm16
# CHECK-INST: mfcr %d1, $m3cnt
# CHECK-ENC: encoding: [0x4d,0x40,0xC1,0x1F]
# name
mfcr %d0, $m3cnt
# uimm16
mfcr %d1, 0xFC14

# pc
# name
# CHECK-INST: mfcr %d0, $pc
# CHECK-ENC: encoding: [0x4d,0x80,0xE0,0x0F]
# uimm16
# CHECK-INST: mfcr %d1, $pc
# CHECK-ENC: encoding: [0x4d,0x80,0xE0,0x1F]
# name
mfcr %d0, $pc
# uimm16
mfcr %d1, 0xFE08

# pcon0
# name
# CHECK-INST: mfcr %d0, $pcon0
# CHECK-ENC: encoding: [0x4d,0xC0,0x20,0x09]
# uimm16
# CHECK-INST: mfcr %d1, $pcon0
# CHECK-ENC: encoding: [0x4d,0xC0,0x20,0x19]
# name
mfcr %d0, $pcon0
# uimm16
mfcr %d1, 0x920C

# pcon1
# name
# CHECK-INST: mfcr %d0, $pcon1
# CHECK-ENC: encoding: [0x4d,0x40,0x20,0x09]
# uimm16
# CHECK-INST: mfcr %d1, $pcon1
# CHECK-ENC: encoding: [0x4d,0x40,0x20,0x19]
# name
mfcr %d0, $pcon1
# uimm16
mfcr %d1, 0x9204

# pcon2
# name
# CHECK-INST: mfcr %d0, $pcon2
# CHECK-ENC: encoding: [0x4d,0x80,0x20,0x09]
# uimm16
# CHECK-INST: mfcr %d1, $pcon2
# CHECK-ENC: encoding: [0x4d,0x80,0x20,0x19]
# name
mfcr %d0, $pcon2
# uimm16
mfcr %d1, 0x9208

# pcxi
# name
# CHECK-INST: mfcr %d0, $pcxi
# CHECK-ENC: encoding: [0x4d,0x00,0xE0,0x0F]
# uimm16
# CHECK-INST: mfcr %d1, $pcxi
# CHECK-ENC: encoding: [0x4d,0x00,0xE0,0x1F]
# name
mfcr %d0, $pcxi
# uimm16
mfcr %d1, 0xFE00

# piear
# name
# CHECK-INST: mfcr %d0, $piear
# CHECK-ENC: encoding: [0x4d,0x00,0x21,0x09]
# uimm16
# CHECK-INST: mfcr %d1, $piear
# CHECK-ENC: encoding: [0x4d,0x00,0x21,0x19]
# name
mfcr %d0, $piear
# uimm16
mfcr %d1, 0x9210

# pietr
# name
# CHECK-INST: mfcr %d0, $pietr
# CHECK-ENC: encoding: [0x4d,0x40,0x21,0x09]
# uimm16
# CHECK-INST: mfcr %d1, $pietr
# CHECK-ENC: encoding: [0x4d,0x40,0x21,0x19]
# name
mfcr %d0, $pietr
# uimm16
mfcr %d1, 0x9214

# pma0
# name
# CHECK-INST: mfcr %d0, $pma0
# CHECK-ENC: encoding: [0x4d,0x00,0x10,0x08]
# uimm16
# CHECK-INST: mfcr %d1, $pma0
# CHECK-ENC: encoding: [0x4d,0x00,0x10,0x18]
# name
mfcr %d0, $pma0
# uimm16
mfcr %d1, 0x8100

# pma1
# name
# CHECK-INST: mfcr %d0, $pma1
# CHECK-ENC: encoding: [0x4d,0x40,0x10,0x08]
# uimm16
# CHECK-INST: mfcr %d1, $pma1
# CHECK-ENC: encoding: [0x4d,0x40,0x10,0x18]
# name
mfcr %d0, $pma1
# uimm16
mfcr %d1, 0x8104

# pma2
# name
# CHECK-INST: mfcr %d0, $pma2
# CHECK-ENC: encoding: [0x4d,0x80,0x10,0x08]
# uimm16
# CHECK-INST: mfcr %d1, $pma2
# CHECK-ENC: encoding: [0x4d,0x80,0x10,0x18]
# name
mfcr %d0, $pma2
# uimm16
mfcr %d1, 0x8108

# pstr
# name
# CHECK-INST: mfcr %d0, $pstr
# CHECK-ENC: encoding: [0x4d,0x00,0x20,0x09]
# uimm16
# CHECK-INST: mfcr %d1, $pstr
# CHECK-ENC: encoding: [0x4d,0x00,0x20,0x19]
# name
mfcr %d0, $pstr
# uimm16
mfcr %d1, 0x9200

# psw
# name
# CHECK-INST: mfcr %d0, $psw
# CHECK-ENC: encoding: [0x4d,0x40,0xE0,0x0F]
# uimm16
# CHECK-INST: mfcr %d1, $psw
# CHECK-ENC: encoding: [0x4d,0x40,0xE0,0x1F]
# name
mfcr %d0, $psw
# uimm16
mfcr %d1, 0xFE04

# segen
# name
# CHECK-INST: mfcr %d0, $segen
# CHECK-ENC: encoding: [0x4d,0x00,0x03,0x01]
# uimm16
# CHECK-INST: mfcr %d1, $segen
# CHECK-ENC: encoding: [0x4d,0x00,0x03,0x11]
# name
mfcr %d0, $segen
# uimm16
mfcr %d1, 0x1030

# smacon
# name
# CHECK-INST: mfcr %d0, $smacon
# CHECK-ENC: encoding: [0x4d,0xC0,0x00,0x09]
# uimm16
# CHECK-INST: mfcr %d1, $smacon
# CHECK-ENC: encoding: [0x4d,0xC0,0x00,0x19]
# name
mfcr %d0, $smacon
# uimm16
mfcr %d1, 0x900C

# swevt
# name
# CHECK-INST: mfcr %d0, $swevt
# CHECK-ENC: encoding: [0x4d,0x00,0xD1,0x0F]
# uimm16
# CHECK-INST: mfcr %d1, $swevt
# CHECK-ENC: encoding: [0x4d,0x00,0xD1,0x1F]
# name
mfcr %d0, $swevt
# uimm16
mfcr %d1, 0xFD10

# syscon
# name
# CHECK-INST: mfcr %d0, $syscon
# CHECK-ENC: encoding: [0x4d,0x40,0xE1,0x0F]
# uimm16
# CHECK-INST: mfcr %d1, $syscon
# CHECK-ENC: encoding: [0x4d,0x40,0xE1,0x1F]
# name
mfcr %d0, $syscon
# uimm16
mfcr %d1, 0xFE14

# task_asi
# name
# CHECK-INST: mfcr %d0, $task_asi
# CHECK-ENC: encoding: [0x4d,0x40,0x00,0x08]
# uimm16
# CHECK-INST: mfcr %d1, $task_asi
# CHECK-ENC: encoding: [0x4d,0x40,0x00,0x18]
# name
mfcr %d0, $task_asi
# uimm16
mfcr %d1, 0x8004

# tps_con
# name
# CHECK-INST: mfcr %d0, $tps_con
# CHECK-ENC: encoding: [0x4d,0x00,0x40,0x0E]
# uimm16
# CHECK-INST: mfcr %d1, $tps_con
# CHECK-ENC: encoding: [0x4d,0x00,0x40,0x1E]
# name
mfcr %d0, $tps_con
# uimm16
mfcr %d1, 0xE400

# tps_timer0
# name
# CHECK-INST: mfcr %d0, $tps_timer0
# CHECK-ENC: encoding: [0x4d,0x40,0x40,0x0E]
# uimm16
# CHECK-INST: mfcr %d1, $tps_timer0
# CHECK-ENC: encoding: [0x4d,0x40,0x40,0x1E]
# name
mfcr %d0, $tps_timer0
# uimm16
mfcr %d1, 0xE404

# tps_timer1
# name
# CHECK-INST: mfcr %d0, $tps_timer1
# CHECK-ENC: encoding: [0x4d,0x80,0x40,0x0E]
# uimm16
# CHECK-INST: mfcr %d1, $tps_timer1
# CHECK-ENC: encoding: [0x4d,0x80,0x40,0x1E]
# name
mfcr %d0, $tps_timer1
# uimm16
mfcr %d1, 0xE408

# tps_timer2
# name
# CHECK-INST: mfcr %d0, $tps_timer2
# CHECK-ENC: encoding: [0x4d,0xC0,0x40,0x0E]
# uimm16
# CHECK-INST: mfcr %d1, $tps_timer2
# CHECK-ENC: encoding: [0x4d,0xC0,0x40,0x1E]
# name
mfcr %d0, $tps_timer2
# uimm16
mfcr %d1, 0xE40C

# tr0_adr
# name
# CHECK-INST: mfcr %d0, $tr0adr
# CHECK-ENC: encoding: [0x4d,0x40,0x00,0x0F]
# name
mfcr %d0, $tr0_adr

# tr0_evt
# name
# CHECK-INST: mfcr %d0, $tr0evt
# CHECK-ENC: encoding: [0x4d,0x00,0x00,0x0F]
# name
mfcr %d0, $tr0_evt

# tr0adr
# name
# CHECK-INST: mfcr %d0, $tr0adr
# CHECK-ENC: encoding: [0x4d,0x40,0x00,0x0F]
# uimm16
# CHECK-INST: mfcr %d1, $tr0adr
# CHECK-ENC: encoding: [0x4d,0x40,0x00,0x1F]
# name
mfcr %d0, $tr0adr
# uimm16
mfcr %d1, 0xF004

# tr0evt
# name
# CHECK-INST: mfcr %d0, $tr0evt
# CHECK-ENC: encoding: [0x4d,0x00,0x00,0x0F]
# uimm16
# CHECK-INST: mfcr %d1, $tr0evt
# CHECK-ENC: encoding: [0x4d,0x00,0x00,0x1F]
# name
mfcr %d0, $tr0evt
# uimm16
mfcr %d1, 0xF000

# tr1_adr
# name
# CHECK-INST: mfcr %d0, $tr1adr
# CHECK-ENC: encoding: [0x4d,0xC0,0x00,0x0F]
# name
mfcr %d0, $tr1_adr

# tr1_evt
# name
# CHECK-INST: mfcr %d0, $tr1evt
# CHECK-ENC: encoding: [0x4d,0x80,0x00,0x0F]
# name
mfcr %d0, $tr1_evt

# tr1adr
# name
# CHECK-INST: mfcr %d0, $tr1adr
# CHECK-ENC: encoding: [0x4d,0xC0,0x00,0x0F]
# uimm16
# CHECK-INST: mfcr %d1, $tr1adr
# CHECK-ENC: encoding: [0x4d,0xC0,0x00,0x1F]
# name
mfcr %d0, $tr1adr
# uimm16
mfcr %d1, 0xF00C

# tr1evt
# name
# CHECK-INST: mfcr %d0, $tr1evt
# CHECK-ENC: encoding: [0x4d,0x80,0x00,0x0F]
# uimm16
# CHECK-INST: mfcr %d1, $tr1evt
# CHECK-ENC: encoding: [0x4d,0x80,0x00,0x1F]
# name
mfcr %d0, $tr1evt
# uimm16
mfcr %d1, 0xF008

# tr2_adr
# name
# CHECK-INST: mfcr %d0, $tr2adr
# CHECK-ENC: encoding: [0x4d,0x40,0x01,0x0F]
# name
mfcr %d0, $tr2_adr

# tr2_evt
# name
# CHECK-INST: mfcr %d0, $tr2evt
# CHECK-ENC: encoding: [0x4d,0x00,0x01,0x0F]
# name
mfcr %d0, $tr2_evt

# tr2adr
# name
# CHECK-INST: mfcr %d0, $tr2adr
# CHECK-ENC: encoding: [0x4d,0x40,0x01,0x0F]
# uimm16
# CHECK-INST: mfcr %d1, $tr2adr
# CHECK-ENC: encoding: [0x4d,0x40,0x01,0x1F]
# name
mfcr %d0, $tr2adr
# uimm16
mfcr %d1, 0xF014

# tr2evt
# name
# CHECK-INST: mfcr %d0, $tr2evt
# CHECK-ENC: encoding: [0x4d,0x00,0x01,0x0F]
# uimm16
# CHECK-INST: mfcr %d1, $tr2evt
# CHECK-ENC: encoding: [0x4d,0x00,0x01,0x1F]
# name
mfcr %d0, $tr2evt
# uimm16
mfcr %d1, 0xF010

# tr3_adr
# name
# CHECK-INST: mfcr %d0, $tr3adr
# CHECK-ENC: encoding: [0x4d,0xC0,0x01,0x0F]
# name
mfcr %d0, $tr3_adr

# tr3_evt
# name
# CHECK-INST: mfcr %d0, $tr3evt
# CHECK-ENC: encoding: [0x4d,0x80,0x01,0x0F]
# name
mfcr %d0, $tr3_evt

# tr3adr
# name
# CHECK-INST: mfcr %d0, $tr3adr
# CHECK-ENC: encoding: [0x4d,0xC0,0x01,0x0F]
# uimm16
# CHECK-INST: mfcr %d1, $tr3adr
# CHECK-ENC: encoding: [0x4d,0xC0,0x01,0x1F]
# name
mfcr %d0, $tr3adr
# uimm16
mfcr %d1, 0xF01C

# tr3evt
# name
# CHECK-INST: mfcr %d0, $tr3evt
# CHECK-ENC: encoding: [0x4d,0x80,0x01,0x0F]
# uimm16
# CHECK-INST: mfcr %d1, $tr3evt
# CHECK-ENC: encoding: [0x4d,0x80,0x01,0x1F]
# name
mfcr %d0, $tr3evt
# uimm16
mfcr %d1, 0xF018

# tr4_adr
# name
# CHECK-INST: mfcr %d0, $tr4adr
# CHECK-ENC: encoding: [0x4d,0x40,0x02,0x0F]
# name
mfcr %d0, $tr4_adr

# tr4_evt
# name
# CHECK-INST: mfcr %d0, $tr4evt
# CHECK-ENC: encoding: [0x4d,0x00,0x02,0x0F]
# name
mfcr %d0, $tr4_evt

# tr4adr
# name
# CHECK-INST: mfcr %d0, $tr4adr
# CHECK-ENC: encoding: [0x4d,0x40,0x02,0x0F]
# uimm16
# CHECK-INST: mfcr %d1, $tr4adr
# CHECK-ENC: encoding: [0x4d,0x40,0x02,0x1F]
# name
mfcr %d0, $tr4adr
# uimm16
mfcr %d1, 0xF024

# tr4evt
# name
# CHECK-INST: mfcr %d0, $tr4evt
# CHECK-ENC: encoding: [0x4d,0x00,0x02,0x0F]
# uimm16
# CHECK-INST: mfcr %d1, $tr4evt
# CHECK-ENC: encoding: [0x4d,0x00,0x02,0x1F]
# name
mfcr %d0, $tr4evt
# uimm16
mfcr %d1, 0xF020

# tr5_adr
# name
# CHECK-INST: mfcr %d0, $tr5adr
# CHECK-ENC: encoding: [0x4d,0xC0,0x02,0x0F]
# name
mfcr %d0, $tr5_adr

# tr5_evt
# name
# CHECK-INST: mfcr %d0, $tr5evt
# CHECK-ENC: encoding: [0x4d,0x80,0x02,0x0F]
# name
mfcr %d0, $tr5_evt

# tr5adr
# name
# CHECK-INST: mfcr %d0, $tr5adr
# CHECK-ENC: encoding: [0x4d,0xC0,0x02,0x0F]
# uimm16
# CHECK-INST: mfcr %d1, $tr5adr
# CHECK-ENC: encoding: [0x4d,0xC0,0x02,0x1F]
# name
mfcr %d0, $tr5adr
# uimm16
mfcr %d1, 0xF02C

# tr5evt
# name
# CHECK-INST: mfcr %d0, $tr5evt
# CHECK-ENC: encoding: [0x4d,0x80,0x02,0x0F]
# uimm16
# CHECK-INST: mfcr %d1, $tr5evt
# CHECK-ENC: encoding: [0x4d,0x80,0x02,0x1F]
# name
mfcr %d0, $tr5evt
# uimm16
mfcr %d1, 0xF028

# tr6_adr
# name
# CHECK-INST: mfcr %d0, $tr6adr
# CHECK-ENC: encoding: [0x4d,0x40,0x03,0x0F]
# name
mfcr %d0, $tr6_adr

# tr6_evt
# name
# CHECK-INST: mfcr %d0, $tr6evt
# CHECK-ENC: encoding: [0x4d,0x00,0x03,0x0F]
# name
mfcr %d0, $tr6_evt

# tr6adr
# name
# CHECK-INST: mfcr %d0, $tr6adr
# CHECK-ENC: encoding: [0x4d,0x40,0x03,0x0F]
# uimm16
# CHECK-INST: mfcr %d1, $tr6adr
# CHECK-ENC: encoding: [0x4d,0x40,0x03,0x1F]
# name
mfcr %d0, $tr6adr
# uimm16
mfcr %d1, 0xF034

# tr6evt
# name
# CHECK-INST: mfcr %d0, $tr6evt
# CHECK-ENC: encoding: [0x4d,0x00,0x03,0x0F]
# uimm16
# CHECK-INST: mfcr %d1, $tr6evt
# CHECK-ENC: encoding: [0x4d,0x00,0x03,0x1F]
# name
mfcr %d0, $tr6evt
# uimm16
mfcr %d1, 0xF030

# tr7_adr
# name
# CHECK-INST: mfcr %d0, $tr7adr
# CHECK-ENC: encoding: [0x4d,0xC0,0x03,0x0F]
# name
mfcr %d0, $tr7_adr

# tr7_evt
# name
# CHECK-INST: mfcr %d0, $tr7evt
# CHECK-ENC: encoding: [0x4d,0x80,0x03,0x0F]
# name
mfcr %d0, $tr7_evt

# tr7adr
# name
# CHECK-INST: mfcr %d0, $tr7adr
# CHECK-ENC: encoding: [0x4d,0xC0,0x03,0x0F]
# uimm16
# CHECK-INST: mfcr %d1, $tr7adr
# CHECK-ENC: encoding: [0x4d,0xC0,0x03,0x1F]
# name
mfcr %d0, $tr7adr
# uimm16
mfcr %d1, 0xF03C

# tr7evt
# name
# CHECK-INST: mfcr %d0, $tr7evt
# CHECK-ENC: encoding: [0x4d,0x80,0x03,0x0F]
# uimm16
# CHECK-INST: mfcr %d1, $tr7evt
# CHECK-ENC: encoding: [0x4d,0x80,0x03,0x1F]
# name
mfcr %d0, $tr7evt
# uimm16
mfcr %d1, 0xF038

# trig_acc
# name
# CHECK-INST: mfcr %d0, $trig_acc
# CHECK-ENC: encoding: [0x4d,0x00,0xD3,0x0F]
# uimm16
# CHECK-INST: mfcr %d1, $trig_acc
# CHECK-ENC: encoding: [0x4d,0x00,0xD3,0x1F]
# name
mfcr %d0, $trig_acc
# uimm16
mfcr %d1, 0xFD30
