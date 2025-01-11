#!/bin/bash

# Activer le mode verbeux pour mieux déboguer en cas d'erreur
set -e  # Arrête le script si une commande échoue
set -x  # Affiche chaque commande exécutée


echo "###DANS BAN##"  && docker-compose -f ./../Client//Ban/docker-compose.yml down && docker-compose -f ./../Client//Ban/docker-compose.yml --env-file ./var.env build && docker-compose -f ./../Client//Ban/docker-compose.yml --env-file ./var.env up -d && docker ps