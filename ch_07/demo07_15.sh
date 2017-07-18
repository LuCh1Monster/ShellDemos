#!/bin/bash

ARGCOUNT=1

file_path=/etc/passwd
pattern=$1

if [ $# -ne $ARGCOUNT ]
then
    echo "`basename $0` USERNAME"
fi

file_index()
{
    while read line
    do
        echo $line | grep $1 | awk -F":" '{print $6}'
    done
} < $file_path

file_index $pattern
exit 0
