# RUN: not llvm-mc -triple=tricore < %s 2>&1 | FileCheck %s

##### PC relative

j                   # CHECK: :[[@LINE]]:1: error:{{.*}}
j 2, %d1            # CHECK: :[[@LINE]]:6: error:{{.*}}
j 1                 # CHECK: :[[@LINE]]:3: error:{{.*}}
j 0x1000000         # CHECK: :[[@LINE]]:3: error:{{.*}}
j -0x1000002        # CHECK: :[[@LINE]]:3: error:{{.*}}

jl                  # CHECK: :[[@LINE]]:1: error:{{.*}}
jl 2, %d1           # CHECK: :[[@LINE]]:7: error:{{.*}}
jl 1                # CHECK: :[[@LINE]]:4: error:{{.*}}
jl 0x1000000        # CHECK: :[[@LINE]]:4: error:{{.*}}
jl -0x1000002       # CHECK: :[[@LINE]]:4: error:{{.*}}

call                # CHECK: :[[@LINE]]:1: error:{{.*}}
call 2, %d1         # CHECK: :[[@LINE]]:9: error:{{.*}}
call 1              # CHECK: :[[@LINE]]:6: error:{{.*}}
call 0x1000000      # CHECK: :[[@LINE]]:6: error:{{.*}}
call -0x1000002     # CHECK: :[[@LINE]]:6: error:{{.*}}

##### Absolute

ja                  # CHECK: :[[@LINE]]:1: error:{{.*}}
ja 2, %d1           # CHECK: :[[@LINE]]:7: error:{{.*}}
ja 1                # CHECK: :[[@LINE]]:4: error:{{.*}}
ja 0x00200000       # CHECK: :[[@LINE]]:4: error:{{.*}}
ja 0x00400000       # CHECK: :[[@LINE]]:4: error:{{.*}}
ja 0x00800000       # CHECK: :[[@LINE]]:4: error:{{.*}}
ja 0x01000000       # CHECK: :[[@LINE]]:4: error:{{.*}}
ja 0x02000000       # CHECK: :[[@LINE]]:4: error:{{.*}}
ja 0x04000000       # CHECK: :[[@LINE]]:4: error:{{.*}}
ja 0x08000000       # CHECK: :[[@LINE]]:4: error:{{.*}}

jla                 # CHECK: :[[@LINE]]:1: error:{{.*}}
jla 2, %d1          # CHECK: :[[@LINE]]:8: error:{{.*}}
jla 1               # CHECK: :[[@LINE]]:5: error:{{.*}}
jla 0x00200000      # CHECK: :[[@LINE]]:5: error:{{.*}}
jla 0x00400000      # CHECK: :[[@LINE]]:5: error:{{.*}}
jla 0x00800000      # CHECK: :[[@LINE]]:5: error:{{.*}}
jla 0x01000000      # CHECK: :[[@LINE]]:5: error:{{.*}}
jla 0x02000000      # CHECK: :[[@LINE]]:5: error:{{.*}}
jla 0x04000000      # CHECK: :[[@LINE]]:5: error:{{.*}}
jla 0x08000000      # CHECK: :[[@LINE]]:5: error:{{.*}}

calla               # CHECK: :[[@LINE]]:1: error:{{.*}}
calla 2, %d1        # CHECK: :[[@LINE]]:10: error:{{.*}}
calla 1             # CHECK: :[[@LINE]]:7: error:{{.*}}
calla 0x00200000    # CHECK: :[[@LINE]]:7: error:{{.*}}
calla 0x00400000    # CHECK: :[[@LINE]]:7: error:{{.*}}
calla 0x00800000    # CHECK: :[[@LINE]]:7: error:{{.*}}
calla 0x01000000    # CHECK: :[[@LINE]]:7: error:{{.*}}
calla 0x02000000    # CHECK: :[[@LINE]]:7: error:{{.*}}
calla 0x04000000    # CHECK: :[[@LINE]]:7: error:{{.*}}
calla 0x08000000    # CHECK: :[[@LINE]]:7: error:{{.*}}

##### Indirect

ji                  # CHECK: :[[@LINE]]:1: error:{{.*}}
ji %a1, %d1         # CHECK: :[[@LINE]]:9: error:{{.*}}
ji %d1              # CHECK: :[[@LINE]]:4: error:{{.*}}

jli                 # CHECK: :[[@LINE]]:1: error:{{.*}}
jli %a1, %d1        # CHECK: :[[@LINE]]:10: error:{{.*}}
jli %d1             # CHECK: :[[@LINE]]:5: error:{{.*}}

calli               # CHECK: :[[@LINE]]:1: error:{{.*}}
calli %a1, %d1      # CHECK: :[[@LINE]]:12: error:{{.*}}
calli %d1           # CHECK: :[[@LINE]]:7: error:{{.*}}

##### Returns

ret 1               # CHECK: :[[@LINE]]:5: error:{{.*}}

rfe 1               # CHECK: :[[@LINE]]:5: error:{{.*}}