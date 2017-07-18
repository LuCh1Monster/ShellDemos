#!/bin/bash

echo
echo "Input a name of compressed file."
echo "And with no need for filename extension."
echo "But the filename extension must \".gz\"."
echo -n "To solve the compressed file: "
read c_f_name
echo

if [ -e $c_f_name ]
then
    gunzip -r $c_f_name.gz
    echo "Operation completed..."
    echo "And the name of the file is $c_f_name."
    echo
else
    echo "No such file."
    echo; exit
fi
exit0
