#!/bin/bash

declare -i x
declare -i var=10

echo "input x: "
read x
if [ $x -lt $var ]
then
    echo "the number is $var."

elif [ $x -gt $var ]
then
    echo "the number is $x."

else
    echo "no such number."
fi
exit 0
