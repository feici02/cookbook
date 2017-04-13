#!/bin/bash

source common.sh

echo all the files in current directory:
for f in $(ls); do
    echo "* $f"
done

separator

echo all the shell script in current directory:
for f in *.sh
do
    echo "* $f"
done

separator

echo the sum of 0-10:
sum=0
for ((i=0; i<=10; i++)); do
    ((sum+=i))
done
echo $sum

separator

echo infinite loop:
echo "Press [CTRL+C] to stop.."
while true
do
    ((num++))
    echo $num
    sleep 1
done
