#!/bin/bash

# prompt: 
# write a function that adds two integers

add () {
  ret=$(($1 + $2))
  echo $ret
}

main () {
  a=111
  b=2
  echo $(add $a $b)
}

main