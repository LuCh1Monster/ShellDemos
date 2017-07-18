#!/bin/bash

[ -e "/etc/passwd" ] || (echo 'No such file.'; exit)
if [ $? -eq 1 ]
then
    exit
fi
echo "The file exists."
exit 0
