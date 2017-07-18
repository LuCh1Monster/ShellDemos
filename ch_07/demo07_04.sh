#!/bin/bash

use=cat

if [ $use = cat]
then
    cat_greet()
    {
        echo "hello cat, how are you?"
    }

    cat_greet
fi

no_exit=1
[[ $no_exit -eq 1 ]] && exit() {true;}
exit
