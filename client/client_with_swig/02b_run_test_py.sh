#!/bin/bash

# need access to pm3.py
PYTHONPATH=../src build/proxmark3 /dev/ttyACM0 -c "script run testembedded.py"
