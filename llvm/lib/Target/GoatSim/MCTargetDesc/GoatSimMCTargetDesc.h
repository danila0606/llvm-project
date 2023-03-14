//===-- GoatSimMCTargetDesc.h - GoatSim Target Descriptions ---------*- C++ -*-===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file provides GoatSim specific target descriptions.
//
//===----------------------------------------------------------------------===//

#ifndef LLVM_LIB_TARGET_GoatSim_MCTARGETDESC_GoatSimMCTARGETDESC_H
#define LLVM_LIB_TARGET_GoatSim_MCTARGETDESC_GoatSimMCTARGETDESC_H

#include "llvm/Support/DataTypes.h"

#include <memory>

namespace llvm {
class Target;
class Triple;

extern Target TheGoatSimTarget;

} // End llvm namespace

// Defines symbolic names for GoatSim registers.  This defines a mapping from
// register name to register number.
#define GET_REGINFO_ENUM
#include "GoatSimGenRegisterInfo.inc"

// Defines symbolic names for the GoatSim instructions.
#define GET_INSTRINFO_ENUM
#include "GoatSimGenInstrInfo.inc"

#endif