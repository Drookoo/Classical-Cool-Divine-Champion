#!/bin/bash 
# Prelimary Auditing for deb based systems


#	  ##   #    # #####  # ##### # #    #  ####  
# 	 #  #  #    # #    # #   #   # ##   # #    # 
#	#    # #    # #    # #   #   # # #  # #      
#	###### #    # #    # #   #   # #  # # #  ### 
#	#    # #    # #    # #   #   # #   ## #    # 
#	#    #  ####  #####  #   #   # #    #  ####  

# Fix time 
sudo dpkg-reconfigure tzdata 

#Change perms 
chown root:root /etc/ssh/sshd_config
chmod og-rwx /etc/ssh/sshd_config

chown root:root /etc/passwd
chmod 644 /etc/passwd

chown root:shadow /etc/shadow
chmod o-rwx,g-wx /etc/shadow

chown root:root /etc/group
chmod 644 /etc/group

chown root:shadow /etc/gshadow
chmod o-rwx,g-rw /etc/gshadow

chown root:root /etc/passwd-
chmod 600 /etc/passwd-

chown root:root /etc/shadow-
chmod 600 /etc/shadow-

chown root:root /etc/group-
chmod 600 /etc/group-

chown root:root /etc/gshadow-
chmod 600 /etc/gshadow-

#Disable SSH root login and Disable SSH access via empty passwords and Enable use of priviledge separation 
#add or correct the following line in /etc/ssh/sshd_config: PermitRootLogin no 
#add or correct the following line in /etc/ssh/sshd_config: PermitEmptyPasswords no 
#add or correct the following line in the /etc/ssh/sshd_config file: UsePrivilegeSeparation yes 
#add or correct the following line in /etc/ssh/sshd_config: IgnoreUserKnownHosts yes 
#add or correct the following line in /etc/ssh/sshd_config: RhostsRSAAuthentication no 
#add or correct the following line in /etc/ssh/sshd_config: HostbasedAuthentication no  
#add or correct the following line in /etc/ssh/sshd_config: IgnoreRhosts yes 