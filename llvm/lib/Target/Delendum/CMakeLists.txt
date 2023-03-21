add_llvm_component_group(Delendum)

set(LLVM_TARGET_DEFINITIONS Delendum.td)

tablegen(LLVM DelendumGenAsmWriter.inc -gen-asm-writer)
tablegen(LLVM DelendumGenAsmMatcher.inc -gen-asm-matcher)
tablegen(LLVM DelendumGenDAGISel.inc -gen-dag-isel)
tablegen(LLVM DelendumGenCallingConv.inc -gen-callingconv)
tablegen(LLVM DelendumGenInstrInfo.inc -gen-instr-info)
tablegen(LLVM DelendumGenRegisterInfo.inc -gen-register-info)
tablegen(LLVM DelendumGenSubtargetInfo.inc -gen-subtarget)
tablegen(LLVM DelendumGenMCCodeEmitter.inc -gen-emitter)
tablegen(LLVM DelendumGenDisassemblerTable.inc -gen-disassembler)
tablegen(LLVM DelendumGenSubtargetInfo.inc -gen-subtarget)

add_public_tablegen_target(DelendumCommonTableGen)

add_llvm_target(DelendumCodeGen
  DelendumAsmPrinter.cpp
  DelendumISelDAGToDAG.cpp
  DelendumISelLowering.cpp
  DelendumTargetMachine.cpp
  DelendumFrameLowering.cpp
  DelendumMachineFunction.cpp
  DelendumInstrInfo.cpp

  LINK_COMPONENTS
  Analysis
  AsmPrinter
  CodeGen
  Core
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
