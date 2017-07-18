#!/bin/bash

declare -i j
echo -n "Input a number: "
read j
echo

for i in 34 23 44 54 22
do
    if [ $j -lt $i ]
    then
        echo $i
    else
        echo $j
    fi
done
exit 0
