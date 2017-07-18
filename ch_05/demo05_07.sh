#!/bin/bash

# set -x
E_BADARGS=65
E_NOFILE=66

if [ $# -ne 2 ]
then
    echo "`basename $0` search_string the file_name"
    exit $E_BADARGS
fi

if [ ! -f "$2" ]
then
    echo "file \"$2\" does not exist."
    exit $E_NOFILE
fi

IFS="\n"
for number in $(strings "$2" | grep "$1")
do
    echo $number
#    sleep 1
done

exit 0
