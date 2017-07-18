#!/bin/bash

echo "Input your first name:"
read f_name
echo
echo "Input your last name:"
read l_name
echo

echo "-- name and date --"
echo "Your first name is: $f_name."
echo "And your last name is: $l_name"
echo
echo "Today is `date`"
echo
exit 0
