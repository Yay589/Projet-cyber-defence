#!/bin/bash

# Activer le mode verbeux pour mieux déboguer en cas d'erreur
set -e  # Arrête le script si une commande échoue
set -x  # Affiche chaque commande exécutée

chmod 777 ../Client/dvwa-with-ssh/Start_Client.sh
chmod 777 ../Client/dvwa-with-ssh/setup_ssh.sh
chmod 777 ./docker/ubuntu-ready-container/Start_Controler.sh

#Création du réseaux 
source ./var.env && docker network create \
  --driver bridge \
  --subnet=$C_SUBNET \
  --gateway=$C_GATEWAY \
  custom_network_client

# Démarer DVWA:
./../Client/dvwa-with-ssh/Start_Client.sh
# Démarer le controler :
#./docker/ubuntu-ready-container/Start_Controler.sh
#Démarer Ban
./../Client//Ban/Start_Ban.sh


## Étape 1 : Exécuter le playbook principal
#ansible-playbook -i inventory/hosts playbooks/main.yml

## Étape 2 : Démarrer les conteneurs avec Docker Compose
#docker/dvwa/docker-compose up -d

## Étape 3 : Exécuter le playbook de scan réseau
#ansible-playbook -i inventory/hosts playbooks/network_scan.yml

## Étape 4 : Réexécuter le playbook principal avec un niveau de verbosité élevé
#ansible-playbook -i inventory/hosts playbooks/main.yml -vvv

#echo "Toutes les commandes ont été exécutées avec succès !"
