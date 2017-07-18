#!/bin/bash

declare -a arrays
echo -n "Enter a array: "
read arrays
element_array=${#array[@]}
value=0
while [ "$value" -lt "$element_array" ]
do
    echo ${arrays[$value]}
    let "index=$value+1"
done

echo "array[a]=${arrays[@]}"
echo
unset arrays[b]
echo "array empty."
echo "array[b]=${arrays[@]}"
echo
exit 0
