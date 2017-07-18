#!/bin/bash

if [ ! -e $1 ]
then
    echo "No such file."
    exit
fi

[ -f $1 ] && echo "The file exists."
(echo; cat $1; exit 1)
exit 0
