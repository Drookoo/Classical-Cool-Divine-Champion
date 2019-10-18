#/bin/bash
sudo wget https://github.com/kolide/fleet/releases/latest/download/fleet.zip

sudo unzip fleet.zip 'linux/*' -d fleet
sudo cp /home/fleet/linux/{fleet,fleetctl} /usr/bin/

sudo apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xF1656F24C74CD1D8
sudo add-apt-repository 'deb [arch=amd64,arm64,ppc64el] http://sfo1.mirrors.digitalocean.com/mariadb/repo/10.3/ubuntu bionic main'

# sudo apt-get update 
# sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
# sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
# sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
# sudo apt-get update
# sudo apt-get install docker-ce
# sudo docker pull kolide/fleet