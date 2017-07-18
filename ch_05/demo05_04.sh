#!/bin/bash

# set -x

for x in 2 3 4 5 6
do
    echo "$x"
done

limit=4

for((x=6;x>=limit;x--))
do
    echo "$x"
done
echo

for((x=2,y=8;x<=limit;x++))
do
    echo "$y-$x"
done
echo

exit 0
