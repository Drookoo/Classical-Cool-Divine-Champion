#!/bin/bash
#Ubuntumaridb 

# SPlunk uFW. deb: 
#wget -O splunkforwarder-7.3.2-c60db69f8e32-linux-2.6-amd64.deb 'https://www.splunk.com/bin/splunk/DownloadActivityServlet?architecture=x86_64&platform=linux&version=7.3.2&product=universalforwarder&filename=splunkforwarder-7.3.2-c60db69f8e32-linux-2.6-amd64.deb&wget=true'

# Splunk Enterprise
# sudo apt-get install python3-pip -y 
# sudo pip3 install gdown 
# mkdir /home/ccdc/temp 
# cd /home/ccdc/temp
# ==========================================
# Make this public?
# ==========================================
# gdown https://drive.google.com/uc?id=1uVzPevLbm_293dWPK9f1n2BU0TlP9hmS
# sudo dpkg -i Ubuntu-splunk-7.3.1.1-7651b7244cf2-linux-2.6-amd64.deb

# Splunk UF 
# Readme: https://docs.splunk.com/Documentation/Forwarder/7.3.2/Forwarder/Configuretheuniversalforwarder
wget -O splunkforwarder-7.3.2-c60db69f8e32-linux-2.6-amd64.deb 'https://www.splunk.com/bin/splunk/DownloadActivityServlet?architecture=x86_64&platform=linux&version=7.3.2&product=universalforwarder&filename=splunkforwarder-7.3.2-c60db69f8e32-linux-2.6-amd64.deb&wget=true'
sudo dpkg -i splunkforwarder-7.3.2-c60db69f8e32-linux-2.6-amd64.deb
cd /opt/splunkforwarder/bin 
sudo ./splunk start --accept-license 
sudo ./splunk enable boot-start
sudo ./splunk add forward-server 172.16.1.55:9997 
cd /opt/splunkforwarder/bin 
sudo ./splunk add monitor /var/log
sudo ./splunk add monitor /etc/


## Cron
          # _____                    _____                   _______                   _____          
         # /\    \                  /\    \                 /::\    \                 /\    \         
        # /::\    \                /::\    \               /::::\    \               /::\____\        
       # /::::\    \              /::::\    \             /::::::\    \             /::::|   |        
      # /::::::\    \            /::::::\    \           /::::::::\    \           /:::::|   |        
     # /:::/\:::\    \          /:::/\:::\    \         /:::/~~\:::\    \         /::::::|   |        
    # /:::/  \:::\    \        /:::/__\:::\    \       /:::/    \:::\    \       /:::/|::|   |        
   # /:::/    \:::\    \      /::::\   \:::\    \     /:::/    / \:::\    \     /:::/ |::|   |        
  # /:::/    / \:::\    \    /::::::\   \:::\    \   /:::/____/   \:::\____\   /:::/  |::|   | _____  
 # /:::/    /   \:::\    \  /:::/\:::\   \:::\____\ |:::|    |     |:::|    | /:::/   |::|   |/\    \ 
# /:::/____/     \:::\____\/:::/  \:::\   \:::|    ||:::|____|     |:::|    |/:: /    |::|   /::\____\
# \:::\    \      \::/    /\::/   |::::\  /:::|____| \:::\    \   /:::/    / \::/    /|::|  /:::/    /
 # \:::\    \      \/____/  \/____|:::::\/:::/    /   \:::\    \ /:::/    /   \/____/ |::| /:::/    / 
  # \:::\    \                    |:::::::::/    /     \:::\    /:::/    /            |::|/:::/    /  
   # \:::\    \                   |::|\::::/    /       \:::\__/:::/    /             |::::::/    /   
    # \:::\    \                  |::| \::/____/         \::::::::/    /              |:::::/    /    
     # \:::\    \                 |::|  ~|                \::::::/    /               |::::/    /     
      # \:::\    \                |::|   |                 \::::/    /                /:::/    /      
       # \:::\____\               \::|   |                  \::/____/                /:::/    /       
        # \::/    /                \:|   |                   ~~                      \::/    /        
         # \/____/                  \|___|                                            \/____/         
                                                                                                    
