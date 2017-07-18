#!/bin/bash

week=(Monday Tuesday Wednesday Thursday Friday)

echo ${week[0]}
echo ${week:0}
echo ${week:1}

echo "<------->"
echo "${#week}"
echo "${#week[0]}"
echo "${#week[1]}"

echo "<------->"
echo "${#week[@]}"
echo "${#week[*]}"
echo
exit 0
