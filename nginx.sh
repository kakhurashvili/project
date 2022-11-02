#!/bin/bash

sudo cp -rf medashan.conf /etc/nginx/sites-available/medashan
chmod 777 /var/lib/jenkins/workspace/django_project

sudo ln -s /etc/nginx/sites-available/medashan /etc/nginx/sites-enabled
sudo nginx -t

sudo systemctl start nginx
sudo systemctl enable nginx

echo "Nginx has been started"

sudo systemctl status nginx