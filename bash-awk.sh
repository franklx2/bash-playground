#!/bin/bash

input_file=input/employee.txt

print_file () {
    awk '{print}' $input_file
}

print_file_with_selector () {
    awk '/'$1'/ {print}' $input_file
}

print_file_with_given_columns () {
    counter=0
    arg_str=""
    len="${#@}"
    for column in $@;
    do
        if [ $counter = $(($len - 1)) ];
        then
            arg_str+="$"$column
        else
            arg_str+="$"$column","
        fi
        counter=$(($counter + 1))
    done
    
    awk '{print '$arg_str'}' $input_file
}

main () {
    # print_file
    # print_file_with_selector "manager"
    print_file_with_given_columns 7
}

main