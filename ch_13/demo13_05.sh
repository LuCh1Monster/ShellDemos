#!/bin/bash

echo "check up progress status."
echo -n "Input a name of progress:"
read n_prog

pro_file_name=status
not_connected=65
interval=2
pidno=$(ps ax | grep -v "ps ax" | grep -v grep | grep $n_prog |awk '{print $1}')

echo "checkingfor \"$n_prog\", please wait..."
echo
if [ -z "$pidno" ]
then
    echo "The status be stopped..."
    echo "And belong to not connected."
    echo
    exit $not_connected
else
    echo "The status is running..."
    echo "And belong to conneted."
    echo
fi

while [ true ]
do
    if [ ! -e "/proc/$pidno/$pro_file_name" ]
    then
        echo "But the progress is disconnected."
        echo
        exit $not_connected
    fi
    netstat -s | grep "packets received"
    netstat -s | grep "packets delivered"
    sleep $interval
    echo
done
exit 0
