#!/bin/bash
sudo service restart gunicorn 
sudo service status gunicorn 
sudo service restart nginx
sudo service status nginx


