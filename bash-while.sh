#!/bin/bash
counter=0
max=20

count () {
    counter=$(($counter + 1))
    echo $counter
}

play_hide_n_seek () {
    echo starting at $counter
    echo ending at $max
    while [ $counter -lt $max ];
    do
        count
    done
    echo reached $counter
    echo ready or not here i come
}

play_hide_n_seek