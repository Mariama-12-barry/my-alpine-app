# Utilise l'image Alpine Linux comme base
FROM alpine:latest

# Installe Python3 et pip dans l'image Alpine
RUN apk add --no-cache python3 py3-pip

# Copie le script Python dans le conteneur
COPY script.py /app/script.py

# Définit le répertoire de travail
WORKDIR /app

# Commande pour exécuter le script Python
CMD ["python3", "script.py"]
