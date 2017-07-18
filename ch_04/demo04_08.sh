#!/bin/bash

declare -i i=1
declare -i j=1
declare limit

echo -n "Input a number: "
read limit

until [ $i -gt $limit ]
do
    let i+=1
    let j++
    echo $i
done
exit 0
