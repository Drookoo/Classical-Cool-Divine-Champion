#!/bin/bash 

Ubuntu Scan 

echo "================================"
echo "Ubuntu Scanner Menu" 
echo "================================"
echo "Enter 1 to install prereqs 1:"
echo "Enter 2 for fast scan 2:"
echo "Enter 3 for slow scan 3:" 
echo "Enter q to exit the menu q:"
echo -e "\n"
echo -e "Enter your selection \c"
read answer
case "$answer" in 
1) sudo apt-get install nmap xsltproc -y
	echo "Prereqs installed" ;;
2) who ;;
3) cal ;;
q) exit ;; 
esac 
