add_llvm_component_library(LLVMDelendumDisassembler
  DelendumDisassembler.cpp

  LINK_COMPONENTS
  MC
  MCDisassembler
  DelendumDesc
  DelendumInfo
  Support

  ADD_TO_COMPONENT
  Delendum
  )
