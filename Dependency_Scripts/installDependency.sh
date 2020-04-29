#!/bin/bash
sudo apt-get update
sudo apt-get install python3-pip python3-dev nginx git -y
sudo apt-get update
pip3 install virtualenv
cd /home/ubuntu/chatApplication
virtualenv --python=python3 venv
source /home/ubuntu/chatApplication/venv/bin/activate
cd /home/ubuntu/ChatApplication/
pip3 install -r requirements.txt
pip3 install django bcrypt django-extensions
pip3 install gunicorn
cd fundoo/
python3 manage.py collectstatic
#gunicorn commands
gunicorn --bind 0.0.0.0:8000 fundoo.wsgi:application
sudo cp /home/ubuntu/chatApplication/Dependency_Scripts/gunicorn.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl start gunicorn
sudo systemctl enable gunicorn
#nginx commands
sudo unlink /etc/nginx/sites-enabled/*
sudo cp /home/ubuntu/chatApplication/Dependency_Scripts/fundoo /etc/nginx/sites-available/
sudo ln -s /etc/nginx/sites-available/fundoo /etc/nginx/sites-enabled
sudo service restart nginx
