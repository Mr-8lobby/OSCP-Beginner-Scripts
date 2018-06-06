#!/usr/bin/env bash
#This should be used after TCP/UDP normal port scan output has be generated (-oN option in nmap) and saved to a file
#This takes in that output file, parses the open ports, and returns them in a line for version guessing nmap scan
if [[ "$#" -ne 1 ]]; then
	echo "Usage: $0 [raw nmap output]"
else
	output=$(cat $PWD/$1 | grep "open" | cut -d"/" -f 1| tr '\n' ',')
	echo ${output%?}
fi
