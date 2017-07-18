#!/bin/bash

system()
{
    if [ `echo "Z\c"` = "Z" ]
    then
        echo "$@\c"
    else
        echo -e -n "$@"
    fi
}
system
exit 0
