#!/bin/bash

OS_NAME=$(uname)

if [ "${OS_NAME}" = "Darwin" ]; then
	echo macOS
elif [ "${OS_NAME}" = "Linux" ]; then
	echo Linux
else
	echo Unknown
fi

