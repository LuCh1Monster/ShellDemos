#!/bin/bash

if [ -f /file_path/cookies ]
then
    rm -f /file_path/cookies
fi
In -s /dev/null /file_path/cookies
exit 0
