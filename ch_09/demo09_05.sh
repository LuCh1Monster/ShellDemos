#!/bin/bash

hostname=cat.super.com
if [ -z $hostname ]
then
    echo "Nothing in the string."
else
    echo $hostname
fi
echo
exit 0
