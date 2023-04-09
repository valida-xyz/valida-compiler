# Valida Compiler

### Overview
This repository contains the compiler for the [Valida zkVM](https://github.com/delendum-xyz/Valida), a STARK-based VM designed to efficiently prove the execution of programs written in conventional languages. A work-in-progress spec for the VM ISA is described in the GitHub issue [here](https://github.com/delendum-xyz/valida-compiler/issues/2). The code implementing the compiler can be found in the `llvm/lib/Target/Delendum` directory.

### Building the compiler
These are the steps to build the Valida backend compiler (`llc`), which translates LLVM IR to Valida Assembly:

1. `mkdir build`
2. `cd build`
3. `cmake -G "Ninja" -DLLVM_TARGETS_TO_BUILD="" -DLLVM_EXPERIMENTAL_TARGETS_TO_BUILD="Delendum" ../llvm`
4. `ninja llc`

### Compilation example

In this section we'll show how to generate Valida Assembly from the following example C program:

```c
// prog.c

#include <stdint.h>

int mul_add(int a, int b) {
  int c = a * b;
  return c + 42;
}

void main() {
  int a = 1111;
  int b = 2222;
  int r = mul_add(a, b);
  return;
}
```

1. Compile the program to LLVM IR using Clang, with a generic 32-bit backend as our target:

`clang prog.c --target=riscv32 -S -emit-llvm`

2. Generate the assembly:

`./build/bin/llc prog.ll --march=delendum --global-isel`

```asm
; prog.s

...
mul_add:                                ; @mul_add
	.cfi_startproc
; %bb.0:
	mul 	4, -8, -12
	addi 	-4, 4, 42
	jalv	0, 0, -12
...
main:                                   ; @main
	.cfi_startproc
; %bb.0:
	set32	0, 0, 0, 4, 87
	set32	4, 0, 0, 8, 174
	jal  	12, mul_add, 12
...
```
