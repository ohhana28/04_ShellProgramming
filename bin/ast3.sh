#!/bin/bash
#         *
#       * * *
#     * * * * *
#   * * * * * * *
#  * * * * * * * * *
for i in $(seq 1 5)
do 
    # Right empty
    for k in $(seq $(expr 5 - $i) -1 1)
    do
        echo -n ' '
    done
    # Left star
    for j in $(seq 1 $i)
    do
        echo -n '*'
    done
    # Right star
    for l in $(seq 1 $(expr $i - 1))
    do
        echo -n '*'
    done
    echo
done
