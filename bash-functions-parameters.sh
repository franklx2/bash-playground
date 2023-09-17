#!/bin/bash

greeting () {
    echo hello $1
}

is_empty () {
    ret=false
    if [ -z $1 ];
    then
        ret=true
    fi
    echo $ret
}

main () {
    if [ $(is_empty $1) = true ];
    then
        echo given name is empty
    else
        echo name is valid, proceed
        greeting "frank"
    fi
}

name="frank"
main $name