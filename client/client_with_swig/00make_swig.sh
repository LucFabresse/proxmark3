#!/bin/bash

swig -lua -o libpm3_luawrap.c libpm3.i
swig -python -o libpm3_pywrap.c libpm3.i
