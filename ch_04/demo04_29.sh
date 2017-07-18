#!/bin/bash

if [ -z $1 ]
then
    echo "script_filename: `basename $0`"
    exit
else
    file=$1
fi

[ ! -f $file ] && echo "file $file not found."
[ ! -f $file ] || (rm -f $file; echo "file $file deleted.")
exit 0
