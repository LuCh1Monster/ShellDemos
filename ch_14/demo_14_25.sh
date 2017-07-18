#!/bin/bash

usermount /medir/cdrom
sudo usermount /media/cdrom

if [ -z $sudo_command ]
then
	mntuser=$(id -u) grpuser=$(id -g) sudo $0 $*
	exit 0
fi

/bin/mount $* -o uid=$mntuser,gid=$grpuser
exit 0
