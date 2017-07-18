#!/bin/bash

echo -n "Input a name of file: "
read file
if [ -z $file ]
then
    echo "The file exists!" && (echo; exit 1)
    echo "Open the file..."; sleep 1
    (echo; cat $file; exit 1)
else
    echo "No such file."
    echo
fi
exit 0
