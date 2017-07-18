#!/bin/bash

declare -i i=3
limit=10
while [ $i -lt $limit ]
do
    let var=4*i
    let i++
done
echo $var
echo

j=$var
until [ $j -lt 10 ]
do
    let j=j/2
    let j--
done
echo $j
exit 0
