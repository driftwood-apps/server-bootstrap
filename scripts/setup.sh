#!/bin/sh
set -eu
apt-get update
apt-get install -y nginx ufw fail2ban
id deploy >/dev/null 2>&1 || useradd --create-home --shell /bin/bash deploy
ufw allow OpenSSH
ufw allow 'Nginx Full'
ufw --force enable
