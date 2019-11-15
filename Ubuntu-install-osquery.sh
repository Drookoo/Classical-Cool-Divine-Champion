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

# OSQUERY cheatsheet
# https://defensivedepth.files.wordpress.com/2018/10/osquery-handout.pdf 

#use fking htop LOL

#populate /etc/osquery/osquery.conf 
# {
  # "options": {
    # "host_identifier": "hostname",
    # "schedule_splay_percent": 10
  # },
  # "schedule": {
    # "macos_kextstat": {
      # "query": "SELECT * FROM kernel_extensions;",
      # "interval": 10
    # },
    # "foobar": {
      # "query": "SELECT foo, bar, pid FROM foobar_table;",
      # "interval": 600
    # }
  # }
# }

#sudo osqueryctl stop 
#sudo osqueryctl start



