#!bin/bash

dialog --yesno "Do you want to continue?" 10 30

answer=$?

if [ $answer -ne 0 ]
then
	answer=no
else
	answer=yes
fi

echo
echo "-- Showingf the next window --"
echo

sleep 1
default=no

if [ $answer = $default ]
then
	dialog --msgbox "Stop continue" 10 30
else
	dialog --msgbox "Continue..." 10 30
fi

exit 0



