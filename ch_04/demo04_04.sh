#!/bin/bash

declare -i y=1
until [ $y -eq 99 ]
do
    let var+=y
    let y+=2
done
echo $var
exit 0
