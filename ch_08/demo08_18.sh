#!/bin/bash

declare -i j=0
declare -i limit=6
array=(A B C D E F G H)

while [ $j -lt $limit ]
do
    IFS=$'\n'
    echo "${array[*]:$j:2}"
    let j+=1
    let j++
done
exit 0
