#!/bin/bash

values="1 3 5 7 9"

for number in `echo $values`
do
    echo "$number"
    sleep 1
done
echo

for number1 in $values
do
    echo "$number1"
    sleep 1
done
echo

exit 0
