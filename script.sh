#!/bin/bash

sudo apt-get install curl
curl -sL https://deb.nodesource.com/setup_18.x | sudo -E bash -

sudo apt install -y nodejs postgresql make
node -v

sudo -u postgres createuser --createdb vagrant
sudo -u postgres createdb vagrant
sudo -u postgres psql -c "ALTER USER vagrant WITH PASSWORD '12345';"

cd /vagrant/js-fastify-blog
make setup
