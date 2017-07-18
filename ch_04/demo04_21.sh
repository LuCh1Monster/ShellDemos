#!/bin/bash

ERROR_VALUE=-136
EQUAL=-129
declare -i j
declare -i i=20

MAX_NUMBER()
{
if [ -z "$2" ]
then
    return $ERROR_VALUE
fi

if [ "$1" -eq "$2" ]
then
    return $EQUAL
else
    if [ "$1" -gt "$2" ]
    then
        return $1
    else
        return $2
    fi
fi
}

echo -n "Input a number: "
read j
echo
MAX_NUMBER $i $j
return_value=$?
if [ "$return_value" -eq $ERROR_VALUE ]
then
    echo "Need to pass two parameters to the function."
elif [ "$return_value" -lt $EQUAL ]
then
    echo "The two numbers are equal."
else
    echo "The larger number is $return_value."
fi
exit 0
