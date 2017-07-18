#!/bin/bash

declare -i a=0
declare -i limit=20

while [ $a -lt $limit ]
do

    a=$(($a+1))
    if [ $a -gt 10 ]
    then
        break
    fi

done
echo $a
exit 0
