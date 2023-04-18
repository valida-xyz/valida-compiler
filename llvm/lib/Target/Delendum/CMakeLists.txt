add_llvm_component_group(Delendum)

set(LLVM_TARGET_DEFINITIONS Delendum.td)

tablegen(LLVM DelendumGenGlobalISel.inc        -gen-global-isel)
tablegen(LLVM DelendumGenRegisterBank.inc      -gen-register-bank)
tablegen(LLVM DelendumGenAsmWriter.inc         -gen-asm-writer)
tablegen(LLVM DelendumGenAsmMatcher.inc        -gen-asm-matcher)
tablegen(LLVM DelendumGenDAGISel.inc           -gen-dag-isel)
tablegen(LLVM DelendumGenCallingConv.inc       -gen-callingconv)
tablegen(LLVM DelendumGenInstrInfo.inc         -gen-instr-info)
tablegen(LLVM DelendumGenRegisterInfo.inc      -gen-register-info)
tablegen(LLVM DelendumGenSubtargetInfo.inc     -gen-subtarget)
tablegen(LLVM DelendumGenMCCodeEmitter.inc     -gen-emitter)
tablegen(LLVM DelendumGenDisassemblerTable.inc -gen-disassembler)

add_public_tablegen_target(DelendumCommonTableGen)

add_llvm_target(DelendumCodeGen
  GISel/DelendumCallLowering.cpp
  GISel/DelendumLegalizerInfo.cpp
  GISel/DelendumRegisterBankInfo.cpp
  GISel/DelendumInstructionSelector.cpp
  DelendumAsmPrinter.cpp
  DelendumDeadStackSlotEliminator.cpp
  DelendumInstrInfo.cpp
  DelendumISelDAGToDAG.cpp
  DelendumISelLowering.cpp
  DelendumFrameLowering.cpp
  DelendumMachineFunction.cpp
  DelendumMCInstLower.cpp
  DelendumPreLegalizerCombiner.cpp
  DelendumSubtarget.cpp
  DelendumRegisterInfo.cpp
  DelendumTargetMachine.cpp
  DelendumTargetObjectFile.cpp

  LINK_COMPONENTS
  Analysis
  AsmPrinter
  CodeGen
  Core
  GlobalISel
  MC
  SelectionDAG
  Support
  Target
  DelendumDesc
  DelendumInfo

  ADD_TO_COMPONENT
  Delendum
)

add_subdirectory(Disassembler)
add_subdirectory(AsmParser)
add_subdirectory(MCTargetDesc)
add_subdirectory(TargetInfo)
