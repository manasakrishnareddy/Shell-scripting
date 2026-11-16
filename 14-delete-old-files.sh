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
    exit 1
}
fi

echo "Scanning older than $days days in $source_dir"
file-to delete=$(find "$source_dir" -name "*.log" -mtime +"$days")
if [ -z "$file-to-delete" ]; then
{
    echo "No log files found older than $days days."
    exit 0
}
fi
while IFS= read -r file 
do
    echo "Deleting $file"
    rm -f "$file"
done <<< "$file-to-delete"  