#!/bin/bash

# sudo yum install htop -y 

#also works as one line
rpm -i https://pkg.osquery.io/rpm/osquery-4.0.2-1.linux.x86_64.rpm 

firewall-cmd --zone=public --add-port=8000/tcp --permanent 
firewall-cmd --zone=public --add-port=9997/tcp --permanent 
firewall-cmd --zone=public --add-port=8089/tcp --permanent 
firewall-cmd --reload