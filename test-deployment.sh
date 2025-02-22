#!/bin/bash

echo "Démarrage du conteneur Docker..."
docker-compose up -d --build

echo "Attente de la préparation du conteneur..."
sleep 10

echo "Test de connexion au conteneur..."
ansible -i inventory.ini all -m ping

echo "Exécution du playbook Ansible..."
ansible-playbook -i inventory.ini deploy-java-app.yml

echo "Vérification du statut de l'application..."
curl http://localhost:8080

echo "Pour voir les logs du conteneur, exécutez: docker logs ansible-target"
echo "Pour accéder au conteneur, exécutez: docker exec -it ansible-target bash" 