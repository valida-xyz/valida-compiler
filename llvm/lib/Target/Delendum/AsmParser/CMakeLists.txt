add_llvm_component_library(LLVMDelendumAsmParser
  DelendumAsmParser.cpp

  LINK_COMPONENTS
  MC
  MCParser
  Support
  DelendumCodeGen
  DelendumInfo

  ADD_TO_COMPONENT
  Delendum
)
