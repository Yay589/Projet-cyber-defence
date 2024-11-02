FROM ubuntu:latest

# Installer OWASP ZAP
RUN apt-get update && apt-get install -y zaproxy

# Commande par défaut pour lancer ZAP
ENTRYPOINT ["zap-cli"]
