#!/bin/bash

array2=(That\'s a non-empty array)
array3=()
array4=(' ')

ARRAY()
{
    echo "Elements of array2 is: ${array2[@]}"
    echo "Elements of array2 is: ${array3[@]}"
    echo "Elements of array2 is: ${array4[@]}"
}

ARRAY
echo
exit 0
