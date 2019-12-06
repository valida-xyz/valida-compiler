# RUN: llvm-mc -triple=tricore -filetype=obj < %s | llvm-readobj \
# RUN: --file-headers - | FileCheck -check-prefixes=DEFAULT %s

# DEFAULT:       Flags [ (0x200000)
# DEFAULT-NEXT:     EF_TRICORE_V1_6_1 (0x200000)
# DEFAULT-NEXT:  ]
