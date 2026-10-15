#!/bin/bash

# Special variable

echo "All aguments passed to script: $@"
echo "No of aguments passed to script: $#"
echo "First variable passed: $1"
echo "Script name: $0"
echo "Script realpath: $(realpath $0)"
echo "Who is running Script name: $USER"
echo "Directory of current script: $PWD"
echo "Home directory of current user: $HOME"
echo "PID of current script: $$"
sleep 10 &
echo " PID of command running in background now: $!"
wait $!
echo "Line number: $LINENO"
echo "exit status of previous command: $?"
echo "Total time executed for this script: $SECONDS"