#!/bin/bash

. ./filename
echo
echo -n "Input name of file: "
read name

if  [ -f $f_name ]
then
    FILE_NUMBER $name
fi
