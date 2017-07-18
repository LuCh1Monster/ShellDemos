#!/bin/bash

PUSH()
{
    if [ -z "$1" ]
    then
        return
    fi
    let "SP-=1"
    stack[$SP]=$1
    return
}

BP=36
SP=$BP
POP()
{
    Data=
    if [ "$SP" -eq "$BP" ]
    then
        return
    fi
    Data=$(stack[$SP])
    let "$SP+=1"
    return
}

PRINT()
{
    echo
    echo "Pointer location"
    echo "Stack Pointer -> $SP"
    echo "Just popped \""$Data"\" off the stack."
}
POP;PRINT
value1=22;PUSH $value1
value2=skidoo;PUSH $value2
value3=FINAL;PUSH $value3
POP;PRINT
POP;PRINT
POP;PRINT
echo
exit 0
