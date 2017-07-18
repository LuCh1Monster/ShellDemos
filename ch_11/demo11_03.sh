#!/bin/bash

OPEN()
{
    echo "Opening the file..."
    exec 4<>$file_name
    echo
}

declare -i limit=2
file_descriptor=4
echo -n "Input a name of file: "
read file_name

if [ 4 -gt $limit ]
then
    if [ -a $file_name ]
    then
        echo "The file already exit."
        echo
        exit
    else
        OPEN
        echo "The file \"$file_name\" already open..."
        echo "And the file descriptor is $file_descriptor"
    fi
fi
echo
exit 0
