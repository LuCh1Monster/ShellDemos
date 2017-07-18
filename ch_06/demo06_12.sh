#!/bin/bash

echo "Input a file name: "
read file

if [ -e $site ] && (echo "File exist.")
then
    echo
    echo "Input the new file name: "
    read n_f_name

    echo "Altering the $file name..."
    (mv $file ./$n_f_name; echo "Finish")
else
    echo "No such file."
fi
exit 0
