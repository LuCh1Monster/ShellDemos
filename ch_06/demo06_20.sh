#!/bin/bash

ARGS=2
if [ $# -ne "$ARGS" ]
then
    echo "Usage: `basename $0` file1 file2"
    echo; exit
fi
if [[ ! -r "$1" || ! -r "$2" ]]
then
    echo "Both files to be compared must exist and be readable."
    echo; exit
fi

cmp $1 $2 &> /dev/null
if [ $? -eq 0 ]
then
    echo "File \"$1\" is identical to file \"$2\"."
else
    echo "File \"$1\" differs from file \"$2\"."
fi
echo
exit 0
