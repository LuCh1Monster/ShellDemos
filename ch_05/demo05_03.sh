#!/bin/bash

value="Monday Tuesday Wednesday Thursday Friday Saturday Sunnday"
for week in $value
do
    echo $week
    sleep 1
done
exit 0
