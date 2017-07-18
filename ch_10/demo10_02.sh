#!/bin/bash

echo ">>send out squawk"
read -n 1 -s -p $'\a    squawk at here.'
echo >&2
echo "-----------"
echo ">>line feed"
read -n 1 -s -p $'This is \nnew line.'
echo >&2
echo "-----------"
echo ">>horizontal tabulation"
read -n 1 -s -p $'Genernate a \thorizontal symbol.'
echo >&2
echo "-----------"
echo ">>vertical tabulation"
read -n 1 -s -p $'Generate a \vverital symbol.'
echo >&2
echo "------------"
echo
exit 0
