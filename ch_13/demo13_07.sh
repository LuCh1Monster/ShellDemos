#!/bin/bash

echo "Search spam sender."
echo -n "Provide a domain-name:"
read d_name
echo

if [ -z $d_name ]
then
    echo "Please input a domain-name."
    echo; exit
else
    echo "Checking for, wait..."
    dig +short $d_name.contacts.abuse.net -c in -t txt
    echo
    exit $?
fi
exit 0
