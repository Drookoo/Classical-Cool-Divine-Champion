#!/bin/bash 

Ubuntu Scan 

echo "================================"
echo "Ubuntu Scanner Menu" 
echo "================================"
echo "Enter 1 to install prereqs 1:"
echo "Enter 2 for NMAP ping scan 2:"
echo "Enter 3 for NMAP slow scan + fast exec -A -T4 scan 3:" 
echo "Enter q to exit the menu q:"
echo -e "\n"
echo -e "Enter your selection \c"
read answer
case "$answer" in 
1) sudo apt-get install nmap xsltproc -y
	sudo mkdir /tmp/nmap_scans
	echo "Prereqs installed" ;;
2) echo -e "Enter the host or range of ips for target \c"
    read "$host" 
	sudo nmap -sn $host -oX /tmp/nmap_scans/fast_scan/nmap_$date.xml;;
3) cal ;;
q) exit ;; 
esac 
