#!/bin/bash

funky()
{
    funky2()
    {
        echo "function \"funky2\", inside \"funky\"."
    }
}

funky
funky2
exit 0
