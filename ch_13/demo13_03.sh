#!/bin/bash

echo "Please choose for IP address."
echo "Whether \"192.168.121.x\" or other IP address?"
echo "\"yes\" is \"192.168.121.x\", or else is other."
echo -n "Input answer(yes|no):"
read answer

echo
echo "What are you want \"ping\" how many times?"
echo -n "Input the time of \"ping\":"
read times
echo

default=yes
if [ $default = $answer ]
then
    echo "Just enter an IP address section."
    echo -n "The IP address section is:"
    read a_section
    IP_ADDRE=192.168.121.$a_section
    ping -c $times $IP_ADDRE
    echo

else
    echo "Please Specify an IP address."
    echo -n "The IP address is:"
    read ip_address
    echo
    ping -c $times $ip_address
    echo
fi
exit0
