#!/bin/bash

# we store the result of some function to a local variable then print it out via stdout with echo, rather than using the keyword "return"
return_string () {
    ret="result"
    echo $ret
}

ans=$(return_string)
echo ---
echo $ans