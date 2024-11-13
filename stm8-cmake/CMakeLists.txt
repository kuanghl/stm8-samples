cmake_minimum_required(VERSION 2.8)

# CMP0048 error.
if (CMAKE_VERSION VERSION_LESS 3.0)
    cmake_policy(SET CMP0048 OLD)
else()
    cmake_policy(SET CMP0048 NEW)
endif()

project(stm8-cmake C)

# the name of the target operating system
# This is enough to select the correct toolchain and target platform. 
# If the target platform has no operating system, "Generic" has to be used.
set(CMAKE_SYSTEM_NAME Generic)

# which compilers to use for C and C++
set(CMAKE_C_COMPILER ${CMAKE_CURRENT_SOURCE_DIR}/build/sdcc-4.4.0/bin/sdcc)
set(CMAKE_ASM_COMPILER ${CMAKE_CURRENT_SOURCE_DIR}/build/sdcc-4.4.0/bin/sdasstm8)

# C flags
add_definitions("-DSTM8S103")
set(CMAKE_C_FLAGS_INIT "-mstm8 -lstm8")

# here is the target environment is located
set(CMAKE_FIND_ROOT_PATH  "${CMAKE_CURRENT_SOURCE_DIR}/build/sdcc-4.4.0/bin")

# adjust the default behaviour of the FIND_XXX() commands:
# search headers and libraries in the target environment, search
# programs in the host environment
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

# build
add_subdirectory(STM8S_StdPeriph_Driver)
# add_subdirectory(src)