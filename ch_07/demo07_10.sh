#!/bin/bash

FUNC()
{
    echo "$1"
}
echo "first call to function."
echo "see if command_line arg is seen."
FUNC

echo "second call to function."
FUNC $1
