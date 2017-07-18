#!/bin/bash

. ./funky
echo "Nothing passed."
FUNKY
echo

echo "Zero length parameter passed."
FUNKY
echo

echo "One parameter passed."
FUNKY value1
echo

echo "Two parameter passed."
FUNKY value1 value2
echo

# echo "\"\"\"sewcond\" passed."
# FUNKY value2
# exit 0
