#!/bin/bash

FILE=/etc/passwd

if [ -f $FILE ]
then
	echo "The file exists."
	(ls -l $FILE;exit)
else
	echo "No such file."
fi
echo
exit 0
