#!/bin/bash

declare -i i j x
declare -i y=0
i=${1:-255}
mask="128 64 32 16 8 4 2 1"
BIcon=

for j in $mask
do
    x=$((i/j))
    ((y+=x))
    [ $x -gt 0 ] && BIcon=$BIcon"_1_" || BIcon=$BIcon"_0_"
    i=$((i-x*j))
done
echo "Binary code: $BIcon"
echo
exit 0
