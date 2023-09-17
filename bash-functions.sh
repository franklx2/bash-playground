#!/bin/bash

hello_world () {
    echo "hello world!"
}

string_compare () {
    string1="abc"
    string2="abc"

    if [ $string1 = $string2 ];
    then
        echo "equals"
    else
        echo "does not equal"
    fi
}

# hello_world
# string_compare