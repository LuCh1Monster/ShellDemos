#!/bin/bash

IN_NUMBER()
{
    echo -n "Enter a value: "
    read value
    [ -n "$value" ] && eval $1=\$value
}

iterations=3
count=1
echo

while [ $count -le $iterations ]
do
    IN_NUMBER value
    echo "Entry #$count=$value"
    let count+=1
    echo
done
exit 0
