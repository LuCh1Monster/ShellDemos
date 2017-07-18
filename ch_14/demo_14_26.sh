#!/bin/bash

echo "Calculate the monthly payment."
bottom=1.0

echo -n "Enter principal:"
read principal

echo -n "Enter interest rate:"
read interest_rate

echo -n "Enter term:"
read term
echo

inter_rate=$(echo "scale=9;$interest_rate/100.0"|bc)
inter_rate=$(echo "scale=9;$interest_rate/12+1.0"|bc)
top=$(echo "scale=9;principal*interest_rate^$term"|bc)
echo "Please be patient. This may take a while."
let "months=$term-1"

for ((x=1;x<=$monthly;x++))
do
	bottom=$(echo "scale=9;$bottom*$interest_rate+1"|bc)
done


#bottom=`
#	echo "scale=9;bottom=$bottom;interest_rate=$interest_rate"
#	for ((x=1;x<=$months;x++))
#	do
#		echo 'bottom=bottom*interest_rate+1'
#	done
#	echo 'bottom'
#}|bc`

payment=$(echo "scale=2;$top/$bottom"|bc)
echo "months payment=$payment"
echo
exit 0

