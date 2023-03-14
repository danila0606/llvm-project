add_llvm_component_library(LLVMGoatSimDesc
  GoatSimMCTargetDesc.cpp

  LINK_COMPONENTS
  MC
  GoatSimInfo
  Support

  ADD_TO_COMPONENT
  GoatSim
  )