#!/bin/sh
# Starts incident-api with the team's standard settings.
docker rm -f incident-api >/dev/null 2>&1
docker run -d --name incident-api --restart unless-stopped \
  -e DATA_FILE=/app/data/incidents.json \
  -p 8080:8080 \
  incident-api:1.1
