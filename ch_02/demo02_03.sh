#!/bin/bash

# set -x
echo -n "are you a student?"
read answer

if [ $answer = Y ]
then
    echo "Yes, I am a student."
else
    echo "No, I am not a student."
fi
exit 0
