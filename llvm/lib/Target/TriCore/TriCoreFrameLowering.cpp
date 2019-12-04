//===-- TriCoreFrameLowering.cpp - TriCore Frame Information ---*- C++ -*-====//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file contains the TriCore implementation of TargetFrameLowering class.
//
// On TriCore, stack frames are structured as follows:
//
// The stack grows downward.
//
// All of the individual frame areas on the frame below are optional, i.e. it's
// possible to create a function so that the particular area isn't present
// in the frame.
//
// At function entry, the "frame" looks as follows:
//
// |                                   | Higher address
// |-----------------------------------|
// |                                   |
// | arguments passed on the stack     |
// |                                   |
// |-----------------------------------| <- sp(=a10)
// |                                   | Lower address
//
//
// After the prologue has run, the frame has the following general structure.
//
// |                                   | Higher address
// |-----------------------------------|
// |                                   |
// | arguments passed on the stack     |
// |                                   |
// |-----------------------------------| <- fp(=a14)
// |.empty.space.to.make.part.below....|
// |.aligned.in.case.it.needs.more.than| (size of this area is unknown at
// |.the.standard.8-byte.alignment.....|  compile time; if present)
// |-----------------------------------|
// | local variables of fixed size     |
// | including spill slots             |
// |-----------------------------------|
// |.variable-sized.local.variables....|
// |.(VLAs)............................| (size of this area is unknown at
// |...................................|  compile time)
// |-----------------------------------| <- sp
// |                                   | Lower address
//
//
// To access the data in a frame, at-compile time, a constant offset must be
// computable from one of the pointers (fp, sp) to access it. The size
// of the areas with a dotted background cannot be computed at compile-time
// if they are present, making it required to have both fp and sp to be set up
// to be able to access all contents in the frame areas, assuming all of the
// frame areas are non-empty.
//
// For most functions, some of the frame areas are empty. For those functions,
// it may not be necessary to set up fp:
// * A frame pointer is definitely needed when there are local variables with
//   more-than-default alignment requirements.
//
// Furthermore there is the concept of reserved call frames. If a function
// does not have variable-sized objects it can reserve enough space on the
// stack for the biggest required call frame. This potentially wastes memory
// but removes the need to update sp before and after function calls.
//
// If call frame reservation is used the stack looks as follows:
//
// |                                   | Higher address
// |-----------------------------------|
// |                                   |
// | arguments passed on the stack     |
// |                                   |
// |-----------------------------------| <- fp(=a14)
// | local variables of fixed size     |
// | including spill slots             |
// |-----------------------------------|
// | reserved call frame               |
// | size is that of the biggest call  |
// | frame required for this function  |
// |-----------------------------------| <- sp
// |                                   | Lower address
//
//===----------------------------------------------------------------------===//

#include "TriCoreFrameLowering.h"
#include "TriCoreSubtarget.h"
#include "llvm/CodeGen/MachineFrameInfo.h"
#include "llvm/CodeGen/MachineFunction.h"
#include "llvm/CodeGen/MachineInstrBuilder.h"
#include "llvm/CodeGen/RegisterScavenging.h"
#include "llvm/MC/MCDwarf.h"
#include <llvm/IR/DiagnosticInfo.h>

#define DEBUG_TYPE "tricore-frame-lower"

using namespace llvm;

bool TriCoreFrameLowering::hasFP(const MachineFunction &MF) const {
  // TODO: check if this function has a frame pointer
  return true;
}

bool TriCoreFrameLowering::hasReservedCallFrame(
    const MachineFunction &MF) const {
  // We always reserve a call frame unless the function has variable sized
  // objects
  return !MF.getFrameInfo().hasVarSizedObjects();
}

int TriCoreFrameLowering::getFrameIndexReference(const MachineFunction &MF,
                                                 int FI,
                                                 unsigned &FrameReg) const {
  const MachineFrameInfo &MFI = MF.getFrameInfo();
  const TriCoreRegisterInfo *TRI =
      MF.getSubtarget<TriCoreSubtarget>().getRegisterInfo();

  // Use the FP if it is available, otherwise use SP
  FrameReg = TRI->getFrameRegister(MF);

  // Make sure that getFrameRegister is properly implemented
  assert((hasFP(MF) || FrameReg == TRI->getStackRegister()) &&
         "Expected frame register to be SP if FP is not available");

  // Calculate the offset based on the FP
  int Offset = MFI.getObjectOffset(FI) - getOffsetOfLocalArea() +
               MFI.getOffsetAdjustment();

  // Adjust offset if FP is not available
  if (!hasFP(MF))
    Offset += MFI.getStackSize();

  return Offset;
}

