#!/bin/bash

echo
echo -n "Input a name of datafile: "
read file_name
datafile=$file_name
exec 8>&1
exec > $datafile
echo
echo -n "Output of \"ls -al\" command"
echo
ls -al
echo
echo -n "Output of \"df\" command"
echo
df
exec 1>&8 8>&-
echo
echo "-- stdout to screen --"
echo
ls -al
echo
exit 0
