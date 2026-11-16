#!/bin/bash

source_dir=$1
dest_dir=$2
days=${3:-14}

usage()
{
    echo "USAGE: $0 <source_directory> <destination_directory> [days(optional, default: 14)]"
    exit 1
}
if [ -z "$source_dir" ] || [ -z "$dest_dir" ]; then
{
    echo "ERROR: Source or destination directories are missing."
    usage
}
fi

if [ ! -d "$source_dir" ]; then
{
    echo "ERROR: Source directory does not exist."
    exit 1
}
fi

if [ ! -d "$dest_dir" ]; then
{
    echo "ERROR: Destination directory does not exist."
    exit 1
}
fi

echo "Scanning files older than $days days in $source_dir"
files_to_archive=$(find "$source_dir" -name "*.log" -type f -mtime +"$days")
if [ -z "$files_to_archive" ]; then
{
    echo "No files found older than $days days."
    exit 0
}
fi 