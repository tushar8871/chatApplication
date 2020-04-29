#!/bin/bash
sudo apt-get update
sudo apt-get install python3-pip python3-dev nginx git -y
sudo apt-get update
pip3 install virtualenv
cd /chatApplication
virtualenv --python=python3 venv
source /chatApplication/venv/bin/activate
cd /ChatApplication/
pip3 install -r requirements.txt
pip3 install django bcrypt django-extensions
pip3 install gunicorn
cd fundoo/
python manage.py collectstatic
cp /chatApplication/Dependency_Scripts/gunicorn.service /etc/systemd/system/
systemctl daemon-reload
systemctl start gunicorn
systemctl enable gunicorn
unlink /etc/nginx/sites-enabled/*
cp /chatApplication/Dependency_Scripts/fundoo /etc/nginx/sites-available/
ln -s /etc/nginx/sites-available/fundoo /etc/nginx/sites-enabled
service restart nginx
