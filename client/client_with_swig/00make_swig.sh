#!/bin/bash

swig -lua -o ../src/libpm3_luawrap.c ../include/libpm3.i
swig -python -o ../src/libpm3_pywrap.c ../include/libpm3.i
