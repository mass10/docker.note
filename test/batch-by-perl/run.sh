#!/bin/bash
# in Ubuntu 18
sudo docker-compose up --build
sudo docker-compose down
sudo docker-compose rm --stop -v
# sudo docker-compose images
