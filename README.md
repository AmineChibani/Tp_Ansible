<<<<<<< HEAD
# Tp_Ansible
=======
# Java Application Deployment with Ansible 🚀

<div align="center">

![Ansible](https://img.shields.io/badge/Ansible-EE0000?style=for-the-badge&logo=ansible&logoColor=white)
![Java](https://img.shields.io/badge/Java-ED8B00?style=for-the-badge&logo=openjdk&logoColor=white)
![Spring](https://img.shields.io/badge/Spring-6DB33F?style=for-the-badge&logo=spring&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![Maven](https://img.shields.io/badge/Maven-C71A36?style=for-the-badge&logo=apache-maven&logoColor=white)

</div>

## 📌 À Propos du Projet

> Un projet de déploiement automatisé d'application Spring Boot utilisant Ansible et Docker.

### 🎯 Informations Clés
| Détail | Description |
|--------|-------------|
| **Auteur** | Mohammed Amine Chibani |
| **Date** | Février 2024 |
| **Version** | 1.0.0 |
| **GitHub** | [TPAnsible Repository](https://github.com/AmineChibani/Tp_Ansible) |

## 🛠️ Stack Technique

<div align="center">

| Technology | Usage |
|------------|--------|
| `Java 11` | Langage principal |
| `Spring Boot` | Framework backend |
| `Ansible` | Automatisation du déploiement |
| `Docker` | Conteneurisation |
| `Maven` | Gestion des dépendances |

</div>

## 📂 Structure du Projet

```plaintext
📦 AnsibleTP
├── 📄 deploy-java-app.yml   # Playbook Ansible principal
├── 🐳 docker-compose.yml    # Configuration des conteneurs
├── 🔧 Dockerfile           # Image Docker personnalisée
├── 📝 inventory.ini        # Inventaire Ansible
├── 📦 pom.xml             # Configuration Maven
├── 📁 roles/              # Rôles Ansible
│   └── java_app_deploy/   # Rôle de déploiement
├── 💻 src/                # Code source Java
└── 📜 *.sh               # Scripts utilitaires
```

## 🚀 Guide de Démarrage Rapide

### Prérequis
- Docker installé sur votre machine
- Connexion Internet active
- Git installé (pour le clonage)

### Installation et Déploiement

1️⃣ **Préparation de l'Environnement**
```bash
# Cloner le projet
git clone https://github.com/AmineChibani/Tp_Ansible.git
cd TPAnsible

# Démarrer les conteneurs
docker-compose up -d --build
```

2️⃣ **Déploiement de l'Application**
```bash
# Copier les fichiers
docker cp . ansible-target:/ansible/

# Lancer le déploiement
docker exec ansible-target bash -c "cd /ansible && ansible-playbook -i inventory.ini deploy-java-app.yml"
```

## 🔍 Validation du Déploiement

### Commandes Utiles

```bash
# Vérifier le statut du conteneur
docker ps | grep ansible-target

# Tester l'application
curl http://localhost:8080

# Consulter les logs
docker exec ansible-target tail -f /opt/myapp/app.log
```

## ⭐ Caractéristiques Principales

<div align="center">

| Fonctionnalité | Description |
|----------------|-------------|
| 🔒 **Sécurité** | Utilisateur et groupe dédiés |
| 🔄 **Fiabilité** | Redémarrage automatique des services |
| 📊 **Monitoring** | Système de surveillance intégré |
| 🎨 **Interface** | UI/UX moderne et responsive |

</div>

## 📝 Notes Importantes

- L'application utilise une connexion locale dans Docker
- Les services fonctionnent en arrière-plan
- L'environnement est entièrement conteneurisé

## 🤝 Contribution

Les contributions sont les bienvenues ! N'hésitez pas à :
1. Fork le projet
2. Créer votre branche (`git checkout -b feature/AmazingFeature`)
3. Commit vos changements (`git commit -m 'Add some AmazingFeature'`)
4. Push vers la branche (`git push origin feature/AmazingFeature`)
5. Ouvrir une Pull Request

---

<div align="center">

**Réalisé avec ❤️ par Mohammed Amine Chibani**

[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/mohamed-amine-chibani-9a6645237/)
[![GitHub](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/AmineChibani)

</div> 
>>>>>>> 7be29f5 (add ansible project)
