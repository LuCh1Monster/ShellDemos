#!/bin/bash

declare -i i=12
declare -i j=3
echo -n "Input the limit value: "
read limit
if [ -z $limit ]
then
    exit
fi
until [ $i -lt $limit ]
do
    let i=i-j
    let i--
    echo $i
done
exit 0
