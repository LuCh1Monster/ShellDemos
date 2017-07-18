#!/bin/bash

i=1
count=0
until [ $count -gt 10 ]
do
    let count+=1
    let ++i
done
echo $count
exit 0
