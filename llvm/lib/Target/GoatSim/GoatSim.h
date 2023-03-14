//===-- GoatSim.h - Top-level interface for Sim representation ----*- C++ -*-===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file contains the entry points for global functions defined in
// the LLVM GoatSim back-end.
//
//===----------------------------------------------------------------------===//

#ifndef LLVM_LIB_TARGET_GoatSim_GoatSim_H
#define LLVM_LIB_TARGET_GoatSim_GoatSim_H

#include "MCTargetDesc/GoatSimMCTargetDesc.h"
#include "llvm/Target/TargetMachine.h"

namespace llvm {
  class GoatSimTargetMachine;
  class FunctionPass;

} // end namespace llvm;

#endif