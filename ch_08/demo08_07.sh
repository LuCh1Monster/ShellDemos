#!/bin/bash

declare -i j=0
declare -i limit=4
array=(34 35 36 37 38 39)

echo "Two-dimensional array"
while [ $j -lt $limit ]
do
    echo "${array[*]:$j:3}"
    let j+=2
    let j++
done
echo
exit 0
