#!/bin/bash

echo
echo -n "Input a name of file: "
read file_name
echo
if [ -e $file_name ]
then
    gzip -r $file_name
    echo "Operation completed..."
    echo "And the name of file is $file_name.gz"
else
    echo "No such file."
    echo; exit
fi
echo
exit 0
