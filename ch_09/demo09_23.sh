#!/bin/bash

original=cat.com
replacement=cat.super.com

for name in $(frep -l $original test)
do
    ex $name << EOF
    :%s/$original/$replacement/g
    :wq
EOF
done
exit 0
