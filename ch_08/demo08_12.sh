#!/bin/bash

week=(Monday Tuesday Wednesday Thursday Friday)

echo ${week[@]:0}
echo ${week[@]:1}
echo ${week[@]:2:2}

echo ${week[@]/Monday/First_day}
echo ${week[@]/T*/vacation}
echo ${week[@]/*iday/Day_Five}
echo
exit 0

