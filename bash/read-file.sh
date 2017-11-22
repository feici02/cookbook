#!/usr/bin/env bash

# The -r option passed to read command prevents backslash escapes from being interpreted.
# Add IFS= option before read command to prevent leading/trailing whitespace from being trimmed.

file="README.md"
while IFS= read -r line; do
	printf '%s\n' "$line"
done <"$file"
