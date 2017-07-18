#!/bin/bash

declare -i var=10
declare -i var2=11

if [ $var -lt $var2 ]
then
    echo $var
else
    echo $var2
fi
exit 0
