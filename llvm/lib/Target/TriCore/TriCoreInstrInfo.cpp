//===-- TriCoreInstrInfo.cpp - TriCore Instruction Information --*- C++ -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file contains the TriCore implementation of the TargetInstrInfo class.
//
//===----------------------------------------------------------------------===//

#include "TriCoreInstrInfo.h"

#include "TriCore.h"
#include "TriCoreSubtarget.h"
#include "TriCoreTargetMachine.h"
#include "llvm/ADT/STLExtras.h"
#include "llvm/ADT/SmallVector.h"
#include "llvm/CodeGen/MachineFunctionPass.h"
#include "llvm/CodeGen/MachineInstrBuilder.h"
#include "llvm/CodeGen/MachineRegisterInfo.h"
#include "llvm/CodeGen/RegisterScavenging.h"
#include "llvm/Support/ErrorHandling.h"
#include "llvm/Support/TargetRegistry.h"

#define GET_INSTRINFO_CTOR_DTOR
#include "TriCoreGenInstrInfo.inc"

using namespace llvm;

TriCoreInstrInfo::TriCoreInstrInfo() : TriCoreGenInstrInfo() {}
