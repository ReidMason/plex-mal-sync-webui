#!/bin/sh
python3.7 createSetupfiles.py
cp setupfiles/plex-mal-sync-webui.conf /etc/supervisor/conf.d/plex-mal-sync-webui.conf
cp setupfiles/plex-mal-sync-webui /etc/nginx/sites-available/plex-mal-sync-webui
python3.7 -m venv venv
venv/bin/pip3.7 install -r requirements.txt
systemctl restart nginx
sudo supervisorctl reload