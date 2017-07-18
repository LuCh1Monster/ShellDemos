#!/bin/bash

echo -n "Input a name of file: "
read f_name
echo
echo -n "Please set the compression level(0~9): "
read c_level
echo
if [ -e $f_name ]
then
    bzip2 "-$c_level" $f_name
    echo "Operation completed..."
    echo "And the name is $f_name.bz2."
else
    echo "No such file."
    echo; exit
fi
echo
exit 0
