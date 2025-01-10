#!/bin/bash

# Activer le mode verbeux pour mieux déboguer en cas d'erreur
set -e  # Arrête le script si une commande échoue
set -x  # Affiche chaque commande exécutée


echo "###DANS CLIENT###" && pwd && docker-compose -f ../Client/dvwa-with-ssh/docker-compose.yaml down && docker-compose -f ../Client/dvwa-with-ssh/docker-compose.yaml --env-file ./var.env build && docker-compose -f ../Client/dvwa-with-ssh/docker-compose.yaml --env-file ./var.env up -d && docker ps