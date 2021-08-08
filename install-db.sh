#!/bin/sh
psql -h db -U $POSTGRES_USER -tc "SELECT 1 FROM pg_database WHERE datname = '$PG_DATABASE'" | grep -q 1 || psql -h db -U $POSTGRES_USER -c "CREATE DATABASE $PG_DATABASE"