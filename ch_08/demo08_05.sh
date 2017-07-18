#!/bin/bash

array1="A B C"
array2="D E F"
array3="G H I"

for i in array1 array2 array3
do
    eval value=\$$i
    for j in $value
    do
        echo -e $value
        continue 2
    done
done
echo
exit 0
