#!/bin/bash
ip_addr=''
outfile=''
execute=1
if [[ "$#" -eq 1 ]] ; then
	ip_addr=$1
	outfile=$(echo $1 | cut -d"." -f 4)_top10k.out
elif [[ "$#" -eq 2 ]] ; then
	ip_addr=$1
	outfile=$2
else
	echo "Usage: $0 [ip address] (outputfile)"
	execute=0
fi
if [[ "$execute" -eq 1 ]]; then
	echo nmap --top-ports 100 -sU $ip_addr -oN $outfile
	nmap --top-ports 100 -sU $ip_addr -oN $outfile
fi
