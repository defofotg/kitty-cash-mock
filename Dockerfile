FROM mockserver/mockserver:latest

# Copier les fichiers de configuration des mocks
COPY config/mockserver-init.json /config/mockserver-init.json

# Définir la variable d'environnement pour MockServer
ENV MOCKSERVER_INITIALIZATION_JSON_PATH="/config/mockserver-init.json"

# Exposer les ports
EXPOSE 1080 1090
