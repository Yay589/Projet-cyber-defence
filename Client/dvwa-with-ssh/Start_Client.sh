#!/bin/bash

echo "###DANS CLIENT###" && pwd && docker-compose -f ../Client/dvwa-with-ssh/docker-compose.yaml down && docker-compose -f ../Client/dvwa-with-ssh/docker-compose.yaml --env-file ./var.env build && docker-compose -f ../Client/dvwa-with-ssh/docker-compose.yaml --env-file ./var.env up -d && docker ps
