#!/bin/bash

# yum install git wget -y

# Splunk Enterprise 
wget -O splunk-8.0.0-1357bef0a7f6-linux-2.6-x86_64.rpm 'https://www.splunk.com/bin/splunk/DownloadActivityServlet?architecture=x86_64&platform=linux&version=8.0.0&product=splunk&filename=splunk-8.0.0-1357bef0a7f6-linux-2.6-x86_64.rpm&wget=true'
sudo rpm -i splunk-8.0.0-1357bef0a7f6-linux-2.6-x86_64.rpm

cd /opt/splunk/bin/
sudo ./splunk start --accept-license
sudo ./splunk enable boot-start

sudo ./splunk enable listen 9997 -auth ccdc:$uperccdc2019

cd /opt/splunk/etc/system/local 
echo -e "[monitor:///var/log/osquery/osqueryd.results.log]\nindex = main\nsourcetype = osquery_results\n\n[monitor:///var/log/osquery/osqueryd.*INFO*]\nindex = main\nsourcetype = osquery_info\n\n" >> inputs.conf

echo -e "[monitor:///var/log/osquery/osqueryd.*ERROR*]\nindex = main\nsourcetype = osquery_error\n\n" >> inputs.conf

echo -e "[monitor:///var/log/osquery/osqueryd.*WARNING*]\nindex = main\nsourcetype = osquery_warning\n\n" >> inputs.conf

cd /opt/splunk/bin/

sudo ./splunk restart 



firewall-cmd --zone=public --add-port=8000/tcp --permanent 
firewall-cmd --zone=public --add-port=9997/tcp --permanent 
firewall-cmd --reload 