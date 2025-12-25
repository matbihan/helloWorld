#!/bin/bash

echo "🚀 Début du post-déploiement Symfony"

APP_DIR=$(pwd)

echo "📦 Installation des dépendances"
composer install \
  --no-dev \
  --optimize-autoloader \
  --no-interaction

echo "🧹 Nettoyage du cache"
php bin/console cache:clear --env=prod

echo "🔥 Warmup du cache"
php bin/console cache:warmup --env=prod

echo "✅ Déploiement terminé"
