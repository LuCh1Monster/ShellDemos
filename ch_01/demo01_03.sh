#!/bin/bash

echo "decimal hex character"
for ((i=20;i<=36;i++))
do
    echo $i | awk '{printf("%3d %2d %c\n", $1,$2,$3)}'
done
exit 0
