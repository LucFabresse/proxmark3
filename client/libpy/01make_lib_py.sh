#!/bin/bash

if ! [ -e ../lib/build/libpm3rrg_rdv4.so ]; then
    echo "Error, compile ../lib/build/libpm3rrg_rdv4.so first"
    exit 1
fi

rm -rf build
mkdir build
(
  cd build
  cmake ..
  make -j
)
ln -fs build/lib_libpm3.so _libpm3.so
ln -fs ../lib/build/libpm3rrg_rdv4.so
