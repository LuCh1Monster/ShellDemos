#!/bin/bash

. ./funky.sh
for files in *
do
    echo -n "enter the file name: "
    read DIREC

    if [ -f $DIREC ]
    then
        echo "check files..."
        sleep 1
        break 2
    else
        touch file2
        echo "create file, please wait..."
        sleep 1
        echo "finish, new file name is file2."
    fi
done

if [ $? != 0 ]
then
    error_msg
    exit 1
fi

IS_A_FILE
exit 0
