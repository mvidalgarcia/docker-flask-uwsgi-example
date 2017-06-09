#!/bin/sh

echo "Starting myapp..."

. .venv/bin/activate
uwsgi --ini app.ini
