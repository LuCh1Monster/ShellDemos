#!/bin/bash

declare -i var=15

if [ $var -eq 10 ]
then
    echo "the number is 10."

elif [ $var -gt 20 ]
then
    echo "the number is 20."

else
    echo "the number is $var."
fi
exit 0
