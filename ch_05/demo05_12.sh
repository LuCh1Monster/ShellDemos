#!/bin/bash

var=0
while echo "number=$value"
    value=$var
    [ $var -ne 8 ]
do
    echo "input var: "
    read var
    echo "value -eq $var"
done
exit 0
