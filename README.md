# MockServer avec Docker

Ce dépôt contient les définitions de mocks pour simuler des appels d'API via MockServer.

## Utilisation

Vous pouvez utiliser cette image Docker personnalisée pour exécuter MockServer avec les mocks définis dans `config/mockserver-init.json`.

### Exemple d'utilisation avec Docker Compose

```yaml
version: '3'

services:
  mockserver:
    image: your-docker-username/mockserver-custom:latest
    container_name: mockserver
    ports:
      - "1080:1080"
      - "1090:1090"
