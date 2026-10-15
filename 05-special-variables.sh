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