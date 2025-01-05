# Utiliser l'image MockServer officielle
FROM mockserver/mockserver:latest

# Copier les fichiers de configuration des mocks
COPY config/mockserver-init.json /config/mockserver-init.json

# Définir la variable d'environnement pour le fichier de configuration
ENV MOCKSERVER_INITIALIZATION_JSON_PATH="/config/mockserver-init.json"

# Configurer le niveau de logs pour éviter les logs excessifs
ENV MOCKSERVER_LOG_LEVEL="INFO"

# Configurer les limites des entrées de log en mémoire
ENV MOCKSERVER_MAX_LOG_ENTRIES="100"

# Ajouter des options Java pour contrôler la mémoire
ENV JAVA_OPTS="-Xmx512m -Xms256m"

# Exposer les ports nécessaires
EXPOSE 1080 1090
