#!/bin/bash

IS_A_FILE()
{
    _FILES_NAME=$1
    echo "the file exists..."
    
    if [ ! -f $_FILES_NAME ]
    then
        return 1
    else
        return 0
    fi

    error_msg()
    {
        echo -e "\007"
        echo $@         # $@ represents parameters passed to the script
        echo -e "\007"
        return 0
    }

    touch_file()
    {
        touch
    }
}

for files in *
do
    echo -n "enter the file name: "
    read DIREC

    if [ -f $DIREC ]
    then
        echo "check files..."
        sleep 1
        break 2
    else
        touch file2
        echo "create file, please wait..."
        sleep 1
        echo "finish, new file name is file2."
    fi
done

if [ $? != 0 ]
then
    error_msg
    exit 1
fi

IS_A_FILE
exit 0
