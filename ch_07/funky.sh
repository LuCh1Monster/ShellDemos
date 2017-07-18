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
