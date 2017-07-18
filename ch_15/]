#!/bin/bash

TMP="./radiolist.$$"
subject="Choose Filesystem Type"
o_nums=3

######
F_SYSTEM2="The_second_edition_expand_the_filesystem"
F_SYSTEM3="The_third_edition_expand_the_filesystem"
F_SYSTEM4="The_fourth_edition_expand_the_filesystem"
FSLIST="ext2 $F_SYSTEM2 off ext3 $F_SYSTEM3 on ext4 $F_SYSTEM4 off"

######
dialog --radiolist "$subject" 10 58 $o_nums $FSLIST 2>$TMP
FSTYPE=$(cat $TMP)
[ -z "$FSTYPE" ] && FSTYPE="ext3"
rm -f $TMP

echo "Your chosen the filesystem is: $FSTYPE"
echo




