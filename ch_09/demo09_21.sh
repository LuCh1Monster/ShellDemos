#!/bin/bash

echo "Input a name of new script: "
read n_script
if [ -z $n_script ]
then
    exit
fi

(
cat << EOF
#!/bin/bash
#
echo "This is the other shell script."
echo "And it's do additive arithmetic."
declare -i i=3
declare -i j=6
let c=$i+$j
echo "The c value is: $c"
echo; exit 0

EOF
) > $n_script
if [ -f $n_script ]
then
    chmod 744 $n_script
    echo "The new script name is $n_script"
else
    echo "Problem in creating file: \"$n_script\"."
fi
echo
exit 0
