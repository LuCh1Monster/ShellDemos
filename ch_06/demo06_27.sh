#!/bin/bash

uid=$1
root_uid=0
file=/swap
min_blocks=40
blocks=$min_blocks

if [ -z $uid ]
then
    echo "Need input the UID."
    echo; exit
elif [ $uid -ne $root_uid ]
then
    echo "Only root can run this script."
    echo; exit
fi

if [ $blocks -lt $min_blocks ]
then
    blocks=$min_blocks
fi

echo "Creating swap file of size $blocks blocks(KB)."
dd if=/dev/zero of=$file bs=1024 count=$blocks
swapon $file
echo "Swap file created and activated."
exit; exit 0
