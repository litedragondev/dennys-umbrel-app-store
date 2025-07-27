#!/bin/sh
set -e

echo "Waiting for HedgeDoc to be ready..."

# Warte, bis HedgeDoc API erreichbar ist
while ! curl -s http://denny-hedgedoc_web_1:3000/_health | grep -q 'ok'; do
  echo "HedgeDoc not ready yet, waiting 2 seconds..."
  sleep 2
done

echo "HedgeDoc is ready. Creating admin user..."

# Admin User anlegen (Email, Passwort, Name hier anpassen!)
curl -X POST http://denny-hedgedoc_web_1:3000/api/users/signup \
  -H 'Content-Type: application/json' \
  -d '{
    "email": "admin@admin.com",
    "password": "umbrel",
    "name": "admin"
  }'

echo "Admin user created (or already existed)."
