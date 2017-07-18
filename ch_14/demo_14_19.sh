#!/bin/bash

echo "Update database operate."
echo -n "Input a name of directory:"

read d_name
root_uid=0

if [ "$UID" -ne "$root_uid" ]
then
	echo "Must be root to run this script."
	echo "Please try again"
	exit
fi

if [ -z "$1" ]
then
	echo "Usage:`basename $0` find-string"
	exit
fi

echo "Update 'locate' database..."
echo "This may take a while."
updatedb $d_name &
wait

locate $1
exit 0


