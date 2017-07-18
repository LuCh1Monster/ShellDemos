#!/bin/bash

value=abc-de^f_1234-xyz
var=${value#*-*}
echo "value=$var"; echo

var2=${value#*^*}
echo "value=$var2"; echo

var3=${value%*_*}
echo "value=$var3"; echo
exit 0
