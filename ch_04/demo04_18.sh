#!/bin/bash

declare -i j=33
for i in 12 34 23 44 22
do
    if [ $j -lt $i ]
    then
        echo $i
        echo
    else
        echo $j
        echo
    fi
done
