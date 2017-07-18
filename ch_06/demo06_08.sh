#!/bin/bash

echo -n "Input a name of file: "
read file
if [ -z file ]
then
    echo "No input file."
    exit
fi

if [ -f $file ]
then
    echo "Copying of the \"$file\" file,wait..."
    (cp $file /home/; echo "Finish")
else
    echo "No such file."
fi
exit 0
