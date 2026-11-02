# Partir de l'image officielle de n8n
FROM n8nio/n8n:2.45.7

# Changer d'utilisateur pour passer en 'root' afin d'avoir les permissions
USER root

# Installer les dépendances NPM de façon globale
RUN npm install -g axios form-data

# Revenir à l'utilisateur 'node' pour la sécurité, comme dans l'image originale
USER node
