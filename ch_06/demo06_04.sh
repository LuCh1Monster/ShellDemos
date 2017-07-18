#!/bin/bash

echo -n "Input a name of file: "
read f_name

if [ -f $f_name ]
then
    echo "The file exists."
    echo
    exit
else

    until [ -e $f_name ]
    do
        echo "No such file."
        echo
        echo -n "Input a name of file: "
        read f_name
    done
fi

echo "The file exists."
exit 0
