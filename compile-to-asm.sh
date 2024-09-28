#!/bin/bash

clang hello.c -S -o hello.s

as hello.s -o hello.o

ld hello.o -o hello -l System -syslibroot `xcrun -sdk macosx --show-sdk-path` -e _main -arch arm64