void TriCoreFrameLowering::determineFrameLayout(MachineFunction &MF) const {
  // Determine the size of the frame and maximum call frame size.
  MachineFrameInfo &MFI = MF.getFrameInfo();
  const auto &Subtarget = MF.getSubtarget<TriCoreSubtarget>();
  const TriCoreRegisterInfo *TRI = Subtarget.getRegisterInfo();

  // Get the number of bytes to allocate from the FrameInfo and the alignment
  uint64_t FrameSize = MFI.getStackSize();
  unsigned StackAlign = getStackAlignment();

  // Stack realignment not supported yet
  assert(!TRI->needsStackRealignment(MF) &&
         "Stack realignment not supported yet");

  // Align and set the max call frame size
  uint64_t MaxCallSize = MFI.getMaxCallFrameSize();
  MaxCallSize = alignTo(MaxCallSize, StackAlign);
  MFI.setMaxCallFrameSize(MaxCallSize);

  // Make sure the frame is aligned and update the frame info
  FrameSize = alignTo(FrameSize, StackAlign);
  MFI.setStackSize(FrameSize);
}

void TriCoreFrameLowering::adjustStackPointer(MachineBasicBlock &MBB,
                                              MachineBasicBlock::iterator MBBI,
                                              const DebugLoc &DL,
                                              const Register SPReg,
                                              const int64_t Val,
                                              const MachineInstr::MIFlag Flag) {
  // Early exit if there is nothing to do
  if (Val == 0)
    return;

  // Helper
  const auto &Subtarget = MBB.getParent()->getSubtarget<TriCoreSubtarget>();
  const TriCoreInstrInfo *TII = Subtarget.getInstrInfo();

  // Check if Val fits in a 16-bit immediate
  if (isInt<16>(Val)) {
    BuildMI(MBB, MBBI, DL, TII->get(TriCore::LEA_aac), SPReg)
        .addUse(SPReg)
        .addImm(Val)
        .setMIFlag(Flag);
  } else {
    assert(isInt<32>(Val) && "Expected Val to fit into 32-bits");
    // Emit 32-bit frame offset
    TII->emitFrameOffset(MBB, MBBI, DL, SPReg, SPReg, Val, Flag);
  }
}

void TriCoreFrameLowering::emitPrologue(MachineFunction &MF,
                                        MachineBasicBlock &MBB) const {
  // Make sure that we are at the beginning of the function
  // XXX: Shrink-wrapping delays stack setup so branches, that do not need the
  //  stack do not have to set it up.
  //  What exactly is there to do to support shrink-wrapping?
  assert(&MF.front() == &MBB && "Shrink-wrap optimization not supported yet");

  // Helper
  const MachineFrameInfo &MFI = MF.getFrameInfo();
  const auto &Subtarget = MF.getSubtarget<TriCoreSubtarget>();
  const TriCoreRegisterInfo *TRI = Subtarget.getRegisterInfo();
  const TargetInstrInfo *TII = Subtarget.getInstrInfo();
  MachineBasicBlock::iterator MBBI = MBB.begin();

  const bool NeedsStackRealignment = TRI->needsStackRealignment(MF);

  // FIXME: If canRealignStack returns false, needsStackRealignment always
  //  returns false instead of actually checking if it should realign and
  //  reporting an error if needed. Therefore we need an explicit check here to
  //  avoid silent miscompiles
  if (!NeedsStackRealignment && MFI.getMaxAlignment() > getStackAlignment())
    report_fatal_error("Function \"" + Twine(MF.getName()) +
                       "\" required stack re-alignment, but LLVM couldn't "
                       "handle it (probably because it has a dynamic alloca).");

  // FIXME: Add support for stack realignment
  // We don't support re-aligning stacks and funclets yet.
  if (NeedsStackRealignment)
    report_fatal_error("TriCore backend cannot handle functions that need "
                       "stack realignment yet.");

  // FIXME: Add support for funclets
  if (MBB.isEHFuncletEntry() || MBB.isCleanupFuncletEntry())
    report_fatal_error("TriCore backend cannot handle funclets yet.");

  // Debug location must be unknown since the first debug location is used
  // to determine the end of the prologue.
  DebugLoc DL;

  // Determine the correct frame layout. This also aligns the stack size.
  determineFrameLayout(MF);
  const uint64_t StackSize = MFI.getStackSize();

  // Make sure that we don't have callee saved registers (CALL saves upper
  // context implicitly)
  assert(MFI.getCalleeSavedInfo().empty() &&
         "Expected no callee saved registers");

  // Make sure that the stack size is reasonable
  if (!isUInt<32>(StackSize))
    // Emit diagnostics for the user. This will exit.
    MF.getFunction().getContext().diagnose(DiagnosticInfoUnsupported{
        MF.getFunction(),
        "Total size of local objects too large. Must be within 2**32 bytes."});

  // Stack pointer and frame pointer register. If hasFP is false both are equal
  const Register SPReg = TRI->getStackRegister();
  const Register FPReg = TRI->getFrameRegister(MF);

  // Adjust frame pointer if necessary
  if (hasFP(MF)) {
    assert(FPReg != SPReg &&
           "Expected FP register to differ from the SP register");

    BuildMI(MBB, MBBI, DL, TII->get(TriCore::MOVAA_aa), FPReg)
        .addUse(SPReg)
        .setMIFlag(MachineInstr::FrameSetup);
  }
#ifndef NDEBUG
  else {
    assert(FPReg == SPReg &&
           "Expected FP register to be equal to the SP register if no FP");
  }
#endif

  // Check if we have nothing to do
  if (StackSize == 0 && !MFI.adjustsStack()) {
    LLVM_DEBUG(dbgs() << "Skip prolog creation as a stack is not needed\n");
    return;
  }

  // Allocate space on the stack by adjusting the stack pointer
  adjustStackPointer(MBB, MBBI, DL, SPReg, -StackSize,
                     MachineInstr::FrameSetup);

  // Define the current CFA rule if needed
  if (MF.needsFrameMoves()) {
    unsigned CFIIndex;
    // Use FP if available, else use SP
    if (hasFP(MF)) {
      const unsigned Reg = TRI->getDwarfRegNum(FPReg, true);

      // Emit .cfi_def_cfa FPReg, 0
      CFIIndex =
          // Offset 0 since we have no callee saved registers, so FP is always
          // the current frame address
          MF.addFrameInst(MCCFIInstruction::createDefCfa(nullptr, Reg, 0));
    } else {
      // Emit .cfi_def_cfa_offset StackSize
      CFIIndex = MF.addFrameInst(
          // createDefCfaOffset creates a subtraction by default, therefore we
          // need to pass -StackSize
          MCCFIInstruction::createDefCfaOffset(nullptr, -StackSize));
    }

    BuildMI(MBB, MBBI, DL, TII->get(TargetOpcode::CFI_INSTRUCTION))
        .addCFIIndex(CFIIndex)
        .setMIFlags(MachineInstr::FrameSetup);
  }
}

