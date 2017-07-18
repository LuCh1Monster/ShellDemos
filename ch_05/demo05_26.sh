#!/bin/bash

declare -i x

for ((x=1;x<=20;x++))
do

    if [ $x -eq 10 ]
    then
        break
    fi

done
echo $x
exit 0
