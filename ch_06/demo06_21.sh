#!/bin/bash

echo "Input a file name: "
read file
if [ -e $file ]
then
    (cat $file > n.file; echo "Finish"; echo; exit)
    (date >> n.file; exit 1)
else
    echo "No such file."
fi
exit 0
