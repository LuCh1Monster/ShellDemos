#!/bin/bash

shell=/bin/bash
echo "SHELL=$shell"
echo

set -r
echo "Attempting to change shell in restricted mode."
echo "SHELL=$shell"
ls -l /usr/bin > bin.txt
ls -l bin.txt
echo 
exit 0

