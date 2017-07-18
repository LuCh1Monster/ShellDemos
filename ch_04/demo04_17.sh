#!/bin/bash

declare -i var=15
declare -i value
echo "input a value: "
read value

if [ $var -lt $value ]
then
    echo "The value is $value."
else
    echo "The value is $var"
fi
exit 0
