#!/bin/bash

source common.sh

function hello1 {
    echo "Hello1, world!"
}

hello2() {
    echo "Hello2, world!"
}

hello3() {
    echo "Hello3, $@!"
}

add() {
    sum=0
    for arg in $*; do
        ((sum+=arg))
    done
    return $sum
}

# main
hello1
hello2
hello3 "Jason"

separator

echo sum of 0-10:
add $(seq 0 10)
result=$?
echo $result
