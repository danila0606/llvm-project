//===-- GoatSimTargetInfo.cpp - GoatSim Target Implementation -------------------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//

#include "GoatSim.h"
#include "llvm/IR/Module.h"
#include "llvm/MC/TargetRegistry.h"
using namespace llvm;

Target llvm::TheGoatSimTarget;

extern "C" void LLVMInitializeGoatSimTargetInfo() {
  RegisterTarget<Triple::goatsim,
                 /*HasJIT=*/false>
      X(TheGoatSimTarget, "GoatSim", "GoatSim (32-bit arch)", "GoatSim");
}