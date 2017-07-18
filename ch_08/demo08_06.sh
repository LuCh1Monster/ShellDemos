#!/bin/bash

array2=(
    element2
    element3
    element4
)
array3=(
    element5 element6 element7
)

ARRAY()
{
    echo
    echo ">> Two-dimensional array <<"
    echo
    echo "${array2[*]}"
    echo "${array3[*]}"
}

ARRAY
echo
exit 0
