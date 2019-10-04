#/bin/bash 


# Splunk Enterprise
sudo apt-get install python3-pip -y 
sudo pip3 install gdown 
mkdir /home/ccdc/temp 
cd /home/ccdc/temp
gdown https://drive.google.com/uc?id=1uVzPevLbm_293dWPK9f1n2BU0TlP9hmS
sudo dpkg -i Ubuntu-splunk-7.3.1.1-7651b7244cf2-linux-2.6-amd64.deb

# Splunk UF 
sudo pip3 install gdown
#mkdir /home/ccdc/temp
cd /home/ccdc/temp
gdown https://drive.google.com/uc?id=1ss91UuvAd8o73K2Fqtjj0Hzvdx14RdFk
sudo dpkg -i Ubuntu-splunkforwarder-7.3.1.1-7651b7244cf2-linux-2.6-amd64.deb

# Configure Splunk Enterprise 
cd /opt/splunk/bin/
sudo ./splunk enable boot-start
#follow prompts, do things 
sudo service splunk start
