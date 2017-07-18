#!/bin/bash

array1=(A B C)
array2=(D E F)
array3=(G H I)

for ((i=0;i<4;i++))
do
    eval value=\${array${i}[*]}
    for element in ${value}
    do
        echo -e ${value}
        continue 2
    done
done
echo
exit 0

