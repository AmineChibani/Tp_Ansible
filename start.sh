#!/bin/bash

# Démarrage du service SSH
/usr/sbin/sshd

# Si un fichier JAR existe, le démarrer
if [ -f /opt/myapp/*.jar ]; then
    java -jar /opt/myapp/*.jar &
fi

# Garder le conteneur en vie
tail -f /dev/null 