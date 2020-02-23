#!/bin/bash 

# Ubuntu Scan

# TODO: determine why the script doesn't write to other folders
# TODO: Test this on environment, single IP, range of IPs, etc.  


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
    read host 
	sudo nmap -sn "$host" -oX fast_nmap_"$(date +"%Y-%m-%d_%H-%M-%S")".xml \
	&& sudo xsltproc "$(ls -Art | tail -n 1)" -o "$(ls -Art | tail -n 1)".html
	;;
3) echo -e "Enter the host or range of ips for target \c"
	read host 
	sudo nmap -A -T4 "$host" -oX slow_nmap_"$(date +"%Y-%m-%d_%H-%M-%S")".xml \
	&& sudo xsltproc "$(ls -Art | tail -n 1)" -o "$(ls -Art | tail -n 1)".html
	;;
q) exit ;; 
esac 
