#!/bin/bash

user_uid=0
if [ $user_uid -ne $UID ]
then
	echo "Only root can execute this script!"
	exit
fi

echo -n "Input a name of user:"
read u_name
limit=0
user_name=$(cat /etc/passwd |grep $u_name |awk -F : '{print $1}' |head -1)
echo $user_name

if [ -z $user_name ]
then
	echo "Creating \"$u_name\" user"
#	useradd $user_name > /dev/null
	echo "Create succeed"
else
	echo "This user already exists."
	echo "So you can't create the name of user."
	echo; exit
fi

echo
exit 0
