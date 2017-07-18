#!/bin/bash

hostname=cat.super.com
user_name=cat
if [ $hostname != $user_name ]
then
    echo $hostname
else
    echo $user_name
fi
exit 0
