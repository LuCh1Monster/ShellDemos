#!/bin/bash

echo -n "Input a file name: "
read file
echo -n "Input the path of the new file: "
read new_file

if [ -f $file ]
then
    echo "Copying of the $file, wait..."
    sleep 1
    (cp $file $new_file; echo "Finish")
else
    echo "No such file."
fi
exit 0
