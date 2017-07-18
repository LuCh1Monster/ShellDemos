#!/bin/bash

value=5
until [ ${var2:=0} -gt $value ]
do
    echo -n "Input var2: "
    read var2
    echo "pelase wait..."
done
echo "$var2 > $value"
exit 0
