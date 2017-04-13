#!/bin/bash

FILE=a.txt

if [ -f $FILE ]
then
    echo "$FILE exits"
else
    echo "$FILE doesn't exits"
fi

