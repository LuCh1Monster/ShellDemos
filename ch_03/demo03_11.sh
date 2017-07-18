#!/bin/bash

echo \z
echo \\z
echo '\z'
echo '\\z'
echo "\z"
echo "\\z"
echo

echo `echo \z`
echo `echo \\z`
echo `echo \\\z`
echo `echo \\\\z`
echo `echo \\\\\z`
echo `echo \\\\\\z`
echo `echo "\z"`
echo `echo "\\z"`
echo

cat << error
\z
error

cat << error
\\z
error
exit 0

