# RUN: llvm-mc -triple=tricore -filetype=obj < %s | llvm-readobj \
# RUN: --file-headers - | FileCheck -check-prefixes=DEFAULT %s
# RUN: llvm-mc -triple=tricore -mcpu=tc4xx -filetype=obj < %s | llvm-readobj \
# RUN: --file-headers - | FileCheck -check-prefixes=TC18 %s
# RUN: llvm-mc -triple=tricore -mcpu=tc3xx -filetype=obj < %s | llvm-readobj \
# RUN: --file-headers - | FileCheck -check-prefixes=TC162 %s
# RUN: llvm-mc -triple=tricore -mcpu=tc2xx -filetype=obj < %s | llvm-readobj \
# RUN: --file-headers - | FileCheck -check-prefixes=TC161 %s

# DEFAULT:       Flags [ (0x80000)
# DEFAULT-NEXT:     EF_TRICORE_V1_8 (0x80000)
# DEFAULT-NEXT:  ]

# TC18:          Flags [ (0x80000)
# TC18-NEXT:        EF_TRICORE_V1_8 (0x80000)
# TC18-NEXT:     ]

# TC162:         Flags [ (0x100000)
# TC162-NEXT:       EF_TRICORE_V1_6_2 (0x100000)
# TC162-NEXT:    ]

# TC161:         Flags [ (0x200000)
# TC161-NEXT:       EF_TRICORE_V1_6_1 (0x200000)
# TC161-NEXT:    ]
