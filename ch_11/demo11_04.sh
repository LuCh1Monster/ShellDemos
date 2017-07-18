#!/bin/bash

echo -n "Input a name of file:"
read file_name

datafile=$file_name
exec 4<>$file_name
while read <&4
do
    echo $REPLY
done

exec 4<&-
echo "Operate finish..."
echo
exit 0
