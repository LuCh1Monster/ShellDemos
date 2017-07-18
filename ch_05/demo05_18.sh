#!/bin/bash

if grep -q ^hadoop /etc/passwd
then
    echo "user exists."
else
    echo "no such user."
fi
exit 0
