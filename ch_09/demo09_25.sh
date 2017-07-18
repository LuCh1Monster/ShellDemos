#!/bin/bash

file=/etc/fstab
{
    read line2
    read line3
} < $file

echo "The file of second line in $file is: "
echo "$line2"; echo
echo "The file of thirdly line in $file is: "
echo "$line3"; echo
exit 0
