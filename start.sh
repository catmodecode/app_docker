#!/bin/bash
cp .env.example .env
cp back/.env.example back/.env
cp back/.env.testing.example back/.env.testing
docker-compose run php_composer
docker-compose run node_install
docker-compose run php sh -c "./artisan key:generate && ./artisan tokens:generate"
docker-compose up -d
