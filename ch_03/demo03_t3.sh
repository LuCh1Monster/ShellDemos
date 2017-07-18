#!/bin/bash

TMOUT=2
echo "you only have $TMOUT seconds to answer!"
echo "choose a character of your favorite: "
read chars

if [ -z $chars ]
then
    chars="(no answer)"
fi
echo "The character is $chars."
exit 0
