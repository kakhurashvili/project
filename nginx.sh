
#!/bin/sh

sudo cp -rf app.conf /etc/nginx/conf.d

chmod 777 /var/lib/jenkins/workspace/django_project
sudo nginx -t

sudo systemctl reload nginx

sudo systemctl restart nginx

sudo systemctl status nginx