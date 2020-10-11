#!/bin/bash

screen -dmS pm3 bash -c 'pm3 -i -c "lf hid watch"'
File_Log=`ls -t $HOME/.proxmark3/log_* | head -1` 
echo "Log : $File_Log"
exec tail -f $File_Log | grep TAG\ ID &
