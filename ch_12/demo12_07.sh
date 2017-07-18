#!/bin/bash

echo
echo -n "Input a name of file: "
read f_name
echo

if [ -e $f_name ]
then
    tar cvf $f_name.tar $f_name
    rm -rf $f_name
    echo "Operation completed..."
    echo "And the name is \"$f_name.tar\""

    wait; echo
    ANSWER=yes
    echo "This operate will compress files."
    echo "Do you want to continue?"
    echo -n "Choose Yes|No: "
    read answer
    echo
    while [ "$answer" = "$ANSWER" ]
    do
        if [ -e $f_name.tar ]
        then
            gzip -r $f_name.tar
            echo
            echo "Operation completed..."
            echo "And the name is \"$f_name.tar.gz\""
            echo; exit
        fi

    done
    echo
else
    echo "No such file."
    echo;exit
fi
echo
exit
