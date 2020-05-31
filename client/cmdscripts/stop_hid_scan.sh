#!/bin/bash

screen -S pm3 -X stuff "exit^M"
screen -X -S pm3 kill
