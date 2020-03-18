# RUN: llvm-mc %s -filetype=obj -triple=tricore | llvm-readobj -h \
# RUN:     | FileCheck -check-prefix=TC %s

# TC: Format: elf32-tricore
# TC: Arch: tricore
# TC: AddressSize: 32bit
# TC: ElfHeader {
# TC:   Ident {
# TC:     Magic: (7F 45 4C 46)
# TC:     Class: 32-bit (0x1)
# TC:     DataEncoding: LittleEndian (0x1)
# TC:     FileVersion: 1
# TC:     OS/ABI: SystemV (0x0)
# TC:     ABIVersion: 0
# TC:   }
# TC:   Type: Relocatable (0x1)
# TC:   Machine: EM_TRICORE (0x2C)
# TC:   Version: 1
# TC:   Flags [ (0x80000)
# TC:     EF_TRICORE_V1_8 (0x80000)
# TC:   ]
# TC: }