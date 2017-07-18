#!/bin/bash

array=(This is a test script.)
string=abcde12345

echo ${array[0]}
echo ${string[0]}
echo ${array[1]}
echo ${string[1]}
echo ${#array[@]}
echo ${#string[@]}
exit 0
