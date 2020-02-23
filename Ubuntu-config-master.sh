#!/bin/bash 

echo "================================"
echo "Ubuntu config Menu" 
echo "================================"
echo "Enter 1 to config Splunk UFW: (1)"
echo "Enter 2 to config Splunk Enterprise: (2)"
echo "Enter 3 to config osquery: (3)" 
echo "Enter q to exit the menu q:"
echo -e "\n"
echo -e "Enter your selection \c"
read answer
case "$answer" in 