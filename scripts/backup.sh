#!/bin/sh
set -eu
stamp=$(date +%Y-%m-%d)
tar -czf "/var/backups/app-$stamp.tar.gz" /srv/app
find /var/backups -name 'app-*.tar.gz' -mtime +14 -delete
