#!/bin/bash

echo "Input a file name: "
read file
echo "Input the new file name: "
read n_f_name
if [ -f $file ]
then
    echo "Altering the $file name."
    (cp $file ./$n_f_name; echo "Finish")
else
    echo "No such file."
fi
exit 0
