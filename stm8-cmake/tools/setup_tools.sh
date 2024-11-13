#!/usr/bin/bash
#!/bin/sh

TOOLS_PATH=$(pwd)
BUILD_PATH=$TOOLS_PATH/../build

# mkdir build directory
if [ ! -d "$BUILD_PATH" ]; then
    mkdir -p "$BUILD_PATH"

    # build tools
    if [ ! -d "$BUILD_PATH/hex2bin-2.5.1" ]; then \
        tar -zxvf hex2bin-2.5.1.tar.gz -C "$BUILD_PATH" ; \
        cd "$BUILD_PATH/hex2bin-2.5.1"; \
        make; \
        cd $TOOLS_PATH; \
    fi

    if [ ! -d "$BUILD_PATH/sdcc-4.4.0" ]; then \
        tar -xvjf sdcc-4.4.0.tar.bz2 -C "$BUILD_PATH"; \
    fi

    if [ ! -d "$BUILD_PATH/stm8flash" ]; then \
        tar -xvjf stm8flash.tar.bz2 -C "$BUILD_PATH" ; \
        cd "$BUILD_PATH/stm8flash"; \
        make; \
        cd $TOOLS_PATH; \
    fi
fi

