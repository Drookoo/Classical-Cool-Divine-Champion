# Docs: https://osquery.readthedocs.io/en/stable/
# export OSQUERY_KEY=1484120AC4E9F8A1A577AEEE97A80C63C9D8B80B
# sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys $OSQUERY_KEY
# sudo add-apt-repository 'deb [arch=amd64] https://pkg.osquery.io/deb deb main'
# sudo apt-get update
# sudo apt-get install osquery -y 


# https://medium.com/@clong/osquery-for-security-b66fffdf2daf

wget https://pkg.osquery.io/deb/osquery_4.0.2_1.linux.amd64.deb
sudo dpkg -i osquery_4.0.2_1.linux.amd64.deb
# To open osquery shell
# $ osqueryi
# $ select username from users;


#### testme #####

# in inputs.conf 
echo -e "[monitor:///var/log/osquery/osqueryd.results.log]\nindex = main\nsourcetype = osquery_results\n\n[monitor:///var/log/osquery/osqueryd.*INFO*]\nindex = main\nsourcetype = osquery_info\n\n" >> inputs.conf

echo -e "[monitor:///var/log/osquery/osqueryd.*ERROR*]\nindex = main\nsourcetype = osquery_error\n\n" >> inputs.conf

echo -e "[monitor:///var/log/osquery/osqueryd.*WARNING*]\nindex = main\nsourcetype = osquery_warning\n\n"




