#!/bin/bash

screen -S pm3 -X stuff "exit^Mexit^M"
screen -X -S pm3 kill
killall tail
