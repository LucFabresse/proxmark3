#!/bin/bash

stop_hid_scan
sleep 2
echo "TAG ID = $1"
pm3 -c "lf hid clone $1"
