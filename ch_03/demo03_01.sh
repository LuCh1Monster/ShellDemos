#!/bin/bash

echo "The name of this script is \"$0\"."
echo

if [ -n $1 ]
then
    echo "The first parameter is $1."
fi

if [ -n $2 ]
then
    echo "The second parameter is $2."
fi

if [ -n $3 ]
then
    echo "The third parameter is $3."
fi

echo
echo "all the command_line parameter arg is: "$*"."
exit 0