sudo ./splunk add monitor /etc/cron.allow
sudo ./splunk add monitor /etc/cron.deny 
sudo ./splunk add monitor /etc/cron.d 
sudo ./splunk add monitor /etc/cron.daily 
sudo ./splunk add monitor /etc/cron.hourly 
sudo ./splunk add monitor /etc/cron.hourly 
sudo ./splunk add monitor /etc/cron.monthly
sudo ./splunk add monitor /etc/crontab 

## System Startup
sudo ./splunk add monitor /etc/inittab 
sudo ./splunk add monitor /etc/init.d
sudo ./splunk add monitor /etc/init 

## Install packages 
sudo ./splunk add monitor /usr/bin/rpm 
sudo ./splunk add monitor /usr/bin/yum 
sudo ./splunk add monitor /bin/rpm 
sudo ./splunk add monitor /usr/bin/dpkg 
sudo ./splunk add monitor /usr/bin/apt-add-repository 
sudo ./splunk add monitor /usr/bin/apt-get 
sudo ./splunk add monitor /usr/bin/aptitude 

## Suspicious activity 
sudo ./splunk add monitor /usr/bin/wget
sudo ./splunk add monitor /usr/bin/curl 
sudo ./splunk add monitor /usr/bin/base64 
sudo ./splunk add monitor /bin/nc 
sudo ./splunk add monitor /bin/netcat 
sudo ./splunk add monitor /usr/bin/ncat 
sudo ./splunk add monitor /usr/bin/ssh 
sudo ./splunk add monitor /usr/bin/socat 
sudo ./splunk add monitor /usr/bin/socat 
sudo ./splunk add monitor /usr/bin/wireshark 
sudo ./splunk add monitor /usr/bin/rawshark
sudo ./splunk add monitor /usr/bin/rdesktop 
sudo ./splunk add monitor /sbin/iptables 
sudo ./splunk add monitor /sbin/ifconfig 
sudo ./splunk add monitor /usr/sbin/tcpdump 
sudo ./splunk add monitor /usr/sbin/traceroute 

## Process ID changes 
sudo ./splunk add monitor /bin/su 
sudo ./splunk add monitor /usr/bin/sudo 
sudo ./splunk add monitor /etc/sudoers

## Powerstate changes 
sudo ./splunk add monitor /sbin/shutdown 
sudo ./splunk add monitor /sbin/poweroff 
sudo ./splunk add monitor /sbin/reboot 
sudo ./splunk add monitor /sbin/halt 

## Session initiation information 
sudo ./splunk add monitor /var/run/utmp 
sudo ./splunk add monitor /var/log/btmp 
sudo ./splunk add monitor /var/log/wtmp 

## Recon 
         # /\    \                  /\    \                  /\    \                 /::\    \                 /\    \         
        # /::\    \                /::\    \                /::\    \               /::::\    \               /::\____\        
       # /::::\    \              /::::\    \              /::::\    \             /::::::\    \             /::::|   |        
      # /::::::\    \            /::::::\    \            /::::::\    \           /::::::::\    \           /:::::|   |        
     # /:::/\:::\    \          /:::/\:::\    \          /:::/\:::\    \         /:::/~~\:::\    \         /::::::|   |        
    # /:::/__\:::\    \        /:::/__\:::\    \        /:::/  \:::\    \       /:::/    \:::\    \       /:::/|::|   |        
   # /::::\   \:::\    \      /::::\   \:::\    \      /:::/    \:::\    \     /:::/    / \:::\    \     /:::/ |::|   |        
  # /::::::\   \:::\    \    /::::::\   \:::\    \    /:::/    / \:::\    \   /:::/____/   \:::\____\   /:::/  |::|   | _____  
 # /:::/\:::\   \:::\____\  /:::/\:::\   \:::\    \  /:::/    /   \:::\    \ |:::|    |     |:::|    | /:::/   |::|   |/\    \ 
