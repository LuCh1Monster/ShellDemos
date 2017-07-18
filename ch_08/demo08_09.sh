#!/bin/bash

array2=(That\'s a non-empty array)
array3=()
array4=(' ')

array2=("${array2}" "add1")
array3=("${array3}" "add2")
array4=("${array4}" "add3")

ARRAY()
{
    echo "Elements of array2 is: ${array2[*]}"
    echo "Elements of array3 is: ${array3[*]}"
    echo "Elements of array4 is: ${array4[*]}"
}

ARRAY
echo
exit 0
