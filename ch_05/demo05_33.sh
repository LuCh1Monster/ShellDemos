#!/bin/bash

OTIMES=1
ITIMES=1
for i in 1 2 3 4
do
    echo "Pass $OTIMES in outer loop."
    echo "---------------------------"
    for j in 1 2 3 4
    do
        echo "Pass $ITIMES in inner loop."
        let "ITIMES+=1"
    done
    let "OTIMES+=1"
    echo
done
exit 0
