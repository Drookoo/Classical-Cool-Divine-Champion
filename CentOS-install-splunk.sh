#!/bin/bash
wget -O splunkforwarder-8.0.0-1357bef0a7f6-linux-2.6-x86_64.rpm 'https://www.splunk.com/bin/splunk/DownloadActivityServlet?architecture=x86_64&platform=linux&version=8.0.0&product=universalforwarder&filename=splunkforwarder-8.0.0-1357bef0a7f6-linux-2.6-x86_64.rpm&wget=true'

rpm -i splunkforwarder-8.0.0-1357bef0a7f6-linux-2.6-x86_64.rpm

cd /opt/splunkforwarder/bin 
sudo ./splunk start --accept-license 
sudo ./splunk enable boot-start
sudo ./splunk add forward-server 172.16.1.52:9997 -auth ccdc:$uperccdc2019
sudo ./splunk add monitor /var/log
sudo ./splunk restart



# Splunk Enterprise 
wget -O splunk-8.0.0-1357bef0a7f6-linux-2.6-x86_64.rpm 'https://www.splunk.com/bin/splunk/DownloadActivityServlet?architecture=x86_64&platform=linux&version=8.0.0&product=splunk&filename=splunk-8.0.0-1357bef0a7f6-linux-2.6-x86_64.rpm&wget=true'
rpm -i splunk-8.0.0-1357bef0a7f6-linux-2.6-x86_64.rpm

cd /opt/splunk/bin/
sudo ./splunk start --accept-license
sudo ./splunk enable boot-start

sudo ./splunk enable listen 9997 -auth ccdc:$uperccdc2019

sudo ./splunk restart 