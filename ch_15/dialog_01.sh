#!/bin/bash

dialog --yesno "Do you want to continue?" 12 36

choice=$?

if [ $choice -ne 0 ]
then
	answer=no
else
	answer=yes
fi

default=yes

if [ $answer = $default ]
then
	echo "You choose to continue..."
else
	echo "You don't choose to continue..."
fi

echo
exit 0

