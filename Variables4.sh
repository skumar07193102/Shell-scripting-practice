#! bin/bash
echo "all variables passed to the script: $*"
echo "what is present working directory: $PWD"
echo "who is running this script: $USER"
echo "what is time and dat this script has ran: $time"
echo "what is the PID of this script: $$"
echo "what is the script file name: $0"
echo "what is the Home directory of the user:$HOME"
sleep 10 &
echo "PID of the last command process in background: $!"