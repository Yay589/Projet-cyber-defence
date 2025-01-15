#!/bin/bash

# Activer le mode verbeux pour mieux déboguer en cas d'erreur
set -e  # Arrête le script si une commande échoue
set -x  # Affiche chaque commande exécutée


echo "###DANS CONTROLER##"  && docker-compose -f ./docker/ubuntu-ready-container/docker-compose.yml down && docker-compose -f ./docker/ubuntu-ready-container/docker-compose.yml --env-file ./var.env build && docker-compose -f ./docker/ubuntu-ready-container/docker-compose.yml --env-file ./var.env up -d && docker ps