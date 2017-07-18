#!/bin/bash

equal=0
e_param=100

max()
{
    if [ -z $2 ]
    then
        echo $e_param
        return
    fi

    if [ $1 -eq $2 ]
    then
        echo $equal
        return
    else
        if [ $1 -gt $2 ]
        then
            value=$1
        else
            value=$2
        fi
    fi
    echo $value
}

r_value=$(max 36 37)
if [ $r_value -eq $e_param ]
then
    echo "Error in parameters passed comparsion function."
elif [ $r_value -eq $equal ]
then
    echo "The two numbers equal."
else
    echo "The larger numbers is $r_value."
fi
exit 0
