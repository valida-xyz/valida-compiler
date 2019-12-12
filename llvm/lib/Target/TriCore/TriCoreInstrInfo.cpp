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
#include "MCTargetDesc/TriCoreBaseInfo.h"
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

TriCoreInstrInfo::TriCoreInstrInfo()
    : TriCoreGenInstrInfo(TriCore::ADJCALLSTACKDOWN, TriCore::ADJCALLSTACKUP),
      TRI() {}

std::pair<unsigned int, unsigned int>
TriCoreInstrInfo::decomposeMachineOperandsTargetFlags(unsigned int TF) const {
  const unsigned Mask = TriCoreII::MO_FRAGMENT;
  return std::make_pair(TF & Mask, TF & ~Mask);
}

ArrayRef<std::pair<unsigned int, const char *>>
TriCoreInstrInfo::getSerializableDirectMachineOperandTargetFlags() const {
  using namespace TriCoreII;

  static const std::pair<unsigned, const char *> TargetFlags[] = {
      {MO_HI, "tricore-hi"},
      {MO_LO, "tricore-lo"},
  };

  return makeArrayRef(TargetFlags);
}

void TriCoreInstrInfo::copyPhysReg(MachineBasicBlock &MBB,
                                   MachineBasicBlock::iterator MI,
                                   const DebugLoc &DL, unsigned DestReg,
                                   unsigned SrcReg, bool KillSrc) const {

  if (TriCore::DataRegsRegClass.contains(DestReg)) {

    // Copy from data register to data register -> MOV_dd
    if (TriCore::DataRegsRegClass.contains(SrcReg)) {
      BuildMI(MBB, MI, DL, get(TriCore::MOV_dd), DestReg)
          .addUse(SrcReg, getKillRegState(KillSrc));
      return;
    }

    // Copy from address register to data register -> MOVD_da
    if (TriCore::AddrRegsRegClass.contains(SrcReg)) {
      BuildMI(MBB, MI, DL, get(TriCore::MOVD_da), DestReg)
          .addUse(SrcReg, getKillRegState(KillSrc));
      return;
    }
  }

  if (TriCore::AddrRegsRegClass.contains(DestReg)) {
    // Copy from address register to address register -> MOVAA_aa
    if (TriCore::AddrRegsRegClass.contains(SrcReg)) {
      BuildMI(MBB, MI, DL, get(TriCore::MOVAA_aa), DestReg)
          .addUse(SrcReg, getKillRegState(KillSrc));
      return;
    }

    // Copy from data register to address register -> MOVA_ad
    if (TriCore::DataRegsRegClass.contains(SrcReg)) {
      BuildMI(MBB, MI, DL, get(TriCore::MOVA_ad), DestReg)
          .addUse(SrcReg, getKillRegState(KillSrc));
      return;
    }
  }

  if (TriCore::ExtDataRegsRegClass.contains(DestReg)) {

    // Copy from extended data register to extended data register -> MOV_edd
    if (TriCore::ExtDataRegsRegClass.contains(SrcReg)) {
      const unsigned LowerSrcReg = TRI.getSubReg(SrcReg, TriCore::dsub0);
      const unsigned HigherSrcReg = TRI.getSubReg(SrcReg, TriCore::dsub1);

      BuildMI(MBB, MI, DL, get(TriCore::MOV_edd), DestReg)
          .addUse(HigherSrcReg, getKillRegState(KillSrc))
          .addUse(LowerSrcReg, getKillRegState(KillSrc));
      return;
    }

    // Copy from data register to extended data register -> MOV_ed
    if (TriCore::DataRegsRegClass.contains(SrcReg)) {
      BuildMI(MBB, MI, DL, get(TriCore::MOV_ed), DestReg)
          .addUse(SrcReg, getKillRegState(KillSrc));
      return;
    }

    // Copy from extended address register to extended data register
    // We need to move both sub-registers from the extended address
    // register to data registers using MOV_da
    if (TriCore::ExtAddrRegsRegClass.contains(SrcReg)) {
      const unsigned LowerSrcReg = TRI.getSubReg(SrcReg, TriCore::asub0);
      const unsigned HigherSrcReg = TRI.getSubReg(SrcReg, TriCore::asub1);

      const unsigned LowerDstReg = TRI.getSubReg(DestReg, TriCore::dsub0);
      const unsigned HigherDstReg = TRI.getSubReg(DestReg, TriCore::dsub1);

      BuildMI(MBB, MI, DL, get(TriCore::MOVD_da), LowerDstReg)
          .addUse(LowerSrcReg, getKillRegState(KillSrc));

      BuildMI(MBB, MI, DL, get(TriCore::MOVD_da), HigherDstReg)
          .addUse(HigherSrcReg, getKillRegState(KillSrc));
      return;
    }
  }

  if (TriCore::ExtAddrRegsRegClass.contains(DestReg)) {

    // Copy from extended address register to extended address register
    // We need to move both sub-registers from the extended address
    // register to the address registers using MOVAA_aa
    if (TriCore::ExtAddrRegsRegClass.contains(SrcReg)) {
      const unsigned LowerSrcReg = TRI.getSubReg(SrcReg, TriCore::asub0);
      const unsigned HigherSrcReg = TRI.getSubReg(SrcReg, TriCore::asub1);

      const unsigned LowerDstReg = TRI.getSubReg(DestReg, TriCore::asub0);
      const unsigned HigherDstReg = TRI.getSubReg(DestReg, TriCore::asub1);

      BuildMI(MBB, MI, DL, get(TriCore::MOVAA_aa), LowerDstReg)
          .addUse(LowerSrcReg, getKillRegState(KillSrc));

      BuildMI(MBB, MI, DL, get(TriCore::MOVAA_aa), HigherDstReg)
          .addUse(HigherSrcReg, getKillRegState(KillSrc));
      return;
    }

    // Copy from extended data register to extended address register
    // We need to move both sub-registers from the extended address
    // register to the data registers using MOVA_ad
    if (TriCore::ExtDataRegsRegClass.contains(SrcReg)) {
      const unsigned LowerSrcReg = TRI.getSubReg(SrcReg, TriCore::dsub0);
      const unsigned HigherSrcReg = TRI.getSubReg(SrcReg, TriCore::dsub1);

      const unsigned LowerDstReg = TRI.getSubReg(DestReg, TriCore::asub0);
      const unsigned HigherDstReg = TRI.getSubReg(DestReg, TriCore::asub1);

      BuildMI(MBB, MI, DL, get(TriCore::MOVA_ad), LowerDstReg)
          .addUse(LowerSrcReg, getKillRegState(KillSrc));

      BuildMI(MBB, MI, DL, get(TriCore::MOVA_ad), HigherDstReg)
          .addUse(HigherSrcReg, getKillRegState(KillSrc));
      return;
    }
  }

  llvm_unreachable("unimplemented reg-to-reg copy");
}

