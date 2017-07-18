#!/bin/bash

if cat /etc/passwd | grep -q ^hadoop; then
    echo "user exists."
fi
exit 0
