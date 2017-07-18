#!/bin/bash

# Function: implement a graphic interface with multi-dialog box and progress.
# 	You can control work flow by pressing different buttons.
# Requirement: Ripe out the shadow of each dialog box.

dialog --no-shadow --yesno "Do you want to continue?" 9 36
choose=$?

if [ $choose -ne 0 ]
then
	answer=no
else
	answer=yes
fi

default=no

if [ $answer = $default ]
then
	dialog --no-shadow --msgbox "Stop continue..." 8 28
else
	dialog --no-shadow --yesno "Are you true?" 8 28
	echo
	echo "Please wait..."
	echo; sleep 1

	{
	for((time=1;time<=10;time++))
	do
		let TIME=10*time
		echo $TIME
		sleep 1
	done
	}|
	dialog --no-shadow --gauge "Rate of progress..." 6 36
fi

exit 0
