#!/bin/bash

as hello-2.s -o hello-2.o

ld hello-2.o -o hello-2 -l System -syslibroot `xcrun -sdk macosx --show-sdk-path` -e _main -arch arm64
