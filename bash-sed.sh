#!/bin/bash

input_file=input/geekfile.txt

# $1 = word to replace
# $2 = word with which to replace
replace_first_occurrence () {
    sed 's/'$1'/'$2'/' $input_file
}

# $1 = word to replace
# $2 = word with which to replace
# $3 = nth occurrence to replace
replace_nth_occurrence () {
    sed 's/'$1'/'$2'/'$3'' $input_file
}

# $1 = word to replace
# $2 = word with which to replace
replace_all_occurrence () {
    sed 's/'$1'/'$2'/g' $input_file
}

main () {
    # replace_first_occurrence unix linux
    # replace_nth_occurrence unix linux 3
    replace_all_occurrence unix linux
}

main