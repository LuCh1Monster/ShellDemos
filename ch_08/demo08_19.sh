#!/bin/bash

declare -i i=0
declare -i limit=2
array=(A B C D E F G)

echo -n "Input a number of element: "
read e_quantity
if [ $i -lt $limit ]
then
    echo -e "${array[*]:$i:$e_quantity}"
    let i+=1
    let i++
fi
exit 0
