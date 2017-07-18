#!/bin/bash

PARAMETER()
{
    echo "$1"
}

message="parameter"
parameter="This is the first parameter!"

PARAMETER "$message"
PARAMETER "${!message}"
echo
parameter="Goodbye parameter!"
PARAMETER "$message"
PARAMETER "${!message}"
exit 0
