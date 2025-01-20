#!/bin/bash
export PATH="$(pwd)/tools/linaro-gcc-4.9/arm-linux-gnueabi/bin:$(pwd)/tools/linaro-gcc-4.9/aarch64-linux-gnu/bin:$(pwd)/tools/clang-r428724/bin:$PATH"

make ARCH=arm64 LLVM=1 LLVM_IAS=1 O=out mrproper
make ARCH=arm64 LLVM=1 LLVM_IAS=1 O=out merged_defconfig
