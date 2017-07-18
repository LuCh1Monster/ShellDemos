#!/bin/bash

echo -n "Input a name of file: "
read f_name
if [ -z $f_name ]
then
    echo "No input file name."
    exit
fi
[ -f $f_name ] || (echo 'No such file.'; exit 1)
if [ $? -eq 1 ]
then
    exit
fi
echo "The file exist."
exit 0
