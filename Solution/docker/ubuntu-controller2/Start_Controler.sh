#!/bin/bash

# Activer le mode verbeux pour mieux déboguer en cas d'erreur
set -e  # Arrête le script si une commande échoue
set -x  # Affiche chaque commande exécutée


echo "###DANS CONTROLER_2##"  && docker-compose -f ./docker/ubuntu-controller2/docker-compose.yml down && docker-compose -f ./docker/ubuntu-controller2/docker-compose.yml --env-file ./var.env build && docker-compose -f ./docker/ubuntu-controller2/docker-compose.yml --env-file ./var.env up -d && docker ps
