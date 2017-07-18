#!/bin/bash

system()
{
    if [ `echo "\007"` = "\007" ]
    then
        echo -e -n "$@"
    else
        echo "$@ \c"
    fi
}
exit 0
