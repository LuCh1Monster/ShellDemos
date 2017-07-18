#!/bin/bash

declare -i i
declare -i var
declare -i j
declare -i m
limit=8
limit2=16
echo -n "Input a number: "
read j
if [ $j -lt $limit ]
then
    echo "Error, the number must greater than 8."
else
    i=$j

    while [ $i -lt $limit2 ]
    do
        let var=i+3
        let i++
        echo $var

        m=$var
        r=$((m>>1))
        echo $r
        echo
    done
fi
exit 0
