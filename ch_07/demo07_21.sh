#!/bin/bash

T_DIRECTORY()
{
    D_NAME=$name
    if [ ! -d $D_NAME ]
    then
        echo "No such directory."
        return 1
    else
        return 0
    fi
}

echo -n "Enter diectory name: "
read name

if T_DIRECTORY $name
then
    echo "This is a directory."
else
    echo "Please enter the directory name."
fi
exit 0
