#!/bin/bash

LOGFILE=logfile
exec 6>&1
exec > $LOGFILE

echo -n "logfile: "
date
echo
echo "Output of \"ls-al\" command."; echo
ls -al
echo
echo "Output of \"df -h\" command."; echo
df -h

exec 1>&6 6>&-
echo
echo "== stdout restored to default =="
ls -al
echo
