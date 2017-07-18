#!/bin/bash

STRING()
{
    echo "parameters are '$*'"
    until [ -z $1 ]
    do
        echo "processing parameter of: $1"
        echo ${1:1}

        if [ ${1:0:1} = '/' ]
        then
            tmp=${1:1}
            parameter=${tmp%%=*}
            value=${tmp##*=}
            echo "parameter:'$parameters', value:'$value'"
            eval $parameter=$value
        fi
        shift
    done
}

STRING $*
echo "Test is '$test'"
echo "Test1 is '$test1'"
exit 0
