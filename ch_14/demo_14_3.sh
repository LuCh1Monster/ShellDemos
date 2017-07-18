#!/bin/bash

FILE=/etc/password

if [ -f $FILE ]
then
	echo "The file exists."
	(ls -l $FILE; exit)
else
	echo "No such file."
	(echo 'Creating the file...'
	(touch password; ls -l password; exit))
fi

echo
exit
