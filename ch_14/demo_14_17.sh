#!/bin/bash

limit=0
root_uid=0
if [ $UID -ne $root_uid ]
then
	echo "Only root can execute this script!"
	echo;exit
fi

echo -n "Input a name of user:"
read u_name

if [ -z $user_name ]
then
#	useradd -m $user_name
	echo "Creating user, please wait..."
	echo "New user created successfully."
	echo; sleep 1
fi

echo "Changing password for user $user_name"
echo "Input the password for $user_name:"
read password
echo

if [ $password -gt $limit ]
then
	echo "$user_name$password" |passwd --stdin "$user_name"
	echo "And the user of password is $user_name$password"
	echo
else
	echo "The password so short."
	exit
fi
exit 0
