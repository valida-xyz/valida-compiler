//===-- DelendumMachineFunctionInfo.cpp - Private data used for Delendum ----------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//

#include "DelendumMachineFunction.h"
#include "DelendumInstrInfo.h"
#include "DelendumSubtarget.h"
#include "MCTargetDesc/DelendumBaseInfo.h"
#include "llvm/IR/Function.h"
#include "llvm/CodeGen/MachineInstrBuilder.h"
#include "llvm/CodeGen/MachineRegisterInfo.h"

using namespace llvm;

bool FixGlobalBaseReg = true;

bool DelendumFunctionInfo::globalBaseRegFixed() const {
  return FixGlobalBaseReg;
}

bool DelendumFunctionInfo::globalBaseRegSet() const {
  return GlobalBaseReg;
}

unsigned DelendumFunctionInfo::getGlobalBaseReg() {
  // TODO
}

void DelendumFunctionInfo::anchor() { }
