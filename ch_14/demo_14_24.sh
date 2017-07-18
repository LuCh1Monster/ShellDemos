#!/bash

TESTFILE=./file
MINARGS=1
SCRIPTNAME=$0

if [ $# -lt $MINARGS ]
then
	echo "$SCRIPTNAME can't execute."
	echo "Need input parameter."
	exit
fi

if [ $# -eq $MINARGS ]
then
	grep $1 $TESTFILE
else
	(shift; "$SCRIPTNAME" $*) |grep $1
fi

exit 0
