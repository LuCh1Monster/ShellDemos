#!/bin/bash

if [ -z $1 ]
then
    echo "`basename $0` PID-number"
    echo "Need input a PID."
    echo; exit
fi

PID_NU=$(ps ax | grep $1 | awk '{print $1}' | grep $1)
if [ -z "$PID_NU" ]
then
    echo "No such process running."
    exit
fi

if [ ! -r "/proc/$exe" ]
then
    echo "Process $1 running..."
    echo "But, permission denied read /proc/$1/exe."
    exit
fi

exe_file=$(ls -l /proc/$1 | grep exe | awk '{print $1}')
if [ -f $exe_file ]
then
    echo "Process #$1 invoked by $exe_file."
else
    echo "No such process running."
fi
exit 0
