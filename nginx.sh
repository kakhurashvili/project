#!/bin/bash

sudo cp -rf app.conf /etc/nginx/sites-available/app
chmod 777 /var/lib/jenkins/workspace/django_project

sudo ln -s /etc/nginx/sites-available/app.conf /etc/nginx/sites-enabled
sudo nginx -t

sudo systemctl start nginx
sudo systemctl enable nginx

echo "Nginx has been started"

sudo systemctl status nginx