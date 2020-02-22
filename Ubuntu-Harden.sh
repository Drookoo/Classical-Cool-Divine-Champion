#!/bin/bash 
# Prelimary Hardening for deb based systems


#	#     #   ##   #####  #####  ###### #    # # #    #  ####  
#	#     #  #  #  #    # #    # #      ##   # # ##   # #    # 
#	####### #    # #    # #    # #####  # #  # # # #  # #      
#	#     # ###### #####  #    # #      #  # # # #  # # #  ### 
#	#     # #    # #   #  #    # #      #   ## # #   ## #    # 
#	#     # #    # #    # #####  ###### #    # # #    #  ####  

# Update and Reboot
sudo apt-get update -y && sudo apt-get upgrade -y 
reboot 