static unsigned getLoadStoreOpcode(unsigned SpillSize,
                                   const TargetRegisterClass *RC, bool IsLoad) {

  std::pair<unsigned, unsigned> Opc = {0, 0};

  switch (SpillSize) {
  case 4:
    // If the source / destination is a 32-bit D register, choose LDW/STW
    // If it is a 32-bit A register, choose LDA, STA
    if (TriCore::DataRegsRegClass.hasSubClassEq(RC)) {
      Opc = {TriCore::LDW_dalc, TriCore::STW_alcd};
    } else if (TriCore::AddrRegsRegClass.hasSubClassEq(RC))
      Opc = {TriCore::LDA_aalc, TriCore::STA_alca};
    break;
  case 8:
    // If the source / destination is a 64-bit E register, choose LDD/STD
    // If it is a 64-bit P register, choose LDDA/STDA
    if (TriCore::ExtDataRegsRegClass.hasSubClassEq(RC)) {
      Opc = {TriCore::LDD_eac, TriCore::STD_ace};
    } else if (TriCore::ExtAddrRegsRegClass.hasSubClassEq(RC))
      Opc = {TriCore::LDDA_pac, TriCore::STDA_acp};
    break;
  default:
    llvm_unreachable("Unhandled register class!");
  }

  return IsLoad ? Opc.first : Opc.second;
}

void TriCoreInstrInfo::storeRegToStackSlot(
    MachineBasicBlock &MBB, MachineBasicBlock::iterator MI, unsigned SrcReg,
    bool isKill, int FrameIndex, const TargetRegisterClass *RC,
    const TargetRegisterInfo *TRI) const {
  MachineFunction &MF = *MBB.getParent();
  MachineFrameInfo &MFI = MF.getFrameInfo();
  unsigned Align = MFI.getObjectAlignment(FrameIndex);

  MachinePointerInfo PtrInfo =
      MachinePointerInfo::getFixedStack(MF, FrameIndex);
  MachineMemOperand *MMO =
      MF.getMachineMemOperand(PtrInfo, MachineMemOperand::MOStore,
                              MFI.getObjectSize(FrameIndex), Align);

  unsigned Opc =
      getLoadStoreOpcode(TRI->getSpillSize(*RC), RC, /*IsLoad*/ false);
  assert(Opc && "Unknown register class");

  // Create the instruction in the expected form (immediate offset == 0)
  // This is asserted in TriCoreRegisterInfo::eliminateFrameIndex
  BuildMI(MBB, MI, DebugLoc(), get(Opc))
      .addFrameIndex(FrameIndex)
      .addImm(0)
      .addReg(SrcReg, getKillRegState(isKill))
      .addMemOperand(MMO);
}

void TriCoreInstrInfo::loadRegFromStackSlot(
    MachineBasicBlock &MBB, MachineBasicBlock::iterator MI, unsigned DestReg,
    int FrameIndex, const TargetRegisterClass *RC,
    const TargetRegisterInfo *TRI) const {
  MachineFunction &MF = *MBB.getParent();
  MachineFrameInfo &MFI = MF.getFrameInfo();
  unsigned Align = MFI.getObjectAlignment(FrameIndex);

  MachinePointerInfo PtrInfo =
      MachinePointerInfo::getFixedStack(MF, FrameIndex);
  MachineMemOperand *MMO = MF.getMachineMemOperand(
      PtrInfo, MachineMemOperand::MOLoad, MFI.getObjectSize(FrameIndex), Align);

  unsigned Opc =
      getLoadStoreOpcode(TRI->getSpillSize(*RC), RC, /*IsLoad*/ true);
  assert(Opc && "Unknown register class");

  // Create the instruction in the expected form (immediate offset == 0)
  // This is asserted in TriCoreRegisterInfo::eliminateFrameIndex
  BuildMI(MBB, MI, DebugLoc(), get(Opc))
      .addDef(DestReg)
      .addFrameIndex(FrameIndex)
      .addImm(0)
      .addMemOperand(MMO);
};