#!/bin/bash

# Activer le mode verbeux pour mieux déboguer en cas d'erreur
set -e  # Arrête le script si une commande échoue
set -x  # Affiche chaque commande exécutée

# Docker DVWA:
docker run --rm -it -p 8075:8075 vulnerables/web-dvwa

# Étape 1 : Exécuter le playbook principal
ansible-playbook -i inventory/hosts playbooks/main.yml

# Étape 2 : Démarrer les conteneurs avec Docker Compose
docker/dvwa/docker-compose up -d

# Étape 3 : Exécuter le playbook de scan réseau
ansible-playbook -i inventory/hosts playbooks/network_scan.yml

# Étape 4 : Réexécuter le playbook principal avec un niveau de verbosité élevé
ansible-playbook -i inventory/hosts playbooks/main.yml -vvv

echo "Toutes les commandes ont été exécutées avec succès !"
