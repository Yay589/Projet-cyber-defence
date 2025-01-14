#!/bin/bash
touch /A.txt

# Activer le mode verbeux pour mieux déboguer en cas d'erreur
set -e  # Arrête le script si une commande échoue
set -x  # Affiche chaque commande exécutée

# Démarrer le service SSH en arrière-plan
/usr/sbin/sshd -D &

touch /B.txt

# Exécuter les playbooks Ansible
#ansible-playbook -i /ansible-config/inventory/inventory.txt /ansible-config/verified-playbooks/fail2ban-bruteforce.yml &&
#ansible-playbook -i /ansible-config/inventory/inventory.txt /ansible-config/verified-playbooks/ports_scan.yml 
#ansible-playbook -i /ansible-config/inventory/inventory.txt /ansible-config/verified-playbooks/nmap_scan.yml 
#ansible-playbook -i /ansible-config/inventory/hosts /ansible-config/verified-playbooks/lynis.yml --ask-become-pass

touch /C.txt

wait