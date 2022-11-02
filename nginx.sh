#!/bin/bash

sudo cp -rf app.conf /etc/nginx/conf.d
chmod 777 /var/lib/jenkins/workspace/django_project

#sudo ln -s /etc/nginx/sites-available/app /etc/nginx/sites-enabled
sudo nginx -t

sudo systemctl start nginx
sudo systemctl reload nginx
sudo systemctl enable nginx
sudo systemctl restart nginx
echo "Nginx has been started"

sudo systemctl status nginx