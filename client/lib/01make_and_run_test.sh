#!/bin/bash

mkdir build
(
  cd build
  cmake ..
  make -j
)

gcc -o test test.c -lpm3rrg_rdv4 -Lbuild -lpthread

LD_LIBRARY_PATH=build ./test
