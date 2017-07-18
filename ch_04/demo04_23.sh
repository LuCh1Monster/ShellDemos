#!/bin/bash

declare -i i=0
declare -i j=2
declare -i m
limit=8
until [ $i -eq $limit ]
do
    let i=j+2
    let j++
    echo $i

    m=$i
    r=$((m>>1))
    echo $r
    echo
done
exit 0
