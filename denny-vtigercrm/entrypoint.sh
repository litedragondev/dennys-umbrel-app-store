#!/bin/bash

echo "▶️ Starte Vtiger Entrypoint"

# Falls Volume leer, Quellcode kopieren
if [ -z "$(ls -A /var/www/html)" ]; then
  echo "📦 Kopiere Vtiger-Code in Volume..."
  cp -r /opt/vtiger_source/* /var/www/html/
  chown -R www-data:www-data /var/www/html
fi

# Container-internes MySQL vorbereiten (optional; wird eh durch Original-Skript gemacht)
chown -R mysql:mysql /var/lib/mysql || true

# Starte das ursprüngliche Supervisord
exec /usr/bin/supervisord -n
