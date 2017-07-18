#!/bin/bash

echo -n "Give a file name: "
read f_name
if [ ! -f $f_name ]
then
    echo "File \"$f_name\" does not exist."
    echo "Please confirm again."
    echo; exit
fi

echo -n "To find the characters: "
read STRS
TMP=datafile

if [ -n $STRS ]
then
    grep $STRS $f_name | head -1 | awk -F: '{print $1,$7}' > $TMP
    ch_strs=$(cat $TMP)
fi
echo
echo "The characters is: $ch_strs"
rm -rf $TMP
exit 0
