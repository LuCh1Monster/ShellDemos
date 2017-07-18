#!/bin/bash

T_FILE()
{
    T_NAME=$f_name
    if [ -z $T_NAME ]
    then
        echo "Must enter any information."
        echo; exit
    fi
    if [ ! -f $T_NAME ]
    then
        echo "No such file."
        return 1
    else
        return 0
    fi
}
