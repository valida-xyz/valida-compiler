//==-- TriCoreRegisterInfo.td - TriCore Register defs ------*- tablegen -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//


//===----------------------------------------------------------------------===//
// Registers
//===----------------------------------------------------------------------===//

class TriCoreReg<bits<4> enc, string n, list<Register> subregs = []>
      : Register<n> {
  let HWEncoding{3-0} = enc;
  let Namespace = "TriCore";
  let SubRegs = subregs;
}

// Data registers
def D0 : TriCoreReg<0, "d0">, DwarfRegNum<[0]>;

// Control registers
def PSW : TriCoreReg<0, "PSW">, DwarfRegNum<[40]>;

//===----------------------------------------------------------------------===//
// Register classes
//===----------------------------------------------------------------------===//

def DataRegs : RegisterClass<"TriCore", [i32], 32, (add D0)>;