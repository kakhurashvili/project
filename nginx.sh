#!/bin/bash

sudo cp -rf app.conf /etc/nginx/sites-available/medashan
chmod 710 /home/ubuntu/HospitalManagement_Django/

sudo ln -s /etc/nginx/sites-available/medashan /etc/nginx/sites-enabled
sudo nginx -t

sudo systemctl start nginx
sudo systemctl enable nginx

echo "Nginx has been started"

sudo systemctl status nginx