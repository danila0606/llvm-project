add_llvm_component_library(LLVMGoatSimInfo
  GoatSimTargetInfo.cpp

  LINK_COMPONENTS
  Support

  ADD_TO_COMPONENT
  GoatSim
  )