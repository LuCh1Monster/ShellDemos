#!/bin/bash

declare -i i=1
echo -n "input a number: "
read var
if [ -z $var ]; then
    echo "No input digital."
    exit
fi
if [ $var -lt 36 ]
then
    let i+=var
    echo $i
else
    echo "The number must less than 36."
fi
exit 0
