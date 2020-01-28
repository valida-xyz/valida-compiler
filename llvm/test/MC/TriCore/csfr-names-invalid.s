# RUN: not llvm-mc -triple=tricore < %s 2>&1 \
# RUN:  | FileCheck -check-prefix=ERROR %s

# name
# ERROR: :[[@LINE+4]]:6: error: MTCR instructions require system register to be writeable
# uimm16
# ERROR: :[[@LINE+4]]:6: error: MTCR instructions require system register to be writeable
# name
mtcr $cpu_id, %d0
# uimm16
mtcr 0xFE18, %d1

# name
# ERROR: :[[@LINE+4]]:6: error: MTCR instructions require system register to be writeable
# uimm16
# ERROR: :[[@LINE+4]]:6: error: MTCR instructions require system register to be writeable
# name
mtcr $cus_id, %d0
# uimm16
mtcr 0xFE50, %d1

# name
# ERROR: :[[@LINE+4]]:6: error: MTCR instructions require system register to be writeable
# uimm16
# ERROR: :[[@LINE+4]]:6: error: MTCR instructions require system register to be writeable
# name
mtcr $dcon2, %d0
# uimm16
mtcr 0x9000, %d1

# name
# ERROR: :[[@LINE+4]]:6: error: MTCR instructions require system register to be writeable
# uimm16
# ERROR: :[[@LINE+4]]:6: error: MTCR instructions require system register to be writeable
# name
mtcr $deadd, %d0
# uimm16
mtcr 0x901C, %d1

# name
# ERROR: :[[@LINE+4]]:6: error: MTCR instructions require system register to be writeable
# uimm16
# ERROR: :[[@LINE+4]]:6: error: MTCR instructions require system register to be writeable
# name
mtcr $diear, %d0
# uimm16
mtcr 0x9020, %d1

# name
# ERROR: :[[@LINE+4]]:6: error: MTCR instructions require system register to be writeable
# uimm16
# ERROR: :[[@LINE+4]]:6: error: MTCR instructions require system register to be writeable
# name
mtcr $fpu_trap_opc, %d0
# uimm16
mtcr 0xA008, %d1

# name
# ERROR: :[[@LINE+4]]:6: error: MTCR instructions require system register to be writeable
# uimm16
# ERROR: :[[@LINE+4]]:6: error: MTCR instructions require system register to be writeable
# name
mtcr $fpu_trap_pc, %d0
# uimm16
mtcr 0xA004, %d1

# name
# ERROR: :[[@LINE+4]]:6: error: MTCR instructions require system register to be writeable
# uimm16
# ERROR: :[[@LINE+4]]:6: error: MTCR instructions require system register to be writeable
# name
mtcr $fpu_trap_src1, %d0
# uimm16
mtcr 0xA010, %d1

# name
# ERROR: :[[@LINE+4]]:6: error: MTCR instructions require system register to be writeable
# uimm16
# ERROR: :[[@LINE+4]]:6: error: MTCR instructions require system register to be writeable
# name
mtcr $fpu_trap_src2, %d0
# uimm16
mtcr 0xA014, %d1

# name
# ERROR: :[[@LINE+4]]:6: error: MTCR instructions require system register to be writeable
# uimm16
# ERROR: :[[@LINE+4]]:6: error: MTCR instructions require system register to be writeable
# name
mtcr $fpu_trap_src3, %d0
# uimm16
mtcr 0xA018, %d1

# name
# ERROR: :[[@LINE+4]]:6: error: MTCR instructions require system register to be writeable
# uimm16
# ERROR: :[[@LINE+4]]:6: error: MTCR instructions require system register to be writeable
# name
mtcr $pc, %d0
# uimm16
mtcr 0xFE08, %d1

# name
# ERROR: :[[@LINE+4]]:6: error: MTCR instructions require system register to be writeable
# uimm16
# ERROR: :[[@LINE+4]]:6: error: MTCR instructions require system register to be writeable
# name
mtcr $pcon2, %d0
# uimm16
mtcr 0x9208, %d1

# name
# ERROR: :[[@LINE+4]]:6: error: MTCR instructions require system register to be writeable
# uimm16
# ERROR: :[[@LINE+4]]:6: error: MTCR instructions require system register to be writeable
# name
mtcr $piear, %d0
# uimm16
mtcr 0x9210, %d1

# name
# ERROR: :[[@LINE+4]]:6: error: MTCR instructions require system register to be writeable
# uimm16
# ERROR: :[[@LINE+4]]:6: error: MTCR instructions require system register to be writeable
# name
mtcr $pma2, %d0
# uimm16
mtcr 0x8108, %d1

# name
# ERROR: :[[@LINE+4]]:6: error: MTCR instructions require system register to be writeable
# uimm16
# ERROR: :[[@LINE+4]]:6: error: MTCR instructions require system register to be writeable
# name
mtcr $tps_con, %d0
# uimm16
mtcr 0xE400, %d1

# name
# ERROR: :[[@LINE+4]]:6: error: MTCR instructions require system register to be writeable
# uimm16
# ERROR: :[[@LINE+4]]:6: error: MTCR instructions require system register to be writeable
# name
mtcr $trig_acc, %d0
# uimm16
mtcr 0xFD30, %d1
