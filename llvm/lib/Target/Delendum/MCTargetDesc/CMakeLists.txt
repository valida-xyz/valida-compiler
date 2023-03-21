add_llvm_component_library(LLVMDelendumDesc
  DelendumMCAsmInfo.cpp
  DelendumMCCodeEmitter.cpp
  DelendumMCTargetDesc.cpp

  LINK_COMPONENTS
  MC
  MCDisassembler
  Support
  TargetParser
  DelendumInfo

  ADD_TO_COMPONENT
  Delendum
)
