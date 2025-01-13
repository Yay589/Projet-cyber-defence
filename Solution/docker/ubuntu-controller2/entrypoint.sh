#!/bin/bash

# Exécution des playbooks Ansible
ansible-playbook -i inventory.txt verified-playbooks/fail2ban-bruteforce.yml
ansible-playbook -i inventory.txt verified-playbooks/ports_scan.yml
ansible-playbook -i inventory.txt verified-playbooks/nmap_scan.yml

# Lancer le service SSHD
exec "$@"
