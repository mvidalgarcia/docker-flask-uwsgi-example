#!/bin/sh

echo "Starting myapp..."

. .venv/bin/activate
uwsgi --ini app.ini
# uwsgi -s /tmp/yourapplication.sock --manage-script-name --mount /=myapp:app
