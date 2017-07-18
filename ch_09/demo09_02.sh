#!/bin/bash

system_administrate=root
if [ $system_administrate = "root" ]
then
    echo $system_administrate
else
    echo cat.super.com
fi
exit 0
