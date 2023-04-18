//===-- DelendumInstrInfo.cpp - Delendum Instruction Information ----------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file contains the Delendum implementation of the TargetInstrInfo class.
//
//===----------------------------------------------------------------------===//

#include "DelendumInstrInfo.h"
#include "DelendumSubtarget.h"
#include "DelendumTargetMachine.h"
#include "MCTargetDesc/DelendumMCCodeEmitter.h"

#include "llvm/ADT/STLExtras.h"
#include "llvm/ADT/SmallVector.h"
#include "llvm/CodeGen/MachineFrameInfo.h"
#include "llvm/CodeGen/MachineInstrBuilder.h"
#include "llvm/CodeGen/MachineMemOperand.h"
#include "llvm/CodeGen/MachineRegisterInfo.h"
#include "llvm/MC/TargetRegistry.h"
#include "llvm/Support/ErrorHandling.h"

using namespace llvm;

#define DEBUG_TYPE "delendum-instr-info"

#define GET_INSTRINFO_CTOR_DTOR
#include "DelendumGenInstrInfo.inc"

// Pin the vtable to this file.
void DelendumInstrInfo::anchor() {}

DelendumInstrInfo::DelendumInstrInfo(DelendumSubtarget &ST)
  : DelendumGenInstrInfo(DL::ADJCALLSTACKDOWN, DL::ADJCALLSTACKUP),
    RI(ST), Subtarget(ST) {}
