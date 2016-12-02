#!/bin/bash

cd ffmpeg
mkdir -p build
./configure --enable-libsnappy --enable-gpl --disable-doc --disable-ffserver --disable-ffplay --disable-ffprobe --disable-ffmpeg --prefix="$(pwd)/build"
make -j$(nproc)
make install
