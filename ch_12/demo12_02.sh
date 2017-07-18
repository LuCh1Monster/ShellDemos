#!/bin/bash

echo -n "Input a name of file: "
read file_name
echo
echo "Input a name of the archive file."
echo "And the name with no need for filename extension."
echo -n "Archive file name: "
read a_file_name
echo

if [ -e $a_file_name ]
then
    tar xvf $a_file_name.tar $file_name
    echo "OPeration completed..."
    echo
else
    echo "No such an archive file."
    echo
    exit
fi
exit
