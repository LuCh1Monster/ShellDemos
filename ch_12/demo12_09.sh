#!/bin/bash

echo "Mount disk partition."
echo "Please specified partition name."
echo -n "partition name: "
read partition_name
echo

echo "Designated hardpoints."
echo -n "Input a name of mountpoint: "
read mountpoint_name

mount $partition_name $mountpoint_name
echo "Mount success..."
wait; echo

echo "Do you want to create a directory?"
echo -n "Answer(yes|no): "
read answer
ANSWER2=yes

if [ $ANSWER2 = $answer ]
then
    echo -n "Input a name of directory: "
    read d_name
    mkdir $mountpoint_name/$d_name
    ls -lh $mountpoint_name
    echo
else
    echo "-- Information of \"$mountpoint_name\" --"
    ls -lh $mountpoint_name
    echo
fi

echo "Choose one directory for backup file."
echo -n "Input a name of directory: "
read directory
echo
echo "Input a name of the duplicate file."
echo -n "Duplicate file name"
read d_f_name

if [ -e $d_f_name ]
then
    cp -r $d_f_name $mountpoint_name/$directory
    ls -l $mountpoint_name/$directory
    echo
    echo "Backups operation completed..."
else
    echo "No such file."
    umount $partition_name
    echo; exit
fi

wait
umount $partition_name
echo "Complete all the backup work."
echo
exit 0