void TriCoreFrameLowering::emitEpilogue(MachineFunction &MF,
                                        MachineBasicBlock &MBB) const {
  // Nothing to do since %a14 and %a10 are restored by the return
}

MachineBasicBlock::iterator TriCoreFrameLowering::eliminateCallFramePseudoInstr(
    MachineFunction &MF, MachineBasicBlock &MBB,
    MachineBasicBlock::iterator MI) const {
  // Eliminate ADJCALLSTACKDOWN and ADJCALLSTACKUP pseudo instructions
  auto &Subtarget = MF.getSubtarget<TriCoreSubtarget>();
  const TriCoreRegisterInfo *TRI = Subtarget.getRegisterInfo();
  const TargetInstrInfo *TII = Subtarget.getInstrInfo();
  const Register SPReg = TRI->getStackRegister();
  const DebugLoc DL = MI->getDebugLoc();
  const unsigned Opc = MI->getOpcode();
  const bool isDestroy = Opc == TriCore::ADJCALLSTACKUP;
  int64_t Amount = MI->getOperand(0).getImm();

  // 2nd operand should always be 0 and is only there for legacy reasons
  assert(MI->getOperand(1).getImm() == 0 &&
         "Expected 2nd operand of call-frame pseudo instruction to be 0");

  // Only adjust the stack pointer if we don't have a call frame reserved
  if (!hasReservedCallFrame(MF) && Amount) {
    const unsigned Align = getStackAlignment();

    // Get and align the amount in bytes by which we need to adjust the SP
    Amount = alignTo(Amount, Align);
    if (!isDestroy)
      Amount = -Amount;

    // Amount should be within 32-bits
    assert(isInt<32>(Amount) && "Call frame is too large");

    // Emit a frame offset for the stack pointer
    adjustStackPointer(MBB, MI, DL, SPReg, Amount, MachineInstr::NoFlags);

    // Update CFA offset if no FP is available
    if (!hasFP(MF)) {
      const unsigned CFIIndex = MF.addFrameInst(
          MCCFIInstruction::createAdjustCfaOffset(nullptr, Amount));

      BuildMI(MBB, MI, DL, TII->get(TargetOpcode::CFI_INSTRUCTION))
          .addCFIIndex(CFIIndex);
    }
  }

  // Erase the pseudo instruction
  return MBB.erase(MI);
}