# /:::/  \:::\   \:::|    |/:::/__\:::\   \:::\____\/:::/____/     \:::\____\|:::|____|     |:::|    |/:: /    |::|   /::\____\
# \::/   |::::\  /:::|____|\:::\   \:::\   \::/    /\:::\    \      \::/    / \:::\    \   /:::/    / \::/    /|::|  /:::/    /
 # \/____|:::::\/:::/    /  \:::\   \:::\   \/____/  \:::\    \      \/____/   \:::\    \ /:::/    /   \/____/ |::| /:::/    / 
       # |:::::::::/    /    \:::\   \:::\    \       \:::\    \                \:::\    /:::/    /            |::|/:::/    /  
       # |::|\::::/    /      \:::\   \:::\____\       \:::\    \                \:::\__/:::/    /             |::::::/    /   
       # |::| \::/____/        \:::\   \::/    /        \:::\    \                \::::::::/    /              |:::::/    /    
       # |::|  ~|               \:::\   \/____/          \:::\    \                \::::::/    /               |::::/    /     
       # |::|   |                \:::\    \               \:::\    \                \::::/    /                /:::/    /      
       # \::|   |                 \:::\____\               \:::\____\                \::/____/                /:::/    /       
        # \:|   |                  \::/    /                \::/    /                 ~~                      \::/    /        
         # \|___|                   \/____/                  \/____/                                           \/____/         
                                                                                                                             
sudo ./splunk add monitor /usr/bin/whoami 
sudo ./splunk add monitor /etc/issue
sudo ./splunk add monitor /etc/hostname 

sudo ./splunk add monitor /usr/bin/passwd
sudo ./splunk add monitor /bin/su 
sudo ./splunk add monitor /usr/bin/stunnel 
sudo ./splunk add monitor /usr/bin/passwd 

## Tools to change group identifiers 
sudo ./splunk add monitor /usr/sbin/groupadd 
sudo ./splunk add monitor /usr/sbin/groupmod 
sudo ./splunk add monitor /usr/sbin/addgroup 
sudo ./splunk add monitor /usr/sbin/useradd 
sudo ./splunk add monitor /usr/sbin/usermod 
sudo ./splunk add monitor /usr/sbin/adduser 

## Login configuration and information 
sudo ./splunk add monitor /etc/login.defs 
sudo ./splunk add monitor /etc/securetty 
sudo ./splunk add monitor /var/log/faillog 
sudo ./splunk add monitor /var/log/lastlog
sudo ./splunk add monitor /var/log/tallylog

## User, groups, password DBs 
sudo ./splunk add monitor /etc/group 
sudo ./splunk add monitor /etc/passwd
sudo ./splunk add monitor /etc/gshadow 
sudo ./splunk add monitor /etc/shadow 
sudo ./splunk add monitor /etc/security/opasswd 


# sudo .splunk add monitor /var/log/osquery/
sudo ./splunk restart

#### testme #####

# in inputs.conf (find where this is located in /opt/splunk) 
cd /opt/splunkforwarder/etc/system/local 
echo -e "[monitor:///var/log/osquery/osqueryd.results.log]\nindex = main\nsourcetype = osquery_results\n\n" >> inputs.conf

echo -e "[monitor:///var/log/osquery/osqueryd.*INFO*]\nindex = main\nsourcetype = osquery_info\n\n" >> inputs.conf

echo -e "[monitor:///var/log/osquery/osqueryd.*ERROR*]\nindex = main\nsourcetype = osquery_error\n\n" >> inputs.conf

echo -e "[monitor:///var/log/osquery/osqueryd.*WARNING*]\nindex = main\nsourcetype = osquery_warning\n\n" >> inputs.conf


# To install kolide fleet, recommended to put this on ubuntu 
# https://jordanpotti.com/2018/02/16/elk-osquery-kolide-fleet-love/ 


# more osquery logging conf 
cd /etc/osquery/
# create file named "osquery.conf"
# populate it like so

#sudo osqueryctl stop 
#sudo osqueryctl start

