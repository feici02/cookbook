#!/bin/bash

NAMES=(Biff Chip Kipper)

# both @ and * are OK
for name in ${NAMES[*]}; do
	echo $name
done

echo ${NAMES[2]}

NAMES[3]=Floppy
echo ${NAMES[*]}
