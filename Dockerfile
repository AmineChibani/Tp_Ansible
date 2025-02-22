FROM ubuntu:22.04

# Installation des dépendances nécessaires pour l'environnement
RUN apt-get update && \
    apt-get install -y \
    python3 \
    python3-pip \
    openjdk-11-jdk \
    openssh-server \
    sshpass \
    sudo && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Configuration du serveur SSH
RUN mkdir /var/run/sshd
RUN echo 'root:password' | chpasswd
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# Création du répertoire pour l'application
RUN mkdir -p /opt/myapp
WORKDIR /opt/myapp

# Exposition des ports nécessaires
EXPOSE 22 8080

# Script de démarrage du conteneur
COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"] 