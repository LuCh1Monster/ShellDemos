#!/bin/bash

for ((x=1;x<=8;x++))
do

    if [ $x -lt 5 ]
    then
        continue
    fi

    echo $x
done
exit 0
