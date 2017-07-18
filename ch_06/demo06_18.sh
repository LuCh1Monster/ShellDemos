#!/bin/bash

file=$1
while [ "$word" != end ]
do
    read word
    look $word > /dev/null
    lookup=$?

    if [ $lookup -eq 0 ]
    then
        echo "\"$word\" is valid."
    else
        echo "\"$word\" is invalid."
    fi

done < $file
echo
exit 0
