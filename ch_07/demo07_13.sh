#!/bin/bash

RETURN()
{
    return $1
}

RETURN 36
echo $?

RETURN 255
echo $?

RETURN 3636
echo $?

RETURN -3636
echo $?
exit 0
