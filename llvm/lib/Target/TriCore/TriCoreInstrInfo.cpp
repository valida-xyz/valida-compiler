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
#include "Utils/TriCoreBaseInfo.h"
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
                                   const DebugLoc &DL, MCRegister DestReg,
                                   MCRegister SrcReg, bool KillSrc) const {

  if (TriCore::DataRegsRegClass.contains(DestReg)) {
    // Copy from status register PSW.C to data register
    if (SrcReg == TriCore::PSW_C) {
      // Move status register PSW to a data register
      BuildMI(MBB, MI, DL, get(TriCore::MFCR_dc), DestReg)
          .addImm(TriCoreSysReg::psw)
          .addUse(TriCore::PSW, RegState::Implicit);

      // Extract carry bit (bit #31)
      BuildMI(MBB, MI, DL, get(TriCore::EXTRU_ddcc), DestReg)
          .addUse(DestReg)
          .addImm(31)
          .addImm(1);
      return;
    }

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
      const MCRegister LowerSrcReg = TRI.getSubReg(SrcReg, TriCore::dsub0);
      const MCRegister HigherSrcReg = TRI.getSubReg(SrcReg, TriCore::dsub1);

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
      const MCRegister LowerSrcReg = TRI.getSubReg(SrcReg, TriCore::asub0);
      const MCRegister HigherSrcReg = TRI.getSubReg(SrcReg, TriCore::asub1);

      const MCRegister LowerDstReg = TRI.getSubReg(DestReg, TriCore::dsub0);
      const MCRegister HigherDstReg = TRI.getSubReg(DestReg, TriCore::dsub1);

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
      const MCRegister LowerSrcReg = TRI.getSubReg(SrcReg, TriCore::asub0);
      const MCRegister HigherSrcReg = TRI.getSubReg(SrcReg, TriCore::asub1);

      const MCRegister LowerDstReg = TRI.getSubReg(DestReg, TriCore::asub0);
      const MCRegister HigherDstReg = TRI.getSubReg(DestReg, TriCore::asub1);

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
      const MCRegister LowerSrcReg = TRI.getSubReg(SrcReg, TriCore::dsub0);
      const MCRegister HigherSrcReg = TRI.getSubReg(SrcReg, TriCore::dsub1);

      const MCRegister LowerDstReg = TRI.getSubReg(DestReg, TriCore::asub0);
      const MCRegister HigherDstReg = TRI.getSubReg(DestReg, TriCore::asub1);

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
    MachineBasicBlock &MBB, MachineBasicBlock::iterator MI, Register SrcReg,
    bool isKill, int FrameIndex, const TargetRegisterClass *RC,
    const TargetRegisterInfo *TRI) const {
  MachineFunction &MF = *MBB.getParent();
  MachineFrameInfo &MFI = MF.getFrameInfo();
  Align Alignment = MFI.getObjectAlign(FrameIndex);

  MachinePointerInfo PtrInfo =
      MachinePointerInfo::getFixedStack(MF, FrameIndex);
  MachineMemOperand *MMO =
      MF.getMachineMemOperand(PtrInfo, MachineMemOperand::MOStore,
                              MFI.getObjectSize(FrameIndex), Alignment);

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
    MachineBasicBlock &MBB, MachineBasicBlock::iterator MI, Register DestReg,
    int FrameIndex, const TargetRegisterClass *RC,
    const TargetRegisterInfo *TRI) const {
  MachineFunction &MF = *MBB.getParent();
  MachineFrameInfo &MFI = MF.getFrameInfo();
  Align Alignment = MFI.getObjectAlign(FrameIndex);

  MachinePointerInfo PtrInfo =
      MachinePointerInfo::getFixedStack(MF, FrameIndex);
  MachineMemOperand *MMO =
      MF.getMachineMemOperand(PtrInfo, MachineMemOperand::MOLoad,
                              MFI.getObjectSize(FrameIndex), Alignment);

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
}

void TriCoreInstrInfo::emitFrameOffset(MachineBasicBlock &MBB,
                                       MachineBasicBlock::iterator MBBI,
                                       const DebugLoc &DL, Register DstReg,
                                       Register SrcReg, uint64_t Val,
                                       MachineInstr::MIFlag Flag) const {
  // Materialize a 32-bit immediate to an address register
  assert(isInt<32>(Val) && "Expected a 32-bit value");
  assert(((DstReg.isPhysical() && TriCore::AddrRegsRegClass.contains(DstReg)) ||
          MBB.getParent()->getRegInfo().getRegClass(DstReg)->getID() ==
              TriCore::AddrRegsRegClass.getID()) &&
         "Expected DstReg to be an address register");
  assert(((SrcReg.isPhysical() && TriCore::AddrRegsRegClass.contains(SrcReg)) ||
          MBB.getParent()->getRegInfo().getRegClass(SrcReg)->getID() ==
              TriCore::AddrRegsRegClass.getID()) &&
         "Expected SrcReg to be an address register");

  // Materialize the value using ADDIHA_aac and LEA_aac
  // Calculation taken from chapter 2.7 Address Arithmetic
  const uint64_t Low16 = Val & 0xFFFFu;
  const uint64_t High16 = ((Val + 0x8000u) >> 16u) & 0xFFFFu;

  if (High16) {
    BuildMI(MBB, MBBI, DL, get(TriCore::ADDIHA_aac), DstReg)
        .addUse(SrcReg)
        .addImm(High16)
        .setMIFlag(Flag);

    SrcReg = DstReg;
  }

  // Skip the LEA if Low16 is 0
  if (Low16) {
    BuildMI(MBB, MBBI, DL, get(TriCore::LEA_aac), DstReg)
        .addUse(SrcReg)
        .addImm(Low16)
        .setMIFlag(Flag);
  }
}

unsigned TriCoreInstrInfo::getOffsetBits(unsigned Opcode) const {
  switch (Opcode) {
  default:
    llvm_unreachable("unexpected opcode!");
  case TriCore::LDB_dalc:
  case TriCore::LDBU_dalc:
  case TriCore::LDH_dalc:
  case TriCore::LDHU_dalc:
  case TriCore::LDW_dalc:
  case TriCore::LDA_aalc:
  case TriCore::STB_alcd:
  case TriCore::STH_alcd:
  case TriCore::STW_alcd:
  case TriCore::STA_alca:
    return 16;
  case TriCore::LEA_aac:
    return 16;
  case TriCore::LDD_eac:
  case TriCore::LDDA_pac:
  case TriCore::STD_ace:
  case TriCore::STDA_acp:
    return 10;
  }
}

bool TriCoreInstrInfo::doesOffsetFitInOffsetOperand(unsigned Opcode,
                                                    int64_t Offset) const {
  unsigned Bits = getOffsetBits(Opcode);
  return isIntN(Bits, Offset);
}
unsigned int
TriCoreInstrInfo::getInstSizeInBytes(const MachineInstr &MI) const {
  // Meta-instructions emit no code.
  if (MI.isMetaInstruction())
    return 0;

  unsigned NumBytes = 0;
  const MCInstrDesc &Desc = MI.getDesc();
  switch (Desc.getOpcode()) {
  default:
    // Anything not explicitly designated otherwise is a normal 4-byte
    // instruction
    NumBytes = 4;
    break;
  case TriCore::JIJumpTable:
    // JIJumpTable expands to four 4-byte instructions
    NumBytes = 16;
    break;
  case TriCore::JIJumpTableTC16XPIC:
    // JIJumpTableTC16XPIC expands to a total of 11 4-byte instructions
    NumBytes = 44;
    break;
  case TriCore::JUMPTABLE_INSTS:
    // The size of JUMPTABLE_INSTS is given in operand #1
    NumBytes = MI.getOperand(1).getImm();
    break;
  }

  return NumBytes;
}
