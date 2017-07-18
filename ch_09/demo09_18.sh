#!/bin/bash

HELLO='Hello shell script.'

MESSAGE=$(cat << HERE
This is the first shell script.
And it is bash shell.
$MESSAGE
$HELLO
HERE)

echo $MESSAGE
exit 0
