#!/bin/bash

. ./month
echo -n "input a number of month: "

if MONTHS $number
then
    echo $_FULL
else
    echo "input a numberr 1 to 12"
fi
exit 0
