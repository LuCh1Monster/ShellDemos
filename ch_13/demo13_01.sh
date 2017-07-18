#!/bin/bash

echo "Input a name of command."
echo -n "The command is:"
read command_name
echo

default_command=netconfig
if [ $command_name = $default_command ]
then
    echo "Execute \"$command_name\" command..."
    echo "The command is going to open \"Network configuration\" window."
    $command_name
else
    echo "Operation Aborted..."
    exit
fi

echo "AutoComplete Settings for The automatic acquisition IP address."
echo; sleep 1
wait
default=Yes

echo "And begins execution \"neat\" command..."
echo "Do you want to continue?"
echo -n "Choose the answer(Yes|No):"
read answer

echo
if [ $answer = $default ]
then
    echo "Executing \"neat\" command..."
    echo "Please wait..."
    neat
else
    echo "Operation Aborted..."
fi

wait
echo
answer2=yes
echo "Do you want reboot network card?"
echo -n "Choose the answer(yes|no):"
read C_answer
echo

if [ $C_answer = $answer2 ]
then
    echo "Restarting the network card."
    echo "Please wait..."
    ifdown eth0
    wait
    ifup eth0
else
    echo "Operation Aborted..."
fi

echo
exit 0
