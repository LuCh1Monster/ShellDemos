#!/bin/bash

echo -n "Input a name of user: "
read name; echo
size=${#name}
if [ $size -gt 1 ]
then
    u_name=$name
else
    u_name=root
fi

reply="the first script."
cat << EOFmessage
Hello, $u_name
This is $reply
EOFmessage
exit 0
