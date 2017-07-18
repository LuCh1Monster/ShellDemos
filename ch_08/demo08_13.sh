#!/bin/bash

week=(Monday Tuesday Wednesday Thursday Friday)

echo "<--delete character-->"
echo ${week[@]#M*y}
echo ${week[@]##F*y}
echo ${week[@]%Th*y}
echo ${week[@]%%W*y}
echo

echo "<--add character-->"
echo ${week[@]/%/36}
exit 0
