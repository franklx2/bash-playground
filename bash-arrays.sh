#!/bin/bash

# explicity declaration
declare -a my_array 

init_specific_indices () {
    # add to specific indices
    my_array[1]="a"
    my_array[3]="b"
    my_array[5]="c"
}

init_all () {
    my_array=( "a" "b" "c" )
}

print_all () {
    # print all
    echo ${my_array[@]}
}

print_specific () {
    # print specific
    echo ${my_array[3]}
}

print_all_for_loop () {
    for i in "${my_array[@]}"
    do
        echo $i
    done
}

push () {
    my_array+=($1)
}

remove () {
    unset my_array[$1]
}

len () {
    ret=${#my_array[@]}
    echo $ret
}

main () {
    init_all
    print_all
    push "d"
    push "e"
    print_all
    echo array len: $(len)
    remove 4
    echo array len: $(len)
    print_all_for_loop
}

main