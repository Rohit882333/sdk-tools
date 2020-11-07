#!/bin/bash
# start building...
cmake -H"./" -B"./build_x86" -G Ninja  \
    -DANDROID_ABI=x86 \
    -DANDROID_PLATFORM=android-29 \
    -DANDROID_NDK=${HOME}/Android/Sdk/ndk/21.3.6528147 \
    -DCMAKE_TOOLCHAIN_FILE=${HOME}/Android/Sdk/ndk/21.3.6528147/build/cmake/android.toolchain.cmake \
    -DANDROID_TOOLCHAIN=clang \
    -DCMAKE_RUNTIME_OUTPUT_DIRECTORY="./bin/x86" \
    -DCMAKE_BUILD_TYPE=Release \
    ..

cd build_x86
ninja -j16