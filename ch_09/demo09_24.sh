#!/bin/bash

read -p "A name of file: " file
if [ ! -e $file ]
then
    echo "File $file not found."
    exit
fi

cat - $file <<< $file > $file.txt
echo "Modified file is $file.txt"
echo
exit 0
