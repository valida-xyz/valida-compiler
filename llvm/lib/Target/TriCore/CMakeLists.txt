set(LLVM_TARGET_DEFINITIONS TriCore.td)

tablegen(LLVM TriCoreGenRegisterInfo.inc -gen-register-info)
tablegen(LLVM TriCoreGenInstrInfo.inc -gen-instr-info)

add_public_tablegen_target(TriCoreCommonTableGen)

add_llvm_target(TriCoreCodeGen
  TriCoreTargetMachine.cpp
  )

add_subdirectory(TargetInfo)