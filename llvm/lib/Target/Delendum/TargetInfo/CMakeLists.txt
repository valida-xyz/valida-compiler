add_llvm_component_library(LLVMDelendumInfo
  DelendumTargetInfo.cpp

  LINK_COMPONENTS
  MC
  Support

  ADD_TO_COMPONENT
  Delendum
  )
