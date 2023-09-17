#!/bin/bash

add () {
    ret=$(($1 + $2))
    echo $ret
}

echo $(add 10 11)