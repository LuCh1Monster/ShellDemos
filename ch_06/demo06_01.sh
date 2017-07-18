#!/bin/bash

if [ -f /etc/passwd ]
then
    echo "The file is exist."
else
    echo "No such file."
fi
exit 0
