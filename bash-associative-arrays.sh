#!/bin/bash

declare -A my_dict

# $1 = key
# $2 = val
add () {
    my_dict[$1]=$2
}

remove () {
    unset my_dict[$1]
}

print_all () {
    echo ${my_dict[@]}
}

exists () {
    ret=true

    # check if empty
    if [ -z ${my_dict[$1]} ];
    then
        ret=false
    fi

    echo $ret
}

main () {
    add "A1D2D3" "FRANK"
    add "B1B2B3" "GEN"
    add "C1C2C3" "LILY"
    add "D1D2D3" "SAM"
    add "E1D2D3" "DOODADDY"
    echo "The ID E1D2D3 exists: " $(exists "E1D2D3")
    print_all
    remove "E1D2D3"
    print_all
    echo "The ID E1D2D3 exists: " $(exists "E1D2D3")
}

main