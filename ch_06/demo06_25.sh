#!/bin/bash

SIZE=1000000

head -c $SIZE < /dev/zero > file
losetup /dev/loop0 file
mke2fs /dev/loop0
mount -o loop /dev/loop0/mnt
exit
