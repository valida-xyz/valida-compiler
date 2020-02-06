//===--- TriCore.h - TriCore-specific Tool Helpers --------------*- C++ -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#ifndef LLVM_CLANG_LIB_DRIVER_TOOLCHAINS_ARCH_TRICORE_H
#define LLVM_CLANG_LIB_DRIVER_TOOLCHAINS_ARCH_TRICORE_H

#include "clang/Driver/Driver.h"
#include "llvm/ADT/StringRef.h"
#include "llvm/ADT/Triple.h"
#include "llvm/Option/ArgList.h"
#include "llvm/Option/Option.h"
#include <string>
#include <vector>

namespace clang {
namespace driver {
namespace tools {
namespace tricore {

enum ArchKind {
  INVALID,
  TC161,
  TC162,
  TC18,
};

void getTriCoreTargetFeatures(const Driver &D, const llvm::opt::ArgList &Args,
                              std::vector<llvm::StringRef> &Features);

std::string getTriCoreTargetCPU(const llvm::opt::ArgList &Args,
                                llvm::opt::Arg *&A);

} // namespace tricore
} // namespace tools
} // namespace driver
} // namespace clang

#endif // LLVM_CLANG_LIB_DRIVER_TOOLCHAINS_ARCH_TRICORE_H
