#!/bin/bash

TCP_HOST=www.ISP_NAME.com
TCP_PORT=80
echo "HEAD /HTTP/2.0" > /dev/tcp/${TCP_HOST}/${TCP_PORT}
MYEXIT=$?
:<< EXPLANATION
If bash was compiled with --enable-net-redirections, it has the capability of
using a special character device for both TCP and UDP redirections. These 
redirections are used identically as STDIN/STDERR. The device entries are 
30,36 for /dev/tcp:
mknod /dev/tcp c 30 36
>From the bash reference:
/dev/tcp/host/port
if host is a valid hostname or internet address, and port is an integer
port number or service name, Bash attempts to open a TCP connection to the
corresponding socket.
EXPLANATION

if [ "X$MYEXIT"="X0" ]
then
    echo "Connection successful."
    echo "And the Exit code is:$MYEXIT"
else
    echo "Connection unsuccessful."
    echo "And the Exit code is:$MYEXIT"
fi
echo
exit 0
