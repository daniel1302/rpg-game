#!/bin/bash

emcc --version

cd build || exit 1;

rm -f CMakeCache.txt;

cmake -DWASM=1 -DEMSCRIPTEN=1 ..;

make;