#!/bin/bash

[ -e /etc/passwd ] && "The file exists."
echo "Copying the file..."
sleep 1
(cp /etc/passwd /home/hadoop; echo "Finish")
exit 0
