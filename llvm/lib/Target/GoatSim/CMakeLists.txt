add_llvm_component_group(GoatSim)

set(LLVM_TARGET_DEFINITIONS GoatSim.td)

# Generate SimGenRegisterInfo.inc and SimGenInstrInfo.inc which included by
#  your hand code C++ files.
# SimGenRegisterInfo.inc came from SimRegisterInfo.td, GoatSimGenInstrInfo.inc
#  came from GoatSimInstrInfo.td.
tablegen(LLVM GoatSimGenRegisterInfo.inc -gen-register-info)
tablegen(LLVM GoatSimGenInstrInfo.inc -gen-instr-info)

# GoatSimCommonTableGen must be defined
add_public_tablegen_target(GoatSimCommonTableGen)

# GoatSimCodeGen should match with LLVMBuild.txt GoatSimCodeGen
add_llvm_target(GoatSimCodeGen
  GoatSimTargetMachine.cpp

  LINK_COMPONENTS
  Analysis
  AsmPrinter
  CodeGen
  Core
  MC
  GoatSimDesc
  GoatSimInfo
  SelectionDAG
  Support
  Target
  GlobalISel

  ADD_TO_COMPONENT
  GoatSim
  )

add_subdirectory(TargetInfo)
add_subdirectory(MCTargetDesc)