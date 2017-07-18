#!/bin/bash

declare -i i=10
declare -i j=5
limit=5

until [ $i -lt $limit ]
do
    let i=i-j
    let i--
done
echo $i
exit 0
