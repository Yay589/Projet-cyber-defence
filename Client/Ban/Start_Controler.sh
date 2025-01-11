#!/bin/bash

# Activer le mode verbeux pour mieux déboguer en cas d'erreur
set -e  # Arrête le script si une commande échoue
set -x  # Affiche chaque commande exécutée


echo "###DANS BAN##"  && docker-compose -f ./docker-compose.yml down && docker-compose -f ./docker-compose.yml --env-file ../../Solution/var.env build && docker-compose -f ./docker-compose.yml --env-file ../../Solution/var.env -d && docker ps