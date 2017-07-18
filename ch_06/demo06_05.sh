#!/bin/bash

if [ -f test ]
then
    echo "The file exists."
    echo
else
    echo "No such file."
    echo "Creating a new file..."
    sleep 1
    (touch test; echo "File of test create succeed.")
fi
exit 0
