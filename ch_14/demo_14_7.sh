#!/bin/bash

echo "Changing directory."
cd /etc/httpd
echo "Now in `pwd`"
echo; sleep 1
echo "Coming back home."
cd
echo "Now in `pwd`"
echo 

set -r
echo "running restricted mode."
echo "Changing directory."
cd /etc/httpd
echo "The directory in `pwd`"
echo
exit 0
