#!/bin/bash

if [ -f $1 ]
then
    echo "The file exists."
    echo "And the name is $1."
    exit
fi

[ ! -e $1 ] && echo "No such file."
  echo "Creating a new file..."
  sleep 1
  (touch $1; echo "File of $1 create succeed.")
exit 0
