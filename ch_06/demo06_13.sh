#!/bin/bash

if [ ! -f $1 ]
then
    echo "No such file."
    exit
fi

[ -f $1 ] && echo "Deleting $1..."
(rm -f $1; echo "File $1 deleted.")
exit 0
