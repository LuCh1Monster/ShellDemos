#!/bin/bash

declare -i i=36
limit=36
echo -n "input a value: "
read value
while [ $value > $limit ]
do
    let i=i-value
    let i--

    if [ $i -lt 4 ]
    then
        break 2
    fi
    echo $i
done
exit 0
