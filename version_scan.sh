#/usr/bin/env bash
#takes in an ip address, and the ouput from port_chopper.sh and does a version scan on the ports.
if [[ "$#" -ne 2 ]] ; then
	echo "Usage: $0 [ip address] [comma separated ports]"
else
	echo nmap -p $2 -sV $1 -oN $( echo $1 | cut -d"." -f 4)_versionScan.out
	nmap -p $2 -sV $1 -oN $( echo $1 | cut -d"." -f 4)_versionScan.out
fi
