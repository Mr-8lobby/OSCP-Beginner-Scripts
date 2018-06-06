#!/usr/bin/env bash
if [[ "$#" -ne 1 ]]; then
	echo "Usage: $0 [raw nmap output]"
else
	output=$(cat $PWD/$1 | grep "open" | cut -d"/" -f 1| tr '\n' ',')
	echo ${output%?}
fi
