#!/bin/bash

user_id=0

if [ $UID -eq $user_id ]
then
	echo -n "Input a name of process:"
	read process_name
	
	PID=`pidof $process_name`
	if [ -z $PID ]
	then
		echo "No such process."
		echo; exit
	else
		echo "Killing the process..."
		sleep 1; kill $PID
		echo
	fi
else
	echo "Only root can this script."
	echo; exit
fi

exit 0
