#!/bin/bash

echo
echo "Please press down any key."
old_tty_settings=$(stty -g)
stty -icanon
Key=$(dd bs=1 count=1 2>/dev/null)
echo

echo "Key pressed was \""$Key"\"."
echo
stty "$old_tty_settings"
exit 0
