#/bin/bash 

# Splunk Enterprise .deb: https://wfs.pace.edu/browse/LolUnH_KB0CdLHap3f3gHw/
# Splunk UFW .deb: https://wfs.pace.edu/browse/jDa9Ah_KAkKMy8UjfguzRA/
# SPlunk uFW. deb: 
#wget -O splunkforwarder-7.3.2-c60db69f8e32-linux-2.6-amd64.deb 'https://www.splunk.com/bin/splunk/DownloadActivityServlet?architecture=x86_64&platform=linux&version=7.3.2&product=universalforwarder&filename=splunkforwarder-7.3.2-c60db69f8e32-linux-2.6-amd64.deb&wget=true'

# Splunk Enterprise
# sudo apt-get install python3-pip -y 
# sudo pip3 install gdown 
# mkdir /home/ccdc/temp 
# cd /home/ccdc/temp
# gdown https://drive.google.com/uc?id=1uVzPevLbm_293dWPK9f1n2BU0TlP9hmS
# sudo dpkg -i Ubuntu-splunk-7.3.1.1-7651b7244cf2-linux-2.6-amd64.deb

# Splunk UF 
# Readme: https://docs.splunk.com/Documentation/Forwarder/7.3.2/Forwarder/Configuretheuniversalforwarder
wget -O splunkforwarder-7.3.2-c60db69f8e32-linux-2.6-amd64.deb 'https://www.splunk.com/bin/splunk/DownloadActivityServlet?architecture=x86_64&platform=linux&version=7.3.2&product=universalforwarder&filename=splunkforwarder-7.3.2-c60db69f8e32-linux-2.6-amd64.deb&wget=true'
sudo dpkg -i splunkforwarder-7.3.2-c60db69f8e32-linux-2.6-amd64.deb
cd /opt/splunkforwarder/bin 
sudo ./splunk enable boot-start
sudo ./splunk add forward-server 10.0.2.12:9997
sudo ./splunk add monitor /var/log
sudo ./splunk restart


# Configure Splunk Enterprise 
#cd /opt/splunk/bin/
#sudo ./splunk enable boot-start
#follow prompts, do things 
#sudo service splunk start
#configure splunk enterprise to recieve data on port 9997



