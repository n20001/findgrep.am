#!/bin/bash

pattern=$1
directory=$2
if [ -z "$directory" ]; then
	# corrent directory
	directory='.'
fi
find "$directory" -type f | xargs grep -nH "$pattern"
