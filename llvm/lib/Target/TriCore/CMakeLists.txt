set(LLVM_TARGET_DEFINITIONS TriCore.td)

tablegen(LLVM TriCoreGenRegisterInfo.inc -gen-register-info)
tablegen(LLVM TriCoreGenInstrInfo.inc -gen-instr-info)
tablegen(LLVM TriCoreGenMCCodeEmitter.inc -gen-emitter)
tablegen(LLVM TriCoreGenAsmMatcher.inc -gen-asm-matcher)
tablegen(LLVM TriCoreGenAsmWriter.inc -gen-asm-writer)
tablegen(LLVM TriCoreGenSubtargetInfo.inc -gen-subtarget)
tablegen(LLVM TriCoreGenRegisterBank.inc -gen-register-bank)
tablegen(LLVM TriCoreGenCallingConv.inc -gen-callingconv)
tablegen(LLVM TriCoreGenDisassemblerTables.inc -gen-disassembler)
tablegen(LLVM TriCoreGenSystemOperands.inc -gen-searchable-tables)

set(LLVM_TARGET_DEFINITIONS TriCoreGISelPattern.td)
tablegen(LLVM TriCoreGenGlobalISel.inc -gen-global-isel)
tablegen(LLVM TriCoreGenGICombiner.inc -gen-global-isel-combiner
              -combiners="TriCorePreLegalizerCombinerHelper")

add_public_tablegen_target(TriCoreCommonTableGen)

add_llvm_target(TriCoreCodeGen
  TriCoreAsmPrinter.cpp
  TriCoreCallingConvention.cpp
  TriCoreCallLowering.cpp
  TriCoreExpandPseudoInsts.cpp
  TriCoreFrameLowering.cpp
  TriCoreInstrInfo.cpp
  TriCoreInstructionSelector.cpp
  TriCoreISelLowering.cpp
  TriCoreJumpTablePass.cpp
  TriCoreLegalizerInfo.cpp
  TriCoreMCInstLower.cpp
  TriCorePreLegalizerCombiner.cpp
  TriCoreRegisterBankInfo.cpp
  TriCoreRegisterInfo.cpp
  TriCoreTargetMachine.cpp
  TriCoreSubtarget.cpp
  )

add_subdirectory(AsmParser)
add_subdirectory(Disassembler)
add_subdirectory(InstPrinter)
add_subdirectory(MCTargetDesc)
add_subdirectory(TargetInfo)
add_subdirectory(Utils)
