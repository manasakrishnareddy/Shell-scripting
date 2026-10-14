#!/bin/bash 

start=$(date +%s);
sleep 10
end=$(date +%s);

echo "Script start time:$start"
echo "Script end time:$end"
total=$(($end-$start))

echo "total time: $total"