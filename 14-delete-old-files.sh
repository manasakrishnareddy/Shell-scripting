#!/bin/bash

source_dir=$1
days=${2:-14}
usage()
{
    echo "USAGE: $0 <source_directory> [days(oprional, default: 14)]"
    exit 1
}
if [ -z "$source_dir" ]; then
{
    echo "ERROR: Source directory is required."
    usage

} 
fi
if [ ! -d "$source_dir" ]; then
{
    echo "ERROR: Source directory does not exist."
    usage
}
fi

# find "$source_dir" -name "*.log" -mtime +"$days" -delete