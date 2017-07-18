#!/bin/bash

echo -n "Input a name of the new file: "
read n_f_name
echo
echo "Input the archive file name."
echo "And the name with no need for filename extension."
echo -n "Archive file name: "
read a_f_name
echo

if [ -e $n_f_name ]
then
    if [ -e $a_f_name ]
    then
        tar rvf $a_f_name.tar $n_f_name
        echo "Operation completed..."
    else
        echo "No such an archive file."
        echo; exit
    fi
else
    echo "No such file."
    echo "And you must choose proper file."
    echo; exit
fi
echo
exit
