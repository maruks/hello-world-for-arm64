#!/bin/bash

clang hello.c -c -o hello.o

ld hello.o -o hello -l System -syslibroot `xcrun -sdk macosx --show-sdk-path` -e _main -arch arm64
