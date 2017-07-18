#!/bin/bash

C_NAME()
{
    _USER_NAME=$name
    _USER_NAME=`echo $name | awk '{if ($0~/[^a-zA-Z]/) print "1"}'`

    if [ "$_USER_NAME" != "" ]
    then
        return 1
    else
        return 0
    fi
}
