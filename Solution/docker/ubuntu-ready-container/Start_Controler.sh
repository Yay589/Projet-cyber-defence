#!/bin/bash

echo "###DANS CONTROLER##" && pwd && docker-compose -f ./docker/ubuntu-ready-container/docker-compose.yml down && docker-compose -f ./docker/ubuntu-ready-container/docker-compose.yml --env-file ./var.env build && docker-compose -f ./docker/ubuntu-ready-container/docker-compose.yml --env-file ./var.env up -d && docker ps