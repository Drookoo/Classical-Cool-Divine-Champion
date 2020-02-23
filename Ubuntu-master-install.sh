#!/bin/bash 

echo "================================"
echo "Ubuntu Installer Menu" 
echo "================================"
echo "Enter 1 to install Splunk UFW: (1)"
echo "Enter 2 to install Splunk Enterprise: (2)"
echo "Enter 3 to install osquery: (3)" 
echo "Enter q to exit the menu q:"
echo -e "\n"
echo -e "Enter your selection \c"
read answer
case "$answer" in 
1) wget -O splunkforwarder-8.0.2-a7f645ddaf91-linux-2.6-amd64.deb 'https://www.splunk.com/bin/splunk/DownloadActivityServlet?architecture=x86_64&platform=linux&version=8.0.2&product=universalforwarder&filename=splunkforwarder-8.0.2-a7f645ddaf91-linux-2.6-amd64.deb&wget=true'
	sudo dpkg -i splunkforwarder-8.0.2-a7f645ddaf91-linux-2.6-amd64.deb
	cd /opt/splunkforwarder/bin 
	sudo ./splunk start --accept-license 
	sudo ./splunk enable boot-start
	sudo ./splunk add forward-server 172.16.1.55:9997 
	cd /opt/splunkforwarder/bin 
	sudo ./splunk add monitor /var/log
	sudo ./splunk add monitor /etc/
	echo "================================"
	echo "Splunk UFW installed" 
	echo "================================"
	;;
2) whoami 
	;;
3)wget https://pkg.osquery.io/deb/osquery_4.2.0_1.linux.amd64.deb
	sudo dpkg -i osquery_4.0.2_1.linux.amd64.deb
	echo "================================"
	echo "OSquery installed" 
	echo "================================"
	;;
q) exit ;;
esac
