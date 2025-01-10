#!/bin/bash

# Activer le mode verbeux pour mieux déboguer en cas d'erreur
set -e  # Arrête le script si une commande échoue
set -x  # Affiche chaque commande exécutée


# Install OpenSSH server  |  Python Packages  should be installed to make the ansible work  properly 
#apt-get update -y && apt-get install -y openssh-server && apt install -y python3

# Create directory for sshd to run
mkdir /var/run/sshd

# Set root password
echo "root:root" | chpasswd

# Enable root login and password authentication in sshd_config
#sed -i 's/^#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
#sed -i 's/^#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config

# Open the ssh  port 22
#sed -i 's/^#Port 22/Port 22/' /etc/ssh/sshd_config

#apache
grep -q '^ServerName' /etc/apache2/apache2.conf || echo 'ServerName 8.8.8.8' |  tee -a /etc/apache2/apache2.conf
#apache en arriere plan
apachectl -D FOREGROUND &

# Start SSH service
#service ssh start