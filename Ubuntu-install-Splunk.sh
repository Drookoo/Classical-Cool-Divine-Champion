#/bin/bash 

sudo pip3 install gdown 
mkdir temp 
cd temp
gdown https://drive.google.com/uc?id=1uVzPevLbm_293dWPK9f1n2BU0TlP9hmS
sudo dpkg -i Ubuntu-splunk-7.3.1.1-7651b7244cf2-linux-2.6-amd64.deb

