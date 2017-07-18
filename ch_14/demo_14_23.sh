#!/bin/bash

declare -i x=36
declare -i y=26

let "a=$x-$y"

if [ $a -lt $x ]
then
	echo "the value of a is: $a"
	sleep 1
	bash $0
fi

exit 0
