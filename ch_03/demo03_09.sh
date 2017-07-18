#!/bin/bash

echo "quotation marks"
echo $'\t\042\t'
echo $'\tx22\t'

quote=$'\042'
echo "$quote is a quoted string, and this lies outside the quotes."
exit 0
