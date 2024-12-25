#!/bin/bash

# Install OpenSSH server  |  Python Packages  should be installed to make the ansible work  properly 
apt-get update && apt-get install -y openssh-server && apt install -y python3

# Create directory for sshd to run
mkdir /var/run/sshd

# Set root password
echo "root:root" | chpasswd

# Enable root login and password authentication in sshd_config
sed -i 's/^#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
sed -i 's/^#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config
# Open the ssh  port 22
sed -i 's/^#Port 22/Port 22/' /etc/ssh/sshd_config

# Start SSH service
service ssh start