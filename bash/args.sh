#!/bin/bash

source common.sh

usage() {
    echo -e "usage:\n$0 a b c"
}

hello() {
    echo "\$#: " $#
    echo "\$*: " $*
    echo "\$0: " $0
    echo "\$1: " $1
    echo "\$2: " $2
    echo "\$3: " $3
}

if [ $# -eq 0 ]
then
    usage
else
    echo the arguments of the function main:
    echo "\$#: " $#
    echo "\$*: " $*
    echo "\$0: " $0
    echo "\$1: " $1
    echo "\$2: " $2
    echo "\$3: " $3

    separator

    echo the arguments of function hello:
    hello Jason Sally Amanda
fi

