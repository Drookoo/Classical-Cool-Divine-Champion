sudo wget https://github.com/kolide/fleet/releases/latest/download/fleet.zip 
sudo apt install unzip 
unzip fleet.zip 'linux/*' -d fleet
sudo cp fleet/linux/fleet /usr/bin/fleet
sudo cp fleet/linux/fleetctl /usr/bin/fleetctl

sudo apt-get install mysql-server -y
#set mysql password
sudo mysql_secure_installation


# CREATE DATABASE kolide; 

#quit

sudo apt-get install redis-server -y
# start it 
sudo redis-server &

#check if redis is running 
systemctl status redis 