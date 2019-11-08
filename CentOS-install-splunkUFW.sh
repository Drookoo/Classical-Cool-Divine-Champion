## Splunk UFW 
wget -O splunkforwarder-8.0.0-1357bef0a7f6-linux-2.6-x86_64.rpm 'https://www.splunk.com/bin/splunk/DownloadActivityServlet?architecture=x86_64&platform=linux&version=8.0.0&product=universalforwarder&filename=splunkforwarder-8.0.0-1357bef0a7f6-linux-2.6-x86_64.rpm&wget=true'

rpm -i splunkforwarder-8.0.0-1357bef0a7f6-linux-2.6-x86_64.rpm

cd /opt/splunkforwarder/bin 
sudo ./splunk start --accept-license 
sudo ./splunk enable boot-start
sudo ./splunk add forward-server 172.16.1.55:9997 -auth ccdc:$uperccdc2019
sudo ./splunk add monitor /var/log
sudo ./splunk restart