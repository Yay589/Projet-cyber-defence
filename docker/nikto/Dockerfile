FROM ubuntu:latest

# Installer Nikto
RUN apt-get update && apt-get install -y nikto

# Commande par défaut pour lancer Nikto
ENTRYPOINT ["nikto"]
