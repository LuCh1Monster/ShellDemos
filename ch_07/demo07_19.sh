#!/bin/bash

. ./uname.sh
echo -n "input user name: "
read name

if C_NAME $U_NAME
then
    echo "TRUE"
    echo
else
    echo "ERRORS"
    echo
fi
exit 0
