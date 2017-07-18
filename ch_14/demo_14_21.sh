#!/bin/bash

user_uid=0
newdisk=/dev/hdb
mount_point=/mnt/disk

fdisk $newdisk

if [ $UID -eq $user_uid ]
then
	make2fs -cv $newdisk
	mount $mount_point
	chmod 777 $mount_point
else
	echo "Only root can run this script."
	echo; exit
fi

exit 0
