#!/bin/bash

[ -e "/var/log/messages" ]
cat /var/log/messages > /var/log/messages.1
cp /dev/null /var/log/messages
echo "Fish"
echo
(`echo ls -l /var/log/messages`; exit 1)
exit 0
