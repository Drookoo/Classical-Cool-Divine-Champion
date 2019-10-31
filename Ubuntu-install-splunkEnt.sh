#!/bin/bash
#Ubuntu apache2

# Splunk Enterprise .deb: https://wfs.pace.edu/browse/LolUnH_KB0CdLHap3f3gHw/

# Splunk Enterprise
wget -O splunk-7.3.2-c60db69f8e32-linux-2.6-amd64.deb 'https://www.splunk.com/bin/splunk/DownloadActivityServlet?architecture=x86_64&platform=linux&version=7.3.2&product=splunk&filename=splunk-7.3.2-c60db69f8e32-linux-2.6-amd64.deb&wget=true'

sudo dpkg -i splunk-7.3.2-c60db69f8e32-linux-2.6-amd64.deb

# Configure Splunk Enterprise 
cd /opt/splunk/bin/
sudo ./splunk start --accept-license
sudo ./splunk enable boot-start

sudo ./splunk enable listen 9997 -auth ccdc:$uperccdc2019

sudo ./splunk restart 
#follow prompts, do things 
#sudo service splunk start
#configure splunk enterprise to recieve data on port 9997



