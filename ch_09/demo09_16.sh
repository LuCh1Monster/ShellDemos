#!/bin/bash

maxlength=12
echo "Input user name."
echo
while read name
do
    echo $name
    echo
    length=${#name}
    if [ $length -gt $maxlength ]
    then
        exit
    fi
done > file
exit 0
