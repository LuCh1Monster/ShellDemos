#!/bin/bash

. ./file.sh
echo -n "Enter file name: "
read f_name
if T_FILE $f_name
then
    echo "This is a file."
else
    echo "Please input the file name."
fi
exit 0
