set(LLVM_TARGET_DEFINITIONS TriCore.td)

tablegen(LLVM TriCoreGenRegisterInfo.inc -gen-register-info)
tablegen(LLVM TriCoreGenInstrInfo.inc -gen-instr-info)
tablegen(LLVM TriCoreGenMCCodeEmitter.inc -gen-emitter)
tablegen(LLVM TriCoreGenAsmMatcher.inc -gen-asm-matcher)
tablegen(LLVM TriCoreGenAsmWriter.inc -gen-asm-writer)
tablegen(LLVM TriCoreGenSubtargetInfo.inc -gen-subtarget)

add_public_tablegen_target(TriCoreCommonTableGen)

add_llvm_target(TriCoreCodeGen
  TriCoreTargetMachine.cpp
  )

add_subdirectory(AsmParser)
add_subdirectory(InstPrinter)
add_subdirectory(MCTargetDesc)
add_subdirectory(TargetInfo)