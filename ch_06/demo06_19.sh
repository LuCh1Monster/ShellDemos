#!/bin/bash

[ -e $1 ]
cat -n "`basename $1`"
exit 0
