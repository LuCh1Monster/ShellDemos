#!/bin/bash

declare -i i=0
declare -i limit=5
array2=(34 35 36 37 38 39)

echo "empty array"
while [ $i -lt $limit ]
do
    echo "${array2[*]:$j:3}"
    let i+=2
    let i++
done > /dev/null
exit 0
